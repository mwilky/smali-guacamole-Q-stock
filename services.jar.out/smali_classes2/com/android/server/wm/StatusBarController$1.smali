.class Lcom/android/server/wm/StatusBarController$1;
.super Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
.source "StatusBarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/StatusBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mAppTransitionCancelled:Ljava/lang/Runnable;

.field private mAppTransitionFinished:Ljava/lang/Runnable;

.field private mAppTransitionPending:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/server/wm/StatusBarController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/StatusBarController;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wm/StatusBarController$1;->this$0:Lcom/android/server/wm/StatusBarController;

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;-><init>()V

    new-instance v0, Lcom/android/server/wm/-$$Lambda$StatusBarController$1$x4q7e0Eysf0ynMSdT1A-JN_ucuI;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$StatusBarController$1$x4q7e0Eysf0ynMSdT1A-JN_ucuI;-><init>(Lcom/android/server/wm/StatusBarController$1;)V

    iput-object v0, p0, Lcom/android/server/wm/StatusBarController$1;->mAppTransitionPending:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/wm/-$$Lambda$StatusBarController$1$CizMeoiz6ZVrkt6kAKpSV5htmyc;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$StatusBarController$1$CizMeoiz6ZVrkt6kAKpSV5htmyc;-><init>(Lcom/android/server/wm/StatusBarController$1;)V

    iput-object v0, p0, Lcom/android/server/wm/StatusBarController$1;->mAppTransitionCancelled:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/wm/-$$Lambda$StatusBarController$1$3FiQ0kybPCSlgcNJkCsNm5M12iA;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$StatusBarController$1$3FiQ0kybPCSlgcNJkCsNm5M12iA;-><init>(Lcom/android/server/wm/StatusBarController$1;)V

    iput-object v0, p0, Lcom/android/server/wm/StatusBarController$1;->mAppTransitionFinished:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public synthetic lambda$$0$StatusBarController$1()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/StatusBarController$1;->this$0:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v0}, Lcom/android/server/wm/StatusBarController;->getStatusBarInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/StatusBarController$1;->this$0:Lcom/android/server/wm/StatusBarController;

    iget v1, v1, Lcom/android/server/wm/StatusBarController;->mDisplayId:I

    invoke-interface {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->appTransitionPending(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$$1$StatusBarController$1()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/StatusBarController$1;->this$0:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v0}, Lcom/android/server/wm/StatusBarController;->getStatusBarInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/StatusBarController$1;->this$0:Lcom/android/server/wm/StatusBarController;

    iget v1, v1, Lcom/android/server/wm/StatusBarController;->mDisplayId:I

    invoke-interface {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->appTransitionCancelled(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$$2$StatusBarController$1()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/StatusBarController$1;->this$0:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v0}, Lcom/android/server/wm/StatusBarController;->getStatusBarInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/StatusBarController$1;->this$0:Lcom/android/server/wm/StatusBarController;

    iget v1, v1, Lcom/android/server/wm/StatusBarController;->mDisplayId:I

    invoke-interface {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->appTransitionFinished(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onAppTransitionStartingLocked$3$StatusBarController$1(JJ)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/wm/StatusBarController$1;->this$0:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v0}, Lcom/android/server/wm/StatusBarController;->getStatusBarInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/StatusBarController$1;->this$0:Lcom/android/server/wm/StatusBarController;

    iget v2, v1, Lcom/android/server/wm/StatusBarController;->mDisplayId:I

    move-object v1, v0

    move-wide v3, p1

    move-wide v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/android/server/statusbar/StatusBarManagerInternal;->appTransitionStarting(IJJ)V

    :cond_0
    return-void
.end method

.method public onAppTransitionCancelledLocked(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/StatusBarController$1;->this$0:Lcom/android/server/wm/StatusBarController;

    iget-object v0, v0, Lcom/android/server/wm/StatusBarController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/StatusBarController$1;->mAppTransitionCancelled:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/StatusBarController$1;->this$0:Lcom/android/server/wm/StatusBarController;

    iget-object v0, v0, Lcom/android/server/wm/StatusBarController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/StatusBarController$1;->mAppTransitionFinished:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAppTransitionPendingLocked()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/StatusBarController$1;->this$0:Lcom/android/server/wm/StatusBarController;

    iget-object v0, v0, Lcom/android/server/wm/StatusBarController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/StatusBarController$1;->mAppTransitionPending:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAppTransitionStartingLocked(IJJJ)I
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/StatusBarController$1;->this$0:Lcom/android/server/wm/StatusBarController;

    iget-object v0, v0, Lcom/android/server/wm/StatusBarController;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/wm/-$$Lambda$StatusBarController$1$t71qcQIBSxRShk0Xohf1lk53bOw;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p4

    move-wide v5, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/-$$Lambda$StatusBarController$1$t71qcQIBSxRShk0Xohf1lk53bOw;-><init>(Lcom/android/server/wm/StatusBarController$1;JJ)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    return v0
.end method
