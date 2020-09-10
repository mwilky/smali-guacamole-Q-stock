.class public Lcom/android/settings/security/UnificationConfirmationDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "UnificationConfirmationDialog.java"


# static fields
.field private static final EXTRA_COMPLIANT:Ljava/lang/String; = "compliant"

.field static final TAG_UNIFICATION_DIALOG:Ljava/lang/String; = "unification_dialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic lambda$onCreateDialog$0(Lcom/android/settings/security/SecuritySettings;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/security/SecuritySettings;->startUnification()V

    return-void
.end method

.method public static newInstance(Z)Lcom/android/settings/security/UnificationConfirmationDialog;
    .locals 3

    new-instance v0, Lcom/android/settings/security/UnificationConfirmationDialog;

    invoke-direct {v0}, Lcom/android/settings/security/UnificationConfirmationDialog;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "compliant"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/android/settings/security/UnificationConfirmationDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x214

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/security/UnificationConfirmationDialog;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/security/SecuritySettings;

    invoke-virtual {p0}, Lcom/android/settings/security/UnificationConfirmationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "compliant"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/security/UnificationConfirmationDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f1209a0

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    if-eqz v1, :cond_0

    const v3, 0x7f12099e

    goto :goto_0

    :cond_0
    const v3, 0x7f1209a1

    :goto_0
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    if-eqz v1, :cond_1

    const v3, 0x7f12099f

    goto :goto_1

    :cond_1
    const v3, 0x7f1209a2

    :goto_1
    new-instance v4, Lcom/android/settings/security/-$$Lambda$UnificationConfirmationDialog$X7Z3K6rE64nwQwG_nB1_LYi-p7Y;

    invoke-direct {v4, v0}, Lcom/android/settings/security/-$$Lambda$UnificationConfirmationDialog$X7Z3K6rE64nwQwG_nB1_LYi-p7Y;-><init>(Lcom/android/settings/security/SecuritySettings;)V

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f1203eb

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    invoke-virtual {p0}, Lcom/android/settings/security/UnificationConfirmationDialog;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/security/SecuritySettings;

    invoke-virtual {v0}, Lcom/android/settings/security/SecuritySettings;->updateUnificationPreference()V

    return-void
.end method

.method public show(Lcom/android/settings/security/SecuritySettings;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/settings/security/SecuritySettings;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "unification_dialog"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/security/UnificationConfirmationDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
