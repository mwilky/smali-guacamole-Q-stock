.class Lcom/android/settings/biometrics/BiometricErrorDialog$1;
.super Ljava/lang/Object;
.source "BiometricErrorDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/biometrics/BiometricErrorDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/BiometricErrorDialog;

.field final synthetic val$errMsgId:I


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/BiometricErrorDialog;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricErrorDialog$1;->this$0:Lcom/android/settings/biometrics/BiometricErrorDialog;

    iput p2, p0, Lcom/android/settings/biometrics/BiometricErrorDialog$1;->val$errMsgId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget v0, p0, Lcom/android/settings/biometrics/BiometricErrorDialog$1;->val$errMsgId:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/settings/biometrics/BiometricErrorDialog$1;->this$0:Lcom/android/settings/biometrics/BiometricErrorDialog;

    invoke-virtual {v3}, Lcom/android/settings/biometrics/BiometricErrorDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    if-eqz v0, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    nop

    :goto_1
    invoke-virtual {v3, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    return-void
.end method
