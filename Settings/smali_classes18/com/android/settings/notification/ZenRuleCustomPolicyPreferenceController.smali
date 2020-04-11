.class public Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;
.super Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;
.source "ZenRuleCustomPolicyPreferenceController.java"


# instance fields
.field private mPreference:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p3, p2}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method

.method private launchCustomSettings()V
    .locals 2

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;->createBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const/16 v1, 0x645

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private setCustomPolicy()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    new-instance v2, Landroid/service/notification/ZenPolicy;

    invoke-direct {v2}, Landroid/service/notification/ZenPolicy;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/ZenModeBackend;->setDefaultZenPolicy(Landroid/service/notification/ZenPolicy;)Landroid/service/notification/ZenPolicy;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AutomaticZenRule;->setZenPolicy(Landroid/service/notification/ZenPolicy;)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;->mId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/ZenModeBackend;->updateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    iput-object v0, p0, Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;->mPreference:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;->mPreference:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    new-instance v1, Lcom/android/settings/notification/-$$Lambda$ZenRuleCustomPolicyPreferenceController$N3pfMocipb0lRSlCYMYgNcn0W84;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/-$$Lambda$ZenRuleCustomPolicyPreferenceController$N3pfMocipb0lRSlCYMYgNcn0W84;-><init>(Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->setOnGearClickListener(Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnGearClickListener;)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;->mPreference:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    new-instance v1, Lcom/android/settings/notification/-$$Lambda$ZenRuleCustomPolicyPreferenceController$rozUd_umy4kOblAoV4bi5qZtyOA;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/-$$Lambda$ZenRuleCustomPolicyPreferenceController$rozUd_umy4kOblAoV4bi5qZtyOA;-><init>(Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->setOnRadioButtonClickListener(Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;)V

    return-void
.end method

.method public bridge synthetic isAvailable()Z
    .locals 1

    invoke-super {p0}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$displayPreference$0$ZenRuleCustomPolicyPreferenceController(Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;->setCustomPolicy()V

    invoke-direct {p0}, Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;->launchCustomSettings()V

    return-void
.end method

.method public synthetic lambda$displayPreference$1$ZenRuleCustomPolicyPreferenceController(Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;->setCustomPolicy()V

    invoke-direct {p0}, Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;->launchCustomSettings()V

    return-void
.end method

.method public bridge synthetic onResume(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->onResume(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;->mId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;->mPreference:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleCustomPolicyPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->setChecked(Z)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method
