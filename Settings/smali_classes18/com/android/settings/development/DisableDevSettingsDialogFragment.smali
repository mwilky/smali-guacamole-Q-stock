.class public Lcom/android/settings/development/DisableDevSettingsDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "DisableDevSettingsDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "DisableDevSettingDlg"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method static newInstance()Lcom/android/settings/development/DisableDevSettingsDialogFragment;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/android/settings/development/DisableDevSettingsDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/development/DisableDevSettingsDialogFragment;-><init>()V

    return-object v0
.end method

.method public static show(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V
    .locals 3

    new-instance v0, Lcom/android/settings/development/DisableDevSettingsDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/development/DisableDevSettingsDialogFragment;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/development/DisableDevSettingsDialogFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "DisableDevSettingDlg"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/development/DisableDevSettingsDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x637

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/development/DisableDevSettingsDialogFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    if-nez v1, :cond_0

    const-string v1, "DisableDevSettingDlg"

    const-string v2, "getTargetFragment return unexpected type"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    invoke-virtual {v1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->onDisableDevelopmentOptionsConfirmed()V

    invoke-virtual {p0}, Lcom/android/settings/development/DisableDevSettingsDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/os/PowerManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->onDisableDevelopmentOptionsRejected()V

    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/development/DisableDevSettingsDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120304

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120305

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120303

    invoke-virtual {v0, v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120302

    invoke-virtual {v0, v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
