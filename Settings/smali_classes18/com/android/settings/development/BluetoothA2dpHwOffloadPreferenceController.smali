.class public Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "BluetoothA2dpHwOffloadPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final A2DP_OFFLOAD_DISABLED_PROPERTY:Ljava/lang/String; = "persist.bluetooth.a2dp_offload.disabled"

.field static final A2DP_OFFLOAD_SUPPORTED_PROPERTY:Ljava/lang/String; = "ro.bluetooth.a2dp_offload.supported"

.field private static final PREFERENCE_KEY:Ljava/lang/String; = "bluetooth_disable_a2dp_hw_offload"


# instance fields
.field private final mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "bluetooth_disable_a2dp_hw_offload"

    return-object v0
.end method

.method public isDefaultValue()Z
    .locals 4

    nop

    const/4 v0, 0x0

    const-string v1, "ro.bluetooth.a2dp_offload.supported"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    nop

    const-string v2, "persist.bluetooth.a2dp_offload.disabled"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v0

    :cond_1
    :goto_0
    return v3
.end method

.method public onA2dpHwDialogConfirmed()V
    .locals 3

    nop

    const-string v0, "persist.bluetooth.a2dp_offload.disabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 3

    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    nop

    const/4 v0, 0x0

    const-string v1, "ro.bluetooth.a2dp_offload.supported"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v2, Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    const-string v0, "persist.bluetooth.a2dp_offload.disabled"

    const-string v2, "false"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {v0, p0}, Lcom/android/settings/development/BluetoothA2dpHwOffloadRebootDialog;->show(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;)V

    const/4 v0, 0x0

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->updateState(Landroidx/preference/Preference;)V

    nop

    const/4 v0, 0x0

    const-string v1, "ro.bluetooth.a2dp_offload.supported"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    nop

    const-string v2, "persist.bluetooth.a2dp_offload.disabled"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iget-object v3, p0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v3, Landroidx/preference/SwitchPreference;

    invoke-virtual {v3, v2}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v2, Landroidx/preference/SwitchPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    :goto_0
    iget-object v2, p0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
