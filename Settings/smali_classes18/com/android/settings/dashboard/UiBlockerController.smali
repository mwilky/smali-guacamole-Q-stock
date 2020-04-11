.class public Lcom/android/settings/dashboard/UiBlockerController;
.super Ljava/lang/Object;
.source "UiBlockerController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UiBlockerController"

.field private static final TIMEOUT_MILLIS:I = 0x1f4


# instance fields
.field private mBlockerFinished:Z

.field private mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private mKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeoutMillis:J


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v0, 0x1f4

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/dashboard/UiBlockerController;-><init>(Ljava/util/List;J)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;J)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/dashboard/UiBlockerController;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/UiBlockerController;->mBlockerFinished:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/UiBlockerController;->mKeys:Ljava/util/Set;

    iput-wide p2, p0, Lcom/android/settings/dashboard/UiBlockerController;->mTimeoutMillis:J

    return-void
.end method


# virtual methods
.method public countDown(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/UiBlockerController;->mKeys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/UiBlockerController;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isBlockerFinished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/dashboard/UiBlockerController;->mBlockerFinished:Z

    return v0
.end method

.method public synthetic lambda$start$0$UiBlockerController(Ljava/lang/Runnable;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dashboard/UiBlockerController;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    iget-wide v1, p0, Lcom/android/settings/dashboard/UiBlockerController;->mTimeoutMillis:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UiBlockerController"

    const-string v2, "interrupted"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/dashboard/UiBlockerController;->mBlockerFinished:Z

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public start(Ljava/lang/Runnable;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/UiBlockerController;->mKeys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Lcom/android/settings/dashboard/-$$Lambda$UiBlockerController$sgk-OT2EMGELmDqohsdUCTZDV8U;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/dashboard/-$$Lambda$UiBlockerController$sgk-OT2EMGELmDqohsdUCTZDV8U;-><init>(Lcom/android/settings/dashboard/UiBlockerController;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 v0, 0x1

    return v0
.end method
