.class public Lcom/oneplus/settings/aod/AodSmartDisplaySettingsActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "AodSmartDisplaySettingsActivity.java"


# static fields
.field public static final THEME_ANDROID:I = 0x2

.field public static final THEME_BLACK:I = 0x1

.field public static final THEME_WHITE:I


# instance fields
.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private getThemeColor()I
    .locals 4

    invoke-virtual {p0}, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_black_mode"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getSwitchBar()Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsActivity;->getThemeColor()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit16 v0, v0, 0x2010

    invoke-virtual {p0}, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    const v0, 0x7f0d02c0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_1
    invoke-static {}, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->newInstance()Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f0a03bb

    invoke-virtual {v2, v3, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    const v3, 0x7f0a06a4

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/widget/SwitchBar;

    iput-object v3, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v3, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->show()V

    return-void
.end method

.method public onNavigateUp()Z
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onNavigateUp()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsActivity;->finish()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
