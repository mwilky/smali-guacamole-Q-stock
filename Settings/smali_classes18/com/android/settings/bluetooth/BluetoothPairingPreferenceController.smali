.class public Lcom/android/settings/bluetooth/BluetoothPairingPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "BluetoothPairingPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field public static final KEY_PAIRING:Ljava/lang/String; = "pref_bt_pairing"

.field private static final TAG:Ljava/lang/String; = "BluetoothPairingPrefCtrl"


# instance fields
.field private mFragment:Lcom/android/settings/dashboard/DashboardFragment;

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothPairingPreferenceController;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    return-void
.end method


# virtual methods
.method public createBluetoothPairingPreference(I)Landroidx/preference/Preference;
    .locals 2

    new-instance v0, Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingPreferenceController;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingPreferenceController;->mPreference:Landroidx/preference/Preference;

    const-string v1, "pref_bt_pairing"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingPreferenceController;->mPreference:Landroidx/preference/Preference;

    const v1, 0x7f08019e

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingPreferenceController;->mPreference:Landroidx/preference/Preference;

    const v1, 0x7f120359

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "pref_bt_pairing"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_bt_pairing"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/bluetooth/BluetoothPairingDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const v1, 0x7f120357

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingPreferenceController;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardFragment;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
