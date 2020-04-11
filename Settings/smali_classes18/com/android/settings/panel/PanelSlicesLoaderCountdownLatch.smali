.class public Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;
.super Ljava/lang/Object;
.source "PanelSlicesLoaderCountdownLatch.java"


# instance fields
.field private final mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mLoadedSlices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private slicesReadyToLoad:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;->slicesReadyToLoad:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;->mLoadedSlices:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public isPanelReadyToLoad()Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;->slicesReadyToLoad:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;->slicesReadyToLoad:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSliceLoaded(Landroid/net/Uri;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;->mLoadedSlices:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public markSliceLoaded(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;->mLoadedSlices:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;->mLoadedSlices:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
