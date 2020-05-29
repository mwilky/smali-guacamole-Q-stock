.class Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$5;
.super Ljava/lang/Object;
.source "OpFingerprintDialogView.java"

# interfaces
.implements Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;


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

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$5;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public animationFinished()V
    .locals 3

    const-string v0, "OpFingerprintDialogView"

    const-string v1, "animationFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$5;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$1700(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$5;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$1800(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$5;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$1400(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->collapseTransparentLayout()V

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$5;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    iget-boolean v1, v1, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    if-eqz v1, :cond_0

    const-string v1, "Pending hide fingerprint dialog until animation end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$5;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    invoke-static {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$1902(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)Z

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$5;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$1400(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    move-result-object v0

    const-string v2, "animation finished"

    invoke-virtual {v0, v2}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->hideFodDialogInner(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$5;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {p0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateIconVisibility(Z)V

    :cond_0
    return-void
.end method
