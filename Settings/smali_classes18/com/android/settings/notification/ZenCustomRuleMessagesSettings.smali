.class public Lcom/android/settings/notification/ZenCustomRuleMessagesSettings;
.super Lcom/android/settings/notification/ZenCustomRuleSettingsBase;
.source "ZenCustomRuleMessagesSettings.java"


# static fields
.field private static final MESSAGES_KEY:Ljava/lang/String; = "zen_mode_messages"

.field private static final PREFERENCE_CATEGORY_KEY:Ljava/lang/String; = "zen_mode_settings_category_messages"

.field private static final STARRED_CONTACTS_KEY:Ljava/lang/String; = "zen_mode_starred_contacts_messages"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/ZenCustomRuleSettingsBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 5
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

    iput-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleMessagesSettings;->mControllers:Ljava/util/List;

    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleMessagesSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/ZenRuleMessagesPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleMessagesSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    const-string v3, "zen_mode_messages"

    invoke-direct {v1, p1, v3, v2}, Lcom/android/settings/notification/ZenRuleMessagesPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleMessagesSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/ZenRuleStarredContactsPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleMessagesSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    const/4 v3, 0x2

    const-string v4, "zen_mode_starred_contacts_messages"

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/android/settings/notification/ZenRuleStarredContactsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleMessagesSettings;->mControllers:Ljava/util/List;

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

    const/16 v0, 0x64a

    return v0
.end method

.method getPreferenceCategoryKey()Ljava/lang/String;
    .locals 1

    const-string v0, "zen_mode_settings_category_messages"

    return-object v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f160122

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

.method public updatePreferences()V
    .locals 6

    invoke-super {p0}, Lcom/android/settings/notification/ZenCustomRuleSettingsBase;->updatePreferences()V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRuleMessagesSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "footer_preference"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/ZenCustomRuleMessagesSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/notification/ZenCustomRuleMessagesSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v4}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f121970

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
