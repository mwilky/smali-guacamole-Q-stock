.class public Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;
.super Ljava/lang/Object;
.source "OpPhoneStatusBarPolicy.java"

# interfaces
.implements Lcom/oneplus/opzenmode/OpZenModeController$Callback;
.implements Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBControllerCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$SettingObserver;,
        Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$OpUpdateVolumeZenObject;
    }
.end annotation


# static fields
.field private static DEBUG_ONEPLUS:Z


# instance fields
.field private final mBgHandler:Landroid/os/Handler;

.field private mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field private mBluetoothBatteryLevel:I

.field private mBluetoothConnected:Z

.field private mBluetoothContentDescription:Ljava/lang/String;

.field private mBluetoothIconId:I

.field private mBluetoothIconVisible:Z

.field private mContext:Landroid/content/Context;

.field private mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsNotifyShown:Z

.field private final mNfcReceiver:Landroid/content/BroadcastReceiver;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOpZenModeController:Lcom/oneplus/opzenmode/OpZenModeController;

.field private final mSettingObserver:Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$SettingObserver;

.field private mShowRunnable:Ljava/lang/Runnable;

.field private mSlotWLB:Ljava/lang/String;

.field private mVibrateWhenMute:I

.field private mWlbSwitchController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$SettingObserver;

    invoke-direct {v0, p0}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$SettingObserver;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;)V

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mSettingObserver:Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$SettingObserver;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mVibrateWhenMute:I

    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Looper;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBgHandler:Landroid/os/Handler;

    iput v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetoothIconId:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetoothContentDescription:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetoothConnected:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetoothBatteryLevel:I

    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetoothIconVisible:Z

    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mIsNotifyShown:Z

    iput-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    new-instance v3, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$1;

    invoke-direct {v3, p0}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$1;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;)V

    iput-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$2;

    invoke-direct {v3, p0}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$2;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;)V

    iput-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mShowRunnable:Ljava/lang/Runnable;

    new-instance v3, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$3;

    invoke-direct {v3, p0}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$3;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;)V

    iput-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mNfcReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v3, "oem_vibrate_under_silent"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mSettingObserver:Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$SettingObserver;

    invoke-virtual {p2, v3, v0, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-class p2, Lcom/oneplus/opzenmode/OpZenModeController;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oneplus/opzenmode/OpZenModeController;

    iput-object p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mOpZenModeController:Lcom/oneplus/opzenmode/OpZenModeController;

    iget-object p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mOpZenModeController:Lcom/oneplus/opzenmode/OpZenModeController;

    invoke-interface {p2, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    const-class p2, Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/policy/BluetoothController;

    iput-object p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.bluetooth.device.action.BATTERY_LEVEL_CHANGED"

    invoke-virtual {p2, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/16 v4, 0x3f

    aput v4, v3, v0

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v4, "pref_name_notify_shown"

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "pref_key_notify_shown"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mIsNotifyShown:Z

    iget-boolean v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mIsNotifyShown:Z

    if-nez v3, :cond_0

    const-string v3, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/NotificationManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    :cond_0
    const-string v3, "com.oem.intent.action.ACTION_USB_HEADSET_PLUG"

    invoke-virtual {p2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v3, v4, p2, v1, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_nfc:I

    const-string v4, "nfc"

    invoke-interface {p2, v4, v3, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    :try_start_0
    iget-object p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p2

    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    move p2, v2

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    invoke-interface {v3, v4, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to get Nfc adapter "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v3, "OpPhoneStatusBarPolicy"

    invoke-static {v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-interface {p2, v4, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    :goto_1
    iget-object v5, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mNfcReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v8, Landroid/content/IntentFilter;

    const-string p2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v8, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-class p2, Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    iput-object p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mWlbSwitchController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    const p2, 0x10406d9

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mSlotWLB:Ljava/lang/String;

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mSlotWLB:Ljava/lang/String;

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_wlb_mode:I

    invoke-interface {p1, p2, v3, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mSlotWLB:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mWlbSwitchController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->getCurrentMode()I

    move-result v1

    if-lez v1, :cond_2

    move v0, v2

    :cond_2
    invoke-interface {p1, p2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mWlbSwitchController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->setCallBacks(Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBControllerCallbacks;)V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->DEBUG_ONEPLUS:Z

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->updateBluetooth()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->updateHeadsetPlug(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetoothIconVisible:Z

    return p0
.end method

.method static synthetic access$400(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->getSlotBluetooth()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetoothIconId:I

    return p0
.end method

.method static synthetic access$600(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetoothContentDescription:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;)Lcom/android/systemui/statusbar/phone/StatusBarIconController;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    return-object p0
.end method

.method static synthetic access$800(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->updateVolumeZen()V

    return-void
.end method

.method private getBluetoothBatteryIcon(I)I
    .locals 0

    div-int/lit8 p1, p1, 0xa

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_bt_battery_10:I

    goto :goto_0

    :pswitch_1
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_bt_battery_9:I

    goto :goto_0

    :pswitch_2
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_bt_battery_8:I

    goto :goto_0

    :pswitch_3
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_bt_battery_7:I

    goto :goto_0

    :pswitch_4
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_bt_battery_6:I

    goto :goto_0

    :pswitch_5
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_bt_battery_5:I

    goto :goto_0

    :pswitch_6
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_bt_battery_4:I

    goto :goto_0

    :pswitch_7
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_bt_battery_3:I

    goto :goto_0

    :pswitch_8
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_bt_battery_2:I

    goto :goto_0

    :pswitch_9
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_bt_battery_1:I

    goto :goto_0

    :pswitch_a
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_bt_battery_0:I

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 2

    const-class v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    const-string v1, "mHandler"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method

.method private getSlotBluetooth()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    const-string v1, "mSlotBluetooth"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private getSlotHotspot()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    const-string v1, "mSlotHotspot"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private postShowBT()V
    .locals 3

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mShowRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateBluetooth()V
    .locals 3

    const-class v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "updateBluetooth"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private updateHeadsetPlug(Landroid/content/Intent;)V
    .locals 5

    const-class v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Intent;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "updateHeadsetPlug"

    invoke-static {v0, v3, v2}, Lcom/oneplus/util/OpReflectionUtils;->getMethodWithParams(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {p0, v0, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeWithArgs(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private updateVolumeZen()V
    .locals 3

    const-class v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "updateVolumeZen"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected OpUpdateBluetooth()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/systemui/statusbar/phone/-$$Lambda$OpPhoneStatusBarPolicy$YxXtr18s6494UMI7t9rSTB_EmFk;

    invoke-direct {v1, p0}, Lcom/oneplus/systemui/statusbar/phone/-$$Lambda$OpPhoneStatusBarPolicy$YxXtr18s6494UMI7t9rSTB_EmFk;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected cancelHeadsetNotify()V
    .locals 3

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz p0, :cond_0

    const v0, 0xd348

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "headset"

    invoke-virtual {p0, v2, v0, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method public hideStatusBarIcon()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mSlotWLB:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic lambda$OpUpdateBluetooth$0$OpPhoneStatusBarPolicy()V
    .locals 9

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    const/4 v1, -0x1

    const-string v2, "OpPhoneStatusBarPolicy"

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothConnected()Z

    move-result v0

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isUST()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothEnabled()Z

    move-result v3

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothEnabled()Z

    move-result v3

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->accessibility_bluetooth_connected:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getBatteryLevel()I

    move-result v5

    if-eq v5, v1, :cond_2

    invoke-direct {p0, v5}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->getBluetoothBatteryIcon(I)I

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v5}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->getBluetoothBatteryIcon(I)I

    move-result v1

    goto :goto_1

    :cond_2
    sget v1, Lcom/android/systemui/R$drawable;->stat_sys_data_bluetooth_connected:I

    goto :goto_1

    :cond_3
    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_data_bluetooth:I

    iget-object v5, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$string;->accessibility_quick_settings_bluetooth_on:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v8, v5

    move v5, v1

    move v1, v4

    move-object v4, v8

    goto :goto_1

    :cond_4
    const-string v0, "BluetoothController == null"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_bluetooth:I

    iget-object v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->accessibility_quick_settings_bluetooth_on:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move v5, v1

    move v1, v0

    move v0, v3

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OpUpdateBluetooth, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetoothIconId:I

    if-ne v6, v1, :cond_5

    iget-boolean v6, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetoothIconVisible:Z

    if-ne v6, v3, :cond_5

    iget-boolean v6, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetoothConnected:Z

    if-ne v6, v0, :cond_5

    iget v6, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetoothBatteryLevel:I

    if-ne v6, v5, :cond_5

    if-eqz v4, :cond_7

    iget-object v6, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetoothContentDescription:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "updateBluetooth"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " mBluetooth is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    if-nez v7, :cond_6

    const-string v7, ""

    goto :goto_2

    :cond_6
    const-string v7, "not "

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " mIconId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetoothIconId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " iconId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " mConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetoothConnected:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " connected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " mVisible="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetoothIconVisible:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", visible="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " mDescrip="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetoothContentDescription:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", descrip="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " mLevel="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetoothBatteryLevel:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " batteryLevel="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetoothIconId:I

    iput-boolean v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetoothIconVisible:Z

    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetoothConnected:Z

    iput v5, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetoothBatteryLevel:I

    iput-object v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mBluetoothContentDescription:Ljava/lang/String;

    :cond_7
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->postShowBT()V

    return-void
.end method

.method public onDndChanged(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$5;

    invoke-direct {v0, p0}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$5;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onExpansionChanged(F)V
    .locals 0

    return-void
.end method

.method public onThreeKeyStatus(I)V
    .locals 1

    const-string p1, "OpPhoneStatusBarPolicy"

    const-string v0, " onThreeKeyStatus"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$4;

    invoke-direct {v0, p0}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$4;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onWLBModeChanged(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWLBModeChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpPhoneStatusBarPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mSlotWLB:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mSlotWLB:Ljava/lang/String;

    invoke-interface {p1, p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method public opUpdateHotspot()V
    .locals 4

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isUST()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->getSlotHotspot()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_hotspot:I

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->accessibility_status_bar_hotspot:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected sendHeadsetNotify()V
    .locals 8

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mIsNotifyShown:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/util/NotificationChannels;->ALERTS:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v1, Lcom/android/systemui/R$drawable;->ic_earphone:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->non_op_earphone_notification_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->non_op_earphone_notification_content:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-string v1, "android.oneplus.EARPHONE_MODE_SETTINGS"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    const-string v1, "earmode_from_notify"

    invoke-virtual {v3, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v7}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    const v2, 0xd348

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "headset"

    invoke-virtual {v1, v4, v2, v0, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    iput-boolean v7, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mIsNotifyShown:Z

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "pref_name_notify_shown"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pref_key_notify_shown"

    invoke-interface {p0, v0, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method protected updateVolumeZen(I)Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$OpUpdateVolumeZenObject;
    .locals 13

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    const/4 v5, 0x0

    const-string v6, "oem_vibrate_under_silent"

    invoke-static {v3, v6, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mVibrateWhenMute:I

    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mOpZenModeController:Lcom/oneplus/opzenmode/OpZenModeController;

    invoke-interface {v3}, Lcom/oneplus/opzenmode/OpZenModeController;->getThreeKeySatus()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mOpZenModeController:Lcom/oneplus/opzenmode/OpZenModeController;

    invoke-interface {v4}, Lcom/oneplus/opzenmode/OpZenModeController;->getDndEnable()Z

    move-result v4

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportSOCThreekey()Z

    move-result v6

    const-string v7, "show silent icon on status bar"

    const-string v8, "show no disturb icon on status bar"

    const-string v9, "three key in normal state, no icon shows on status bar"

    const/16 v10, 0x17

    const/4 v11, 0x1

    if-eqz v6, :cond_1

    if-eqz v4, :cond_0

    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_three_key_no_disturb:I

    iget-object v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$string;->interruption_level_none:I

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    new-array v8, v11, [Ljava/lang/Object;

    const-string v12, "show disturb icon on status bar"

    aput-object v12, v8, v5

    invoke-static {v6, v10, v8}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_three_key_no_disturb:I

    iget-object v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$string;->interruption_level_none:I

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    new-array v12, v11, [Ljava/lang/Object;

    aput-object v8, v12, v5

    invoke-static {v6, v10, v12}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-eq p1, v11, :cond_4

    const/4 v4, 0x3

    if-eq p1, v4, :cond_2

    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_three_key_normal:I

    iget-object v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$string;->quick_settings_dnd_label:I

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v9, v8, v5

    invoke-static {v6, v10, v8}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    :goto_0
    move-object v6, v4

    move v8, v5

    :goto_1
    move v4, v0

    goto :goto_4

    :cond_2
    iget v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mVibrateWhenMute:I

    if-ne v0, v11, :cond_3

    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_ringer_vibrate:I

    goto :goto_2

    :cond_3
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_three_key_silent:I

    :goto_2
    iget-object v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$string;->interruption_level_priority:I

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v7, v8, v5

    invoke-static {v6, v10, v8}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_three_key_no_disturb:I

    iget-object v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$string;->interruption_level_none:I

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    new-array v12, v11, [Ljava/lang/Object;

    aput-object v8, v12, v5

    invoke-static {v6, v10, v12}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    :goto_3
    move-object v6, v4

    move v8, v11

    goto :goto_1

    :goto_4
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportSOCThreekey()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eq v3, v11, :cond_6

    const/4 v0, 0x2

    if-eq v3, v0, :cond_5

    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_three_key_normal:I

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->quick_settings_dnd_label:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v9, v7, v5

    invoke-static {v3, v10, v7}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    move v7, v0

    move-object v9, v2

    goto :goto_6

    :cond_5
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_ringer_vibrate:I

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->accessibility_ringer_vibrate:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    new-array v7, v11, [Ljava/lang/Object;

    const-string v9, "show vibrate icon on status bar"

    aput-object v9, v7, v5

    invoke-static {v3, v10, v7}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto :goto_5

    :cond_6
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_three_key_silent:I

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->accessibility_ringer_silent:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v7, v9, v5

    invoke-static {v3, v10, v9}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    :goto_5
    move v7, v0

    move-object v9, v2

    move v5, v11

    goto :goto_6

    :cond_7
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DndTile;->isVisible(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DndTile;->isCombinedIcon(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    if-nez v0, :cond_8

    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_ringer_silent:I

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->accessibility_ringer_silent:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    move-object v9, v0

    move v7, v5

    :goto_6
    new-instance v10, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$OpUpdateVolumeZenObject;

    move-object v0, v10

    move-object v1, p0

    move v2, v8

    move v3, v4

    move-object v4, v6

    move v6, v7

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$OpUpdateVolumeZenObject;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;ZILjava/lang/String;ZILjava/lang/String;)V

    return-object v10
.end method
