.class public Lcom/android/settings/notification/ZenRuleDefaultPolicyPreferenceController;
.super Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;
.source "ZenRuleDefaultPolicyPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mPreference:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p3, p2}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenRuleDefaultPolicyPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    iput-object v0, p0, Lcom/android/settings/notification/ZenRuleDefaultPolicyPreferenceController;->mPreference:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleDefaultPolicyPreferenceController;->mPreference:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    new-instance v1, Lcom/android/settings/notification/-$$Lambda$ZenRuleDefaultPolicyPreferenceController$Obbo1qtgLUoAgPGNg9z-KBCfOh0;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/-$$Lambda$ZenRuleDefaultPolicyPreferenceController$Obbo1qtgLUoAgPGNg9z-KBCfOh0;-><init>(Lcom/android/settings/notification/ZenRuleDefaultPolicyPreferenceController;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->setOnRadioButtonClickListener(Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;)V

    return-void
.end method

.method public bridge synthetic isAvailable()Z
    .locals 1

    invoke-super {p0}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$displayPreference$0$ZenRuleDefaultPolicyPreferenceController(Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleDefaultPolicyPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AutomaticZenRule;->setZenPolicy(Landroid/service/notification/ZenPolicy;)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleDefaultPolicyPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleDefaultPolicyPreferenceController;->mId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/notification/ZenRuleDefaultPolicyPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/ZenModeBackend;->updateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    return-void
.end method

.method public bridge synthetic onResume(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->onResume(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleDefaultPolicyPreferenceController;->mId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleDefaultPolicyPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleDefaultPolicyPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleDefaultPolicyPreferenceController;->mContext:Landroid/content/Context;

    const/16 v2, 0x646

    const/4 v3, 0x1

    new-array v4, v3, [Landroid/util/Pair;

    const/16 v5, 0x643

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/notification/ZenRuleDefaultPolicyPreferenceController;->mId:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleDefaultPolicyPreferenceController;->mPreference:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleDefaultPolicyPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v3, v6

    :goto_0
    invoke-virtual {v0, v3}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->setChecked(Z)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method
