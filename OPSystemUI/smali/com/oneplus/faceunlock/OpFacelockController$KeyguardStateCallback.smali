.class Lcom/oneplus/faceunlock/OpFacelockController$KeyguardStateCallback;
.super Lcom/android/internal/policy/IKeyguardStateCallback$Stub;
.source "OpFacelockController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/faceunlock/OpFacelockController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyguardStateCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/faceunlock/OpFacelockController;


# direct methods
.method private constructor <init>(Lcom/oneplus/faceunlock/OpFacelockController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$KeyguardStateCallback;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/faceunlock/OpFacelockController;Lcom/oneplus/faceunlock/OpFacelockController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/faceunlock/OpFacelockController$KeyguardStateCallback;-><init>(Lcom/oneplus/faceunlock/OpFacelockController;)V

    return-void
.end method


# virtual methods
.method public onDisabledStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onFingerprintStateChange(ZIII)V
    .locals 0

    return-void
.end method

.method public onHasLockscreenWallpaperChanged(Z)V
    .locals 0

    return-void
.end method

.method public onInputRestrictedStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPocketModeActiveChanged(Z)V
    .locals 0

    return-void
.end method

.method public onShowingStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onSimSecureStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$KeyguardStateCallback;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2100(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result v0

    if-eq v0, p1, :cond_1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$KeyguardStateCallback;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2200(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isMotorCameraSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$KeyguardStateCallback;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$300(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$KeyguardStateCallback;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2300(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$KeyguardStateCallback;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2200(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAutoFacelockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OpFacelockController"

    const-string v1, "onSimSecure to start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$KeyguardStateCallback;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/faceunlock/OpFacelockController;->tryToStartFaceLock(Z)Z

    :cond_0
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$KeyguardStateCallback;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p0, p1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2102(Lcom/oneplus/faceunlock/OpFacelockController;Z)Z

    :cond_1
    return-void
.end method

.method public onTrustedChanged(Z)V
    .locals 0

    return-void
.end method
