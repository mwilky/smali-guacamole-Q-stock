.class public Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;
.super Lcom/android/settings/core/InstrumentedPreferenceFragment;
.source "AodSmartDisplaySettingsFragment.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final CALENDAR_PREFERENCE_KEY:Ljava/lang/String; = "aod_smart_display_calender"

.field private static final KEY_CALENDAR_ENABLED:Ljava/lang/String; = "aod_smart_display_calendar_enabled"

.field private static final KEY_MUSIC_INFO_ENABLED:Ljava/lang/String; = "aod_smart_display_music_info_enabled"

.field private static final KEY_SMART_DISPLAY_CUR_STATE:Ljava/lang/String; = "aod_smart_display_cur_state"

.field private static final MUSIC_PREFERENCE_KEY:Ljava/lang/String; = "aod_smart_display_music_info"

.field private static final TAG:Ljava/lang/String; = "AodSmartDisplaySettingsFragment"


# instance fields
.field private mAodSmartDisplayCurState:Z

.field private mCalendarEnabled:Z

.field private mCalendarPreference:Landroidx/preference/SwitchPreference;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private mMusicInfoEnabled:Z

.field private mMusicPreference:Landroidx/preference/SwitchPreference;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;-><init>()V

    return-void
.end method

.method private loadSettings()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mContentResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mCurrentUser:I

    const/4 v2, 0x1

    const-string v3, "aod_smart_display_cur_state"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x0

    if-ne v2, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mAodSmartDisplayCurState:Z

    iget-object v0, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mContentResolver:Landroid/content/ContentResolver;

    iget v3, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mCurrentUser:I

    const-string v4, "aod_smart_display_music_info_enabled"

    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v2, v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mMusicInfoEnabled:Z

    iget-object v0, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mContentResolver:Landroid/content/ContentResolver;

    iget v3, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mCurrentUser:I

    const-string v4, "aod_smart_display_calendar_enabled"

    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v2, v0, :cond_2

    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mCalendarEnabled:Z

    return-void
.end method

.method public static newInstance()Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;
    .locals 1

    new-instance v0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;

    invoke-direct {v0}, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;-><init>()V

    return-object v0
.end method

.method private updateSettings()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mContentResolver:Landroid/content/ContentResolver;

    iget-boolean v1, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mAodSmartDisplayCurState:Z

    iget v2, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mCurrentUser:I

    const-string v3, "aod_smart_display_cur_state"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mContentResolver:Landroid/content/ContentResolver;

    iget-boolean v1, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mMusicInfoEnabled:Z

    iget v2, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mCurrentUser:I

    const-string v3, "aod_smart_display_music_info_enabled"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mContentResolver:Landroid/content/ContentResolver;

    iget-boolean v1, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mCalendarEnabled:Z

    iget v2, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mCurrentUser:I

    const-string v3, "aod_smart_display_calendar_enabled"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f160012

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mCurrentUser:I

    invoke-direct {p0}, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->loadSettings()V

    invoke-virtual {p0}, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsActivity;

    invoke-virtual {v0}, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v0, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    const v1, 0x7f120c08

    invoke-virtual {v0, v1, v1}, Lcom/android/settings/widget/SwitchBar;->setSwitchBarText(II)V

    iget-object v0, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-boolean v1, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mAodSmartDisplayCurState:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "aod_smart_display_music_info"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SwitchPreference;

    iput-object v1, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mMusicPreference:Landroidx/preference/SwitchPreference;

    iget-object v1, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mMusicPreference:Landroidx/preference/SwitchPreference;

    iget-boolean v2, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mMusicInfoEnabled:Z

    invoke-virtual {v1, v2}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mMusicPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "aod_smart_display_calender"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SwitchPreference;

    iput-object v1, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mCalendarPreference:Landroidx/preference/SwitchPreference;

    iget-object v1, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mCalendarPreference:Landroidx/preference/SwitchPreference;

    iget-boolean v2, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mCalendarEnabled:Z

    invoke-virtual {v1, v2}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mCalendarPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-boolean v1, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mAodSmartDisplayCurState:Z

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mMusicPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mCalendarPreference:Landroidx/preference/SwitchPreference;

    iget-boolean v2, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mAodSmartDisplayCurState:Z

    invoke-virtual {v1, v2}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferenceChange preference changed key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AodSmartDisplaySettingsFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "aod_smart_display_music_info"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mMusicInfoEnabled:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "aod_smart_display_calender"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mCalendarEnabled:Z

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->updateSettings()V

    const/4 v1, 0x1

    return v1
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSwitchChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AodSmartDisplaySettingsFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p2, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mAodSmartDisplayCurState:Z

    iget-object v0, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mMusicPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p2}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mCalendarPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p2}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->updateSettings()V

    return-void
.end method
