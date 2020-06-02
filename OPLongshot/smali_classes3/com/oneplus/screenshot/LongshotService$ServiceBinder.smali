.class Lcom/oneplus/screenshot/LongshotService$ServiceBinder;
.super Lcom/oneplus/longshot/ILongScreenshot$Stub;
.source "LongshotService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/LongshotService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceBinder"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNavBarVisible:Z

.field private mStatusBarVisible:Z

.field final synthetic this$0:Lcom/oneplus/screenshot/LongshotService;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/LongshotService;Landroid/content/Context;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->this$0:Lcom/oneplus/screenshot/LongshotService;

    invoke-direct {p0}, Lcom/oneplus/longshot/ILongScreenshot$Stub;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->mStatusBarVisible:Z

    iput-boolean p1, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->mNavBarVisible:Z

    iput-object p2, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->mContext:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->mStatusBarVisible:Z

    iput-boolean p4, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->mNavBarVisible:Z

    return-void
.end method


# virtual methods
.method public isHandleState()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->this$0:Lcom/oneplus/screenshot/LongshotService;

    invoke-static {v0}, Lcom/oneplus/screenshot/LongshotService;->access$100(Lcom/oneplus/screenshot/LongshotService;)Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->isHandleState()Z

    move-result v0

    return v0
.end method

.method public isMoveState()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->this$0:Lcom/oneplus/screenshot/LongshotService;

    invoke-static {v0}, Lcom/oneplus/screenshot/LongshotService;->access$100(Lcom/oneplus/screenshot/LongshotService;)Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->isMoveState()Z

    move-result v0

    return v0
.end method

.method public notifyLongshotScrollChanged(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->this$0:Lcom/oneplus/screenshot/LongshotService;

    invoke-static {v0}, Lcom/oneplus/screenshot/LongshotService;->access$100(Lcom/oneplus/screenshot/LongshotService;)Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->notifyLongshotScrollChanged(IIII)V

    return-void
.end method

.method public notifyScroll(Z)V
    .locals 3

    invoke-static {}, Lcom/oneplus/screenshot/LongshotService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyScroll "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/oneplus/screenshot/longshot/util/Configs;->sIsIgnoreOverScroll:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->sIsIgnoreOverScroll:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->this$0:Lcom/oneplus/screenshot/LongshotService;

    invoke-static {v0}, Lcom/oneplus/screenshot/LongshotService;->access$100(Lcom/oneplus/screenshot/LongshotService;)Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->setOverScroll(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->this$0:Lcom/oneplus/screenshot/LongshotService;

    invoke-static {v0}, Lcom/oneplus/screenshot/LongshotService;->access$100(Lcom/oneplus/screenshot/LongshotService;)Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->setScroll(Z)V

    :goto_0
    return-void
.end method

.method public notifyScrollViewSearchComplete(III)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->this$0:Lcom/oneplus/screenshot/LongshotService;

    invoke-static {v0}, Lcom/oneplus/screenshot/LongshotService;->access$100(Lcom/oneplus/screenshot/LongshotService;)Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->this$0:Lcom/oneplus/screenshot/LongshotService;

    invoke-static {v0}, Lcom/oneplus/screenshot/LongshotService;->access$100(Lcom/oneplus/screenshot/LongshotService;)Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->notifyScrollViewSearchComplete(III)V

    :cond_0
    return-void
.end method

.method public notifyScrollViewTop(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->this$0:Lcom/oneplus/screenshot/LongshotService;

    invoke-static {v0, p1}, Lcom/oneplus/screenshot/LongshotService;->access$202(Lcom/oneplus/screenshot/LongshotService;I)I

    iget-object v0, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->this$0:Lcom/oneplus/screenshot/LongshotService;

    invoke-static {v0}, Lcom/oneplus/screenshot/LongshotService;->access$100(Lcom/oneplus/screenshot/LongshotService;)Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->this$0:Lcom/oneplus/screenshot/LongshotService;

    invoke-static {v0}, Lcom/oneplus/screenshot/LongshotService;->access$100(Lcom/oneplus/screenshot/LongshotService;)Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->setScrollViewTop(I)V

    :cond_0
    return-void
.end method

.method public notifyWindowLayerChange(Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->this$0:Lcom/oneplus/screenshot/LongshotService;

    invoke-static {v0}, Lcom/oneplus/screenshot/LongshotService;->access$100(Lcom/oneplus/screenshot/LongshotService;)Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->notifyWindowLayerChange(Landroid/os/IBinder;)V

    return-void
.end method

.method public onUnscrollableView()V
    .locals 2

    invoke-static {}, Lcom/oneplus/screenshot/LongshotService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onUnscrollableView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->this$0:Lcom/oneplus/screenshot/LongshotService;

    invoke-static {v0}, Lcom/oneplus/screenshot/LongshotService;->access$100(Lcom/oneplus/screenshot/LongshotService;)Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->this$0:Lcom/oneplus/screenshot/LongshotService;

    invoke-static {v0}, Lcom/oneplus/screenshot/LongshotService;->access$100(Lcom/oneplus/screenshot/LongshotService;)Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->onUnscrollableView()V

    :cond_0
    return-void
.end method

.method public start(Lcom/oneplus/longshot/ILongScreenshotCallback;)V
    .locals 4

    invoke-static {}, Lcom/oneplus/screenshot/LongshotService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/oneplus/screenshot/LongshotService$Finisher;

    iget-object v1, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->this$0:Lcom/oneplus/screenshot/LongshotService;

    invoke-direct {v0, v1, p1}, Lcom/oneplus/screenshot/LongshotService$Finisher;-><init>(Lcom/oneplus/screenshot/LongshotService;Lcom/oneplus/longshot/ILongScreenshotCallback;)V

    iget-object v1, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->this$0:Lcom/oneplus/screenshot/LongshotService;

    invoke-static {v1}, Lcom/oneplus/screenshot/LongshotService;->access$100(Lcom/oneplus/screenshot/LongshotService;)Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->mStatusBarVisible:Z

    iget-boolean v3, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->mNavBarVisible:Z

    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->start(Ljava/lang/Runnable;Lcom/oneplus/longshot/ILongScreenshotCallback;ZZ)V

    return-void
.end method

.method public stopLongshot(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->this$0:Lcom/oneplus/screenshot/LongshotService;

    invoke-static {v0}, Lcom/oneplus/screenshot/LongshotService;->access$100(Lcom/oneplus/screenshot/LongshotService;)Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->stop(I)V

    return-void
.end method
