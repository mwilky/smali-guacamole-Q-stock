.class Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$2;
.super Ljava/lang/Object;
.source "OpBiometricDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;


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

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$2;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOff()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$2;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodFingerTouchValidator:Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->reset()V

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$2;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$700(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V

    return-void
.end method
