.class public Lcom/android/settings/notification/ZenCustomRuleNotificationsSettings;
.super Lcom/android/settings/notification/ZenCustomRuleSettingsBase;
.source "ZenCustomRuleNotificationsSettings.java"


# static fields
.field private static final PREFERENCE_CATEGORY_KEY:Ljava/lang/String; = "restrict_category"

.field private static final VIS_EFFECTS_ALL_KEY:Ljava/lang/String; = "zen_mute_notifications"

.field private static final VIS_EFFECTS_CUSTOM_KEY:Ljava/lang/String; = "zen_custom"

.field private static final VIS_EFFECTS_NONE_KEY:Ljava/lang/String; = "zen_hide_notifications"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/ZenCustomRuleSettingsBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 4
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

    iput-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleNotificationsSettings;->mControllers:Ljava/util/List;

    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleNotificationsSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/ZenRuleVisEffectsAllPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleNotificationsSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    const-string v3, "zen_mute_notifications"

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/notification/ZenRuleVisEffectsAllPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleNotificationsSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/ZenRuleVisEffectsNonePreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleNotificationsSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    const-string v3, "zen_hide_notifications"

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/notification/ZenRuleVisEffectsNonePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleNotificationsSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/ZenRuleVisEffectsCustomPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleNotificationsSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    const-string v3, "zen_custom"

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/notification/ZenRuleVisEffectsCustomPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleNotificationsSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/ZenRuleNotifFooterPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleNotificationsSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    const-string v3, "footer_preference"

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/notification/ZenRuleNotifFooterPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleNotificationsSettings;->mControllers:Ljava/util/List;

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

    const/16 v0, 0x648

    return v0
.end method

.method getPreferenceCategoryKey()Ljava/lang/String;
    .locals 1

    const-string v0, "restrict_category"

    return-object v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f160123

    return v0
.end method

.method public bridge synthetic onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenCustomRuleSettingsBase;->onAttach(Landroid/content/Context;)V

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
