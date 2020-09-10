.class public Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "BluetoothDashboardFragment.java"


# static fields
.field private static final CONTENT_UPDATE_BATTERY:I = 0x2

.field public static final KEY_BLUETOOTH_SCREEN:Ljava/lang/String; = "bluetooth_switchbar_screen"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "BluetoothDashboardFrag"

.field private static mOPBluetoothDiscoverablePreferenceController:Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;


# instance fields
.field private mConnecttion:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;

.field private mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

.field private mPodsService:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mStub:Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate$Stub;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTwsPreferences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/bluetooth/BluetoothDevicePreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    invoke-static {}, Lcom/oneplus/settings/SettingsBaseApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mTwsPreferences:Ljava/util/HashMap;

    new-instance v0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$2;-><init>(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mConnecttion:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$3;-><init>(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mStub:Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate$Stub;

    new-instance v0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$4;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$4;-><init>(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;)Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mPodsService:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;)Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mPodsService:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mTwsPreferences:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;)Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate$Stub;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mStub:Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate$Stub;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->updatePreferecenSummary(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;III)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->getBatteryString(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->findPreferenceFromAddress(Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    move-result-object v0

    return-object v0
.end method

.method private bindOnePlusPodsService(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.oneplus.twspods"

    const-string v2, "com.oos.onepluspods.service.MultiDeviceCoreService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "address"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const-string v2, "device"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mConnecttion:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private static buildControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    sput-object v1, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mOPBluetoothDiscoverablePreferenceController:Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;

    sget-object v1, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mOPBluetoothDiscoverablePreferenceController:Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothFilesPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BluetoothFilesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private findPreferenceFromAddress(Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    .locals 7

    invoke-virtual {p0, p2}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceCategory;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    instance-of v4, v3, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getBluetoothDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mTwsPreferences:Ljava/util/HashMap;

    invoke-virtual {v6, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getBatteryString(III)Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez p1, :cond_0

    iget-object v4, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mContext:Landroid/content/Context;

    const v5, 0x7f12067b

    new-array v6, v3, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const v4, 0x7f120679

    if-lez p2, :cond_2

    if-lez p1, :cond_1

    iget-object v5, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v5, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mContext:Landroid/content/Context;

    const v6, 0x7f12067c

    new-array v7, v3, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-lez p3, :cond_5

    if-gtz p1, :cond_3

    if-lez p2, :cond_4

    :cond_3
    iget-object v5, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v4, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mContext:Landroid/content/Context;

    const v5, 0x7f12067a

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private unBindOnePlusPodsService()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mPodsService:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mPodsService:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    invoke-interface {v0, v1}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;->setIOnePlusUpdate(Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mConnecttion:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v1, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mPodsService:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbindService e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothDashboardFrag"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private updateAllPreferenceSummary()V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mTwsPreferences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mTwsPreferences:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getBluetoothDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->getCachedDevice(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedHfpDevice()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedA2dpDevice()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :try_start_0
    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->updatePreferecenSummary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateBluetoothDevicePreferenceSummary = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BluetoothDashboardFrag"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    goto :goto_0

    :cond_2
    return-void
.end method

.method private updatePreferecenSummary(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mPodsService:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    invoke-interface {v0, p1}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;->getBattaryInfo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    rem-int/lit16 v1, v0, 0x3e8

    div-int/lit16 v0, v0, 0x3e8

    rem-int/lit16 v2, v0, 0x3e8

    div-int/lit16 v0, v0, 0x3e8

    rem-int/lit16 v3, v0, 0x3e8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateView battery = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " left = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " right="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " box = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BluetoothDashboardFrag"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->getBatteryString(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mTwsPreferences:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-eqz v5, :cond_0

    invoke-virtual {v5, v4}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v4}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setTwsBattery(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public checkOnePlusPods(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getBluetoothDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->getCachedDevice(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityCreated device.getname = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isConnectedHfpDevice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedHfpDevice()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isConnectedA2dpDevice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedA2dpDevice()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothDashboardFrag"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedHfpDevice()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedA2dpDevice()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mPodsService:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    if-eqz v1, :cond_2

    :try_start_0
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;->isOnePlusPods(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mPodsService:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    iget-object v3, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mStub:Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate$Stub;

    invoke-interface {v1, v3}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;->setIOnePlusUpdate(Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate;)V

    iget-object v1, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mTwsPreferences:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->updatePreferecenSummary(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setTwsAddress(Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setTwsAddress(Z)V

    const-string v1, ""

    invoke-virtual {p1, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setTwsBattery(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkOnePlusPods isOnePlusPods e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mTwsPreferences:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->bindOnePlusPodsService(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->buildControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getCachedDevice(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->getLocalBluetoothManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    nop

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    return-object v2
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f1207e0

    return v0
.end method

.method getLocalBluetoothManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 1

    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "BluetoothDashboardFrag"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x56e

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f16002c

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;

    new-instance v2, Lcom/android/settings/widget/SwitchBarController;

    iget-object v3, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-direct {v2, v3}, Lcom/android/settings/widget/SwitchBarController;-><init>(Lcom/android/settings/widget/SwitchBar;)V

    iget-object v3, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

    invoke-direct {v1, v0, v2, v3}, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/oneplus/settings/widget/OPFooterPreference;)V

    iput-object v1, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mController:Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mController:Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;->setFragment(Landroidx/fragment/app/Fragment;)V

    const-class v0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;

    invoke-virtual {p0, v0}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;

    invoke-virtual {v0, p0}, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->init(Lcom/android/settings/dashboard/DashboardFragment;)V

    const-class v0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;

    invoke-virtual {p0, v0}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;

    invoke-virtual {v0, p0}, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->init(Lcom/android/settings/dashboard/DashboardFragment;)V

    const-class v0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;

    invoke-virtual {v0, p0}, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->init(Lcom/android/settings/dashboard/DashboardFragment;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mFooterPreferenceMixin:Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;

    invoke-virtual {v0}, Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;->createFooterPreference()Lcom/oneplus/settings/widget/OPFooterPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.headset.action.VENDOR_SPECIFIC_HEADSET_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 4

    const-string v0, "BluetoothDashboardFrag"

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mPodsService:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;->setIOnePlusUpdate(Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate;)V

    iget-object v1, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mConnecttion:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v2, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mPodsService:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unbindService e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterReceiver e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    sget-object v0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mOPBluetoothDiscoverablePreferenceController:Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->setVisible()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mPodsService:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mStub:Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate$Stub;

    invoke-interface {v0, v1}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;->setIOnePlusUpdate(Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate;)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mTwsPreferences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->updateAllPreferenceSummary()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothDashboardFrag"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
