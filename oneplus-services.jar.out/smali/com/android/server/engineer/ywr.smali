.class public Lcom/android/server/engineer/ywr;
.super Landroid/os/ShellCommand;
.source ""


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "ywr"

.field private static waitResult:Z = false


# instance fields
.field private Va:Lcom/android/server/engineer/OneplusEngineerService;

.field private Wa:Ljava/io/PrintWriter;

.field private mContext:Landroid/content/Context;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/server/engineer/OneplusEngineerService;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    new-instance v0, Lcom/android/server/engineer/dma;

    invoke-direct {v0, p0}, Lcom/android/server/engineer/dma;-><init>(Lcom/android/server/engineer/ywr;)V

    iput-object v0, p0, Lcom/android/server/engineer/ywr;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/engineer/ywr;->Va:Lcom/android/server/engineer/OneplusEngineerService;

    iput-object p2, p0, Lcom/android/server/engineer/ywr;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "oneplus.intent.action.engineer.result"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/engineer/ywr;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/engineer/ywr;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/engineer/ywr;->waitResult:Z

    return p0
.end method

.method private bio(Ljava/io/PrintWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p1, p0, Lcom/android/server/engineer/ywr;->mContext:Landroid/content/Context;

    const-string v0, "get_config_params"

    invoke-direct {p0, p1, v0}, Lcom/android/server/engineer/ywr;->sis(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/server/engineer/ywr;->waitResult:Z

    :goto_0
    sget-boolean p0, Lcom/android/server/engineer/ywr;->waitResult:Z

    if-eqz p0, :cond_0

    const-wide/16 p0, 0x64

    invoke-static {p0, p1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private igw(Ljava/io/PrintWriter;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p0, "keyboxxml"

    invoke-static {p0}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    const-string v1, "init.svc.keyboxxml"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "stopped"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "ERROR"

    const/16 v4, 0xa

    if-eqz v1, :cond_4

    const-string v0, "ro.boot.project_name"

    const-string v1, "18821"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "18825"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KmInstallKeybox18827"

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KmInstallKeybox"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "init.svc.KmInstallKeybox18827"

    goto :goto_3

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init.svc.KmInstallKeybox"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "rmkeyboxxml"

    invoke-static {p0}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    :try_start_0
    new-instance p0, Lcom/android/server/engineer/zta;

    invoke-direct {p0}, Lcom/android/server/engineer/zta;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/engineer/zta;->Fc()V

    new-instance p0, Lcom/android/server/engineer/zta;

    invoke-direct {p0}, Lcom/android/server/engineer/zta;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/engineer/zta;->Ec()V

    const-string p0, "OK"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_4
    return-void

    :cond_2
    add-int/lit8 p0, p0, 0x1

    if-lt p0, v4, :cond_3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_3
    const-wide/16 v6, 0x12c

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v4, :cond_5

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_5
    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_0
.end method

.method private isMultiSimEnabled()Z
    .locals 2

    const-string p0, "persist.radio.multisim.config"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string v1, "dsds"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "dsda"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "tsts"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private ql()Ljava/lang/String;
    .locals 11

    new-instance v0, Ljava/io/File;

    const-string v1, "data/vendor/oemnvitems/447"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/engineer/ywr;->TAG:Ljava/lang/String;

    const-string v2, "data/vendor/oemnvitems/447 exists"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/server/engineer/ywr;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiMacFromNvItem()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-static {}, Lcom/android/server/engineer/rtg;->Hc()[B

    move-result-object v4

    if-eqz v4, :cond_2

    array-length v5, v4

    if-lez v5, :cond_2

    invoke-static {v4}, Lcom/android/server/engineer/qbh;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v1

    :goto_2
    const-string v5, "null"

    const-string v6, "gsm.serial"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "vendor.Oneplus.network.carrier_ver"

    invoke-static {v7, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :try_start_0
    iget-object v5, p0, Lcom/android/server/engineer/ywr;->mContext:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    sget-object v7, Lcom/android/server/engineer/ywr;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "telephonyManager : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    invoke-virtual {v5, v3}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_3
    const/4 v9, 0x2

    if-ne v7, v9, :cond_4

    invoke-virtual {v5, v3}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v5, v8}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v5

    move-object v10, v5

    move-object v5, v3

    move-object v3, v10

    goto :goto_3

    :cond_4
    move-object v3, v1

    goto :goto_4

    :catch_1
    move-exception v3

    move-object v5, v1

    :goto_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v5

    :goto_4
    invoke-direct {p0}, Lcom/android/server/engineer/ywr;->isMultiSimEnabled()Z

    move-result p0

    if-nez p0, :cond_5

    move-object v1, v3

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WIFI: "

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nBT: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nPCBA: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nMMI: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nCarrier: 00000000\nIMEI1: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nIMEI2: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private rtg(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "--reset_engineer_result"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v3

    goto :goto_1

    :sswitch_1
    const-string v0, "--reset_write_protect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v4

    goto :goto_1

    :sswitch_2
    const-string v0, "--reset_download_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_1

    :sswitch_3
    const-string v0, "--reset_back_cover_color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const-string v0, "OK:Reset Success"

    const-string v5, "FAIL:Reset Fail"

    if-eqz p1, :cond_5

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    goto :goto_3

    :cond_1
    const p0, 0xf4278

    new-array p1, v4, [B

    invoke-static {p0, p1, v4}, Lcom/android/server/engineer/rtg;->zta(I[BI)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_2
    const/16 p0, 0x80

    new-array p0, p0, [B

    invoke-static {p0}, Lcom/android/server/engineer/qbh;->setProductLineTestFlag([B)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/android/server/engineer/qbh;->Mc()Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    iget-object p0, p0, Lcom/android/server/engineer/ywr;->Va:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-virtual {p0}, Lcom/android/server/engineer/OneplusEngineerService;->ma()Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_5
    invoke-static {v1}, Lcom/android/server/secrecy/zta/zta/sis;->w(I)Z

    move-result p0

    if-eqz p0, :cond_6

    :goto_2
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x41a803ed -> :sswitch_3
        -0x28c3f196 -> :sswitch_2
        -0x226aaa21 -> :sswitch_1
        0x816af5d -> :sswitch_0
    .end sparse-switch
.end method

.method private sis(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.oem.engineermode.DoShellCommond"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "shell_cmd"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.oneplus.factorymode"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x1000000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object p0, Lcom/android/server/engineer/ywr;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "send do shell commond broadcast: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sis(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, ":"

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v4, "--execute_switch_log"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x11

    goto/16 :goto_1

    :sswitch_1
    const-string v4, "--execute_start_mmi"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v8

    goto/16 :goto_1

    :sswitch_2
    const-string v4, "--execute_show_production_message"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto/16 :goto_1

    :sswitch_3
    const-string v4, "--execute_switch_production_mode"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto/16 :goto_1

    :sswitch_4
    const-string v4, "--execute_engineer_order"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto/16 :goto_1

    :sswitch_5
    const-string v4, "--execute_launch_wifi_mmi"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_6
    const-string v4, "--execute_add_cover_ui"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    goto/16 :goto_1

    :sswitch_7
    const-string v4, "--execute_switch_wifi_mmi"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_8
    const-string v4, "--execute_power_off"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto/16 :goto_1

    :sswitch_9
    const-string v4, "--execute_model_test"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_a
    const-string v4, "--execute_stop_mmi"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v7

    goto :goto_1

    :sswitch_b
    const-string v4, "--execute_remove_cover_ui"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xd

    goto :goto_1

    :sswitch_c
    const-string v4, "--execute_check_key_status"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xe

    goto :goto_1

    :sswitch_d
    const-string v4, "--execute_start_dsocket"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xf

    goto :goto_1

    :sswitch_e
    const-string v4, "--execute_master_clear"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_1

    :sswitch_f
    const-string v4, "--execute_reboot_device"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto :goto_1

    :sswitch_10
    const-string v4, "--execute_detect_ms_result"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_11
    const-string v4, "--execute_stop_dsocket"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    const-string v4, "com.oem.autotest.connector.AutoTestServer"

    const-string v9, "com.oem.autotest"

    const-string v10, "com.oem.engineermode.EngineerModeMain"

    const-string v13, "FAIL:Error"

    const-string v14, "FAIL:ERROR"

    const/high16 v15, 0x10000000

    const-string v6, "com.oneplus.factorymode"

    const-string v11, "exception caught "

    const-string v12, "FAIL:System Not Ready"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_13

    :pswitch_0
    :try_start_0
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    const-string v4, "enable"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.oem.oemlogkit.getLog"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.oem.oemlogkit"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/server/engineer/ywr;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2

    :cond_1
    const-string v0, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "persist.sys.assert.panic"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "persist.vendor.oem.dump"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "oemlogkit"

    invoke-static {v0}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    const-string v0, "oemlogkit"

    invoke-static {v0}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    :cond_2
    :goto_2
    const-string v0, "OK:Switch Log Done"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_3
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_13

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/engineer/ywr;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_d

    :pswitch_1
    const-string v0, "stopDiagSocket"

    invoke-static {v0}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    const-string v0, "OK:Stop Success"

    :goto_3
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_13

    :pswitch_2
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-ne v1, v5, :cond_5

    aget-object v1, v0, v8

    aget-object v0, v0, v7

    invoke-static {v1}, Lcom/android/server/engineer/qbh;->F(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v0}, Lcom/android/server/engineer/qbh;->H(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "vendor.oem.diag.socket.ip"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "vendor.oem.diag.socket.port"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "vendor.oem.diag.socket.retry"

    const-string v1, "30"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "startDiagSocket"

    invoke-static {v0}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    const-string v0, "OK:Start Success"

    :goto_4
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_4
    const-string v0, "FAIL:INVALID PARAMETER"

    goto :goto_4

    :cond_5
    const-string v0, "FAIL:INVALID PARAMETER"

    goto :goto_4

    :cond_6
    const-string v0, "FAIL:Permission Deined"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    sget-object v1, Lcom/android/server/engineer/ywr;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_d

    :pswitch_3
    iget-object v1, v0, Lcom/android/server/engineer/ywr;->mContext:Landroid/content/Context;

    const-string v2, "check_key_status"

    invoke-direct {v0, v1, v2}, Lcom/android/server/engineer/ywr;->sis(Landroid/content/Context;Ljava/lang/String;)V

    sput-boolean v7, Lcom/android/server/engineer/ywr;->waitResult:Z

    :goto_5
    sget-boolean v0, Lcom/android/server/engineer/ywr;->waitResult:Z

    if-eqz v0, :cond_22

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_5

    :pswitch_4
    :try_start_2
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.oneplus.factorymode.assistant.SmartCoverUIService"

    invoke-direct {v3, v6, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/server/engineer/ywr;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "OK:Remove Cover UI Success"

    :goto_6
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_7
    const-string v0, "FAIL:Remove Cover UI Fail"

    goto :goto_6

    :cond_8
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_13

    :catch_2
    move-exception v0

    sget-object v1, Lcom/android/server/engineer/ywr;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception caught : "

    goto/16 :goto_11

    :pswitch_5
    :try_start_3
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-direct {v0, v0}, Lcom/android/server/engineer/ywr;->zta(Landroid/os/ShellCommand;)Landroid/content/Intent;

    move-result-object v1

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.oneplus.factorymode.assistant.SmartCoverUIService"

    invoke-direct {v3, v6, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/server/engineer/ywr;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "OK:Add Cover UI Success"

    :goto_7
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_9
    const-string v0, "FAIL:Add Cover UI Fail"

    goto :goto_7

    :cond_a
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_13

    :catch_3
    move-exception v0

    sget-object v1, Lcom/android/server/engineer/ywr;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_d

    :pswitch_6
    :try_start_4
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.REBOOT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.extra.KEY_CONFIRM"

    invoke-virtual {v1, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v1, v15}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, v0, Lcom/android/server/engineer/ywr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, v1, v8}, Lcom/android/server/engineer/ywr;->zta(Landroid/content/Context;Landroid/content/Intent;I)I

    move-result v0

    invoke-static {v0}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v0, "OK:Reboot Started"

    :goto_8
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FAIL:Reboot Fail, Error Code "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_c
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_13

    :catch_4
    move-exception v0

    sget-object v1, Lcom/android/server/engineer/ywr;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_d

    :pswitch_7
    :try_start_5
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-direct {v0, v0}, Lcom/android/server/engineer/ywr;->zta(Landroid/os/ShellCommand;)Landroid/content/Intent;

    move-result-object v1

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.oneplus.factorymode.wifitest.WifiAdbHelper"

    invoke-direct {v3, v6, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v1, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, v0, Lcom/android/server/engineer/ywr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, v1, v8}, Lcom/android/server/engineer/ywr;->zta(Landroid/content/Context;Landroid/content/Intent;I)I

    move-result v0

    invoke-static {v0}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v0, "OK:Launch Wifi MMI Success"

    :goto_9
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FAIL:Launch Wifi MMI Fail, Error Code "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_e
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_13

    :catch_5
    move-exception v0

    sget-object v1, Lcom/android/server/engineer/ywr;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_d

    :pswitch_8
    :try_start_6
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-direct {v0, v0}, Lcom/android/server/engineer/ywr;->zta(Landroid/os/ShellCommand;)Landroid/content/Intent;

    move-result-object v1

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.oneplus.factorymode.assistant.SwitchWifiMMI"

    invoke-direct {v3, v6, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/server/engineer/ywr;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "OK:Switch Wifi MMI Success"

    :goto_a
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_f
    const-string v0, "FAIL:Switch Wifi MMI Fail"

    goto :goto_a

    :cond_10
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_13

    :catch_6
    move-exception v0

    sget-object v1, Lcom/android/server/engineer/ywr;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_d

    :pswitch_9
    :try_start_7
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-direct {v0, v0}, Lcom/android/server/engineer/ywr;->zta(Landroid/os/ShellCommand;)Landroid/content/Intent;

    move-result-object v1

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.oneplus.factorymode.ShowRemoteMessage"

    invoke-direct {v3, v6, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v1, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, v0, Lcom/android/server/engineer/ywr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, v1, v8}, Lcom/android/server/engineer/ywr;->zta(Landroid/content/Context;Landroid/content/Intent;I)I

    move-result v0

    invoke-static {v0}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v0, "OK:Show Message Success"

    :goto_b
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FAIL:Show Message Fail, Error Code "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_12
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_13

    :catch_7
    move-exception v0

    sget-object v1, Lcom/android/server/engineer/ywr;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_d

    :pswitch_a
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_16

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.oneplus.factorymode.DetectMasterClearResult"

    invoke-direct {v3, v6, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v1, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, v0, Lcom/android/server/engineer/ywr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, v1, v8}, Lcom/android/server/engineer/ywr;->zta(Landroid/content/Context;Landroid/content/Intent;I)I

    move-result v0

    invoke-static {v0}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v1

    if-eqz v1, :cond_15

    const-wide/16 v3, 0x1f4

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    const-string v0, "sys.masterclear.result"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v7, :cond_13

    const-string v0, "OK:Detect Success"

    goto/16 :goto_3

    :cond_13
    if-nez v0, :cond_14

    const-string v0, "FAIL:Detect Failed"

    goto/16 :goto_3

    :cond_14
    const-string v0, "FAIL:Retry"

    goto/16 :goto_3

    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FAIL:Error Code "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_16
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_13

    :pswitch_b
    :try_start_8
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-direct {v0, v0}, Lcom/android/server/engineer/ywr;->zta(Landroid/os/ShellCommand;)Landroid/content/Intent;

    move-result-object v1

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.oneplus.factorymode.assistant.SwitchProductionMode"

    invoke-direct {v3, v6, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/server/engineer/ywr;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "OK:Switch Mode Success"

    :goto_c
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_17
    const-string v0, "FAIL:Switch Mode Fail"

    goto :goto_c

    :cond_18
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_13

    :catch_8
    move-exception v0

    sget-object v1, Lcom/android/server/engineer/ywr;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_d
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_13

    :pswitch_c
    :try_start_9
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-direct {v0, v0}, Lcom/android/server/engineer/ywr;->zta(Landroid/os/ShellCommand;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x1000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/server/engineer/ywr;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v0, "OK:Start Engineer Order Success"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_19
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto/16 :goto_13

    :catch_9
    move-exception v0

    sget-object v1, Lcom/android/server/engineer/ywr;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_10

    :pswitch_d
    :try_start_a
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1a

    const-string v3, "modeltest"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_1a
    new-instance v3, Landroid/content/Intent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.oppo.engineermode.manualtest.modeltest.ModelTest"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, v0, Lcom/android/server/engineer/ywr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v3, v8}, Lcom/android/server/engineer/ywr;->zta(Landroid/content/Context;Landroid/content/Intent;I)I

    move-result v0

    invoke-static {v0}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v0, "OK:Start ModelTest Success"

    :goto_e
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FAIL:Start ModelTest Fail, Error Code "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_1c
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    goto/16 :goto_13

    :catch_a
    move-exception v0

    sget-object v1, Lcom/android/server/engineer/ywr;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_10

    :pswitch_e
    :try_start_b
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_1d

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x1000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "order"

    const-string v4, "*#911#"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "isfromshell"

    const-string v4, "true"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/server/engineer/ywr;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v0, "OK:Start Power Off Success"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_1d
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    goto/16 :goto_13

    :catch_b
    move-exception v0

    sget-object v1, Lcom/android/server/engineer/ywr;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_10

    :pswitch_f
    :try_start_c
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-direct {v0, v0}, Lcom/android/server/engineer/ywr;->zta(Landroid/os/ShellCommand;)Landroid/content/Intent;

    move-result-object v1

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.oneplus.factorymode.manualtest.MasterClear"

    invoke-direct {v3, v6, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v1, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v3, 0x8000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, v0, Lcom/android/server/engineer/ywr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, v1, v8}, Lcom/android/server/engineer/ywr;->zta(Landroid/content/Context;Landroid/content/Intent;I)I

    move-result v0

    invoke-static {v0}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v0, "OK:Start Master Clear Success"

    :goto_f
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FAIL:Start Master Clear Fail, Error Code "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_1f
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    goto/16 :goto_13

    :catch_c
    move-exception v0

    sget-object v1, Lcom/android/server/engineer/ywr;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_10
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    :pswitch_10
    :try_start_d
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_20

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v9, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/server/engineer/ywr;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    const-string v0, "OK:Stop MMI Server Success"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_13

    :cond_20
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_13

    :catch_d
    move-exception v0

    sget-object v1, Lcom/android/server/engineer/ywr;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop mmi server exception caught : "

    goto :goto_11

    :pswitch_11
    :try_start_e
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_21

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v9, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/server/engineer/ywr;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    const-string v0, "OK:Start MMI Server Success"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_13

    :cond_21
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_13

    :catch_e
    move-exception v0

    sget-object v1, Lcom/android/server/engineer/ywr;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start mmi server exception caught : "

    :goto_11
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_22
    :goto_13
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7430403c -> :sswitch_11
        -0x6f6b949c -> :sswitch_10
        -0x69f0f8ba -> :sswitch_f
        -0x5c039fa6 -> :sswitch_e
        -0x3d93faf0 -> :sswitch_d
        -0x1290a56d -> :sswitch_c
        -0x71598f3 -> :sswitch_b
        -0x5815fca -> :sswitch_a
        0xf240492 -> :sswitch_9
        0x26942d4b -> :sswitch_8
        0x35c1b0e0 -> :sswitch_7
        0x45553c24 -> :sswitch_6
        0x57ace341 -> :sswitch_5
        0x643ca528 -> :sswitch_4
        0x6a8d7408 -> :sswitch_3
        0x70914a99 -> :sswitch_2
        0x75496b82 -> :sswitch_1
        0x7cfd4063 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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

.method private ssp(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 6

    const-string v0, "FAIL:Unknown Argument"

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x65299362

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v1, v2, :cond_2

    const v2, -0x1cd6367

    if-eq v1, v2, :cond_1

    const v2, 0x7dc2e617

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "--update_engineer_result"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v3

    goto :goto_1

    :cond_1
    const-string v1, "--update_back_cover_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const-string v1, "--update_serial_number"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v4

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const-string v1, "FAIL:Invalid Parameter"

    const-string v2, "OK:Update Success"

    const-string v5, "FAIL:Update Fail"

    if-eqz p1, :cond_a

    if-eq p1, v3, :cond_7

    if-eq p1, v4, :cond_4

    goto/16 :goto_4

    :cond_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/engineer/qbh;->G(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "/mnt/vendor/persist/engineermode/oem_serial_no"

    invoke-static {p1, p0}, Lcom/android/server/engineer/qbh;->cno(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    :try_start_0
    const-string p1, "persist.sys.oneplus.serialno"

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/server/engineer/ywr;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set Oneplus serial no caught exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    :try_start_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-ltz p1, :cond_9

    const/16 v1, 0x80

    if-ge p1, v1, :cond_9

    if-ltz p0, :cond_9

    if-gt p0, v4, :cond_9

    int-to-byte p0, p0

    :try_start_3
    invoke-static {p1, p0}, Lcom/android/server/engineer/qbh;->setProductLineTestFlagExtraByte(IB)Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    :goto_3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "FAIL:ERROR"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/engineer/qbh;->E(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 p1, 0x10

    invoke-static {p0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide p0

    long-to-int p0, p0

    invoke-static {p0}, Lcom/android/server/secrecy/zta/zta/sis;->w(I)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :goto_4
    return-void
.end method

.method private tsu(B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/server/engineer/qbh;->Kc()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/server/engineer/qbh;->rtg(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method private tsu(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "--query_cplc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x9

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "--query_battery_status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "--query_serial_number"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "--query_write_protect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "--query_download_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_1

    :sswitch_5
    const-string v0, "--query_sd_card_exists"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xc

    goto :goto_1

    :sswitch_6
    const-string v0, "--query_indicate_info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xd

    goto :goto_1

    :sswitch_7
    const-string v0, "--query_pcb_number"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    goto :goto_1

    :sswitch_8
    const-string v0, "--query_battery_level"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_9
    const-string v0, "--query_engineer_result"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_a
    const-string v0, "--query_download_status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_b
    const-string v0, "--query_sim_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xb

    goto :goto_1

    :sswitch_c
    const-string v0, "--query_back_cover_color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_d
    const-string v0, "--query_version"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const-string v0, ""

    const-string v3, "FAIL:Access Fail"

    const-string v4, "OK:"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/engineer/ywr;->ql()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_8

    :pswitch_1
    iget-object p0, p0, Lcom/android/server/engineer/ywr;->mContext:Landroid/content/Context;

    const-string p1, "storage"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    :try_start_0
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/VolumeInfo;

    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v0, :cond_1

    iget-object p1, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    goto :goto_4

    :cond_2
    move v1, v2

    :goto_4
    if-eqz v1, :cond_3

    const-string p0, "OK:SD Card Found"

    goto/16 :goto_8

    :cond_3
    const-string p0, "OK:SD Card Not Found"

    goto/16 :goto_8

    :catch_0
    move-exception p0

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    :pswitch_2
    const-string p0, "gsm.sim.state"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :pswitch_3
    invoke-static {}, Lcom/android/server/engineer/qbh;->Mc()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "vendor.gsm.serial"

    goto :goto_6

    :cond_4
    const-string p0, "gsm.serial"

    :goto_6
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto/16 :goto_7

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :pswitch_4
    iget-object p0, p0, Lcom/android/server/engineer/ywr;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p0

    if-eqz p0, :cond_8

    const-string p1, "android.nfc.NfcAdapter"

    :try_start_1
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v0, "getCplc"

    new-array v1, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_9

    :catch_1
    move-exception p0

    goto :goto_5

    :pswitch_5
    const-string p0, "persist.sys.oneplus.serialno"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/engineer/qbh;->G(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p0, v0, v2

    const-string p0, "OK:%s"

    invoke-static {p1, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_8

    :pswitch_6
    const-string p0, "sys.oem.production.login.mode"

    invoke-static {p0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "OK:Switch is On"

    goto/16 :goto_8

    :cond_6
    const-string p0, "OK:Switch is Off"

    goto/16 :goto_8

    :pswitch_7
    invoke-static {}, Lcom/android/server/engineer/qbh;->getProductLineTestFlag()[B

    move-result-object p0

    if-eqz p0, :cond_8

    array-length p1, p0

    if-lez p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/engineer/qbh;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3

    :pswitch_8
    const-string p0, "/sys/class/power_supply/battery/short_c_hw_status"

    invoke-static {p0, v1}, Lcom/android/server/engineer/qbh;->ssp(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_7

    const-string p0, "OK:Battery Status Okay"

    goto :goto_8

    :cond_7
    const-string p0, "FAIL:Battery DET Exception"

    goto :goto_8

    :pswitch_9
    const-string p0, "OK:Download Over"

    goto :goto_8

    :pswitch_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/sys/class/power_supply/battery/capacity"

    invoke-static {p1, v2}, Lcom/android/server/engineer/qbh;->ssp(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_8

    :pswitch_b
    invoke-static {}, Lcom/android/server/secrecy/zta/zta/sis;->getBackCoverColorVal()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_9

    :cond_8
    :goto_7
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3

    :pswitch_c
    invoke-static {}, Lcom/android/server/engineer/qbh;->Mc()Z

    move-result p0

    if-nez p0, :cond_a

    return-void

    :cond_a
    invoke-static {}, Lcom/android/server/engineer/rtg;->Gc()Z

    move-result p0

    if-nez p0, :cond_b

    const-string p0, "OK:WP ON"

    goto :goto_8

    :cond_b
    const-string p0, "OK:WP OFF"

    goto :goto_8

    :pswitch_d
    const-string p0, "OK:190101"

    :goto_8
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_9
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x779f4d3f -> :sswitch_d
        -0x60f7be46 -> :sswitch_c
        -0x545a992e -> :sswitch_b
        -0x401e878e -> :sswitch_a
        -0x3afc672a -> :sswitch_9
        -0x17160e05 -> :sswitch_8
        -0xc9159d0 -> :sswitch_7
        -0x862ee63 -> :sswitch_6
        0x194b0174 -> :sswitch_5
        0x1f170223 -> :sswitch_4
        0x25704998 -> :sswitch_3
        0x2fd2c31d -> :sswitch_2
        0x4110485b -> :sswitch_1
        0x7c600d5b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
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

.method private you(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p0, "cmd is null!"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "--generate_attk_key_pair"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "--verify_attk_key_pair"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string v1, "--export_attk_public_key"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_3
    const-string v1, "--get_tee_version"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_4
    const-string v1, "--enable_rpmb"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_5
    const-string v1, "--verify_ali_key"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_6
    const-string v1, "--verify_attk_key_pair_only"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_7
    const-string v1, "--crypto_eng_verify"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v1, "--get_device_id"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x5

    :cond_1
    :goto_0
    const-wide/16 v3, 0x64

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    invoke-static {}, Lcom/android/server/engineer/qbh;->Mc()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "mtk_trustonic_tee_version 1.0\n"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/server/engineer/ywr;->tsu(B)I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(I)V

    goto/16 :goto_8

    :pswitch_2
    iget-object p1, p0, Lcom/android/server/engineer/ywr;->mContext:Landroid/content/Context;

    const-string p2, "enable_rpmb"

    invoke-direct {p0, p1, p2}, Lcom/android/server/engineer/ywr;->sis(Landroid/content/Context;Ljava/lang/String;)V

    sput-boolean v2, Lcom/android/server/engineer/ywr;->waitResult:Z

    :goto_1
    sget-boolean p0, Lcom/android/server/engineer/ywr;->waitResult:Z

    if-eqz p0, :cond_2

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_1

    :pswitch_3
    iget-object p1, p0, Lcom/android/server/engineer/ywr;->mContext:Landroid/content/Context;

    const-string p2, "get_device_id"

    invoke-direct {p0, p1, p2}, Lcom/android/server/engineer/ywr;->sis(Landroid/content/Context;Ljava/lang/String;)V

    sput-boolean v2, Lcom/android/server/engineer/ywr;->waitResult:Z

    :goto_2
    sget-boolean p0, Lcom/android/server/engineer/ywr;->waitResult:Z

    if-eqz p0, :cond_2

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_2

    :pswitch_4
    iget-object p1, p0, Lcom/android/server/engineer/ywr;->mContext:Landroid/content/Context;

    const-string p2, "export_attk_public_key"

    invoke-direct {p0, p1, p2}, Lcom/android/server/engineer/ywr;->sis(Landroid/content/Context;Ljava/lang/String;)V

    sput-boolean v2, Lcom/android/server/engineer/ywr;->waitResult:Z

    :goto_3
    sget-boolean p0, Lcom/android/server/engineer/ywr;->waitResult:Z

    if-eqz p0, :cond_2

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_3

    :pswitch_5
    iget-object p1, p0, Lcom/android/server/engineer/ywr;->mContext:Landroid/content/Context;

    const-string p2, "verify_ali_key"

    invoke-direct {p0, p1, p2}, Lcom/android/server/engineer/ywr;->sis(Landroid/content/Context;Ljava/lang/String;)V

    sput-boolean v2, Lcom/android/server/engineer/ywr;->waitResult:Z

    :goto_4
    sget-boolean p0, Lcom/android/server/engineer/ywr;->waitResult:Z

    if-eqz p0, :cond_2

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_4

    :pswitch_6
    iget-object p1, p0, Lcom/android/server/engineer/ywr;->mContext:Landroid/content/Context;

    const-string p2, "verify_attk_key_pair_only"

    invoke-direct {p0, p1, p2}, Lcom/android/server/engineer/ywr;->sis(Landroid/content/Context;Ljava/lang/String;)V

    sput-boolean v2, Lcom/android/server/engineer/ywr;->waitResult:Z

    :goto_5
    sget-boolean p0, Lcom/android/server/engineer/ywr;->waitResult:Z

    if-eqz p0, :cond_2

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_5

    :pswitch_7
    iget-object p1, p0, Lcom/android/server/engineer/ywr;->mContext:Landroid/content/Context;

    const-string p2, "verify_attk_key_pair"

    invoke-direct {p0, p1, p2}, Lcom/android/server/engineer/ywr;->sis(Landroid/content/Context;Ljava/lang/String;)V

    sput-boolean v2, Lcom/android/server/engineer/ywr;->waitResult:Z

    :goto_6
    sget-boolean p0, Lcom/android/server/engineer/ywr;->waitResult:Z

    if-eqz p0, :cond_2

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_6

    :pswitch_8
    iget-object p1, p0, Lcom/android/server/engineer/ywr;->mContext:Landroid/content/Context;

    const-string p2, "generate_attk_key_pair"

    invoke-direct {p0, p1, p2}, Lcom/android/server/engineer/ywr;->sis(Landroid/content/Context;Ljava/lang/String;)V

    sput-boolean v2, Lcom/android/server/engineer/ywr;->waitResult:Z

    :goto_7
    sget-boolean p0, Lcom/android/server/engineer/ywr;->waitResult:Z

    if-eqz p0, :cond_2

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_7

    :cond_2
    :goto_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x60415fa5 -> :sswitch_8
        -0x60361868 -> :sswitch_7
        -0x20dab99e -> :sswitch_6
        -0x194d63e8 -> :sswitch_5
        -0xde8b811 -> :sswitch_4
        -0x4d2d5c -> :sswitch_3
        0x1dbb813 -> :sswitch_2
        0x1fb407c9 -> :sswitch_1
        0x40ec43c5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method private zta(Landroid/content/Context;Landroid/content/Intent;I)I
    .locals 12

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x10000000

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p2

    move v11, p3

    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/16 p0, -0x60

    return p0
.end method

.method private zta(Landroid/os/ShellCommand;)Landroid/content/Intent;
    .locals 7

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    :goto_0
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "--elal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "--eial"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "--esn"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "--ela"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "--eia"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_5
    const-string v2, "--ecn"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_6
    const-string v2, "--ez"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xc

    goto :goto_1

    :sswitch_7
    const-string v2, "--eu"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_8
    const-string v2, "--es"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v3

    goto :goto_1

    :sswitch_9
    const-string v2, "--el"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_a
    const-string v2, "--ei"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_b
    const-string v2, "--ef"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xb

    goto :goto_1

    :sswitch_c
    const-string v2, "-p"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xd

    goto :goto_1

    :sswitch_d
    const-string v2, "-e"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v4

    :cond_0
    :goto_1
    const-string v0, ","

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "t"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_3

    :cond_1
    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "f"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_3

    goto :goto_3

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid boolean value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    move v3, v4

    :cond_4
    :goto_3
    invoke-virtual {p0, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    goto/16 :goto_8

    :pswitch_3
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, v0

    :goto_4
    if-ge v4, v3, :cond_6

    aget-object v5, v0, v4

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :pswitch_4
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    new-array v2, v2, [J

    :goto_5
    array-length v3, v0

    if-ge v4, v3, :cond_5

    aget-object v3, v0, v4

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    goto/16 :goto_8

    :pswitch_6
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, v0

    :goto_6
    if-ge v4, v3, :cond_6

    aget-object v5, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_6
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    new-array v2, v2, [I

    :goto_7
    array-length v3, v0

    if-ge v4, v3, :cond_7

    aget-object v3, v0, v4

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_7
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad component name: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_9
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    :goto_8
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    goto :goto_9

    :pswitch_c
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    :goto_9
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_9
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5d8 -> :sswitch_d
        0x5e3 -> :sswitch_c
        0x152a41 -> :sswitch_b
        0x152a44 -> :sswitch_a
        0x152a47 -> :sswitch_9
        0x152a4e -> :sswitch_8
        0x152a50 -> :sswitch_7
        0x152a55 -> :sswitch_6
        0x2901df0 -> :sswitch_5
        0x2901e9d -> :sswitch_4
        0x2901efa -> :sswitch_3
        0x2901fe0 -> :sswitch_2
        0x4f73b56f -> :sswitch_1
        0x4f73c0b2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_c
        :pswitch_b
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

.method static synthetic zta(Lcom/android/server/engineer/ywr;)Ljava/io/PrintWriter;
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    return-object p0
.end method

.method private zta(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7c7ee80e

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    const v1, -0x2a7530aa

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "--provision_keybox"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v3

    goto :goto_1

    :cond_1
    const-string v0, "--verify_keybox"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const-string v0, "Pass\n"

    const-string v1, "Fail:%s\n"

    const/4 v4, 0x3

    const/4 v5, 0x2

    const-string v6, "MTK not support yet"

    const/4 v7, 0x4

    const-string v8, "Fail\n"

    if-eqz p1, :cond_6

    if-eq p1, v2, :cond_3

    goto/16 :goto_7

    :cond_3
    invoke-static {}, Lcom/android/server/engineer/qbh;->Mc()Z

    move-result p0

    if-nez p0, :cond_b

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/16 p1, 0xa

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/server/engineer/qbh;->Kc()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-static {p0}, Lcom/android/server/engineer/qbh;->rtg(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v7, :cond_a

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    if-nez p1, :cond_4

    :goto_2
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_4
    move p1, v3

    :goto_3
    if-ge p1, v7, :cond_5

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_5
    invoke-static {p0}, Lcom/android/server/engineer/qbh;->ssp(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_a

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v3

    :goto_4
    invoke-static {p1, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_6
    invoke-static {}, Lcom/android/server/engineer/qbh;->Mc()Z

    move-result p1

    if-nez p1, :cond_b

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/16 v6, 0x9

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length v6, p0

    move v9, v3

    :goto_5
    if-ge v9, v6, :cond_7

    aget-byte v10, p0, v9

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_7
    invoke-static {}, Lcom/android/server/engineer/qbh;->Kc()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-static {p1}, Lcom/android/server/engineer/qbh;->rtg(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v7, :cond_a

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_2

    :cond_8
    move p1, v3

    :goto_6
    if-ge p1, v7, :cond_9

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_9
    invoke-static {p0}, Lcom/android/server/engineer/qbh;->ssp(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_a

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v3

    goto/16 :goto_4

    :cond_a
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    :cond_b
    sget-object p0, Lcom/android/server/engineer/ywr;->TAG:Ljava/lang/String;

    invoke-static {p0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "/"

    const-string v4, ""

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    return v6

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    :try_start_0
    iget-object v5, v1, Lcom/android/server/engineer/ywr;->Va:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-virtual {v5, v2}, Lcom/android/server/engineer/OneplusEngineerService;->cgv(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :cond_1
    if-eqz v2, :cond_25

    :try_start_1
    sget-object v5, Lcom/android/server/engineer/ywr;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cmd = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v9, 0xc

    const/4 v11, 0x4

    const/4 v12, 0x6

    const/4 v14, 0x1

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v5, "--update_engineer_result"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0xf

    goto/16 :goto_1

    :sswitch_1
    const-string v5, "--execute_switch_log"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x26

    goto/16 :goto_1

    :sswitch_2
    const-string v5, "--query_cplc"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x9

    goto/16 :goto_1

    :sswitch_3
    const-string v5, "--execute_start_mmi"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x15

    goto/16 :goto_1

    :sswitch_4
    const-string v5, "--execute_show_production_message"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x1d

    goto/16 :goto_1

    :sswitch_5
    const-string v5, "--execute_switch_production_mode"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x1b

    goto/16 :goto_1

    :sswitch_6
    const-string v5, "--execute_engineer_order"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x1a

    goto/16 :goto_1

    :sswitch_7
    const-string v5, "--execute_launch_wifi_mmi"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x1f

    goto/16 :goto_1

    :sswitch_8
    const-string v5, "--execute_add_cover_ui"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x21

    goto/16 :goto_1

    :sswitch_9
    const-string v5, "--query_battery_status"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x5

    goto/16 :goto_1

    :sswitch_a
    const-string v5, "--generate_attk_key_pair"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x27

    goto/16 :goto_1

    :sswitch_b
    const-string v5, "--execute_switch_wifi_mmi"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x1e

    goto/16 :goto_1

    :sswitch_c
    const-string v5, "--query_serial_number"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x8

    goto/16 :goto_1

    :sswitch_d
    const-string v5, "--execute_power_off"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x18

    goto/16 :goto_1

    :sswitch_e
    const-string v5, "--query_write_protect"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v14

    goto/16 :goto_1

    :sswitch_f
    const-string v5, "--verify_attk_key_pair"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x28

    goto/16 :goto_1

    :sswitch_10
    const-string v5, "--query_download_mode"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x7

    goto/16 :goto_1

    :sswitch_11
    const-string v5, "--query_sd_card_exists"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v9

    goto/16 :goto_1

    :sswitch_12
    const-string v5, "--execute_model_test"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x19

    goto/16 :goto_1

    :sswitch_13
    const-string v5, "--reset_engineer_result"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x13

    goto/16 :goto_1

    :sswitch_14
    const-string v5, "--export_attk_public_key"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x2b

    goto/16 :goto_1

    :sswitch_15
    const-string v5, "-mmi"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x36

    goto/16 :goto_1

    :sswitch_16
    const-string v5, "-get"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x37

    goto/16 :goto_1

    :sswitch_17
    const-string v5, "-bcc"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x34

    goto/16 :goto_1

    :sswitch_18
    const-string v5, "-wp"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x35

    goto/16 :goto_1

    :sswitch_19
    const-string v5, "--get_tee_version"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x2f

    goto/16 :goto_1

    :sswitch_1a
    const-string v5, "--update_back_cover_color"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0xe

    goto/16 :goto_1

    :sswitch_1b
    const-string v5, "--execute_stop_mmi"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x16

    goto/16 :goto_1

    :sswitch_1c
    const-string v5, "--execute_remove_cover_ui"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x22

    goto/16 :goto_1

    :sswitch_1d
    const-string v5, "--query_indicate_info"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0xd

    goto/16 :goto_1

    :sswitch_1e
    const-string v5, "--query_pcb_number"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0xa

    goto/16 :goto_1

    :sswitch_1f
    const-string v5, "--enable_rpmb"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x2d

    goto/16 :goto_1

    :sswitch_20
    const-string v5, "--execute_check_key_status"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x23

    goto/16 :goto_1

    :sswitch_21
    const-string v5, "--query_battery_level"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x3

    goto/16 :goto_1

    :sswitch_22
    const-string v5, "--verify_ali_key"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x2a

    goto/16 :goto_1

    :sswitch_23
    const-string v5, "--verify_attk_key_pair_only"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x29

    goto/16 :goto_1

    :sswitch_24
    const-string v5, "--reset_write_protect"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x12

    goto/16 :goto_1

    :sswitch_25
    const-string v5, "--reset_download_mode"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x14

    goto/16 :goto_1

    :sswitch_26
    const-string v5, "--provision_keybox"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x31

    goto/16 :goto_1

    :sswitch_27
    const-string v5, "--install_keybox"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x30

    goto/16 :goto_1

    :sswitch_28
    const-string v5, "--query_engineer_result"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v12

    goto/16 :goto_1

    :sswitch_29
    const-string v5, "--execute_start_dsocket"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x24

    goto/16 :goto_1

    :sswitch_2a
    const-string v5, "--query_download_status"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v11

    goto/16 :goto_1

    :sswitch_2b
    const-string v5, "--reset_back_cover_color"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x11

    goto/16 :goto_1

    :sswitch_2c
    const-string v5, "--query_sim_state"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0xb

    goto/16 :goto_1

    :sswitch_2d
    const-string v5, "--execute_master_clear"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x17

    goto/16 :goto_1

    :sswitch_2e
    const-string v5, "--crypto_eng_verify"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x2e

    goto/16 :goto_1

    :sswitch_2f
    const-string v5, "--get_device_id"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x2c

    goto :goto_1

    :sswitch_30
    const-string v5, "--query_back_cover_color"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    goto :goto_1

    :sswitch_31
    const-string v5, "--update_serial_number"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x10

    goto :goto_1

    :sswitch_32
    const-string v5, "--execute_reboot_device"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    goto :goto_1

    :sswitch_33
    const-string v5, "--get_config_params"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x33

    goto :goto_1

    :sswitch_34
    const-string v5, "--execute_detect_ms_result"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x1c

    goto :goto_1

    :sswitch_35
    const-string v5, "--execute_stop_dsocket"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x25

    goto :goto_1

    :sswitch_36
    const-string v5, "--query_version"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    goto :goto_1

    :sswitch_37
    const-string v5, "--verify_keybox"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_2

    const/16 v5, 0x32

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v5, -0x1

    :goto_1
    const-string v13, "OK:"

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_18

    :pswitch_0
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/16 v15, 0x76

    if-eq v10, v15, :cond_9

    const/16 v15, 0xc4a

    if-eq v10, v15, :cond_8

    const/16 v15, 0xc51

    if-eq v10, v15, :cond_7

    const/16 v15, 0xc8f

    if-eq v10, v15, :cond_6

    const/16 v15, 0xed9

    if-eq v10, v15, :cond_5

    const v15, 0x17c42

    if-eq v10, v15, :cond_4

    const v15, 0x184e5

    if-eq v10, v15, :cond_3

    goto :goto_2

    :cond_3
    const-string v10, "dlm"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    move/from16 v16, v12

    goto :goto_3

    :cond_4
    const-string v10, "bcc"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/16 v16, 0x2

    goto :goto_3

    :cond_5
    const-string v10, "wp"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    move/from16 v16, v14

    goto :goto_3

    :cond_6
    const-string v10, "ds"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    move/from16 v16, v11

    goto :goto_3

    :cond_7
    const-string v10, "bs"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/16 v16, 0x5

    goto :goto_3

    :cond_8
    const-string v10, "bl"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/16 v16, 0x3

    goto :goto_3

    :cond_9
    const-string v10, "v"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_a

    move/from16 v16, v6

    goto :goto_3

    :cond_a
    :goto_2
    const/16 v16, -0x1

    :goto_3
    packed-switch v16, :pswitch_data_1

    goto/16 :goto_18

    :pswitch_1
    :try_start_3
    const-string v3, "sys.oem.production.login.mode"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    const-string v4, "OK:Switch is On"

    :goto_4
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_b
    iget-object v3, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    const-string v4, "OK:Switch is Off"
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catch_0
    :try_start_4
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :pswitch_2
    :try_start_5
    const-string v5, "/sys/class/power_supply/battery/short_c_hw_status"

    invoke-static {v5, v14}, Lcom/android/server/engineer/qbh;->ssp(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_d

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-ne v13, v9, :cond_d

    const-string v13, "[0-9]*"

    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-nez v13, :cond_c

    goto :goto_5

    :cond_c
    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const/16 v15, 0x8

    invoke-virtual {v10, v12, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v15, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v6, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "check battery stats time:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    :goto_5
    iget-object v3, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    const-string v6, "check battery stats time invalidate"

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_6
    if-ne v5, v14, :cond_e

    iget-object v3, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    const-string v5, "OK:HW Check Battery Status Okay"

    :goto_7
    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    :cond_e
    iget-object v3, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    const-string v5, "FAIL:HW Check  Battery DET Exception"

    goto :goto_7

    :goto_8
    const-string v3, "/sys/class/power_supply/battery/short_ic_otp_status"

    invoke-static {v3, v14}, Lcom/android/server/engineer/qbh;->ssp(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v14, :cond_f

    iget-object v3, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    const-string v5, "OK:IC Check Battery Status Okay"

    :goto_9
    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a

    :cond_f
    iget-object v3, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    const-string v5, "FAIL:IC Check Battery DET Exception"

    goto :goto_9

    :goto_a
    const-string v3, "persist.sys.hw_status_flag"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    const-string v5, "hw_errcode:6(battery hw check err)"

    :goto_b
    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c

    :cond_10
    const-string v3, "persist.sys.hw_status_flag"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, -0x6

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    const-string v5, "hw_errcode:-6(battery hw check repair)"

    goto :goto_b

    :cond_11
    iget-object v3, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    const-string v5, "hw_errcode:0(no error)"

    goto :goto_b

    :goto_c
    const-string v3, "persist.sys.hw_errTime"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_12

    iget-object v5, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hw_err_time:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d

    :cond_12
    iget-object v3, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    const-string v5, "hw_err_time:0000/00/00/0000"

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_d
    const-string v3, "persist.sys.ic_status_flag"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    const-string v5, "ic_errcode:7(battery ic check err)"

    :goto_e
    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f

    :cond_13
    const-string v3, "persist.sys.ic_status_flag"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, -0x7

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    const-string v5, "ic_errcode:-7(battery ic check repair)"

    goto :goto_e

    :cond_14
    iget-object v3, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    const-string v5, "ic_errcode:0(no error)"

    goto :goto_e

    :goto_f
    const-string v3, "persist.sys.ic_errTime"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15

    iget-object v4, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ic_err_time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_15
    iget-object v3, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    const-string v4, "ic_err_time:0000/00/00/0000"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_18

    :catch_1
    :try_start_6
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :pswitch_3
    :try_start_7
    iget-object v3, v1, Lcom/android/server/engineer/ywr;->Va:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-virtual {v3}, Lcom/android/server/engineer/OneplusEngineerService;->ka()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_16

    const-string v4, "download over"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    const-string v4, "OK:Download Over"

    :goto_10
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_16
    iget-object v3, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    const-string v4, "FAIL:Download Not Finished"

    goto :goto_10

    :pswitch_4
    iget-object v3, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/engineer/ywr;->Va:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-virtual {v5}, Lcom/android/server/engineer/OneplusEngineerService;->getBatteryLevel()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_10

    :pswitch_5
    invoke-static {}, Lcom/android/server/secrecy/zta/zta/sis;->getBackCoverColorVal()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_17

    iget-object v3, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    const-string v4, "FAIL:Access Fail"

    goto :goto_10

    :cond_17
    iget-object v4, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_18

    :pswitch_6
    invoke-static {}, Lcom/android/server/engineer/qbh;->Mc()Z

    move-result v3

    if-nez v3, :cond_18

    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :cond_18
    :try_start_8
    invoke-static {}, Lcom/android/server/engineer/rtg;->Gc()Z

    move-result v3

    if-nez v3, :cond_19

    iget-object v3, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    const-string v4, "OK:WP ON"

    goto :goto_10

    :cond_19
    iget-object v3, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    const-string v4, "OK:WP OFF"

    goto :goto_10

    :pswitch_7
    iget-object v3, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    const-string v4, "OK:180112"
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_10

    :catch_2
    :try_start_9
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_c
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :pswitch_8
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    const-string v3, "start"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v3, :cond_1b

    :try_start_b
    const-class v2, Landroid/app/ActivityManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v2

    if-eqz v2, :cond_1a

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.oem.autotest"

    const-string v4, "com.oem.autotest.connector.AutoTestServer"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/server/engineer/ywr;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    iget-object v2, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    const-string v3, "OK:Start MMI Server Success"

    :goto_11
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_1a
    iget-object v2, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    const-string v3, "FAIL:System Not Ready"
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_11

    :catch_3
    move-exception v0

    move-object v2, v0

    :try_start_c
    sget-object v3, Lcom/android/server/engineer/ywr;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start mmi server exception caught : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    const-string v3, "FAIL:Error"

    :goto_12
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_1b
    const-string v3, "stop"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v2, :cond_25

    :try_start_d
    const-class v2, Landroid/app/ActivityManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v2

    if-eqz v2, :cond_1c

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.oem.autotest"

    const-string v4, "com.oem.autotest.connector.AutoTestServer"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/server/engineer/ywr;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    iget-object v2, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    const-string v3, "OK:Stop MMI Server Success"

    :goto_13
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_1c
    iget-object v2, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    const-string v3, "FAIL:System Not Ready"
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_13

    :catch_4
    move-exception v0

    move-object v2, v0

    :try_start_e
    sget-object v3, Lcom/android/server/engineer/ywr;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stop mmi server exception caught : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    const-string v3, "FAIL:ERROR"
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_12

    :catch_5
    move-exception v0

    move-object v2, v0

    :try_start_f
    sget-object v3, Lcom/android/server/engineer/ywr;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mmi command exception caught : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    const-string v2, "FAIL:Error"

    :goto_14
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_18

    :pswitch_9
    invoke-static {}, Lcom/android/server/engineer/qbh;->Mc()Z

    move-result v2
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_c
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-eqz v2, :cond_25

    :try_start_10
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    const-string v3, "on"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, v1, Lcom/android/server/engineer/ywr;->Va:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-virtual {v2}, Lcom/android/server/engineer/OneplusEngineerService;->ma()Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    const-string v3, "OK:enable wp success"

    :goto_15
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_1d
    iget-object v2, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    const-string v3, "FAIL:enable wp fail"

    goto :goto_15

    :cond_1e
    iget-object v2, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    const-string v3, "Unknown argument"
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_15

    :catch_6
    :try_start_11
    invoke-static {}, Lcom/android/server/engineer/rtg;->Gc()Z

    move-result v2

    if-nez v2, :cond_1f

    iget-object v1, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    const-string v2, "WP ON"

    goto :goto_14

    :cond_1f
    iget-object v1, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    const-string v2, "WP OFF"
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_c
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_14

    :pswitch_a
    :try_start_12
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    const-string v3, "reset"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/server/secrecy/zta/zta/sis;->w(I)Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    const-string v3, "OK:RESET OK"

    :goto_16
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_20
    iget-object v2, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    const-string v3, "FAIL:RESET FAIL"

    goto :goto_16

    :cond_21
    const-string v3, "set"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_23

    invoke-static {v2}, Lcom/android/server/engineer/qbh;->E(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Lcom/android/server/secrecy/zta/zta/sis;->w(I)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    const-string v3, "OK"

    goto :goto_16

    :cond_22
    iget-object v2, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    const-string v3, "FAIL:IO EXCEPTION"

    goto :goto_16

    :cond_23
    iget-object v2, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    const-string v3, "FAIL:INVALID PARAMETER"
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_16

    :catch_7
    :try_start_13
    invoke-static {}, Lcom/android/server/secrecy/zta/zta/sis;->getBackCoverColorVal()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_24

    iget-object v1, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    const-string v2, "FAIL:ACCESS FAIL"

    goto/16 :goto_14

    :cond_24
    iget-object v1, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_13} :catch_c
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_14

    :pswitch_b
    :try_start_14
    new-array v2, v14, [I

    const/16 v3, 0x98

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_25

    const-string v2, "sprint"

    const-string v3, "ro.boot.opcarrier"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    invoke-direct {v1, v2}, Lcom/android/server/engineer/ywr;->bio(Ljava/io/PrintWriter;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_14} :catch_c
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto :goto_18

    :catch_8
    move-exception v0

    move-object v1, v0

    :goto_17
    :try_start_15
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_15} :catch_c
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto :goto_18

    :pswitch_c
    :try_start_16
    iget-object v3, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    invoke-direct {v1, v2, v3}, Lcom/android/server/engineer/ywr;->zta(Ljava/lang/String;Ljava/io/PrintWriter;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_16} :catch_c
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto :goto_18

    :catch_9
    move-exception v0

    move-object v1, v0

    goto :goto_17

    :pswitch_d
    :try_start_17
    iget-object v2, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    invoke-direct {v1, v2}, Lcom/android/server/engineer/ywr;->igw(Ljava/io/PrintWriter;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_17} :catch_c
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto :goto_18

    :catch_a
    move-exception v0

    move-object v1, v0

    goto :goto_17

    :pswitch_e
    :try_start_18
    iget-object v3, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    invoke-direct {v1, v2, v3}, Lcom/android/server/engineer/ywr;->you(Ljava/lang/String;Ljava/io/PrintWriter;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_18} :catch_c
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto :goto_18

    :catch_b
    move-exception v0

    move-object v1, v0

    goto :goto_17

    :pswitch_f
    :try_start_19
    iget-object v3, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    invoke-direct {v1, v2, v3}, Lcom/android/server/engineer/ywr;->sis(Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_18

    :pswitch_10
    iget-object v3, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    invoke-direct {v1, v2, v3}, Lcom/android/server/engineer/ywr;->rtg(Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_18

    :pswitch_11
    iget-object v3, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    invoke-direct {v1, v2, v3}, Lcom/android/server/engineer/ywr;->ssp(Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_18

    :pswitch_12
    iget-object v3, v1, Lcom/android/server/engineer/ywr;->Wa:Ljava/io/PrintWriter;

    invoke-direct {v1, v2, v3}, Lcom/android/server/engineer/ywr;->tsu(Ljava/lang/String;Ljava/io/PrintWriter;)V
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_19} :catch_c
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    goto :goto_18

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_19

    :catch_c
    move-exception v0

    move-object v1, v0

    :try_start_1a
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    :cond_25
    :goto_18
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v1, 0x0

    return v1

    :goto_19
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7c7ee80e -> :sswitch_37
        -0x779f4d3f -> :sswitch_36
        -0x7430403c -> :sswitch_35
        -0x6f6b949c -> :sswitch_34
        -0x6bc999a6 -> :sswitch_33
        -0x69f0f8ba -> :sswitch_32
        -0x65299362 -> :sswitch_31
        -0x60f7be46 -> :sswitch_30
        -0x60415fa5 -> :sswitch_2f
        -0x60361868 -> :sswitch_2e
        -0x5c039fa6 -> :sswitch_2d
        -0x545a992e -> :sswitch_2c
        -0x41a803ed -> :sswitch_2b
        -0x401e878e -> :sswitch_2a
        -0x3d93faf0 -> :sswitch_29
        -0x3afc672a -> :sswitch_28
        -0x3397a030 -> :sswitch_27
        -0x2a7530aa -> :sswitch_26
        -0x28c3f196 -> :sswitch_25
        -0x226aaa21 -> :sswitch_24
        -0x20dab99e -> :sswitch_23
        -0x194d63e8 -> :sswitch_22
        -0x17160e05 -> :sswitch_21
        -0x1290a56d -> :sswitch_20
        -0xde8b811 -> :sswitch_1f
        -0xc9159d0 -> :sswitch_1e
        -0x862ee63 -> :sswitch_1d
        -0x71598f3 -> :sswitch_1c
        -0x5815fca -> :sswitch_1b
        -0x1cd6367 -> :sswitch_1a
        -0x4d2d5c -> :sswitch_19
        0xb7c6 -> :sswitch_18
        0x15f0f5 -> :sswitch_17
        0x160409 -> :sswitch_16
        0x161b7c -> :sswitch_15
        0x1dbb813 -> :sswitch_14
        0x816af5d -> :sswitch_13
        0xf240492 -> :sswitch_12
        0x194b0174 -> :sswitch_11
        0x1f170223 -> :sswitch_10
        0x1fb407c9 -> :sswitch_f
        0x25704998 -> :sswitch_e
        0x26942d4b -> :sswitch_d
        0x2fd2c31d -> :sswitch_c
        0x35c1b0e0 -> :sswitch_b
        0x40ec43c5 -> :sswitch_a
        0x4110485b -> :sswitch_9
        0x45553c24 -> :sswitch_8
        0x57ace341 -> :sswitch_7
        0x643ca528 -> :sswitch_6
        0x6a8d7408 -> :sswitch_5
        0x70914a99 -> :sswitch_4
        0x75496b82 -> :sswitch_3
        0x7c600d5b -> :sswitch_2
        0x7cfd4063 -> :sswitch_1
        0x7dc2e617 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onHelp()V
    .locals 0

    return-void
.end method
