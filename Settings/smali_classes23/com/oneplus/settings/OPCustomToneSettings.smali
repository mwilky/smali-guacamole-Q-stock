.class public Lcom/oneplus/settings/OPCustomToneSettings;
.super Lcom/oneplus/settings/OPQuitConfirmFragment;
.source "OPCustomToneSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/oneplus/settings/OnBackPressListener;


# static fields
.field private static final KEY_PREFERENCE:Ljava/lang/String; = "op_custom_fingerprint_anim"


# instance fields
.field private mCustomTonePreference:Lcom/oneplus/settings/ui/OPCustomTonePreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/OPQuitConfirmFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/OPCustomToneSettings;)Lcom/oneplus/settings/ui/OPCustomTonePreference;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPCustomToneSettings;->mCustomTonePreference:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    return-object v0
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "OPCustomToneSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f160090

    return v0
.end method

.method public synthetic lambda$onCreateOptionsMenu$0$OPCustomToneSettings(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/oneplus/settings/OPCustomToneSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/oneplus/settings/OPCustomToneSettings$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/OPCustomToneSettings$1;-><init>(Lcom/oneplus/settings/OPCustomToneSettings;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    return v0
.end method

.method protected needShowWarningDialog()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPCustomToneSettings;->mCustomTonePreference:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->needShowWarningDialog()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/oneplus/settings/OPQuitConfirmFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPCustomToneSettings;->setHasOptionsMenu(Z)V

    const-string v0, "op_custom_fingerprint_anim"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPCustomToneSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPCustomTonePreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPCustomToneSettings;->mCustomTonePreference:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/oneplus/settings/OPQuitConfirmFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCancelPressed()V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/settings/OPCustomToneSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method public onConfirmPressed()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPCustomToneSettings;->mCustomTonePreference:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->saveSelectedTone()V

    invoke-virtual {p0}, Lcom/oneplus/settings/OPCustomToneSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/oneplus/settings/OPQuitConfirmFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, p0}, Lcom/oneplus/settings/OPCustomToneSettings;->setOnBackPressListener(Lcom/oneplus/settings/OnBackPressListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x7f120cc4

    const/4 v1, 0x0

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0804ad

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    new-instance v1, Lcom/oneplus/settings/-$$Lambda$OPCustomToneSettings$epD9P_6do2KzQcx36E6hd77bAQI;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/-$$Lambda$OPCustomToneSettings$epD9P_6do2KzQcx36E6hd77bAQI;-><init>(Lcom/oneplus/settings/OPCustomToneSettings;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/oneplus/settings/OPQuitConfirmFragment;->onDestroy()V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/oneplus/settings/OPQuitConfirmFragment;->onResume()V

    return-void
.end method
