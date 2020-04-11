.class public abstract Lcom/android/settings/biometrics/BiometricErrorDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "BiometricErrorDialog.java"


# static fields
.field public static final KEY_ERROR_ID:Ljava/lang/String; = "error_id"

.field public static final KEY_ERROR_MSG:Ljava/lang/String; = "error_msg"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getOkButtonTextResId()I
.end method

.method public abstract getTitleResId()I
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    new-instance v0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricErrorDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricErrorDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "error_msg"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricErrorDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "error_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricErrorDialog;->getTitleResId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setCancelable(Z)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setOnlyDarkTheme(Z)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricErrorDialog;->getOkButtonTextResId()I

    move-result v5

    new-instance v6, Lcom/android/settings/biometrics/BiometricErrorDialog$1;

    invoke-direct {v6, p0, v2}, Lcom/android/settings/biometrics/BiometricErrorDialog$1;-><init>(Lcom/android/settings/biometrics/BiometricErrorDialog;I)V

    invoke-virtual {v3, v5, v6}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->create()Lcom/oneplus/lib/app/OPAlertDialog;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/app/OPAlertDialog;->setCanceledOnTouchOutside(Z)V

    return-object v3
.end method
