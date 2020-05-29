.class Lcom/oneplus/aod/OpAodDisplayViewManager$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "OpAodDisplayViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/OpAodDisplayViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OpAodDisplayViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$2;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V

    iget-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$2;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$600(Lcom/oneplus/aod/OpAodDisplayViewManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p3, p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$2;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$500(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpFpAodIndicationText;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/aod/OpFpAodIndicationText;->resetState()V

    :cond_0
    return-void
.end method

.method public onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V

    iget-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$2;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$600(Lcom/oneplus/aod/OpAodDisplayViewManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p3, p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$2;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$500(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpFpAodIndicationText;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/aod/OpFpAodIndicationText;->updateFPIndicationText(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDreamingStateChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onDreamingStateChanged(Z)V

    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$2;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$100(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpClockViewCtrl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/aod/OpClockViewCtrl;->onDreamingStateChanged(Z)V

    return-void
.end method

.method public onFingerprintAcquired(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onFingerprintAcquired(I)V

    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$2;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$600(Lcom/oneplus/aod/OpAodDisplayViewManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$2;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$500(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpFpAodIndicationText;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/aod/OpFpAodIndicationText;->resetState()V

    :cond_0
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFinishedGoingToSleep(I)V

    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$2;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$500(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpFpAodIndicationText;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/aod/OpFpAodIndicationText;->updateFPIndicationText(ZLjava/lang/String;)V

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 0

    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOff()V

    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$2;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$500(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpFpAodIndicationText;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/aod/OpFpAodIndicationText;->resetState()V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 0

    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOn()V

    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$2;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$100(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpClockViewCtrl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/aod/OpClockViewCtrl;->onScreenTurnedOn()V

    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$2;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$100(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpClockViewCtrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/OpClockViewCtrl;->onTimeChanged()V

    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$2;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$200(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/slice/OpSliceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/aod/slice/OpSliceManager;->onTimeChanged()V

    return-void
.end method

.method public onUserInfoChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserInfoChanged(I)V

    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$2;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$100(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpClockViewCtrl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/aod/OpClockViewCtrl;->onUserInfoChanged(I)V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$2;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$100(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpClockViewCtrl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/OpClockViewCtrl;->onUserSwitchComplete(I)V

    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$2;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$300(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpAodMain;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$2;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$100(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpClockViewCtrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/aod/OpClockViewCtrl;->getClockStyle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/OpAodMain;->setClockStyle(I)V

    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$2;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$300(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpAodMain;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/OpAodMain;->onUserSwitchComplete(I)V

    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$2;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$400(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpAodNotificationIconAreaController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->onUserSwitchComplete(I)V

    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$2;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$200(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/slice/OpSliceManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/aod/slice/OpSliceManager;->onUserSwitchComplete(I)V

    return-void
.end method
