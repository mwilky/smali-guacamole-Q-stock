.class public abstract Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "VibrationIntensityPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/VibrationIntensityPreferenceController$SettingObserver;
    }
.end annotation


# instance fields
.field private final mEnabledKey:Ljava/lang/String;

.field private mPreference:Landroidx/preference/Preference;

.field private final mSettingKey:Ljava/lang/String;

.field private final mSettingsContentObserver:Lcom/android/settings/accessibility/VibrationIntensityPreferenceController$SettingObserver;

.field private final mSupportRampingRinger:Z

.field protected final mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mVibrator:Landroid/os/Vibrator;

    iput-object p3, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mSettingKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mEnabledKey:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mSupportRampingRinger:Z

    new-instance v0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController$1;

    invoke-direct {v0, p0, p3}, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController$1;-><init>(Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mSettingsContentObserver:Lcom/android/settings/accessibility/VibrationIntensityPreferenceController$SettingObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;)Landroidx/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object v0
.end method

.method public static getIntensityString(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const-string v1, ""

    return-object v1

    :cond_0
    const v1, 0x7f1200aa

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    const v1, 0x7f1200ac

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    const v1, 0x7f1200ab

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3
    const v1, 0x7f1200ad

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_4
    if-nez p1, :cond_5

    const v1, 0x7f1215ee

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_5
    const v1, 0x7f1215ef

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method protected abstract getDefaultIntensity()I
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mSettingKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->getDefaultIntensity()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mEnabledKey:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mSupportRampingRinger:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->isRampingRingerEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    move v1, v3

    iget-object v3, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    move v2, v0

    :cond_2
    invoke-static {v3, v2}, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->getIntensityString(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method public onStart()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mSettingsContentObserver:Lcom/android/settings/accessibility/VibrationIntensityPreferenceController$SettingObserver;

    iget-object v1, v1, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController$SettingObserver;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mSettingsContentObserver:Lcom/android/settings/accessibility/VibrationIntensityPreferenceController$SettingObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mSettingsContentObserver:Lcom/android/settings/accessibility/VibrationIntensityPreferenceController$SettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
