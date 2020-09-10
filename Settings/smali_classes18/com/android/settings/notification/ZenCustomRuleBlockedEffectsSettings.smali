.class public Lcom/android/settings/notification/ZenCustomRuleBlockedEffectsSettings;
.super Lcom/android/settings/notification/ZenCustomRuleSettingsBase;
.source "ZenCustomRuleBlockedEffectsSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/ZenCustomRuleSettingsBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleBlockedEffectsSettings;->mControllers:Ljava/util/List;

    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleBlockedEffectsSettings;->mControllers:Ljava/util/List;

    new-instance v8, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleBlockedEffectsSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    const-string v4, "zen_effect_intent"

    const/4 v5, 0x0

    const/16 v6, 0x534

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II[I)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleBlockedEffectsSettings;->mControllers:Ljava/util/List;

    new-instance v8, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleBlockedEffectsSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    const-string v4, "zen_effect_light"

    const/4 v5, 0x1

    const/16 v6, 0x535

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II[I)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleBlockedEffectsSettings;->mControllers:Ljava/util/List;

    new-instance v8, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleBlockedEffectsSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    const-string v4, "zen_effect_peek"

    const/4 v5, 0x2

    const/16 v6, 0x536

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II[I)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleBlockedEffectsSettings;->mControllers:Ljava/util/List;

    new-instance v8, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleBlockedEffectsSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    const/4 v1, 0x1

    new-array v7, v1, [I

    const/4 v1, 0x0

    const/4 v2, 0x6

    aput v2, v7, v1

    const-string v4, "zen_effect_status"

    const/4 v5, 0x3

    const/16 v6, 0x537

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II[I)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleBlockedEffectsSettings;->mControllers:Ljava/util/List;

    new-instance v8, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleBlockedEffectsSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    const-string v4, "zen_effect_badge"

    const/4 v5, 0x4

    const/16 v6, 0x538

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II[I)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleBlockedEffectsSettings;->mControllers:Ljava/util/List;

    new-instance v8, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleBlockedEffectsSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    const-string v4, "zen_effect_ambient"

    const/4 v5, 0x5

    const/16 v6, 0x539

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II[I)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleBlockedEffectsSettings;->mControllers:Ljava/util/List;

    new-instance v8, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleBlockedEffectsSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    const-string v4, "zen_effect_list"

    const/4 v5, 0x6

    const/16 v6, 0x53a

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/notification/ZenRuleVisEffectPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II[I)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleBlockedEffectsSettings;->mControllers:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getHelpResource()I
    .locals 1

    invoke-super {p0}, Lcom/android/settings/notification/ZenCustomRuleSettingsBase;->getHelpResource()I

    move-result v0

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x649

    return v0
.end method

.method getPreferenceCategoryKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f16011c

    return v0
.end method

.method public bridge synthetic onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenCustomRuleSettingsBase;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenCustomRuleSettingsBase;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleBlockedEffectsSettings;->mFooterPreferenceMixin:Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;

    invoke-virtual {v0}, Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;->createFooterPreference()Lcom/oneplus/settings/widget/OPFooterPreference;

    move-result-object v0

    const v1, 0x7f121a46

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/widget/OPFooterPreference;->setTitle(I)V

    return-void
.end method

.method public bridge synthetic onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/notification/ZenCustomRuleSettingsBase;->onResume()V

    return-void
.end method

.method public bridge synthetic onZenModeConfigChanged()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/notification/ZenCustomRuleSettingsBase;->onZenModeConfigChanged()V

    return-void
.end method

.method public bridge synthetic updatePreferences()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/notification/ZenCustomRuleSettingsBase;->updatePreferences()V

    return-void
.end method
