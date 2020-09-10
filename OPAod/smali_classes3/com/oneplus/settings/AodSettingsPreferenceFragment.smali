.class public Lcom/oneplus/settings/AodSettingsPreferenceFragment;
.super Lcom/oneplus/lib/widget/preference/OPPreferenceFragment;
.source "AodSettingsPreferenceFragment.java"

# interfaces
.implements Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;
.implements Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final AOD_NONE_CLOCK_STYLE:I = 0x1

.field private static final KEY_AOD_CLOCK_STYLE:Ljava/lang/String; = "aod_clock_style"

.field private static final KEY_AOD_ENABLED:Ljava/lang/String; = "prox_wake_enabled"

.field private static final KEY_AUTO_WAKE_SCREEN:Ljava/lang/String; = "aod_auto_wake_screen"

.field public static final KEY_BLACK_SCREEN_GESTURE:Ljava/lang/String; = "oem_acc_blackscreen_gestrue_enable"

.field private static final KEY_CUSTOMIZE_HORIZON_LIGHT_PREFERENCE:Ljava/lang/String; = "customize_horizon_light"

.field private static final KEY_DISPLAY_MODE:Ljava/lang/String; = "aod_display_mode"

.field private static final KEY_DISPLAY_PERIOD:Ljava/lang/String; = "aod_display_period"

.field private static final KEY_DISPLAY_TEXT:Ljava/lang/String; = "aod_display_text"

.field private static final KEY_MAIN_SCREEN:Ljava/lang/String; = "main_screen"

.field private static final KEY_NOTIFICATION_WAKE_ENABLED:Ljava/lang/String; = "notification_wake_enabled"

.field private static final KEY_SHAKE_UP_PREFERENCE:Ljava/lang/String; = "aod_shake_up_switch"

.field private static final KEY_SHOW_CLOCK_SWITCH_PREFERENCE:Ljava/lang/String; = "aod_display_mode_switch"

.field private static final KEY_SINGLE_TAP_PREFERENCE:Ljava/lang/String; = "aod_single_tap_switch"

.field private static final KEY_SMART_DISPLAY_CUR_STATE:Ljava/lang/String; = "aod_smart_display_cur_state"

.field private static final KEY_SMART_DISPLAY_ENABLED:Ljava/lang/String; = "aod_smart_display_enabled"

.field private static final KEY_SMART_DISPLAY_PREFERENCE:Ljava/lang/String; = "aod_smart_display_switch"

.field private static final SUPPORT_FOD:Z

.field private static final TAG:Ljava/lang/String; = "AodSettingsPreferenceFragment"

.field private static final TURNED_OFF_BLACK_GESTURE_DOUBLE_TAP:I = 0xff7f

.field private static final TURNED_OFF_BLACK_GESTURE_FINGERPRINT:I = 0x7fff

.field private static final TURNED_OFF_BLACK_GESTURE_SINGLE_TAP:I = 0xf7ff

.field private static final TURNED_ON_BLACK_GESTURE_FINGERPRINT:I = 0x8000

.field private static final TURNED_ON_BLACK_GESTURE_SINGLE_TAP:I = 0x800


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAodClockStyle:I

.field private mAodEnabled:Z

.field private mAutoWakeScreenPreference:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

.field private mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private mCustomizeHorizonLightPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

.field private mDisplayMode:I

.field private mDisplayModePreference:Lcom/oneplus/lib/widget/preference/OPListPreference;

.field private mDisplayPeriodPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

.field private mDisplayTextPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

.field private mDozeEnalbe:Z

.field private mNotificationWakeEnabled:Z

.field private mRootPreference:Lcom/oneplus/lib/preference/PreferenceScreen;

.field private mShakeUpPreference:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

.field private mSingleTapEnabled:Z

.field private mSingleTapSwitch:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

.field private mSmartDisplayCurState:Z

.field private mSmartDisplayEnabled:Z

.field private mSmartDisplayPreference:Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;

.field private mSwitchPreference:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/oneplus/aod/Utils;->isCustomFingerprint()Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->SUPPORT_FOD:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/lib/widget/preference/OPPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodClockStyle:I

    iput-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDozeEnalbe:Z

    iput-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    iput-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSingleTapEnabled:Z

    iput-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mNotificationWakeEnabled:Z

    iput v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayMode:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSmartDisplayEnabled:Z

    iput-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSmartDisplayCurState:Z

    return-void
.end method

.method private setDisplayModeSummary()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    const-string v2, "aod_display_mode"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayMode:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDisplayModeSummary: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AodSettingsPreferenceFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Lcom/oneplus/lib/widget/preference/OPListPreference;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/preference/OPListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/preference/OPListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Lcom/oneplus/lib/widget/preference/OPListPreference;

    iget v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/preference/OPListPreference;->setValue(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private setDisplayPeriodSummary()V
    .locals 9

    new-instance v0, Lcom/oneplus/settings/TextTime;

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    const-string v2, "display_from"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/settings/TextTime;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/oneplus/settings/TextTime;

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    const-string v3, "display_to"

    invoke-direct {v1, v2, v3}, Lcom/oneplus/settings/TextTime;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    const-string v4, "display_time_start"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    const-string v5, "display_time_end"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/TextTime;->setTime(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oneplus/settings/TextTime;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3}, Lcom/oneplus/settings/TextTime;->setTime(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/oneplus/settings/TextTime;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayPeriodPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e003d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e003f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oneplus/lib/widget/preference/OPPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateDozeSettings()V
    .locals 6

    iget-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mNotificationWakeEnabled:Z

    if-nez v3, :cond_1

    iget-boolean v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSingleTapEnabled:Z

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_2

    if-nez v3, :cond_2

    if-nez v4, :cond_2

    iput-boolean v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDozeEnalbe:Z

    goto :goto_1

    :cond_1
    :goto_0
    iput-boolean v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDozeEnalbe:Z

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSingleTapEnabled:Z

    if-nez v0, :cond_3

    iput-boolean v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSmartDisplayEnabled:Z

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodClockStyle:I

    if-eq v0, v2, :cond_4

    iput-boolean v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSmartDisplayEnabled:Z

    goto :goto_2

    :cond_4
    iput-boolean v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSmartDisplayEnabled:Z

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDozeSettings: dozeEnalbed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDozeEnalbe:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", displayModeEnalbed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", autoWakeupEnalbed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mNotificationWakeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSingleTapEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSingleTapEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSmartDisplayEndabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSmartDisplayEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSmartDisplayCurState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSmartDisplayCurState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAodClockStyle= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodClockStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AodSettingsPreferenceFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDozeEnalbe:Z

    iget v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    const-string v3, "doze_enabled"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    iget v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    const-string v3, "prox_wake_enabled"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mNotificationWakeEnabled:Z

    iget v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    const-string v3, "notification_wake_enabled"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSmartDisplayEnabled:Z

    iget v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    const-string v3, "aod_smart_display_enabled"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSmartDisplayCurState:Z

    iget v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    const-string v3, "aod_smart_display_cur_state"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->getBlackGesutreValue()I

    move-result v0

    sget-boolean v1, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->SUPPORT_FOD:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSingleTapEnabled:Z

    if-eqz v1, :cond_5

    or-int/lit16 v1, v0, 0x800

    const v2, 0xff7f

    and-int/2addr v1, v2

    goto :goto_3

    :cond_5
    const v1, 0xf7ff

    and-int/2addr v1, v0

    :goto_3
    nop

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    const-string v3, "fingerprint"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintManager;

    iget-boolean v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDozeEnalbe:Z

    if-nez v3, :cond_6

    and-int/lit16 v1, v1, 0x7fff

    goto :goto_4

    :cond_6
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v3

    if-eqz v3, :cond_7

    const v3, 0x8000

    or-int/2addr v1, v3

    :cond_7
    :goto_4
    iget-object v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    const-string v5, "oem_acc_blackscreen_gestrue_enable"

    invoke-static {v3, v5, v1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_8
    return-void
.end method

.method private updatePreference()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Lcom/oneplus/lib/widget/preference/OPListPreference;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/preference/OPListPreference;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayPeriodPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayMode:I

    if-ne v3, v2, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Lcom/oneplus/lib/widget/preference/OPPreference;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayTextPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    if-eqz v0, :cond_5

    iget-boolean v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSingleTapEnabled:Z

    if-eqz v3, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/preference/OPPreference;->setEnabled(Z)V

    :cond_5
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSmartDisplayPreference:Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;

    if-eqz v0, :cond_6

    iget-boolean v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSmartDisplayEnabled:Z

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;->setEnabled(Z)V

    :cond_6
    return-void
.end method

.method private updateSmartDisplay()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    const/4 v2, 0x1

    const-string v3, "aod_smart_display_cur_state"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSmartDisplayCurState:Z

    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSmartDisplayPreference:Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSmartDisplayCurState:Z

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;->setChecked(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getBlackGesutreValue()I
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    const-string v2, "oem_acc_blackscreen_gestrue_enable"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/preference/OPPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f120001

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mActivity:Landroid/app/Activity;

    const-string v0, "main_screen"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mRootPreference:Lcom/oneplus/lib/preference/PreferenceScreen;

    const-string v0, "aod_single_tap_switch"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSingleTapSwitch:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    const-string v0, "aod_shake_up_switch"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mShakeUpPreference:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    const-string v0, "aod_display_mode_switch"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSwitchPreference:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    const-string v0, "aod_display_mode"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/preference/OPListPreference;

    iput-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Lcom/oneplus/lib/widget/preference/OPListPreference;

    const-string v0, "aod_display_period"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/preference/OPPreference;

    iput-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayPeriodPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    const-string v0, "aod_display_text"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/preference/OPPreference;

    iput-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayTextPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    const-string v0, "aod_auto_wake_screen"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAutoWakeScreenPreference:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    const-string v0, "aod_smart_display_switch"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSmartDisplayPreference:Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;

    const-string v0, "customize_horizon_light"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/preference/OPPreference;

    iput-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCustomizeHorizonLightPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AodSettingsPreferenceFragment"

    const-string v3, "Fail to getActionBar"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget-boolean v2, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->SUPPORT_FOD:Z

    if-eqz v2, :cond_0

    const v2, 0x7f0e0028

    goto :goto_1

    :cond_0
    const v2, 0x7f0e0027

    :goto_1
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    const-string v4, "doze_enabled"

    invoke-static {v2, v4, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDozeEnalbe:Z

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    const-string v5, "prox_wake_enabled"

    invoke-static {v2, v5, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v1, v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    const-string v5, "notification_wake_enabled"

    invoke-static {v2, v5, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v1, v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    move v2, v3

    :goto_4
    iput-boolean v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mNotificationWakeEnabled:Z

    iput v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayMode:I

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    invoke-static {v2, v4}, Lcom/oneplus/aod/Utils;->isSingleTapEnabled(Landroid/content/Context;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSingleTapEnabled:Z

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    const-string v5, "aod_smart_display_enabled"

    invoke-static {v2, v5, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v1, v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    move v2, v3

    :goto_5
    iput-boolean v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSmartDisplayEnabled:Z

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    const-string v5, "aod_smart_display_cur_state"

    invoke-static {v2, v5, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v1, v2, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    move v2, v3

    :goto_6
    iput-boolean v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSmartDisplayCurState:Z

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    const-string v5, "aod_clock_style"

    invoke-static {v2, v5, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodClockStyle:I

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSwitchPreference:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    if-eqz v2, :cond_8

    sget-boolean v4, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->SUPPORT_FOD:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mRootPreference:Lcom/oneplus/lib/preference/PreferenceScreen;

    invoke-virtual {v4, v2}, Lcom/oneplus/lib/preference/PreferenceScreen;->removePreference(Lcom/oneplus/lib/preference/Preference;)Z

    goto :goto_7

    :cond_7
    invoke-virtual {v2, p0}, Lcom/oneplus/lib/widget/preference/OPSwitchPreference;->setOnPreferenceChangeListener(Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSwitchPreference:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    iget-boolean v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    invoke-virtual {v2, v4}, Lcom/oneplus/lib/widget/preference/OPSwitchPreference;->setChecked(Z)V

    :cond_8
    :goto_7
    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mShakeUpPreference:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    if-eqz v2, :cond_a

    sget-boolean v4, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->SUPPORT_FOD:Z

    if-eqz v4, :cond_9

    invoke-virtual {v2, p0}, Lcom/oneplus/lib/widget/preference/OPSwitchPreference;->setOnPreferenceChangeListener(Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mShakeUpPreference:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    iget-boolean v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    invoke-virtual {v2, v4}, Lcom/oneplus/lib/widget/preference/OPSwitchPreference;->setChecked(Z)V

    goto :goto_8

    :cond_9
    iget-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mRootPreference:Lcom/oneplus/lib/preference/PreferenceScreen;

    invoke-virtual {v4, v2}, Lcom/oneplus/lib/preference/PreferenceScreen;->removePreference(Lcom/oneplus/lib/preference/Preference;)Z

    :cond_a
    :goto_8
    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSingleTapSwitch:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    if-eqz v2, :cond_c

    sget-boolean v4, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->SUPPORT_FOD:Z

    if-eqz v4, :cond_b

    invoke-virtual {v2, p0}, Lcom/oneplus/lib/widget/preference/OPSwitchPreference;->setOnPreferenceChangeListener(Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSingleTapSwitch:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    iget-boolean v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSingleTapEnabled:Z

    invoke-virtual {v2, v4}, Lcom/oneplus/lib/widget/preference/OPSwitchPreference;->setChecked(Z)V

    goto :goto_9

    :cond_b
    iget-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mRootPreference:Lcom/oneplus/lib/preference/PreferenceScreen;

    invoke-virtual {v4, v2}, Lcom/oneplus/lib/preference/PreferenceScreen;->removePreference(Lcom/oneplus/lib/preference/Preference;)Z

    :cond_c
    :goto_9
    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Lcom/oneplus/lib/widget/preference/OPListPreference;

    if-eqz v2, :cond_e

    invoke-static {}, Lcom/oneplus/aod/Utils;->isSupportAlwaysOn()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v4, 0x7f020000

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Lcom/oneplus/lib/widget/preference/OPListPreference;

    invoke-virtual {v5, v2}, Lcom/oneplus/lib/widget/preference/OPListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Lcom/oneplus/lib/widget/preference/OPListPreference;

    invoke-virtual {v5, v4}, Lcom/oneplus/lib/widget/preference/OPListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Lcom/oneplus/lib/widget/preference/OPListPreference;

    iget v6, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayMode:I

    invoke-virtual {v5, v6}, Lcom/oneplus/lib/widget/preference/OPListPreference;->setValueIndex(I)V

    goto :goto_a

    :cond_d
    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mRootPreference:Lcom/oneplus/lib/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Lcom/oneplus/lib/widget/preference/OPListPreference;

    invoke-virtual {v2, v4}, Lcom/oneplus/lib/preference/PreferenceScreen;->removePreference(Lcom/oneplus/lib/preference/Preference;)Z

    :cond_e
    :goto_a
    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayPeriodPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    if-eqz v2, :cond_10

    invoke-static {}, Lcom/oneplus/aod/Utils;->isSupportAlwaysOn()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayPeriodPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    invoke-virtual {v2, p0}, Lcom/oneplus/lib/widget/preference/OPPreference;->setOnPreferenceClickListener(Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_b

    :cond_f
    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mRootPreference:Lcom/oneplus/lib/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayPeriodPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    invoke-virtual {v2, v4}, Lcom/oneplus/lib/preference/PreferenceScreen;->removePreference(Lcom/oneplus/lib/preference/Preference;)Z

    :cond_10
    :goto_b
    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Lcom/oneplus/lib/widget/preference/OPListPreference;

    if-eqz v2, :cond_11

    invoke-virtual {v2, p0}, Lcom/oneplus/lib/widget/preference/OPListPreference;->setOnPreferenceChangeListener(Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;)V

    :cond_11
    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayTextPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    if-eqz v2, :cond_12

    invoke-virtual {v2, p0}, Lcom/oneplus/lib/widget/preference/OPPreference;->setOnPreferenceClickListener(Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;)V

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/oneplus/settings/AodDisplayTextSettings;->KEY_DISPLAY_TEXT:Ljava/lang/String;

    iget v5, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    iget-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayTextPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    invoke-virtual {v4, v2}, Lcom/oneplus/lib/widget/preference/OPPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_12
    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAutoWakeScreenPreference:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    if-eqz v2, :cond_14

    invoke-virtual {v2, p0}, Lcom/oneplus/lib/widget/preference/OPSwitchPreference;->setOnPreferenceChangeListener(Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAutoWakeScreenPreference:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    iget-boolean v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mNotificationWakeEnabled:Z

    invoke-virtual {v2, v4}, Lcom/oneplus/lib/widget/preference/OPSwitchPreference;->setChecked(Z)V

    new-array v1, v1, [I

    const/16 v2, 0x81

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAutoWakeScreenPreference:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    const v2, 0x7f0e001d

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/preference/OPSwitchPreference;->setSummary(I)V

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCustomizeHorizonLightPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    invoke-virtual {v1, p0}, Lcom/oneplus/lib/widget/preference/OPPreference;->setOnPreferenceClickListener(Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_c

    :cond_13
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mRootPreference:Lcom/oneplus/lib/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCustomizeHorizonLightPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/preference/PreferenceScreen;->removePreference(Lcom/oneplus/lib/preference/Preference;)Z

    :cond_14
    :goto_c
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSmartDisplayPreference:Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;

    if-eqz v1, :cond_15

    iget v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    if-nez v2, :cond_15

    invoke-virtual {v1, p0}, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;->setOnPreferenceChangeListener(Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSmartDisplayPreference:Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;

    iget-boolean v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSmartDisplayCurState:Z

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSmartDisplayPreference:Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.settings"

    const-string v5, "com.oneplus.settings.aod.AodSmartDisplaySettingsActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;->setIntent(Landroid/content/Intent;)V

    goto :goto_d

    :cond_15
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mRootPreference:Lcom/oneplus/lib/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSmartDisplayPreference:Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/preference/PreferenceScreen;->removePreference(Lcom/oneplus/lib/preference/Preference;)Z

    :goto_d
    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->updatePreference()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/preference/OPPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPreferenceChange(Lcom/oneplus/lib/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferenceChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oneplus/lib/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " objValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AodSettingsPreferenceFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/oneplus/lib/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aod_display_mode_switch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "AOD"

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v2, v3}, Lcom/oneplus/aod/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSwitchPreference:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    invoke-virtual {v2, v0}, Lcom/oneplus/lib/widget/preference/OPSwitchPreference;->setChecked(Z)V

    iput-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->updateDozeSettings()V

    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->updatePreference()V

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/lib/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "aod_display_mode"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayMode:I

    iget v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayMode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "When"

    invoke-static {v2, v4, v0}, Lcom/oneplus/aod/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayMode:I

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->updatePreference()V

    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->setDisplayModeSummary()V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/lib/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "aod_auto_wake_screen"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Notification"

    invoke-static {v2, v4, v3}, Lcom/oneplus/aod/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAutoWakeScreenPreference:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    invoke-virtual {v2, v0}, Lcom/oneplus/lib/widget/preference/OPSwitchPreference;->setChecked(Z)V

    iput-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mNotificationWakeEnabled:Z

    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->updateDozeSettings()V

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/oneplus/lib/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "aod_single_tap_switch"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Tap "

    invoke-static {v2, v4, v3}, Lcom/oneplus/aod/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSingleTapSwitch:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    invoke-virtual {v2, v0}, Lcom/oneplus/lib/widget/preference/OPSwitchPreference;->setChecked(Z)V

    iput-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSingleTapEnabled:Z

    iget-boolean v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSingleTapEnabled:Z

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->SUPPORT_FOD:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->getBlackGesutreValue()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    shr-int/lit8 v2, v2, 0x7

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    const v6, 0x7f0e0026

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    const v6, 0x7f0e0040

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " \""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    const v6, 0x7f0e0069

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    const v5, 0x7f0e0041

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_3
    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->updateDozeSettings()V

    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->updatePreference()V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/oneplus/lib/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "aod_shake_up_switch"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Pick"

    invoke-static {v2, v4, v3}, Lcom/oneplus/aod/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mShakeUpPreference:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    invoke-virtual {v2, v0}, Lcom/oneplus/lib/widget/preference/OPSwitchPreference;->setChecked(Z)V

    iput-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->updateDozeSettings()V

    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->updatePreference()V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/oneplus/lib/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "aod_smart_display_switch"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSmartDisplayPreference:Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;

    invoke-virtual {v2, v0}, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;->setChecked(Z)V

    iput-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSmartDisplayCurState:Z

    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->updateDozeSettings()V

    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->updatePreference()V

    goto :goto_1

    :cond_6
    :goto_0
    nop

    :goto_1
    return v1
.end method

.method public onPreferenceClick(Lcom/oneplus/lib/preference/Preference;)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferenceClick: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oneplus/lib/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AodSettingsPreferenceFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/oneplus/lib/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aod_display_text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/oneplus/settings/AodDisplayTextSettings;->show(Landroid/app/Fragment;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/lib/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aod_display_period"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/oneplus/settings/AodDisplayDurationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/lib/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "customize_horizon_light"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$OPCustomNotificationAnimSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_2
    :goto_0
    nop

    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/oneplus/lib/widget/preference/OPPreferenceFragment;->onResume()V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->updateSmartDisplay()V

    invoke-static {}, Lcom/oneplus/aod/Utils;->isSupportAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->setDisplayModeSummary()V

    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->setDisplayPeriodSummary()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/widget/preference/OPPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public updateDisplayText(Ljava/lang/String;)V
    .locals 3

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Sign"

    const-string v2, "AOD"

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/oneplus/aod/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayTextPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/preference/OPPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/oneplus/aod/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayTextPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/preference/OPPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
