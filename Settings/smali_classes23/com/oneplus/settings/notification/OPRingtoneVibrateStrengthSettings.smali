.class public Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPRingtoneVibrateStrengthSettings.java"

# interfaces
.implements Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;


# static fields
.field private static final DYNAMIC_MODE_VALUE:I = 0x5

.field private static final INTENSELY_VALUE:I = 0x2

.field private static final KEY_DYNAMIC_MODE:Ljava/lang/String; = "dynamic_mode"

.field private static final KEY_INCOMING_CALL_VIBRATE:Ljava/lang/String; = "incoming_call_vibrate_mode"

.field private static final KEY_INCOMING_CALL_VIBRATE_INTENSITY:Ljava/lang/String; = "incoming_call_vibrate_intensity"

.field private static final KEY_INTENSELY:Ljava/lang/String; = "intensely"

.field private static final KEY_LIGHT:Ljava/lang/String; = "light"

.field private static final KEY_MODERATE:Ljava/lang/String; = "moderate"

.field private static final KEY_RHYTHM_1:Ljava/lang/String; = "rhythm_1"

.field private static final KEY_RHYTHM_2:Ljava/lang/String; = "rhythm_2"

.field private static final KEY_RHYTHM_3:Ljava/lang/String; = "rhythm_3"

.field private static final KEY_RHYTHM_4:Ljava/lang/String; = "rhythm_4"

.field private static final KEY_RHYTHM_5:Ljava/lang/String; = "rhythm_5"

.field private static final KEY_VIBRATE_RHYTHM:Ljava/lang/String; = "vibrate_rhythm"

.field private static final LIGHT_VALUE:I = 0x0

.field private static final MODERATE_VALUE:I = 0x1

.field private static final RHYTHM_1_VALUE:I = 0x0

.field private static final RHYTHM_2_VALUE:I = 0x1

.field private static final RHYTHM_3_VALUE:I = 0x2

.field private static final RHYTHM_4_VALUE:I = 0x3

.field private static final RHYTHM_5_VALUE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "OPVibrateStrengthPreferenceFragment"

.field private static isSupportLinearMotor:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDynamicModePreference:Lcom/android/settings/ui/RadioButtonPreference;

.field private mIntenselyPreference:Lcom/android/settings/ui/RadioButtonPreference;

.field private mLightPreference:Lcom/android/settings/ui/RadioButtonPreference;

.field private mModeratePreference:Lcom/android/settings/ui/RadioButtonPreference;

.field private mRhythm1Preference:Lcom/android/settings/ui/RadioButtonPreference;

.field private mRhythm2Preference:Lcom/android/settings/ui/RadioButtonPreference;

.field private mRhythm3Preference:Lcom/android/settings/ui/RadioButtonPreference;

.field private mRhythm4Preference:Lcom/android/settings/ui/RadioButtonPreference;

.field private mRhythm5Preference:Lcom/android/settings/ui/RadioButtonPreference;

.field private mVibrateRhythmCategory:Landroidx/preference/PreferenceCategory;

.field private mVibrator:Landroid/os/Vibrator;

.field private sVibratePatternrhythm:[[J


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x5

    new-array v1, v0, [[J

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/16 v0, 0x9

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/16 v0, 0xd

    new-array v2, v0, [J

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/16 v2, 0x11

    new-array v2, v2, [J

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-array v0, v0, [J

    fill-array-data v0, :array_4

    const/4 v2, 0x4

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->sVibratePatternrhythm:[[J

    return-void

    nop

    :array_0
    .array-data 8
        -0x2
        0x0
        0x3e8
        0x3e8
        0x3e8
    .end array-data

    :array_1
    .array-data 8
        -0x2
        0x0
        0x1f4
        0xfa
        0xa
        0x3e8
        0x1f4
        0xfa
        0xa
    .end array-data

    :array_2
    .array-data 8
        -0x2
        0x0
        0x12c
        0x190
        0x12c
        0x190
        0x12c
        0x3e8
        0x12c
        0x190
        0x12c
        0x190
        0x12c
    .end array-data

    :array_3
    .array-data 8
        -0x2
        0x0
        0x1e
        0x50
        0x1e
        0x50
        0x32
        0xb4
        0x258
        0x3e8
        0x1e
        0x50
        0x1e
        0x50
        0x32
        0xb4
        0x258
    .end array-data

    :array_4
    .array-data 8
        -0x2
        0x0
        0x50
        0xc8
        0x258
        0x96
        0xa
        0x3e8
        0x50
        0xc8
        0x258
        0x96
        0xa
    .end array-data
.end method

.method private setIncomingCallVibarateIntensity(I)V
    .locals 6

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "incoming_call_vibrate_intensity"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "incoming_call_vibrate_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->sVibratePatternrhythm:[[J

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    if-le v0, v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    move v0, v1

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V

    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->sVibratePatternrhythm:[[J

    aget-object v1, v1, v0

    const-wide/16 v4, -0x1

    aput-wide v4, v1, v3

    goto :goto_1

    :cond_2
    if-ne p1, v2, :cond_3

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->sVibratePatternrhythm:[[J

    aget-object v1, v1, v0

    const-wide/16 v4, -0x2

    aput-wide v4, v1, v3

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->sVibratePatternrhythm:[[J

    aget-object v1, v1, v0

    const-wide/16 v4, -0x3

    aput-wide v4, v1, v3

    :cond_4
    :goto_1
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->sVibratePatternrhythm:[[J

    aget-object v3, v2, v0

    array-length v3, v3

    if-ge v1, v3, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sVibratePatternrhythm ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->sVibratePatternrhythm:[[J

    aget-object v3, v3, v0

    aget-wide v3, v3, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OPVibrateStrengthPreferenceFragment"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mVibrator:Landroid/os/Vibrator;

    aget-object v2, v2, v0

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate([JI)V

    return-void
.end method

.method private setIncomingCallVibrateValue(I)V
    .locals 6

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "incoming_call_vibrate_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "incoming_call_vibrate_intensity"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mVibrator:Landroid/os/Vibrator;

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->sVibratePatternrhythm:[[J

    aget-object v3, v3, p1

    const-wide/16 v4, -0x1

    aput-wide v4, v3, v2

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->sVibratePatternrhythm:[[J

    aget-object v3, v3, p1

    const-wide/16 v4, -0x2

    aput-wide v4, v3, v2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->sVibratePatternrhythm:[[J

    aget-object v3, v3, p1

    const-wide/16 v4, -0x3

    aput-wide v4, v3, v2

    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mVibrator:Landroid/os/Vibrator;

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->sVibratePatternrhythm:[[J

    aget-object v3, v3, p1

    invoke-virtual {v2, v3, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    return-void
.end method

.method private updateIncomingCallVibarateIntensityStatus(I)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mLightPreference:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mModeratePreference:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mIntenselyPreference:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    return-void
.end method

.method private updateIncomingCallVibrateStatus(I)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mDynamicModePreference:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v3, 0x5

    if-ne p1, v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mRhythm1Preference:Lcom/android/settings/ui/RadioButtonPreference;

    if-nez p1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mRhythm2Preference:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v2, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mRhythm3Preference:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    move v3, v2

    goto :goto_3

    :cond_4
    move v3, v1

    :goto_3
    invoke-virtual {v0, v3}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mRhythm4Preference:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v3, 0x3

    if-ne p1, v3, :cond_5

    move v3, v2

    goto :goto_4

    :cond_5
    move v3, v1

    :goto_4
    invoke-virtual {v0, v3}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mRhythm5Preference:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v3, 0x4

    if-ne p1, v3, :cond_6

    move v1, v2

    :cond_6
    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f1600b6

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mVibrator:Landroid/os/Vibrator;

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mVibrator:Landroid/os/Vibrator;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oem.linear.motor.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->isSupportLinearMotor:Z

    const-string v0, "vibrate_rhythm"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mVibrateRhythmCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "dynamic_mode"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mDynamicModePreference:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v0, "rhythm_1"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mRhythm1Preference:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v0, "rhythm_2"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mRhythm2Preference:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v0, "rhythm_3"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mRhythm3Preference:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v0, "rhythm_4"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mRhythm4Preference:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v0, "rhythm_5"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mRhythm5Preference:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v0, "light"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mLightPreference:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v0, "moderate"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mModeratePreference:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v0, "intensely"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mIntenselyPreference:Lcom/android/settings/ui/RadioButtonPreference;

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mDynamicModePreference:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mRhythm1Preference:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mRhythm2Preference:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mRhythm3Preference:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mRhythm4Preference:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mRhythm5Preference:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mLightPreference:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mModeratePreference:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mIntenselyPreference:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXVibrate()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mVibrateRhythmCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mDynamicModePreference:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    :cond_0
    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settings/ui/RadioButtonPreference;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/settings/ui/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dynamic_mode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x5

    const-string v3, "incoming_call_vibrate_mode"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v2}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->updateIncomingCallVibrateStatus(I)V

    goto/16 :goto_0

    :cond_0
    const-string v1, "rhythm_1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-direct {p0, v2}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->setIncomingCallVibrateValue(I)V

    invoke-direct {p0, v2}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->updateIncomingCallVibrateStatus(I)V

    goto/16 :goto_0

    :cond_1
    const-string v1, "rhythm_2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-direct {p0, v3}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->setIncomingCallVibrateValue(I)V

    invoke-direct {p0, v3}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->updateIncomingCallVibrateStatus(I)V

    goto :goto_0

    :cond_2
    const-string v1, "rhythm_3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x2

    if-eqz v1, :cond_3

    invoke-direct {p0, v4}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->setIncomingCallVibrateValue(I)V

    invoke-direct {p0, v4}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->updateIncomingCallVibrateStatus(I)V

    goto :goto_0

    :cond_3
    const-string v1, "rhythm_4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->setIncomingCallVibrateValue(I)V

    invoke-direct {p0, v1}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->updateIncomingCallVibrateStatus(I)V

    goto :goto_0

    :cond_4
    const-string v1, "rhythm_5"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->setIncomingCallVibrateValue(I)V

    invoke-direct {p0, v1}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->updateIncomingCallVibrateStatus(I)V

    goto :goto_0

    :cond_5
    const-string v1, "light"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0, v2}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->setIncomingCallVibarateIntensity(I)V

    invoke-direct {p0, v2}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->updateIncomingCallVibarateIntensityStatus(I)V

    goto :goto_0

    :cond_6
    const-string v1, "moderate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0, v3}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->setIncomingCallVibarateIntensity(I)V

    invoke-direct {p0, v3}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->updateIncomingCallVibarateIntensityStatus(I)V

    goto :goto_0

    :cond_7
    const-string v1, "intensely"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0, v4}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->setIncomingCallVibarateIntensity(I)V

    invoke-direct {p0, v4}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->updateIncomingCallVibarateIntensityStatus(I)V

    :cond_8
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    nop

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "incoming_call_vibrate_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->updateIncomingCallVibrateStatus(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "incoming_call_vibrate_intensity"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->updateIncomingCallVibarateIntensityStatus(I)V

    return-void
.end method
