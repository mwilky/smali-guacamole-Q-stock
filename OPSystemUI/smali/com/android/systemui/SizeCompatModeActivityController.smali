.class public Lcom/android/systemui/SizeCompatModeActivityController;
.super Lcom/android/systemui/SystemUI;
.source "SizeCompatModeActivityController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/SizeCompatModeActivityController$RestartActivityButton;
    }
.end annotation


# instance fields
.field private final mActiveButtons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/SizeCompatModeActivityController$RestartActivityButton;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayContextCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHasShownHint:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/SizeCompatModeActivityController;-><init>(Lcom/android/systemui/shared/system/ActivityManagerWrapper;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/shared/system/ActivityManagerWrapper;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/SizeCompatModeActivityController;->mActiveButtons:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/SizeCompatModeActivityController;->mDisplayContextCache:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/systemui/SizeCompatModeActivityController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/SizeCompatModeActivityController$1;-><init>(Lcom/android/systemui/SizeCompatModeActivityController;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/SizeCompatModeActivityController;ILandroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/SizeCompatModeActivityController;->updateRestartButton(ILandroid/os/IBinder;)V

    return-void
.end method

.method private getOrCreateDisplayContext(I)Landroid/content/Context;
    .locals 3

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/SizeCompatModeActivityController;->mDisplayContextCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/SizeCompatModeActivityController;->mDisplayContextCache:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    return-object v0
.end method

.method private removeRestartButton(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/SizeCompatModeActivityController;->mActiveButtons:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SizeCompatModeActivityController$RestartActivityButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/SizeCompatModeActivityController$RestartActivityButton;->remove()V

    iget-object p0, p0, Lcom/android/systemui/SizeCompatModeActivityController;->mActiveButtons:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    return-void
.end method

.method private updateRestartButton(ILandroid/os/IBinder;)V
    .locals 1

    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/SizeCompatModeActivityController;->removeRestartButton(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/SizeCompatModeActivityController;->mActiveButtons:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SizeCompatModeActivityController$RestartActivityButton;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/android/systemui/SizeCompatModeActivityController$RestartActivityButton;->updateLastTargetActivity(Landroid/os/IBinder;)V

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/SizeCompatModeActivityController;->getOrCreateDisplayContext(I)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot get context for display "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SizeCompatMode"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/systemui/SizeCompatModeActivityController;->createRestartButton(Landroid/content/Context;)Lcom/android/systemui/SizeCompatModeActivityController$RestartActivityButton;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/SizeCompatModeActivityController$RestartActivityButton;->updateLastTargetActivity(Landroid/os/IBinder;)V

    invoke-virtual {v0}, Lcom/android/systemui/SizeCompatModeActivityController$RestartActivityButton;->show()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/android/systemui/SizeCompatModeActivityController;->mActiveButtons:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/SizeCompatModeActivityController;->onDisplayRemoved(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method createRestartButton(Landroid/content/Context;)Lcom/android/systemui/SizeCompatModeActivityController$RestartActivityButton;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/android/systemui/SizeCompatModeActivityController$RestartActivityButton;

    iget-boolean v1, p0, Lcom/android/systemui/SizeCompatModeActivityController;->mHasShownHint:Z

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/SizeCompatModeActivityController$RestartActivityButton;-><init>(Landroid/content/Context;Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/SizeCompatModeActivityController;->mHasShownHint:Z

    return-object v0
.end method

.method public onDisplayRemoved(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/SizeCompatModeActivityController;->mDisplayContextCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    invoke-direct {p0, p1}, Lcom/android/systemui/SizeCompatModeActivityController;->removeRestartButton(I)V

    return-void
.end method

.method public setImeWindowStatus(ILandroid/os/IBinder;IIZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/SizeCompatModeActivityController;->mActiveButtons:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/SizeCompatModeActivityController$RestartActivityButton;

    if-nez p0, :cond_0

    return-void

    :cond_0
    and-int/lit8 p1, p3, 0x2

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, p2

    :goto_0
    if-eqz p1, :cond_2

    const/16 p2, 0x8

    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result p1

    if-eq p1, p2, :cond_3

    invoke-virtual {p0, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method
