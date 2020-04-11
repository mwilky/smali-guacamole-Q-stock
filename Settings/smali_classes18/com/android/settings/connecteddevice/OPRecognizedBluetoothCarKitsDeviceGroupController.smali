.class public Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitsDeviceGroupController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPRecognizedBluetoothCarKitsDeviceGroupController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settings/connecteddevice/DevicePreferenceCallback;
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# static fields
.field private static final KEY:Ljava/lang/String; = "recognized_bluetooth_car_kits"


# instance fields
.field private final mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mOPBluetoothCarKitDeviceUpdater:Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;

.field mPreferenceGroup:Landroidx/preference/PreferenceGroup;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mStatusReceive:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "recognized_bluetooth_car_kits"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitsDeviceGroupController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitsDeviceGroupController$1;-><init>(Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitsDeviceGroupController;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitsDeviceGroupController;->mStatusReceive:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitsDeviceGroupController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitsDeviceGroupController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitsDeviceGroupController;)Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitsDeviceGroupController;->mOPBluetoothCarKitDeviceUpdater:Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;

    return-object v0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitsDeviceGroupController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "recognized_bluetooth_car_kits"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitsDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitsDeviceGroupController;->mOPBluetoothCarKitDeviceUpdater:Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;

    invoke-virtual {p1}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;->setPrefContext(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitsDeviceGroupController;->mOPBluetoothCarKitDeviceUpdater:Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;->forceUpdate()V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitsDeviceGroupController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "recognized_bluetooth_car_kits"

    return-object v0
.end method

.method public init(Lcom/android/settings/dashboard/DashboardFragment;)V
    .locals 2

    new-instance v0, Lcom/android/settings/bluetooth/OPRecognizedBluetoothCarKitDeviceUpdater;

    invoke-virtual {p1}, Lcom/android/settings/dashboard/DashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lcom/android/settings/bluetooth/OPRecognizedBluetoothCarKitDeviceUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitsDeviceGroupController;->mOPBluetoothCarKitDeviceUpdater:Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;

    return-void
.end method

.method public onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onAudioModeChanged()V
    .locals 0

    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onDeviceAdded(Landroidx/preference/Preference;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitsDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitsDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->setVisible(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitsDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public onDeviceRemoved(Landroidx/preference/Preference;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitsDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitsDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitsDeviceGroupController;->mOPBluetoothCarKitDeviceUpdater:Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;->registerCallback()V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitsDeviceGroupController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "oneplus.action.intent.UpdateBluetoothCarkitDevice"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitsDeviceGroupController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitsDeviceGroupController;->mStatusReceive:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitsDeviceGroupController;->mOPBluetoothCarKitDeviceUpdater:Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;->unregisterCallback()V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitsDeviceGroupController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitsDeviceGroupController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitsDeviceGroupController;->mStatusReceive:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public setBluetoothDeviceUpdater(Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;)V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/android/settings/connecteddevice/OPRecognizedBluetoothCarKitsDeviceGroupController;->mOPBluetoothCarKitDeviceUpdater:Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;

    return-void
.end method
