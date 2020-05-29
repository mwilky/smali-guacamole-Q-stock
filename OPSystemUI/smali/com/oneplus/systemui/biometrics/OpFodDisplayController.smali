.class public Lcom/oneplus/systemui/biometrics/OpFodDisplayController;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "OpFodDisplayController.java"

# interfaces
.implements Lcom/oneplus/systemui/biometrics/OpFodHelper$OnFingerprintStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;,
        Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControllerHelper;
    }
.end annotation


# instance fields
.field mAodControl:Lcom/oneplus/systemui/biometrics/OpFodAodControl;

.field mContext:Landroid/content/Context;

.field mDimControl:Lcom/oneplus/systemui/biometrics/OpFodDimControl;

.field mDisplayNotifier:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;

.field mFaceUnlocked:Z

.field mHighlightControl:Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;

.field mPm:Landroid/os/PowerManager;

.field mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mContext:Landroid/content/Context;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mPm:Landroid/os/PowerManager;

    new-instance v0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;

    invoke-direct {v0, p1}, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDisplayNotifier:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;

    new-instance p1, Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;

    invoke-direct {p1, p0}, Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;-><init>(Lcom/oneplus/systemui/biometrics/OpFodDisplayController;)V

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mHighlightControl:Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;

    new-instance p1, Lcom/oneplus/systemui/biometrics/OpFodDimControl;

    invoke-direct {p1, p0}, Lcom/oneplus/systemui/biometrics/OpFodDimControl;-><init>(Lcom/oneplus/systemui/biometrics/OpFodDisplayController;)V

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDimControl:Lcom/oneplus/systemui/biometrics/OpFodDimControl;

    new-instance p1, Lcom/oneplus/systemui/biometrics/OpFodAodControl;

    invoke-direct {p1, p0}, Lcom/oneplus/systemui/biometrics/OpFodAodControl;-><init>(Lcom/oneplus/systemui/biometrics/OpFodDisplayController;)V

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mAodControl:Lcom/oneplus/systemui/biometrics/OpFodAodControl;

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->addFingerprintStateChangeListener(Lcom/oneplus/systemui/biometrics/OpFodHelper$OnFingerprintStateChangeListener;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDimControl:Lcom/oneplus/systemui/biometrics/OpFodDimControl;

    const-string v0, "dismiss"

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFodDimControl;->disable(Ljava/lang/String;)Z

    return-void
.end method

.method public hideFODDim()V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDimControl:Lcom/oneplus/systemui/biometrics/OpFodDimControl;

    const-string v0, "early hide dim"

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFodDimControl;->disable(Ljava/lang/String;)Z

    return-void
.end method

.method public notifyFingerprintAuthenticated()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDimControl:Lcom/oneplus/systemui/biometrics/OpFodDimControl;

    const-string v0, "fp unlock"

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFodDimControl;->disable(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 2

    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result p1

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardDone()Z

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBiometricAuthenticated isInteractive:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isKeyguardVisible:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isKeyguardDone:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpFodDisplayController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mPm:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mAodControl:Lcom/oneplus/systemui/biometrics/OpFodAodControl;

    const-string p1, "fp authenticated"

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodAodControl;->disable(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public onFacelockStateChanged(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFacelockStateChanged: type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFodDisplayController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mFaceUnlocked:Z

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isKeyguardClient()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDimControl:Lcom/oneplus/systemui/biometrics/OpFodDimControl;

    const-string p1, "face unlocked"

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodDimControl;->disable(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public onFingerPressDown()V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mHighlightControl:Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;

    const-string v0, "finger press down"

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;->enable(Ljava/lang/String;)Z

    return-void
.end method

.method public onFingerPressUp()V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mHighlightControl:Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;

    const-string v0, "finger press up"

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;->disable(Ljava/lang/String;)Z

    return-void
.end method

.method public onFingerprintStateChanged()V
    .locals 2

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isFingerprintDetecting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mFaceUnlocked:Z

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDimControl:Lcom/oneplus/systemui/biometrics/OpFodDimControl;

    const-string v0, "fp register or resume"

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFodDimControl;->enable(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isFingerprintLockout()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDimControl:Lcom/oneplus/systemui/biometrics/OpFodDimControl;

    const-string v0, "lockout"

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFodDimControl;->disable(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isFingerprintSuspended()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDimControl:Lcom/oneplus/systemui/biometrics/OpFodDimControl;

    const-string v1, "suspend"

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFodDimControl;->disable(Ljava/lang/String;)Z

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mHighlightControl:Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;

    invoke-virtual {p0, v1}, Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;->disable(Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDimControl:Lcom/oneplus/systemui/biometrics/OpFodDimControl;

    const-string v0, "fp unregister"

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFodDimControl;->disable(Ljava/lang/String;)Z

    :goto_0
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mFaceUnlocked:Z

    return-void
.end method

.method public onKeyguardDoneChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDimControl:Lcom/oneplus/systemui/biometrics/OpFodDimControl;

    const-string v0, "keyguardDone"

    invoke-virtual {p1, v0}, Lcom/oneplus/systemui/biometrics/OpFodDimControl;->disable(Ljava/lang/String;)Z

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mHighlightControl:Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;->disable(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDimControl:Lcom/oneplus/systemui/biometrics/OpFodDimControl;

    const-string p1, "keyguard visibility change to show"

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodDimControl;->enable(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mAodControl:Lcom/oneplus/systemui/biometrics/OpFodAodControl;

    const-string v0, "screen turned off"

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFodAodControl;->enable(Ljava/lang/String;)Z

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDimControl:Lcom/oneplus/systemui/biometrics/OpFodDimControl;

    const-string v0, "screen on"

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFodDimControl;->enable(Ljava/lang/String;)Z

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDimControl:Lcom/oneplus/systemui/biometrics/OpFodDimControl;

    const-string v1, "start waking up"

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFodDimControl;->enable(Ljava/lang/String;)Z

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mAodControl:Lcom/oneplus/systemui/biometrics/OpFodAodControl;

    invoke-virtual {p0, v1}, Lcom/oneplus/systemui/biometrics/OpFodAodControl;->disable(Ljava/lang/String;)Z

    return-void
.end method

.method public resetState()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDimControl:Lcom/oneplus/systemui/biometrics/OpFodDimControl;

    const-string v1, "reset state"

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFodDimControl;->disable(Ljava/lang/String;)Z

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mHighlightControl:Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;

    invoke-virtual {p0, v1}, Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;->disable(Ljava/lang/String;)Z

    return-void
.end method
