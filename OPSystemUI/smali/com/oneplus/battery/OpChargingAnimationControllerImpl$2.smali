.class Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "OpChargingAnimationControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/battery/OpChargingAnimationControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardBouncerChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0, p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$902(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;Z)Z

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$200(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyguardBouncerChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v2}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$900(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpWarpChargingView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/battery/OpWarpChargingView;->stopAnimation()V

    :cond_0
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$200(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyguardVisibilityChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0, p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$802(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;Z)Z

    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$800(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpWarpChargingView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/battery/OpWarpChargingView;->stopAnimation()V

    :cond_0
    return-void
.end method

.method public onPreventModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0, p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$1002(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;Z)Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpWarpChargingView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/battery/OpWarpChargingView;->stopAnimation()V

    :cond_0
    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    iget v1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-static {v0, v2}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$502(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;Z)Z

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$200(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefreshBatteryInfo / mPluggedButNotUsb:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v2}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$500(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " / status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$400(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$500(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$600(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpWarpChargingView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/battery/OpWarpChargingView;->stopAnimation()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 1

    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$200(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onStartedGoingToSleep"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpWarpChargingView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/battery/OpWarpChargingView;->stopAnimation()V

    :cond_0
    return-void
.end method
