.class public Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "BluetoothDeviceDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$ServiceHanlder;,
        Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$TestDataFactory;
    }
.end annotation


# static fields
.field private static final CONNECT_ACTION:Ljava/lang/String; = "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

.field static EDIT_DEVICE_NAME_ITEM_ID:I = 0x0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_DEVICE_ADDRESS:Ljava/lang/String; = "device_address"

.field private static final TAG:Ljava/lang/String; = "BTDeviceDetailsFrg"

.field static sTestDataFactory:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$TestDataFactory;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mBreenoConnection:Landroid/content/ServiceConnection;

.field private mBreenoMessenger:Landroid/os/Messenger;

.field mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mConnecttion:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;

.field mDeviceAddress:Ljava/lang/String;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mDoubleClickLeft:Landroidx/preference/ListPreference;

.field private mDoubleClickRight:Landroidx/preference/ListPreference;

.field private mFindEarPreference:Landroidx/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private mIntroductionPreference:Landroidx/preference/Preference;

.field private mLeftFunc:I

.field private mListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

.field mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mOtaSwitchPreference:Landroidx/preference/SwitchPreference;

.field private mOtaWifiDataSwitchPreference:Landroidx/preference/SwitchPreference;

.field private mPodsService:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRightFunc:I

.field private mServiceHandler:Landroid/os/Handler;

.field private mStub:Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->EDIT_DEVICE_NAME_ITEM_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "no_config_bluetooth"

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$1;-><init>(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mBreenoConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$2;-><init>(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$3;-><init>(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mConnecttion:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;-><init>(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mStub:Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate$Stub;

    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;-><init>(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroid/os/Messenger;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mBreenoMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDoubleClickLeft:Landroidx/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mOtaWifiDataSwitchPreference:Landroidx/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate$Stub;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mStub:Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate$Stub;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->updateOnePlusPodsPreference(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mIntroductionPreference:Landroidx/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mController:Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mFindEarPreference:Landroidx/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mConnecttion:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getStringFromKeyFunction(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;III)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getBatteryString(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mLeftFunc:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mLeftFunc:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getKeyFunctionFromString(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mRightFunc:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mRightFunc:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mPodsService:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;)Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mPodsService:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->startBreenoService()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDoubleClickRight:Landroidx/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mOtaSwitchPreference:Landroidx/preference/SwitchPreference;

    return-object v0
.end method

.method private getBatteryString(III)Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez p1, :cond_0

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

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

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

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
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

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

.method private getKeyFunctionFromString(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f120676

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f120678

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f120674

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f120675

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    return v0

    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method private getStringFromKeyFunction(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f120676

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f120678

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f120674

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f120675

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v0, ""

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "device_address"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-direct {v1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;-><init>()V

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private startBreenoService()V
    .locals 6

    new-instance v0, Lcom/android/internal/app/AssistUtils;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v1

    const-string v2, "BTDeviceDetailsFrg"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.heytap.speechassist"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "startBreenoService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    const-string v3, "heytap.speech.intent.action.TEXT_DIRECTIVE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.heytap.speechassist.agent.MessengerService"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mBreenoConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void

    :cond_1
    :goto_0
    const-string v3, "startBreenoService return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateOnePlusPodsPreference(Ljava/lang/String;)V
    .locals 10

    const-string v0, "device_address"

    const-string v1, "onepluspods_auto_ota_version"

    const-string v2, "BTDeviceDetailsFrg"

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_6

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDoubleClickLeft:Landroidx/preference/ListPreference;

    invoke-virtual {v3, v4}, Landroidx/preference/ListPreference;->setVisible(Z)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDoubleClickRight:Landroidx/preference/ListPreference;

    invoke-virtual {v3, v4}, Landroidx/preference/ListPreference;->setVisible(Z)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mOtaSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroidx/preference/SwitchPreference;->setVisible(Z)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mFindEarPreference:Landroidx/preference/Preference;

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mOtaWifiDataSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroidx/preference/SwitchPreference;->setVisible(Z)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mPodsService:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    invoke-interface {v3, p1}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;->getKeyFunction(Ljava/lang/String;)I

    move-result v3

    div-int/lit8 v5, v3, 0xa

    iput v5, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mLeftFunc:I

    iget v5, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mLeftFunc:I

    mul-int/lit8 v5, v5, 0xa

    sub-int v5, v3, v5

    iput v5, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mRightFunc:I

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDoubleClickLeft:Landroidx/preference/ListPreference;

    iget v6, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mLeftFunc:I

    invoke-direct {p0, v6}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getStringFromKeyFunction(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDoubleClickLeft:Landroidx/preference/ListPreference;

    iget v6, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mLeftFunc:I

    invoke-direct {p0, v6}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getStringFromKeyFunction(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDoubleClickRight:Landroidx/preference/ListPreference;

    iget v6, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mRightFunc:I

    invoke-direct {p0, v6}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getStringFromKeyFunction(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDoubleClickRight:Landroidx/preference/ListPreference;

    iget v6, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mRightFunc:I

    invoke-direct {p0, v6}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getStringFromKeyFunction(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDoubleClickLeft:Landroidx/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v5, v6}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDoubleClickRight:Landroidx/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v5, v6}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, -0x1

    invoke-static {v5, v1, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_2

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mOtaSwitchPreference:Landroidx/preference/SwitchPreference;

    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v1, v6}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mOtaSwitchPreference:Landroidx/preference/SwitchPreference;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    const v8, 0x7f12067d

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mPodsService:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroidx/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mOtaSwitchPreference:Landroidx/preference/SwitchPreference;

    const/4 v6, 0x0

    if-ne v5, v4, :cond_3

    move v7, v4

    goto :goto_1

    :cond_3
    move v7, v6

    :goto_1
    invoke-virtual {v1, v7}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v7, "onepluspods_ota_data_download"

    invoke-static {v1, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mOtaWifiDataSwitchPreference:Landroidx/preference/SwitchPreference;

    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v7, v8}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mOtaWifiDataSwitchPreference:Landroidx/preference/SwitchPreference;

    if-ne v1, v4, :cond_4

    goto :goto_2

    :cond_4
    move v4, v6

    :goto_2
    invoke-virtual {v7, v4}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mPodsService:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;->getBattaryInfo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    rem-int/lit16 v4, v0, 0x3e8

    div-int/lit16 v6, v0, 0x3e8

    move v0, v6

    rem-int/lit16 v6, v0, 0x3e8

    div-int/lit16 v7, v0, 0x3e8

    move v0, v7

    rem-int/lit16 v7, v0, 0x3e8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateView detail battery = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " left = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " right="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " box = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4, v6, v7}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getBatteryString(III)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mController:Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;

    invoke-virtual {v9, p1, v8}, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->updateSumary(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateOnePlusPodsPreference e = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    goto :goto_4

    :cond_6
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mFindEarPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_7
    :goto_4
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 9
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    new-instance v8, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-object v2, v8

    move-object v3, p1

    move-object v4, p0

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    iput-object v8, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mController:Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mController:Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-direct {v2, p1, p0, v3, v1}, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-object v2, v8

    move-object v3, p1

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/settings/bluetooth/BluetoothDetailsMacAddressController;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-direct {v2, p1, p0, v3, v1}, Lcom/android/settings/bluetooth/BluetoothDetailsMacAddressController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method getCachedDevice(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-object v0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->sTestDataFactory:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$TestDataFactory;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$TestDataFactory;->getDevice(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    return-object v1
.end method

.method getLocalBluetoothManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-object v0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->sTestDataFactory:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$TestDataFactory;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$TestDataFactory;->getManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "BTDeviceDetailsFrg"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x3f1

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f16002a

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "device_address"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getLocalBluetoothManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getCachedDevice(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->finish()V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onAttach(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->init(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getBluetoothFeatureProvider(Landroid/content/Context;)Lcom/android/settings/bluetooth/BluetoothFeatureProvider;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "settings_ui"

    const-string v3, "bt_slice_settings_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    const-class v2, Lcom/android/settings/slices/BlockingSlicePrefController;

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    check-cast v2, Lcom/android/settings/slices/BlockingSlicePrefController;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/android/settings/bluetooth/BluetoothFeatureProvider;->getBluetoothDeviceSettingsUri(Landroid/bluetooth/BluetoothDevice;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Lcom/android/settings/slices/BlockingSlicePrefController;->setSliceUri(Landroid/net/Uri;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "device_address"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDeviceAddress:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getCachedDevice(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.oneplus.twspods"

    const-string v2, "com.oos.onepluspods.service.MultiDeviceCoreService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDeviceAddress:Ljava/lang/String;

    const-string v2, "address"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const-string v2, "device"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mConnecttion:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.headset.action.VENDOR_SPECIFIC_HEADSET_EVENT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate binderservice address = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BTDeviceDetailsFrg"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "function_click_left_key_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDoubleClickLeft:Landroidx/preference/ListPreference;

    const-string v0, "function_click_right_key_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDoubleClickRight:Landroidx/preference/ListPreference;

    const-string v0, "ota_device_support_enable_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mOtaSwitchPreference:Landroidx/preference/SwitchPreference;

    const-string v0, "find_my_bluetooth_earphone_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mFindEarPreference:Landroidx/preference/Preference;

    const-string v0, "ota_device_wifi_data_enable_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mOtaWifiDataSwitchPreference:Landroidx/preference/SwitchPreference;

    const-string v0, "function_introduction_earphone_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mIntroductionPreference:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDoubleClickLeft:Landroidx/preference/ListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDoubleClickRight:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mOtaSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mFindEarPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mOtaWifiDataSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mIntroductionPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$ServiceHanlder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$ServiceHanlder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mServiceHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mServiceHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mBreenoMessenger:Landroid/os/Messenger;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    sget v0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->EDIT_DEVICE_NAME_ITEM_ID:I

    const/4 v1, 0x0

    const v2, 0x7f120381

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f08019d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroy()V
    .locals 5

    const-string v0, "BTDeviceDetailsFrg"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mPodsService:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    invoke-interface {v2, v1}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;->setIOnePlusUpdate(Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mConnecttion:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unbindService e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterReceiver e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    :try_start_2
    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mBreenoMessenger:Landroid/os/Messenger;

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mServiceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mBreenoConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unbindService mBreenoConnection e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->EDIT_DEVICE_NAME_ITEM_ID:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-static {v0}, Lcom/android/settings/bluetooth/RemoteDeviceNameDialogFragment;->newInstance(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settings/bluetooth/RemoteDeviceNameDialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "RemoteDeviceName"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/bluetooth/RemoteDeviceNameDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferenceTreeClick  key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hanksettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "find_my_bluetooth_earphone_preference"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "address"

    const-string v2, "device"

    const-string v3, "com.oneplus.twspods"

    const/high16 v4, 0x10000000

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v4, "com.oos.onepluspods.map.OPAMapLocationActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    const-string v2, "connected"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v5, "function_introduction_earphone_preference"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v4, "com.oos.onepluspods.settings.functionlist.introduction.EarphoneUsageGuideActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onResume()V

    return-void
.end method
