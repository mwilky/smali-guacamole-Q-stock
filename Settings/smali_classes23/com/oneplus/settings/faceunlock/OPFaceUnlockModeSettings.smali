.class public Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPFaceUnlockModeSettings.java"

# interfaces
.implements Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field private static final KEY_FACEUNLOCK_MODE_RETAIN_VIEW:Ljava/lang/String; = "key_faceunlock_mode_retain_view"

.field private static final KEY_FACEUNLOCK_SWIPE_UP_MODE:Ljava/lang/String; = "key_faceunlock_swipe_up_mode"

.field private static final KEY_FACEUNLOCK_USE_POWER_BUTTON_MODE:Ljava/lang/String; = "key_faceunlock_use_power_button_mode"

.field public static final ONEPLUS_FACE_UNLOCK_POWERKEY_RECOGNIZE_ENABLE:Ljava/lang/String; = "oneplus_face_unlock_powerkey_recognize_enable"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static final SWIPE_UP_MODE:I = 0x0

.field public static final USE_POWER_BUTTON_MODE:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRetainModeView:Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;

.field private mSwipeUpMode:Lcom/android/settings/ui/RadioButtonPreference;

.field private mUsePowerButton:Lcom/android/settings/ui/RadioButtonPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings$1;

    invoke-direct {v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private setRetainViewMode(I)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->mRetainModeView:Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->getUnlockMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->setViewType(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method public getUnlockMode()I
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_face_unlock_powerkey_recognize_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f160098

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->addPreferencesFromResource(I)V

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iput-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->mContext:Landroid/content/Context;

    const-string v0, "key_faceunlock_swipe_up_mode"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->mSwipeUpMode:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v0, "key_faceunlock_use_power_button_mode"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->mUsePowerButton:Lcom/android/settings/ui/RadioButtonPreference;

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->mSwipeUpMode:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->mUsePowerButton:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    const-string v0, "key_faceunlock_mode_retain_view"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;

    iput-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->mRetainModeView:Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->mRetainModeView:Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->releaseAnim()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->mRetainModeView:Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->stopAnim()V

    :cond_0
    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settings/ui/RadioButtonPreference;)V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->mSwipeUpMode:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v1, "pop_up_face_unlock"

    const-string v2, "oneplus_face_unlock_powerkey_recognize_enable"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {v0, v4}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->mUsePowerButton:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v1, v3}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    invoke-direct {p0, v3}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->setRetainViewMode(I)V

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->mUsePowerButton:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v5, :cond_1

    invoke-virtual {v0, v3}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->mUsePowerButton:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v4}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v1, v4}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    invoke-direct {p0, v4}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->setRetainViewMode(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->mSwipeUpMode:Lcom/android/settings/ui/RadioButtonPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->mUsePowerButton:Lcom/android/settings/ui/RadioButtonPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "oneplus_face_unlock_powerkey_recognize_enable"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->mSwipeUpMode:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v3, 0x1

    if-nez v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    invoke-virtual {v2, v4}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->mUsePowerButton:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne v0, v3, :cond_1

    move v1, v3

    :cond_1
    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    :cond_2
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    return-void
.end method
