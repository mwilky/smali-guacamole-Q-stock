.class public Lcom/oneplus/settings/OPScreenColorModeForSetupWizard;
.super Lcom/android/settings/core/SettingsBaseActivity;
.source "OPScreenColorModeForSetupWizard.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/SettingsBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d020e

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPScreenColorModeForSetupWizard;->setContentView(I)V

    new-instance v0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-direct {v0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;-><init>()V

    invoke-virtual {p0}, Lcom/oneplus/settings/OPScreenColorModeForSetupWizard;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0a03bb

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const v3, 0x7f0a0437

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/OPScreenColorModeForSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v4, Lcom/oneplus/settings/OPScreenColorModeForSetupWizard$1;

    invoke-direct {v4, p0, v2}, Lcom/oneplus/settings/OPScreenColorModeForSetupWizard$1;-><init>(Lcom/oneplus/settings/OPScreenColorModeForSetupWizard;Landroid/content/Intent;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
