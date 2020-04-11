.class public Lcom/android/settingslib/media/BluetoothMediaManager;
.super Lcom/android/settingslib/media/MediaManager;
.source "BluetoothMediaManager.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/media/BluetoothMediaManager$DeviceAttributeChangeCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothMediaManager"


# instance fields
.field private mCachedBluetoothDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private final mDeviceAttributeChangeCallback:Lcom/android/settingslib/media/BluetoothMediaManager$DeviceAttributeChangeCallback;

.field private mIsA2dpProfileReady:Z

.field private mIsHearingAidProfileReady:Z

.field private mLastAddedDevice:Lcom/android/settingslib/media/MediaDevice;

.field private mLastRemovedDevice:Lcom/android/settingslib/media/MediaDevice;

.field private mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Landroid/app/Notification;)V
    .locals 2

    invoke-direct {p0, p1, p3}, Lcom/android/settingslib/media/MediaManager;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    new-instance v0, Lcom/android/settingslib/media/BluetoothMediaManager$DeviceAttributeChangeCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/media/BluetoothMediaManager$DeviceAttributeChangeCallback;-><init>(Lcom/android/settingslib/media/BluetoothMediaManager;Lcom/android/settingslib/media/BluetoothMediaManager$1;)V

    iput-object v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mDeviceAttributeChangeCallback:Lcom/android/settingslib/media/BluetoothMediaManager$DeviceAttributeChangeCallback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mIsA2dpProfileReady:Z

    iput-boolean v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mIsHearingAidProfileReady:Z

    iput-object p2, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mCachedBluetoothDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    return-void
.end method

.method private addConnectableA2dpDevices()V
    .locals 8

    iget-object v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v0

    const-string v1, "BluetoothMediaManager"

    if-nez v0, :cond_0

    const-string v2, "addConnectableA2dpDevices() a2dp profile is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getConnectableDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    iget-object v5, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mCachedBluetoothDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v5, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v5

    if-nez v5, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t found CachedBluetoothDevice : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addConnectableA2dpDevices() device : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", is connected : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", is preferred : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v4}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0xc

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v7

    if-ne v6, v7, :cond_2

    invoke-direct {p0, v5}, Lcom/android/settingslib/media/BluetoothMediaManager;->addMediaDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    :cond_2
    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isProfileReady()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mIsA2dpProfileReady:Z

    return-void
.end method

.method private addConnectableHearingAidDevices()V
    .locals 11

    iget-object v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHearingAidProfile()Lcom/android/settingslib/bluetooth/HearingAidProfile;

    move-result-object v0

    const-string v1, "BluetoothMediaManager"

    if-nez v0, :cond_0

    const-string v2, "addConnectableHearingAidDevices() hap profile is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->getConnectableDevices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    iget-object v6, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mCachedBluetoothDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v6, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v6

    if-nez v6, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t found CachedBluetoothDevice : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addConnectableHearingAidDevices() device : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", is connected : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", is preferred : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v5}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v0, v5}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0xc

    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v10

    if-ne v9, v10, :cond_2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v6}, Lcom/android/settingslib/media/BluetoothMediaManager;->addMediaDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    :cond_2
    goto/16 :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->isProfileReady()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mIsHearingAidProfileReady:Z

    return-void
.end method

.method private addMediaDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 3

    invoke-static {p1}, Lcom/android/settingslib/media/MediaDeviceUtils;->getId(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/media/BluetoothMediaManager;->findMediaDevice(Ljava/lang/String;)Lcom/android/settingslib/media/MediaDevice;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/settingslib/media/BluetoothMediaDevice;

    iget-object v2, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/android/settingslib/media/BluetoothMediaDevice;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mDeviceAttributeChangeCallback:Lcom/android/settingslib/media/BluetoothMediaManager$DeviceAttributeChangeCallback;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    iput-object v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mLastAddedDevice:Lcom/android/settingslib/media/MediaDevice;

    iget-object v1, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mMediaDevices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private addServiceListenerIfNecessary()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mIsA2dpProfileReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mIsHearingAidProfileReady:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    :cond_1
    return-void
.end method

.method private buildBluetoothDeviceList()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mMediaDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/android/settingslib/media/BluetoothMediaManager;->addConnectableA2dpDevices()V

    invoke-direct {p0}, Lcom/android/settingslib/media/BluetoothMediaManager;->addConnectableHearingAidDevices()V

    return-void
.end method

.method private dispatchDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mLastAddedDevice:Lcom/android/settingslib/media/MediaDevice;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/settingslib/media/MediaDeviceUtils;->getId(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mLastAddedDevice:Lcom/android/settingslib/media/MediaDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mLastAddedDevice:Lcom/android/settingslib/media/MediaDevice;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/media/BluetoothMediaManager;->dispatchDeviceAdded(Lcom/android/settingslib/media/MediaDevice;)V

    :cond_0
    return-void
.end method

.method private findActiveHearingAidDevice()Lcom/android/settingslib/media/MediaDevice;
    .locals 4

    iget-object v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHearingAidProfile()Lcom/android/settingslib/bluetooth/HearingAidProfile;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->getActiveDevices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/android/settingslib/media/MediaDeviceUtils;->getId(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settingslib/media/BluetoothMediaManager;->findMediaDevice(Ljava/lang/String;)Lcom/android/settingslib/media/MediaDevice;

    move-result-object v2

    return-object v2

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private isCachedDeviceConnected(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedHearingAidDevice()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedA2dpDevice()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCachedDeviceConnected() cachedDevice : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", is hearing aid connected : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", is a2dp connected : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BluetoothMediaManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method private removeMediaDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 2

    invoke-static {p1}, Lcom/android/settingslib/media/MediaDeviceUtils;->getId(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/media/BluetoothMediaManager;->findMediaDevice(Ljava/lang/String;)Lcom/android/settingslib/media/MediaDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mDeviceAttributeChangeCallback:Lcom/android/settingslib/media/BluetoothMediaManager$DeviceAttributeChangeCallback;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    iput-object v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mLastRemovedDevice:Lcom/android/settingslib/media/MediaDevice;

    iget-object v1, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mMediaDevices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private unregisterDeviceAttributeChangeCallback()V
    .locals 4

    iget-object v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mMediaDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/media/MediaDevice;

    move-object v2, v1

    check-cast v2, Lcom/android/settingslib/media/BluetoothMediaDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/media/BluetoothMediaDevice;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mDeviceAttributeChangeCallback:Lcom/android/settingslib/media/BluetoothMediaManager$DeviceAttributeChangeCallback;

    invoke-virtual {v2, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateMediaDeviceListIfNecessary(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/settingslib/media/BluetoothMediaManager;->removeMediaDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    invoke-virtual {p0, p1}, Lcom/android/settingslib/media/BluetoothMediaManager;->dispatchDeviceRemoved(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/settingslib/media/MediaDeviceUtils;->getId(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/media/BluetoothMediaManager;->findMediaDevice(Ljava/lang/String;)Lcom/android/settingslib/media/MediaDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settingslib/media/BluetoothMediaManager;->dispatchDataChanged()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method dispatchDeviceRemoved(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mLastRemovedDevice:Lcom/android/settingslib/media/MediaDevice;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/settingslib/media/MediaDeviceUtils;->getId(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mLastRemovedDevice:Lcom/android/settingslib/media/MediaDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mLastRemovedDevice:Lcom/android/settingslib/media/MediaDevice;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/media/BluetoothMediaManager;->dispatchDeviceRemoved(Lcom/android/settingslib/media/MediaDevice;)V

    :cond_0
    return-void
.end method

.method public onAclConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAclConnectionStateChanged() device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMediaManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/settingslib/media/BluetoothMediaManager;->updateMediaDeviceListIfNecessary(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method

.method public onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActiveDeviceChanged : device : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", profile : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMediaManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x15

    if-ne v0, p2, :cond_0

    if-eqz p1, :cond_3

    invoke-static {p1}, Lcom/android/settingslib/media/MediaDeviceUtils;->getId(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/media/BluetoothMediaManager;->dispatchConnectedDeviceChanged(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    if-ne v0, p2, :cond_3

    invoke-direct {p0}, Lcom/android/settingslib/media/BluetoothMediaManager;->findActiveHearingAidDevice()Lcom/android/settingslib/media/MediaDevice;

    move-result-object v0

    if-nez p1, :cond_2

    if-nez v0, :cond_1

    const-string v1, "phone_media_device_id_1"

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/android/settingslib/media/MediaDeviceUtils;->getId(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    nop

    invoke-virtual {p0, v1}, Lcom/android/settingslib/media/BluetoothMediaManager;->dispatchConnectedDeviceChanged(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onAudioModeChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settingslib/media/BluetoothMediaManager;->dispatchDataChanged()V

    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 5

    const/16 v0, 0xc

    if-ne v0, p1, :cond_0

    invoke-direct {p0}, Lcom/android/settingslib/media/BluetoothMediaManager;->buildBluetoothDeviceList()V

    invoke-virtual {p0}, Lcom/android/settingslib/media/BluetoothMediaManager;->dispatchDeviceListAdded()V

    invoke-direct {p0}, Lcom/android/settingslib/media/BluetoothMediaManager;->addServiceListenerIfNecessary()V

    goto :goto_1

    :cond_0
    const/16 v0, 0xa

    if-ne v0, p1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mMediaDevices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/media/MediaDevice;

    move-object v3, v2

    check-cast v3, Lcom/android/settingslib/media/BluetoothMediaDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/media/BluetoothMediaDevice;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mDeviceAttributeChangeCallback:Lcom/android/settingslib/media/BluetoothMediaManager$DeviceAttributeChangeCallback;

    invoke-virtual {v3, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mMediaDevices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, v0}, Lcom/android/settingslib/media/BluetoothMediaManager;->dispatchDeviceListRemoved(Ljava/util/List;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/media/BluetoothMediaManager;->isCachedDeviceConnected(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/settingslib/media/BluetoothMediaManager;->addMediaDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    invoke-direct {p0, p1}, Lcom/android/settingslib/media/BluetoothMediaManager;->dispatchDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    :cond_0
    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/media/BluetoothMediaManager;->isCachedDeviceConnected(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/settingslib/media/BluetoothMediaManager;->removeMediaDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    invoke-virtual {p0, p1}, Lcom/android/settingslib/media/BluetoothMediaManager;->dispatchDeviceRemoved(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    :cond_0
    return-void
.end method

.method public onProfileConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProfileConnectionStateChanged() device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bluetoothProfile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMediaManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/settingslib/media/BluetoothMediaManager;->updateMediaDeviceListIfNecessary(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method

.method public onServiceConnected()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mIsA2dpProfileReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mIsHearingAidProfileReady:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/settingslib/media/BluetoothMediaManager;->buildBluetoothDeviceList()V

    invoke-virtual {p0}, Lcom/android/settingslib/media/BluetoothMediaManager;->dispatchDeviceListAdded()V

    :cond_1
    iget-boolean v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mIsA2dpProfileReady:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mIsHearingAidProfileReady:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    :cond_2
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 0

    return-void
.end method

.method public startScan()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    invoke-direct {p0}, Lcom/android/settingslib/media/BluetoothMediaManager;->buildBluetoothDeviceList()V

    invoke-virtual {p0}, Lcom/android/settingslib/media/BluetoothMediaManager;->dispatchDeviceListAdded()V

    invoke-direct {p0}, Lcom/android/settingslib/media/BluetoothMediaManager;->addServiceListenerIfNecessary()V

    return-void
.end method

.method public stopScan()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    invoke-direct {p0}, Lcom/android/settingslib/media/BluetoothMediaManager;->unregisterDeviceAttributeChangeCallback()V

    return-void
.end method
