.class public Lcom/android/settings/accessibility/TouchVibrationPreferenceFragment;
.super Lcom/android/settings/accessibility/VibrationPreferenceFragment;
.source "TouchVibrationPreferenceFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDefaultVibrationIntensity()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/TouchVibrationPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->getDefaultHapticFeedbackIntensity()I

    move-result v1

    return v1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x50e

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f16000b

    return v0
.end method

.method protected getPreviewVibrationAudioAttributesUsage()I
    .locals 1

    const/16 v0, 0xd

    return v0
.end method

.method protected getVibrationEnabledSetting()Ljava/lang/String;
    .locals 1

    const-string v0, "haptic_feedback_enabled"

    return-object v0
.end method

.method protected getVibrationIntensitySetting()Ljava/lang/String;
    .locals 1

    const-string v0, "haptic_feedback_intensity"

    return-object v0
.end method
