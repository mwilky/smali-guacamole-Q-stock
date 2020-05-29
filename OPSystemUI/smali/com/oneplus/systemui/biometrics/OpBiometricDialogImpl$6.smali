.class Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$6;
.super Ljava/lang/Object;
.source "OpBiometricDialogImpl.java"

# interfaces
.implements Lcom/oneplus/systemui/biometrics/OpQLController$QLStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$6;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQLVisibilityChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$6;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    iget-object p1, p1, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodFingerTouchValidator:Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->reset()V

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$6;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->collapseTransparentLayout()V

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$6;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isDialogShowing()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$6;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$1300(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Z

    :cond_0
    return-void
.end method
