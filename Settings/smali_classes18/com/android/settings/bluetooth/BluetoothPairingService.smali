.class public final Lcom/android/settings/bluetooth/BluetoothPairingService;
.super Landroid/app/Service;
.source "BluetoothPairingService.java"


# static fields
.field private static final ACTION_DISMISS_PAIRING:Ljava/lang/String; = "com.android.settings.bluetooth.ACTION_DISMISS_PAIRING"

.field private static final BLUETOOTH_NOTIFICATION_CHANNEL:Ljava/lang/String; = "bluetooth_notification_channel"

.field private static final NOTIFICATION_ID:I = 0x1080080

.field private static final TAG:Ljava/lang/String; = "BluetoothPairingService"


# instance fields
.field private final mCancelReceiver:Landroid/content/BroadcastReceiver;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mRegistered:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mRegistered:Z

    new-instance v0, Lcom/android/settings/bluetooth/BluetoothPairingService$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothPairingService$1;-><init>(Lcom/android/settings/bluetooth/BluetoothPairingService;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mCancelReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothPairingService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public static getPairingDialogIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 7

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    const/high16 v2, -0x80000000

    const-string v3, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-class v6, Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-virtual {v5, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x2

    if-eq v4, v0, :cond_0

    const/4 v0, 0x4

    if-eq v4, v0, :cond_0

    const/4 v0, 0x5

    if-ne v4, v0, :cond_1

    :cond_0
    const-string v0, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v5, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    const-string v0, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v5
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    nop

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/NotificationChannel;

    const v2, 0x7f1202c4

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothPairingService;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "bluetooth_notification_channel"

    const/4 v4, 0x4

    invoke-direct {v1, v3, v2, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mCancelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mRegistered:Z

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingService;->stopForeground(Z)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x2

    const-string v3, "BluetoothPairingService"

    if-nez v1, :cond_0

    const-string v4, "Can\'t start: null intent!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/bluetooth/BluetoothPairingService;->stopSelf()V

    return v2

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/bluetooth/BluetoothPairingService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-instance v5, Landroid/app/Notification$Builder;

    const-string v6, "bluetooth_notification_channel"

    invoke-direct {v5, v0, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v6, 0x1080080

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    const v7, 0x7f120343

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    nop

    invoke-static/range {p0 .. p1}, Lcom/android/settings/bluetooth/BluetoothPairingService;->getPairingDialogIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v8

    const/high16 v9, 0x48000000    # 131072.0f

    const/4 v10, 0x0

    invoke-static {v0, v10, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    new-instance v9, Landroid/content/Intent;

    const-string v11, "com.android.settings.bluetooth.ACTION_DISMISS_PAIRING"

    invoke-direct {v9, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v0, v10, v9, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    const-string v12, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/bluetooth/BluetoothDevice;

    iput-object v13, v0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v13, v0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v13, :cond_1

    invoke-virtual {v13}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v13

    const/16 v14, 0xb

    if-eq v13, v14, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Device "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " not bonding: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/bluetooth/BluetoothPairingService;->stopSelf()V

    return v2

    :cond_1
    const-string v2, "android.bluetooth.device.extra.NAME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v1, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    if-eqz v12, :cond_2

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    :cond_2
    const v13, 0x104000e

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    :goto_0
    move-object v2, v13

    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Show pairing notification for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v13}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/app/Notification$Action$Builder;

    const v12, 0x7f1202fa

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v10, v12, v8}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v3}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v3

    new-instance v12, Landroid/app/Notification$Action$Builder;

    const/high16 v13, 0x1040000

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v10, v13, v9}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v12}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v12

    const v13, 0x7f120344

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    const v14, 0x7f120342

    new-array v15, v7, [Ljava/lang/Object;

    aput-object v2, v15, v10

    invoke-virtual {v4, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v10

    const v13, 0x106001c

    invoke-virtual {v0, v13}, Lcom/android/settings/bluetooth/BluetoothPairingService;->getColor(I)I

    move-result v13

    invoke-virtual {v10, v13}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    const-string v13, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v10, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v13, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-virtual {v10, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mCancelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v11, v10}, Lcom/android/settings/bluetooth/BluetoothPairingService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v7, v0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mRegistered:Z

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/android/settings/bluetooth/BluetoothPairingService;->startForeground(ILandroid/app/Notification;)V

    const/4 v6, 0x3

    return v6
.end method
