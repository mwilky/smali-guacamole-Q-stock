.class Lcom/oneplus/faceunlock/OpFacelockController$10;
.super Ljava/lang/Object;
.source "OpFacelockController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/OpFacelockController;->unlockKeyguard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/faceunlock/OpFacelockController;

.field final synthetic val$bouncerShow:Z

.field final synthetic val$liveWP:Z


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/OpFacelockController;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$10;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    iput-boolean p2, p0, Lcom/oneplus/faceunlock/OpFacelockController$10;->val$liveWP:Z

    iput-boolean p3, p0, Lcom/oneplus/faceunlock/OpFacelockController$10;->val$bouncerShow:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$10;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$1800(Lcom/oneplus/faceunlock/OpFacelockController;)Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$10;->val$liveWP:Z

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$10;->val$bouncerShow:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x6

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$10;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2200(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isMotorCameraSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$10;->val$liveWP:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$10;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2200(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$10;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2800(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onWakeAndUnlocking()V

    const/4 v1, 0x0

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$10;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2900(Lcom/oneplus/faceunlock/OpFacelockController;)V

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$10;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    iget-object v0, v0, Lcom/oneplus/faceunlock/OpFacelockController;->mFPC:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->startWakeAndUnlockForFace(I)V

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$10;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-virtual {v0}, Lcom/oneplus/faceunlock/OpFacelockController;->isLighModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$10;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3000(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/oneplus/faceunlock/OpFacelockLightView;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$10;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$3000(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/oneplus/faceunlock/OpFacelockLightView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    :cond_4
    return-void
.end method
