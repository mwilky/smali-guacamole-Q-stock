.class public Lcom/android/settings/notification/ZenModePriorityCallsPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenModePriorityCallsPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field protected static final KEY:Ljava/lang/String; = "zen_mode_calls"


# instance fields
.field private final mBackend:Lcom/android/settings/notification/ZenModeBackend;

.field private final mListValues:[Ljava/lang/String;

.field private mPreference:Landroidx/preference/ListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 2

    const-string v0, "zen_mode_calls"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-static {p1}, Lcom/android/settings/notification/ZenModeBackend;->getInstance(Landroid/content/Context;)Lcom/android/settings/notification/ZenModeBackend;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModePriorityCallsPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030146

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModePriorityCallsPreferenceController;->mListValues:[Ljava/lang/String;

    return-void
.end method

.method private updateFromContactsValue(Landroidx/preference/Preference;)V
    .locals 4

    move-object v0, p1

    check-cast v0, Landroidx/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/notification/ZenModePriorityCallsPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModePriorityCallsPreferenceController;->getZenMode()I

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x8

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModePriorityCallsPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    invoke-virtual {v0, v2}, Lcom/android/settings/notification/ZenModeBackend;->getContactsSummary(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModePriorityCallsPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeBackend;->getPriorityCallSenders()I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeBackend;->getKeyFromSetting(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModePriorityCallsPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModePriorityCallsPreferenceController;->mListValues:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModePriorityCallsPreferenceController;->getIndexOfSendersValue(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePriorityCallsPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModePriorityCallsPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    const-string v1, "zen_mode_from_none"

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModePriorityCallsPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModePriorityCallsPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/ZenModeBackend;->getAlarmsTotalSilenceCallsMessagesSummary(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setSummary(I)V

    nop

    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "zen_mode_calls"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/notification/ZenModePriorityCallsPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    return-void
.end method

.method protected getIndexOfSendersValue(Ljava/lang/String;)I
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/notification/ZenModePriorityCallsPreferenceController;->mListValues:[Ljava/lang/String;

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

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "zen_mode_calls"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/ZenModePriorityCallsPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeBackend;->getSettingFromPrefKey(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/notification/ZenModeBackend;->saveSenders(II)V

    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModePriorityCallsPreferenceController;->updateFromContactsValue(Landroidx/preference/Preference;)V

    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->updateState(Landroidx/preference/Preference;)V

    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModePriorityCallsPreferenceController;->updateFromContactsValue(Landroidx/preference/Preference;)V

    return-void
.end method
