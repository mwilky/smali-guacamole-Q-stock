.class public Lcom/android/settings/bluetooth/BluetoothPairingDetail;
.super Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;
.source "BluetoothPairingDetail.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field static final KEY_AVAIL_DEVICES:Ljava/lang/String; = "available_devices"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_FOOTER_PREF:Ljava/lang/String; = "footer_preference"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "BluetoothPairingDetail"


# instance fields
.field mAlwaysDiscoverable:Lcom/android/settings/bluetooth/AlwaysDiscoverable;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mInitialScanStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "no_config_bluetooth"

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method enableScanning()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mInitialScanStarted:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->removeAllDevices()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->clearNonBondedDevices()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mInitialScanStarted:Z

    :cond_1
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->enableScanning()V

    return-void
.end method

.method public getDeviceListKey()Ljava/lang/String;
    .locals 1

    const-string v0, "available_devices"

    return-object v0
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f1207fd

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "BluetoothPairingDetail"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x3fa

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f16002b

    return v0
.end method

.method initPreferencesFromPreferenceScreen()V
    .locals 2

    const-string v0, "available_devices"

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    const-string v0, "footer_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/widget/OPFooterPreference;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/widget/OPFooterPreference;->setSelectable(Z)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mInitialScanStarted:Z

    new-instance v0, Lcom/android/settings/bluetooth/AlwaysDiscoverable;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/bluetooth/AlwaysDiscoverable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mAlwaysDiscoverable:Lcom/android/settings/bluetooth/AlwaysDiscoverable;

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onAttach(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;->setFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->updateContent(I)V

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->showBluetoothTurnedOnToast()V

    :cond_0
    return-void
.end method

.method public onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->finish()V

    :cond_0
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 2

    const/16 v0, 0xc

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xa

    if-ne p2, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->enableScanning()V

    :cond_1
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->disableScanning()V

    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mScanEnabled:Z

    or-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/BluetoothProgressCategory;->setProgress(Z)V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onStart()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    const-string v0, "BluetoothPairingDetail"

    const-string v1, "Bluetooth is not supported on this device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->updateBluetooth()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/BluetoothProgressCategory;->setProgress(Z)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    const-string v0, "BluetoothPairingDetail"

    const-string v1, "Bluetooth is not supported on this device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mAlwaysDiscoverable:Lcom/android/settings/bluetooth/AlwaysDiscoverable;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/AlwaysDiscoverable;->stop()V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->disableScanning()V

    return-void
.end method

.method showBluetoothTurnedOnToast()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1204ab

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method updateBluetooth()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->updateContent(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    :goto_0
    return-void
.end method

.method updateContent(I)V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    const v1, 0x7f120368

    sget-object v2, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    iget-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mInitialScanStarted:Z

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->addDeviceCategory(Landroidx/preference/PreferenceGroup;ILcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;Z)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->updateFooterPreference(Landroidx/preference/Preference;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mAlwaysDiscoverable:Lcom/android/settings/bluetooth/AlwaysDiscoverable;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/AlwaysDiscoverable;->start()V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->enableScanning()V

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_oneplus_devicename"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->finish()V

    :cond_2
    :goto_0
    return-void
.end method
