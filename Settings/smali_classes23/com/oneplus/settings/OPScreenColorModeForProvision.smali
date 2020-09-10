.class public Lcom/oneplus/settings/OPScreenColorModeForProvision;
.super Lcom/android/settings/core/SettingsBaseActivity;
.source "OPScreenColorModeForProvision.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/SettingsBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/SettingsBaseActivity;->onBackPressed()V

    invoke-virtual {p0}, Lcom/oneplus/settings/OPScreenColorModeForProvision;->finish()V

    const v0, 0x7f010058

    const v1, 0x7f010059

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/OPScreenColorModeForProvision;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d020d

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPScreenColorModeForProvision;->setContentView(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/OPScreenColorModeForProvision;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2100

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    new-instance v0, Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-direct {v0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;-><init>()V

    invoke-virtual {p0}, Lcom/oneplus/settings/OPScreenColorModeForProvision;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0a03bb

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    const v2, 0x7f0a0437

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/OPScreenColorModeForProvision;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v3, Lcom/oneplus/settings/OPScreenColorModeForProvision$1;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/OPScreenColorModeForProvision$1;-><init>(Lcom/oneplus/settings/OPScreenColorModeForProvision;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
