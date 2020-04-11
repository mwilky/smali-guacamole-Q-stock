.class public Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPQuickTurnOnAssistantAppPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# static fields
.field private static final CAMERA_VALUE:I = 0x0

.field private static final KEY_DOUBLE_TAP_POWER_GESTURE:Ljava/lang/String; = "double_tap_power_gesture"

.field private static final ONEPLUS_EMERGENCY_TAP_POWER_GESTURE_FIVE_TIMES:I = 0x5

.field private static final ONEPLUS_EMERGENCY_TAP_POWER_GESTURE_NO_TIMES:I = -0x1

.field private static final ONEPLUS_EMERGENCY_TAP_POWER_GESTURE_THREE_TIMES:I = 0x3

.field private static final WALLET_VALUE:I = 0x1


# instance fields
.field private mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

.field private mSwitchController:Lcom/android/settings/widget/MasterSwitchController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "double_tap_power_gesture"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private updateSwitchSummary()V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "emergency_affordance_needed"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, -0x1

    const-string v5, "oneplus_emergency_tap_power_gesture_times"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_2

    if-eqz v0, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    :cond_1
    const/4 v3, 0x5

    :cond_2
    :goto_1
    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/MasterSwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/MasterSwitchController;->setEnabled(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    const v2, 0x7f120ca3

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/MasterSwitchPreference;->setSummary(I)V

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {v4, v2}, Lcom/android/settings/widget/MasterSwitchPreference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    invoke-virtual {v4, v2}, Lcom/android/settings/widget/MasterSwitchController;->setEnabled(Z)V

    iget-object v4, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "op_app_double_tap_power_gesture"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_4

    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    const v4, 0x7f120c87

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/MasterSwitchPreference;->setSummary(I)V

    goto :goto_2

    :cond_4
    if-ne v1, v2, :cond_5

    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    const v4, 0x7f120c88

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/MasterSwitchPreference;->setSummary(I)V

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "double_tap_power_gesture"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/MasterSwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "double_tap_power_gesture"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "double_tap_power_gesture"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x270f

    invoke-static {v0, v1, v2}, Lcom/oneplus/settings/utils/OPUtils;->startFragment(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 4

    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "camera_double_tap_power_gesture_disabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    move v1, v3

    :cond_1
    invoke-virtual {v2, v1}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    new-instance v1, Lcom/android/settings/widget/MasterSwitchController;

    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-direct {v1, v2}, Lcom/android/settings/widget/MasterSwitchController;-><init>(Lcom/android/settings/widget/MasterSwitchPreference;)V

    iput-object v1, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/MasterSwitchController;->setListener(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    invoke-virtual {v1}, Lcom/android/settings/widget/MasterSwitchController;->startListening()V

    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppPreferenceController;->updateSwitchSummary()V

    :cond_2
    return-void
.end method

.method public onSwitchToggled(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    const-string v2, "camera_double_tap_power_gesture_disabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x1

    return v0
.end method
