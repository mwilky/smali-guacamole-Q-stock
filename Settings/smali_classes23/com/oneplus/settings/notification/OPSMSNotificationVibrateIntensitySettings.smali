.class public Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPSMSNotificationVibrateIntensitySettings.java"

# interfaces
.implements Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;


# static fields
.field private static final INTENSELY_VALUE:I = 0x2

.field private static final KEY_INTENSELY:Ljava/lang/String; = "intensely"

.field private static final KEY_LIGHT:Ljava/lang/String; = "light"

.field private static final KEY_MODERATE:Ljava/lang/String; = "moderate"

.field private static final KEY_NOTICE_VIBRATE_INTENSITY:Ljava/lang/String; = "notice_vibrate_intensity"

.field private static final LIGHT_VALUE:I = 0x0

.field private static final MODERATE_VALUE:I = 0x1

.field private static isSupportLinearMotor:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntenselyPreference:Lcom/android/settings/ui/RadioButtonPreference;

.field private mLightPreference:Lcom/android/settings/ui/RadioButtonPreference;

.field private mModeratePreference:Lcom/android/settings/ui/RadioButtonPreference;

.field private mVibrator:Landroid/os/Vibrator;

.field private sNoticeVibrateIntensity:[[J


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [[J

    const/16 v1, 0x9

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [J

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v1, v1, [J

    fill-array-data v1, :array_2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->sNoticeVibrateIntensity:[[J

    return-void

    nop

    :array_0
    .array-data 8
        -0x1
        0x0
        0x64
        0x96
        0x64
        0x3e8
        0x64
        0x96
        0x64
    .end array-data

    :array_1
    .array-data 8
        -0x2
        0x0
        0x64
        0x96
        0x64
        0x3e8
        0x64
        0x96
        0x64
    .end array-data

    :array_2
    .array-data 8
        -0x3
        0x0
        0x64
        0x96
        0x64
        0x3e8
        0x64
        0x96
        0x64
    .end array-data
.end method

.method private setSmsNotificationVibarateIntensityValue(I)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notice_vibrate_intensity"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->sNoticeVibrateIntensity:[[J

    aget-object v1, v1, p1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_0
    return-void
.end method

.method private updateSmsNotificationVibarateIntensityStatus(I)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->mLightPreference:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->mModeratePreference:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->mIntenselyPreference:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    move v1, v2

    :cond_2
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

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->mContext:Landroid/content/Context;

    const v0, 0x7f1600ba

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->addPreferencesFromResource(I)V

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->mVibrator:Landroid/os/Vibrator;

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->mVibrator:Landroid/os/Vibrator;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oem.linear.motor.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->isSupportLinearMotor:Z

    const-string v0, "light"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->mLightPreference:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v0, "moderate"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->mModeratePreference:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v0, "intensely"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->mIntenselyPreference:Lcom/android/settings/ui/RadioButtonPreference;

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->mLightPreference:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->mModeratePreference:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->mIntenselyPreference:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    :cond_0
    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settings/ui/RadioButtonPreference;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/settings/ui/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "light"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->setSmsNotificationVibarateIntensityValue(I)V

    invoke-direct {p0, v1}, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->updateSmsNotificationVibarateIntensityStatus(I)V

    goto :goto_0

    :cond_0
    const-string v1, "moderate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->setSmsNotificationVibarateIntensityValue(I)V

    invoke-direct {p0, v1}, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->updateSmsNotificationVibarateIntensityStatus(I)V

    goto :goto_0

    :cond_1
    const-string v1, "intensely"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->setSmsNotificationVibarateIntensityValue(I)V

    invoke-direct {p0, v1}, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->updateSmsNotificationVibarateIntensityStatus(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notice_vibrate_intensity"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->updateSmsNotificationVibarateIntensityStatus(I)V

    return-void
.end method
