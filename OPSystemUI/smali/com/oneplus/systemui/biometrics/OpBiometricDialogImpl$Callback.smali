.class Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$Callback;
.super Ljava/lang/Object;
.source "OpBiometricDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/biometrics/DialogViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;


# direct methods
.method private constructor <init>(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$Callback;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$Callback;-><init>(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V

    return-void
.end method


# virtual methods
.method public onErrorShown()V
    .locals 0

    return-void
.end method

.method public onNegativePressed()V
    .locals 0

    return-void
.end method

.method public onPositivePressed()V
    .locals 0

    return-void
.end method

.method public onTryAgainPressed()V
    .locals 0

    return-void
.end method

.method public onUserCanceled()V
    .locals 0

    return-void
.end method
