.class Lcom/android/systemui/statusbar/phone/LockIcon$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "LockIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/LockIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/LockIcon;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/LockIcon;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method public onFacelockStateChanged(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFacelockStateChanged, type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LockIcon"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(Z)V

    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpLockIcon;->opSetDeviceInteractive(Z)V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$302(Lcom/android/systemui/statusbar/phone/LockIcon;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/statusbar/phone/OpLockIcon;->opSetScreenOn(Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$302(Lcom/android/systemui/statusbar/phone/LockIcon;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/statusbar/phone/OpLockIcon;->opSetScreenOn(Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$400(Lcom/android/systemui/statusbar/phone/LockIcon;)Z

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$500(Lcom/android/systemui/statusbar/phone/LockIcon;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result p3

    invoke-static {p2, p3}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$402(Lcom/android/systemui/statusbar/phone/LockIcon;Z)Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$400(Lcom/android/systemui/statusbar/phone/LockIcon;)Z

    move-result p2

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(Z)V

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/statusbar/phone/OpLockIcon;->opSetDeviceInteractive(Z)V

    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method
