.class public Lcom/android/settings/notification/ZenCustomRuleConfigSettings;
.super Lcom/android/settings/notification/ZenCustomRuleSettingsBase;
.source "ZenCustomRuleConfigSettings.java"


# static fields
.field private static final ALARMS_KEY:Ljava/lang/String; = "zen_rule_alarms"

.field private static final CALLS_KEY:Ljava/lang/String; = "zen_rule_calls_settings"

.field private static final EVENTS_KEY:Ljava/lang/String; = "zen_rule_events"

.field private static final MEDIA_KEY:Ljava/lang/String; = "zen_rule_media"

.field private static final MESSAGES_KEY:Ljava/lang/String; = "zen_rule_messages_settings"

.field private static final NOTIFICATIONS_KEY:Ljava/lang/String; = "zen_rule_notifications"

.field private static final PREFERENCE_CATEGORY_KEY:Ljava/lang/String; = "zen_custom_rule_configuration_category"

.field private static final REMINDERS_KEY:Ljava/lang/String; = "zen_rule_reminders"

.field private static final SYSTEM_KEY:Ljava/lang/String; = "zen_rule_system"


# instance fields
.field private mCallsPreference:Landroidx/preference/Preference;

.field private mMessagesPreference:Landroidx/preference/Preference;

.field private mNotificationsPreference:Landroidx/preference/Preference;

.field private mSummaryBuilder:Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/ZenCustomRuleSettingsBase;-><init>()V

    return-void
.end method

.method private updateSummaries()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    iget-object v1, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenModeBackend;->toNotificationPolicy(Landroid/service/notification/ZenPolicy;)Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->mCallsPreference:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->mSummaryBuilder:Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;

    invoke-virtual {v2, v0}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->getCallsSettingSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->mMessagesPreference:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->mSummaryBuilder:Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;

    invoke-virtual {v2, v0}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->getMessagesSettingSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->mNotificationsPreference:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->mSummaryBuilder:Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;

    invoke-virtual {v2, v0}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->getBlockedEffectsSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 8
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

    iput-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->mControllers:Ljava/util/List;

    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->mControllers:Ljava/util/List;

    new-instance v7, Lcom/android/settings/notification/ZenRuleCustomSwitchPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    const-string v4, "zen_rule_alarms"

    const/4 v5, 0x5

    const/16 v6, 0x4ca

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/notification/ZenRuleCustomSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->mControllers:Ljava/util/List;

    new-instance v7, Lcom/android/settings/notification/ZenRuleCustomSwitchPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    const-string v4, "zen_rule_media"

    const/4 v5, 0x6

    const/16 v6, 0x4cb

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/notification/ZenRuleCustomSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->mControllers:Ljava/util/List;

    new-instance v7, Lcom/android/settings/notification/ZenRuleCustomSwitchPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    const-string v4, "zen_rule_system"

    const/4 v5, 0x7

    const/16 v6, 0x53c

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/notification/ZenRuleCustomSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->mControllers:Ljava/util/List;

    new-instance v7, Lcom/android/settings/notification/ZenRuleCustomSwitchPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    const-string v4, "zen_rule_reminders"

    const/4 v5, 0x0

    const/16 v6, 0xa7

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/notification/ZenRuleCustomSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->mControllers:Ljava/util/List;

    new-instance v7, Lcom/android/settings/notification/ZenRuleCustomSwitchPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    const-string v4, "zen_rule_events"

    const/4 v5, 0x1

    const/16 v6, 0xa8

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/notification/ZenRuleCustomSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->mControllers:Ljava/util/List;

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

    const/16 v0, 0x645

    return v0
.end method

.method getPreferenceCategoryKey()Ljava/lang/String;
    .locals 1

    const-string v0, "zen_custom_rule_configuration_category"

    return-object v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f16011f

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

    new-instance v0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;

    iget-object v1, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->mSummaryBuilder:Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "zen_rule_calls_settings"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->mCallsPreference:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->mCallsPreference:Landroidx/preference/Preference;

    new-instance v1, Lcom/android/settings/notification/ZenCustomRuleConfigSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/ZenCustomRuleConfigSettings$1;-><init>(Lcom/android/settings/notification/ZenCustomRuleConfigSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "zen_rule_messages_settings"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->mMessagesPreference:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->mMessagesPreference:Landroidx/preference/Preference;

    new-instance v1, Lcom/android/settings/notification/ZenCustomRuleConfigSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/ZenCustomRuleConfigSettings$2;-><init>(Lcom/android/settings/notification/ZenCustomRuleConfigSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "zen_rule_notifications"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->mNotificationsPreference:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->mNotificationsPreference:Landroidx/preference/Preference;

    new-instance v1, Lcom/android/settings/notification/ZenCustomRuleConfigSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/ZenCustomRuleConfigSettings$3;-><init>(Lcom/android/settings/notification/ZenCustomRuleConfigSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-direct {p0}, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->updateSummaries()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/notification/ZenCustomRuleSettingsBase;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->updateSummaries()V

    return-void
.end method

.method public onZenModeConfigChanged()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/notification/ZenCustomRuleSettingsBase;->onZenModeConfigChanged()V

    invoke-direct {p0}, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->updateSummaries()V

    return-void
.end method

.method public bridge synthetic updatePreferences()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/notification/ZenCustomRuleSettingsBase;->updatePreferences()V

    return-void
.end method
