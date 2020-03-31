.class Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$2;
.super Ljava/lang/Object;
.source "OpFingerprintDialogView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;-><init>(Landroid/content/Context;Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;Lcom/android/systemui/biometrics/DialogViewCallback;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field downPressed:Z

.field final synthetic this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$2;->downPressed:Z

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$2;->downPressed:Z

    if-nez p2, :cond_1

    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$2;->downPressed:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_2

    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$2;->downPressed:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-ne p2, v0, :cond_3

    iget-boolean p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$2;->downPressed:Z

    if-ne p2, v0, :cond_3

    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$2;->downPressed:Z

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$2;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$2500(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/android/systemui/biometrics/DialogViewCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/biometrics/DialogViewCallback;->onUserCanceled()V

    :cond_3
    :goto_0
    return v0
.end method
