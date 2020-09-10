.class public Lcom/android/settings/notification/ZenRuleMessagesPreferenceController;
.super Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;
.source "ZenRuleMessagesPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mListValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030146

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenRuleMessagesPreferenceController;->mListValues:[Ljava/lang/String;

    return-void
.end method

.method private updateFromContactsValue(Landroidx/preference/Preference;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleMessagesPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleMessagesPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleMessagesPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    iget-object v2, p0, Lcom/android/settings/notification/ZenRuleMessagesPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v2}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/ZenModeBackend;->getContactsMessagesSummary(Landroid/service/notification/ZenPolicy;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setSummary(I)V

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleMessagesPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result v1

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeBackend;->getKeyFromZenPolicySetting(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/ZenRuleMessagesPreferenceController;->mListValues:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenRuleMessagesPreferenceController;->getIndexOfSendersValue(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected getIndexOfSendersValue(Ljava/lang/String;)I
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/notification/ZenRuleMessagesPreferenceController;->mListValues:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public bridge synthetic isAvailable()Z
    .locals 1

    invoke-super {p0}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    nop

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeBackend;->getZenPolicySettingFromPrefKey(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleMessagesPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/notification/ZenRuleMessagesPreferenceController;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/util/Pair;

    const/16 v4, 0x642

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/16 v4, 0x643

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/notification/ZenRuleMessagesPreferenceController;->mId:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/16 v4, 0xa9

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleMessagesPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    new-instance v2, Landroid/service/notification/ZenPolicy$Builder;

    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleMessagesPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v3}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/service/notification/ZenPolicy$Builder;-><init>(Landroid/service/notification/ZenPolicy;)V

    invoke-virtual {v2, v0}, Landroid/service/notification/ZenPolicy$Builder;->allowMessages(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AutomaticZenRule;->setZenPolicy(Landroid/service/notification/ZenPolicy;)V

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleMessagesPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    iget-object v2, p0, Lcom/android/settings/notification/ZenRuleMessagesPreferenceController;->mId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/notification/ZenRuleMessagesPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/notification/ZenModeBackend;->updateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenRuleMessagesPreferenceController;->updateFromContactsValue(Landroidx/preference/Preference;)V

    return v5
.end method

.method public bridge synthetic onResume(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->onResume(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenCustomRulePreferenceController;->updateState(Landroidx/preference/Preference;)V

    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenRuleMessagesPreferenceController;->updateFromContactsValue(Landroidx/preference/Preference;)V

    return-void
.end method
