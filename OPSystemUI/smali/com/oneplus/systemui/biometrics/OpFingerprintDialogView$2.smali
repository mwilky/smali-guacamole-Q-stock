.class Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$2;
.super Ljava/lang/Object;
.source "OpFingerprintDialogView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$1400(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isFingerDown()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Press Timeout: pressed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpFingerprintDialogView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$1500(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$1600(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onFpPressedTimeOut()V

    :cond_0
    return-void
.end method
