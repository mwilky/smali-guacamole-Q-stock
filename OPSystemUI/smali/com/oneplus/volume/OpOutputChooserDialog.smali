.class public Lcom/oneplus/volume/OpOutputChooserDialog;
.super Landroid/app/Dialog;
.source "OpOutputChooserDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/oneplus/volume/OpOutputChooserLayout$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/volume/OpOutputChooserDialog$BluetoothCallbackHandler;,
        Lcom/oneplus/volume/OpOutputChooserDialog$ItemComparator;,
        Lcom/oneplus/volume/OpOutputChooserDialog$MediaRouterCallback;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field private static final mErrorListener:Lcom/android/settingslib/bluetooth/BluetoothUtils$ErrorListener;

.field private static final mOnInitCallback:Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;


# instance fields
.field protected isAttached:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBgDrawable:I

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothCallbackHandler:Lcom/oneplus/volume/OpOutputChooserDialog$BluetoothCallbackHandler;

.field private final mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private final mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private final mCallback:Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

.field private mCheckActiveDeviceRunnable:Ljava/lang/Runnable;

.field protected final mConnectedDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/systemui/plugins/VolumeDialogController;

.field private final mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

.field private mCurrentActiveDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mDefaultIcon:Landroid/graphics/drawable/Drawable;

.field private mEmytyIconColor:I

.field private final mHandler:Landroid/os/Handler;

.field private mHeadSetString:Ljava/lang/String;

.field private mIconColor:I

.field private mIsInCall:Z

.field private mLastDetailItemClickTime:J

.field private mLastUpdateTime:J

.field private mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mPaddingActiveDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mPreSelectDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mPrimaryTextColor:I

.field protected mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRouteSelector:Landroidx/mediarouter/media/MediaRouteSelector;

.field private final mRouter:Lcom/android/systemui/volume/MediaRouterWrapper;

.field private final mRouterCallback:Lcom/oneplus/volume/OpOutputChooserDialog$MediaRouterCallback;

.field private mSecondaryTextColor:I

.field private mSpeakerGroupIcon:Landroid/graphics/drawable/Drawable;

.field private mSpeakerIcon:Landroid/graphics/drawable/Drawable;

.field private mSpeakerString:Ljava/lang/String;

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private mThemeColorMode:I

.field private mTvIcon:Landroid/graphics/drawable/Drawable;

.field private mView:Lcom/oneplus/volume/OpOutputChooserLayout;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/volume/OpOutputChooserDialog;->DEBUG:Z

    new-instance v0, Lcom/oneplus/volume/OpOutputChooserDialog$6;

    invoke-direct {v0}, Lcom/oneplus/volume/OpOutputChooserDialog$6;-><init>()V

    sput-object v0, Lcom/oneplus/volume/OpOutputChooserDialog;->mOnInitCallback:Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;

    new-instance v0, Lcom/oneplus/volume/OpOutputChooserDialog$7;

    invoke-direct {v0}, Lcom/oneplus/volume/OpOutputChooserDialog$7;-><init>()V

    sput-object v0, Lcom/oneplus/volume/OpOutputChooserDialog;->mErrorListener:Lcom/android/settingslib/bluetooth/BluetoothUtils$ErrorListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/volume/MediaRouterWrapper;)V
    .locals 3

    sget v0, Lcom/android/systemui/R$style;->qs_theme:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mHeadSetString:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mSpeakerString:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mConnectedDevices:Ljava/util/List;

    iput-object v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mPreSelectDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iput-object v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mPaddingActiveDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iput-object v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mCurrentActiveDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mLastDetailItemClickTime:J

    new-instance v1, Lcom/oneplus/volume/OpOutputChooserDialog$1;

    invoke-direct {v1, p0}, Lcom/oneplus/volume/OpOutputChooserDialog$1;-><init>(Lcom/oneplus/volume/OpOutputChooserDialog;)V

    iput-object v1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    new-instance v1, Lcom/oneplus/volume/OpOutputChooserDialog$2;

    invoke-direct {v1, p0}, Lcom/oneplus/volume/OpOutputChooserDialog$2;-><init>(Lcom/oneplus/volume/OpOutputChooserDialog;)V

    iput-object v1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/oneplus/volume/OpOutputChooserDialog$3;

    invoke-direct {v1, p0}, Lcom/oneplus/volume/OpOutputChooserDialog$3;-><init>(Lcom/oneplus/volume/OpOutputChooserDialog;)V

    iput-object v1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mCallback:Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    new-instance v1, Lcom/oneplus/volume/OpOutputChooserDialog$4;

    invoke-direct {v1, p0}, Lcom/oneplus/volume/OpOutputChooserDialog$4;-><init>(Lcom/oneplus/volume/OpOutputChooserDialog;)V

    iput-object v1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/volume/OpOutputChooserDialog$5;

    invoke-direct {v1, p0}, Lcom/oneplus/volume/OpOutputChooserDialog$5;-><init>(Lcom/oneplus/volume/OpOutputChooserDialog;)V

    iput-object v1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mThemeColorMode:I

    iput v1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mPrimaryTextColor:I

    iput v1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mSecondaryTextColor:I

    iput v1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mIconColor:I

    iput v1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mEmytyIconColor:I

    iput v1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mBgDrawable:I

    new-instance v2, Lcom/oneplus/volume/OpOutputChooserDialog$8;

    invoke-direct {v2, p0}, Lcom/oneplus/volume/OpOutputChooserDialog$8;-><init>(Lcom/oneplus/volume/OpOutputChooserDialog;)V

    iput-object v2, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mCheckActiveDeviceRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/BluetoothController;

    iput-object v2, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    const-string/jumbo v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v2, "telecom"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    iput-object v2, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mTelecomManager:Landroid/telecom/TelecomManager;

    iget-object v2, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v2

    iput-boolean v2, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mIsInCall:Z

    iput-object p2, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mRouter:Lcom/android/systemui/volume/MediaRouterWrapper;

    new-instance p2, Lcom/oneplus/volume/OpOutputChooserDialog$MediaRouterCallback;

    invoke-direct {p2, p0, v0}, Lcom/oneplus/volume/OpOutputChooserDialog$MediaRouterCallback;-><init>(Lcom/oneplus/volume/OpOutputChooserDialog;Lcom/oneplus/volume/OpOutputChooserDialog$1;)V

    iput-object p2, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mRouterCallback:Lcom/oneplus/volume/OpOutputChooserDialog$MediaRouterCallback;

    new-instance p2, Landroidx/mediarouter/media/MediaRouteSelector$Builder;

    invoke-direct {p2}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;-><init>()V

    const-string v0, "android.media.intent.category.REMOTE_PLAYBACK"

    invoke-virtual {p2, v0}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;->addControlCategory(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteSelector$Builder;

    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;->build()Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mRouteSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-class p1, Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/VolumeDialogController;

    iput-object p1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/Window;->requestFeature(I)Z

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const p2, 0x10002

    invoke-virtual {p1, p2}, Landroid/view/Window;->clearFlags(I)V

    const p2, 0x10c0128

    invoke-virtual {p1, p2}, Landroid/view/Window;->addFlags(I)V

    const/16 p2, 0x7e4

    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    invoke-direct {p0}, Lcom/oneplus/volume/OpOutputChooserDialog;->isLandscape()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x15

    goto :goto_0

    :cond_0
    const/16 p0, 0x13

    :goto_0
    iput p0, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/volume/OpOutputChooserDialog;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p0
.end method

.method static synthetic access$002(Lcom/oneplus/volume/OpOutputChooserDialog;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$300(Lcom/oneplus/volume/OpOutputChooserDialog;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/volume/OpOutputChooserDialog;->updateItems(Z)V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/volume/OpOutputChooserDialog;->DEBUG:Z

    return v0
.end method

.method static synthetic access$502(Lcom/oneplus/volume/OpOutputChooserDialog;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mPaddingActiveDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-object p1
.end method

.method static synthetic access$700(Lcom/oneplus/volume/OpOutputChooserDialog;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mCheckActiveDeviceRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$800(Lcom/oneplus/volume/OpOutputChooserDialog;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/oneplus/volume/OpOutputChooserDialog;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mPreSelectDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-object p0
.end method

.method static synthetic access$902(Lcom/oneplus/volume/OpOutputChooserDialog;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mPreSelectDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-object p1
.end method

.method private addBluetoothDevices(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oneplus/volume/OpOutputChooserLayout$Item;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/oneplus/volume/OpOutputChooserDialog;->getDevices()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v5, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v5, v4}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getBondState(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v5

    const/16 v7, 0x400

    if-eq v5, v7, :cond_2

    const/16 v7, 0x1f00

    if-eq v5, v7, :cond_2

    goto :goto_0

    :cond_2
    new-instance v5, Lcom/oneplus/volume/OpOutputChooserLayout$Item;

    invoke-direct {v5}, Lcom/oneplus/volume/OpOutputChooserLayout$Item;-><init>()V

    sget v7, Lcom/android/systemui/R$drawable;->ic_qs_bluetooth_on:I

    iput v7, v5, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->iconResId:I

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->line1:Ljava/lang/CharSequence;

    iput-object v4, v5, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->tag:Ljava/lang/Object;

    sget v7, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->DEVICE_TYPE_BT:I

    iput v7, v5, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->deviceType:I

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ne v7, v8, :cond_5

    sget v7, Lcom/android/systemui/R$drawable;->ic_qs_bluetooth_connected:I

    iput v7, v5, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->iconResId:I

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBatteryLevel()I

    move-result v7

    const/4 v10, -0x1

    if-eq v7, v10, :cond_3

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v4}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBtClassDrawableWithDescription(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/util/Pair;

    move-result-object v10

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Landroid/graphics/drawable/Drawable;

    iput-object v10, v5, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v10, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mContext:Landroid/content/Context;

    sget v11, Lcom/android/systemui/R$string;->quick_settings_connected_battery_level:I

    new-array v12, v9, [Ljava/lang/Object;

    invoke-static {v7}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v12, v1

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->line2:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mContext:Landroid/content/Context;

    sget v10, Lcom/android/systemui/R$string;->quick_settings_connected:I

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->line2:Ljava/lang/CharSequence;

    :goto_1
    iput-boolean v9, v5, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->canDisconnect:Z

    invoke-interface {p1, v2, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mConnectedDevices:Ljava/util/List;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mPaddingActiveDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-ne v5, v4, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The active device:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OpOutputChooserDialog"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    iput v8, v4, Landroid/os/Message;->what:I

    iget-object v5, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mPaddingActiveDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v5, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    if-ne v7, v9, :cond_6

    sget v4, Lcom/android/systemui/R$drawable;->ic_qs_bluetooth_connecting:I

    iput v4, v5, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->iconResId:I

    iget-object v4, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/systemui/R$string;->quick_settings_connecting:I

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->line2:Ljava/lang/CharSequence;

    invoke-interface {p1, v2, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_6
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    if-ne v3, v6, :cond_0

    :cond_7
    return-void
.end method

.method private addPhoneDevices(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oneplus/volume/OpOutputChooserLayout$Item;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/oneplus/volume/OpOutputChooserLayout$Item;

    invoke-direct {v0}, Lcom/oneplus/volume/OpOutputChooserLayout$Item;-><init>()V

    iget-object v1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mHeadSetString:Ljava/lang/String;

    iput-object p0, v0, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->line1:Ljava/lang/CharSequence;

    sget p0, Lcom/android/systemui/R$drawable;->ic_output_chooser_headset:I

    iput p0, v0, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->iconResId:I

    sget p0, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->DEVICE_TYPE_HEADSET:I

    iput p0, v0, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->deviceType:I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mSpeakerString:Ljava/lang/String;

    iput-object p0, v0, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->line1:Ljava/lang/CharSequence;

    sget p0, Lcom/android/systemui/R$drawable;->ic_output_chooser_phone:I

    iput p0, v0, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->iconResId:I

    sget p0, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->DEVICE_TYPE_PHONE:I

    iput p0, v0, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->deviceType:I

    :goto_0
    iget p0, v0, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->deviceType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->tag:Ljava/lang/Object;

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->canDisconnect:Z

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getAnimTranslation()F
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->op_output_chooser_dialog_panel_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-direct {p0}, Lcom/oneplus/volume/OpOutputChooserDialog;->isLandscape()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    neg-float v0, v0

    :goto_0
    return v0
.end method

.method private getDefaultIndext()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private getDisabledServicesMessage(ZZ)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->output_none_found_service_off:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget p0, Lcom/android/systemui/R$string;->output_service_bt_wifi:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->output_service_wifi:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->output_service_bt:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const/4 p1, 0x0

    aput-object p0, v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 0

    const-class p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    return-object p0
.end method

.method private isLandscape()Z
    .locals 1

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setSelecter(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oneplus/volume/OpOutputChooserLayout$Item;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-direct {p0}, Lcom/oneplus/volume/OpOutputChooserDialog;->getDefaultIndext()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/oneplus/volume/OpOutputChooserDialog;->findActiveDevice(I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    move v5, v3

    move v6, v4

    move v7, v6

    :goto_0
    if-ge v5, v2, :cond_2

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/volume/OpOutputChooserLayout$Item;

    iget-object v8, v8, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->tag:Ljava/lang/Object;

    instance-of v8, v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v8, :cond_1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/volume/OpOutputChooserLayout$Item;

    iget-object v8, v8, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->tag:Ljava/lang/Object;

    check-cast v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v6, v5

    :cond_0
    iget-object v9, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mPreSelectDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v7, v5

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    if-eq v6, v4, :cond_3

    move v0, v6

    goto :goto_1

    :cond_3
    if-eq v7, v4, :cond_4

    move v0, v7

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "activeDevice = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mPreSelectDevice:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mPreSelectDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " selectedDeviceIndex:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cehck:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/volume/OpOutputChooserLayout$Item;

    iget-object v1, v1, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->tag:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpOutputChooserDialog"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/volume/OpOutputChooserLayout$Item;

    iput-boolean v3, v1, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->selected:Z

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/volume/OpOutputChooserLayout$Item;

    iget-object v1, v1, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->tag:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v1, :cond_5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/volume/OpOutputChooserLayout$Item;

    iget-object p1, p1, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->tag:Ljava/lang/Object;

    check-cast p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iput-object p1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mCurrentActiveDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    :cond_5
    return-void
.end method

.method private updateItems(Z)V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mLastUpdateTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-wide v4, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mLastUpdateTime:J

    add-long/2addr v4, v2

    invoke-virtual {v0, p1, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mLastUpdateTime:J

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mView:Lcom/oneplus/volume/OpOutputChooserLayout;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    xor-int/2addr v2, v1

    iget-object v3, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothEnabled()Z

    move-result v3

    xor-int/2addr v1, v3

    if-nez v1, :cond_2

    invoke-direct {p0, v0}, Lcom/oneplus/volume/OpOutputChooserDialog;->addBluetoothDevices(Ljava/util/List;)V

    :cond_2
    invoke-direct {p0, v0}, Lcom/oneplus/volume/OpOutputChooserDialog;->addPhoneDevices(Ljava/util/List;)V

    sget-object v3, Lcom/oneplus/volume/OpOutputChooserDialog$ItemComparator;->sInstance:Lcom/oneplus/volume/OpOutputChooserDialog$ItemComparator;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-direct {p0, v0}, Lcom/oneplus/volume/OpOutputChooserDialog;->setSelecter(Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_5

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->output_none_found:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez v2, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    invoke-direct {p0, v2, v1}, Lcom/oneplus/volume/OpOutputChooserDialog;->getDisabledServicesMessage(ZZ)Ljava/lang/String;

    move-result-object p1

    :cond_4
    iget-object v1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mView:Lcom/oneplus/volume/OpOutputChooserLayout;

    invoke-virtual {v1, p1}, Lcom/oneplus/volume/OpOutputChooserLayout;->setEmptyState(Ljava/lang/String;)V

    :cond_5
    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mView:Lcom/oneplus/volume/OpOutputChooserLayout;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/oneplus/volume/OpOutputChooserLayout$Item;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/oneplus/volume/OpOutputChooserLayout$Item;

    invoke-virtual {p0, p1}, Lcom/oneplus/volume/OpOutputChooserLayout;->setItems([Lcom/oneplus/volume/OpOutputChooserLayout$Item;)V

    return-void
.end method

.method private updateTile()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mIsInCall:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mView:Lcom/oneplus/volume/OpOutputChooserLayout;

    sget v0, Lcom/android/systemui/R$string;->output_calls_title:I

    invoke-virtual {p0, v0}, Lcom/oneplus/volume/OpOutputChooserLayout;->setTitle(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mView:Lcom/oneplus/volume/OpOutputChooserLayout;

    sget v0, Lcom/android/systemui/R$string;->output_title:I

    invoke-virtual {p0, v0}, Lcom/oneplus/volume/OpOutputChooserLayout;->setTitle(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected cleanUp()V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public dismiss()V
    .locals 3

    const-class v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x50f

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->hidden(I)V

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mView:Lcom/oneplus/volume/OpOutputChooserLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mView:Lcom/oneplus/volume/OpOutputChooserLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mView:Lcom/oneplus/volume/OpOutputChooserLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-direct {p0}, Lcom/oneplus/volume/OpOutputChooserDialog;->getAnimTranslation()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/volume/-$$Lambda$OpOutputChooserDialog$uuC2AGIFmlmGmnd3aCbL124xDjw;

    invoke-direct {v1, p0}, Lcom/oneplus/volume/-$$Lambda$OpOutputChooserDialog$uuC2AGIFmlmGmnd3aCbL124xDjw;-><init>(Lcom/oneplus/volume/OpOutputChooserDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;

    invoke-direct {v0}, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method protected findActiveDevice(I)Landroid/bluetooth/BluetoothDevice;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    const/16 v2, 0x380

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/volume/OpOutputChooserDialog;->isStreamFromOutputDevice(II)Z

    move-result v2

    const-string v3, " type:"

    const-string v4, "OpOutputChooserDialog"

    if-eqz v2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "StreamFrom output DEVICE_OUT_ALL_A2DP:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v1, 0x70

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/oneplus/volume/OpOutputChooserDialog;->isStreamFromOutputDevice(II)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "StreamFrom output DEVICE_OUT_ALL_SCO:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/settingslib/bluetooth/HeadsetProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/settingslib/bluetooth/HeadsetProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    return-object p0

    :cond_2
    const/high16 v1, 0x8000000

    invoke-virtual {p0, p1, v1}, Lcom/oneplus/volume/OpOutputChooserDialog;->isStreamFromOutputDevice(II)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHearingAidProfile()Lcom/android/settingslib/bluetooth/HearingAidProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->getActiveDevices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "StreamFrom output DEVICE_OUT_HEARING_AID:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_4
    const-string p0, "no active device"

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getDevices()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getIconColor()I
    .locals 0

    iget p0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mIconColor:I

    return p0
.end method

.method public getPrimaryTextColor()I
    .locals 0

    iget p0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mPrimaryTextColor:I

    return p0
.end method

.method public getSecondaryTextColor()I
    .locals 0

    iget p0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mSecondaryTextColor:I

    return p0
.end method

.method protected isStreamFromOutputDevice(II)Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result p0

    and-int/2addr p0, p2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$dismiss$3$OpOutputChooserDialog()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$onCreate$0$OpOutputChooserDialog()Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oneplus/volume/OpOutputChooserDialog;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$onCreate$1$OpOutputChooserDialog()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/volume/OpOutputChooserDialog;->updateItems(Z)V

    return-void
.end method

.method public synthetic lambda$show$2$OpOutputChooserDialog()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestAccessibilityFocus()Z

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    iget-object v1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mCallback:Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object v1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    iget-object v2, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->addCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mBluetoothCallbackHandler:Lcom/oneplus/volume/OpOutputChooserDialog$BluetoothCallbackHandler;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->isAttached:Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "OpOutputChooserDialog"

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/android/systemui/R$layout;->output_chooser:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    new-instance v1, Lcom/oneplus/volume/-$$Lambda$BW-pj7NNgwJ6BtmLIoCptW843qk;

    invoke-direct {v1, p0}, Lcom/oneplus/volume/-$$Lambda$BW-pj7NNgwJ6BtmLIoCptW843qk;-><init>(Lcom/oneplus/volume/OpOutputChooserDialog;)V

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    sget v1, Lcom/android/systemui/R$id;->output_chooser:I

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/volume/OpOutputChooserLayout;

    iput-object v1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mView:Lcom/oneplus/volume/OpOutputChooserLayout;

    iget-object v1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mView:Lcom/oneplus/volume/OpOutputChooserLayout;

    invoke-virtual {v1, p0}, Lcom/oneplus/volume/OpOutputChooserLayout;->setCallback(Lcom/oneplus/volume/OpOutputChooserLayout$Callback;)V

    invoke-direct {p0}, Lcom/oneplus/volume/OpOutputChooserDialog;->updateTile()V

    iget-object v1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$drawable;->ic_cast:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$drawable;->ic_tv:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mTvIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$drawable;->ic_speaker:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mSpeakerIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$drawable;->ic_speaker_group:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mSpeakerGroupIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->quick_settings_footer_audio_headset:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mHeadSetString:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->quick_settings_footer_audio_speaker:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mSpeakerString:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mPreSelectDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v2, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mAudioManager:Landroid/media/AudioManager;

    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcom/oneplus/volume/-$$Lambda$OpOutputChooserDialog$00NnWdkxXzsJW09jWG2oOcRbI_w;

    invoke-direct {v3, p0}, Lcom/oneplus/volume/-$$Lambda$OpOutputChooserDialog$00NnWdkxXzsJW09jWG2oOcRbI_w;-><init>(Lcom/oneplus/volume/OpOutputChooserDialog;)V

    invoke-direct {v2, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->run()V

    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iput-object v2, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Error getting LocalBluetoothManager."

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v2, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v2, :cond_0

    const-string v2, "Bluetooth is not supported on this device"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    :goto_1
    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    xor-int/2addr v0, p1

    iget-object v2, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothEnabled()Z

    move-result v2

    xor-int/2addr v2, p1

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mView:Lcom/oneplus/volume/OpOutputChooserLayout;

    invoke-direct {p0, v0, v2}, Lcom/oneplus/volume/OpOutputChooserDialog;->getDisabledServicesMessage(ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/oneplus/volume/OpOutputChooserLayout;->setEmptyState(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mView:Lcom/oneplus/volume/OpOutputChooserLayout;

    new-instance v2, Lcom/oneplus/volume/-$$Lambda$OpOutputChooserDialog$dHDUhUBifSGxhUBYrqKcIMESrsE;

    invoke-direct {v2, p0}, Lcom/oneplus/volume/-$$Lambda$OpOutputChooserDialog$dHDUhUBifSGxhUBYrqKcIMESrsE;-><init>(Lcom/oneplus/volume/OpOutputChooserDialog;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v0, Lcom/oneplus/volume/OpOutputChooserDialog$BluetoothCallbackHandler;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/volume/OpOutputChooserDialog$BluetoothCallbackHandler;-><init>(Lcom/oneplus/volume/OpOutputChooserDialog;Lcom/oneplus/volume/OpOutputChooserDialog$1;)V

    iput-object v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mBluetoothCallbackHandler:Lcom/oneplus/volume/OpOutputChooserDialog$BluetoothCallbackHandler;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v0, v1, p0, p1}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_3
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->isAttached:Z

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mRouter:Lcom/android/systemui/volume/MediaRouterWrapper;

    iget-object v1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mRouterCallback:Lcom/oneplus/volume/OpOutputChooserDialog$MediaRouterCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/MediaRouterWrapper;->removeCallback(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object v1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->removeCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;)V

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    iget-object v1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mCallback:Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mBluetoothCallbackHandler:Lcom/oneplus/volume/OpOutputChooserDialog$BluetoothCallbackHandler;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    return-void
.end method

.method public onDetailItemClick(Lcom/oneplus/volume/OpOutputChooserLayout$Item;)V
    .locals 5

    const-string v0, "OpOutputChooserDialog"

    if-eqz p1, :cond_7

    iget-object v1, p1, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->tag:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mLastDetailItemClickTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1f4

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-wide v1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mLastDetailItemClickTime:J

    add-long/2addr v1, v3

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mLastDetailItemClickTime:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDetailItemClick:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->deviceType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->tag:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mPaddingActiveDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget v2, p1, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->deviceType:I

    sget v3, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->DEVICE_TYPE_BT:I

    const/16 v4, 0x510

    if-ne v2, v3, :cond_3

    iget-object p1, p1, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->tag:Ljava/lang/Object;

    check-cast p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    move-result v1

    if-nez v1, :cond_2

    const-class v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v4}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    iput-object p1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mPaddingActiveDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v1, p1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->connect(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mPreSelectDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/oneplus/volume/OpOutputChooserDialog;->setActiveBluetoothDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    :cond_3
    sget v3, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->DEVICE_TYPE_MEDIA_ROUTER:I

    if-ne v2, v3, :cond_4

    iget-object p1, p1, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->tag:Ljava/lang/Object;

    check-cast p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    const-class v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v4}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->select()V

    goto :goto_0

    :cond_4
    sget p1, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->DEVICE_TYPE_PHONE:I

    if-eq v2, p1, :cond_5

    sget p1, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->DEVICE_TYPE_HEADSET:I

    if-ne v2, p1, :cond_6

    :cond_5
    invoke-virtual {p0, v1}, Lcom/oneplus/volume/OpOutputChooserDialog;->setActiveBluetoothDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    iput-object v1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mPreSelectDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    :cond_6
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDetailItemClick mPreSelectDevice:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mPreSelectDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mPaddingActiveDevice:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mPaddingActiveDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    :goto_1
    const-string p0, "onDetailItemClick / item == null || item.tag == null"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/oneplus/volume/OpOutputChooserDialog;->cleanUp()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    return-void
.end method

.method public setActiveBluetoothDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mCurrentActiveDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput-object p1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mCurrentActiveDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setActiveBluetoothDevice:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpOutputChooserDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setActive()Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/settingslib/bluetooth/HeadsetProfile;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHearingAidProfile()Lcom/android/settingslib/bluetooth/HearingAidProfile;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1, v3}, Lcom/android/settingslib/bluetooth/A2dpProfile;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0, v3}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mBluetoothHeadset:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " / mBluetoothHeadset.isAudioOn():"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->isAudioOn()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadset;->isAudioOn()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->connectAudio()Z

    :cond_6
    return-void
.end method

.method public setTheme(I)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    sget p1, Lcom/android/systemui/R$color;->oneplus_contorl_icon_color_accent_active_light:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mIconColor:I

    sget p1, Lcom/android/systemui/R$color;->oneplus_contorl_icon_color_active_light:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mEmytyIconColor:I

    sget p1, Lcom/android/systemui/R$color;->oneplus_contorl_text_color_primary_light:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mPrimaryTextColor:I

    sget p1, Lcom/android/systemui/R$color;->oneplus_contorl_text_color_secondary_light:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mSecondaryTextColor:I

    sget p1, Lcom/android/systemui/R$drawable;->volume_dialog_bg_light:I

    iput p1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mBgDrawable:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/android/systemui/R$color;->oneplus_contorl_icon_color_accent_active_dark:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mIconColor:I

    sget p1, Lcom/android/systemui/R$color;->oneplus_contorl_icon_color_active_dark:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mEmytyIconColor:I

    sget p1, Lcom/android/systemui/R$color;->oneplus_contorl_text_color_primary_dark:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mPrimaryTextColor:I

    sget p1, Lcom/android/systemui/R$color;->oneplus_contorl_text_color_secondary_dark:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mSecondaryTextColor:I

    sget p1, Lcom/android/systemui/R$drawable;->volume_dialog_bg_dark:I

    iput p1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mBgDrawable:I

    :goto_0
    iget-object p1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mView:Lcom/oneplus/volume/OpOutputChooserLayout;

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mBgDrawable:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mView:Lcom/oneplus/volume/OpOutputChooserLayout;

    iget v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mSecondaryTextColor:I

    invoke-virtual {p1, v0}, Lcom/oneplus/volume/OpOutputChooserLayout;->setTitleColor(I)V

    iget-object p1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mView:Lcom/oneplus/volume/OpOutputChooserLayout;

    iget v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mEmytyIconColor:I

    invoke-virtual {p1, v0}, Lcom/oneplus/volume/OpOutputChooserLayout;->setEmptyIconColor(I)V

    iget-object p1, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mView:Lcom/oneplus/volume/OpOutputChooserLayout;

    iget v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mSecondaryTextColor:I

    invoke-virtual {p1, v0}, Lcom/oneplus/volume/OpOutputChooserLayout;->setEmptyTextColor(I)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/oneplus/volume/OpOutputChooserDialog;->updateItems(Z)V

    return-void
.end method

.method public show()V
    .locals 3

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    const-class v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x50f

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->visible(I)V

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mView:Lcom/oneplus/volume/OpOutputChooserLayout;

    invoke-direct {p0}, Lcom/oneplus/volume/OpOutputChooserDialog;->getAnimTranslation()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mView:Lcom/oneplus/volume/OpOutputChooserLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog;->mView:Lcom/oneplus/volume/OpOutputChooserLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/volume/-$$Lambda$OpOutputChooserDialog$S97eXojaikl-c1M20DRtR0WfIo4;

    invoke-direct {v1, p0}, Lcom/oneplus/volume/-$$Lambda$OpOutputChooserDialog$S97eXojaikl-c1M20DRtR0WfIo4;-><init>(Lcom/oneplus/volume/OpOutputChooserDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
