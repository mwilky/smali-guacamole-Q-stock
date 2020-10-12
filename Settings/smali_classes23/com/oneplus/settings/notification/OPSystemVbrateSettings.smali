.class public Lcom/oneplus/settings/notification/OPSystemVbrateSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "OPSystemVbrateSettings.java"

# interfaces
.implements Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;


# static fields
.field private static final INTENSELY_VALUE:I = 0x2

.field private static final KEY_INTENSELY:Ljava/lang/String; = "intensely"

.field private static final KEY_LIGHT:Ljava/lang/String; = "light"

.field private static final KEY_MODERATE:Ljava/lang/String; = "moderate"

.field private static final KEY_VIBRATE_ON_TOUCH_INTENSITY:Ljava/lang/String; = "vibrate_on_touch_intensity"

.field private static final LIGHT_VALUE:I = 0x0

.field private static final MODERATE_VALUE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OPSystemVbrateSettings"

.field private static final TOUCH_TAP_VIBRATE_DELAY:I = 0xa


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIntenselyPreference:Lcom/android/settings/ui/RadioButtonPreference;

.field private mLightPreference:Lcom/android/settings/ui/RadioButtonPreference;

.field private mModeratePreference:Lcom/android/settings/ui/RadioButtonPreference;

.field private mOPSystemVibrateSwitchPreferenceController:Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTempTouchTapIntensity:I

.field private mVibrator:Landroid/os/Vibrator;

.field private sTouchVibrateIntensity:[[J


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [[J

    const/4 v1, 0x5

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

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->sTouchVibrateIntensity:[[J

    new-instance v0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/notification/OPSystemVbrateSettings$1;-><init>(Lcom/oneplus/settings/notification/OPSystemVbrateSettings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mHandler:Landroid/os/Handler;

    return-void

    nop

    :array_0
    .array-data 8
        -0x1
        0x0
        0xa
        0x3e8
        0xa
    .end array-data

    :array_1
    .array-data 8
        -0x2
        0x0
        0xa
        0x3e8
        0xa
    .end array-data

    :array_2
    .array-data 8
        -0x3
        0x0
        0xa
        0x3e8
        0xa
    .end array-data
.end method

.method static synthetic access$000(Lcom/oneplus/settings/notification/OPSystemVbrateSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/notification/OPSystemVbrateSettings;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mTempTouchTapIntensity:I

    return v0
.end method

.method private updateSystemVibrateStatus(I)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mLightPreference:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mModeratePreference:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mIntenselyPreference:Lcom/android/settings/ui/RadioButtonPreference;

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

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "OPSystemVbrateSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1600c0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    new-instance v1, Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController;

    new-instance v2, Lcom/android/settings/widget/SwitchBarController;

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-direct {v2, v3}, Lcom/android/settings/widget/SwitchBarController;-><init>(Lcom/android/settings/widget/SwitchBar;)V

    invoke-direct {v1, v0, v2}, Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;)V

    iput-object v1, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mOPSystemVibrateSwitchPreferenceController:Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController;

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mOPSystemVibrateSwitchPreferenceController:Lcom/oneplus/settings/notification/OPSystemVibrateSwitchPreferenceController;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mContext:Landroid/content/Context;

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mVibrator:Landroid/os/Vibrator;

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mVibrator:Landroid/os/Vibrator;

    :cond_1
    const-string v2, "light"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v2, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mLightPreference:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v2, "moderate"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v2, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mModeratePreference:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v2, "intensely"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v2, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mIntenselyPreference:Lcom/android/settings/ui/RadioButtonPreference;

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mLightPreference:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mModeratePreference:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mIntenselyPreference:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v2, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settings/ui/RadioButtonPreference;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/settings/ui/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "light"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v2, "moderate"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "intensely"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_on_touch_intensity"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportZVibrationMotor()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/SwitchBar;->performHapticFeedback(I)Z

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mVibrator:Landroid/os/Vibrator;

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->sTouchVibrateIntensity:[[J

    aget-object v3, v3, v1

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_4
    :goto_1
    invoke-direct {p0, v1}, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->updateSystemVibrateStatus(I)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vibrate_on_touch_intensity"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->mTempTouchTapIntensity:I

    invoke-direct {p0, v0}, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->updateSystemVibrateStatus(I)V

    return-void
.end method
