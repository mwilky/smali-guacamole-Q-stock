.class public Lcom/oneplus/android/server/tsu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/android/server/IOpBluetoothServiceTrack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/tsu$zta;
    }
.end annotation


# static fields
.field private static final APPID:Ljava/lang/String; = "F6X2WLDK2K"

.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "tsu"

.field private static final tW:Ljava/lang/String; = "bt_of_off_package_name"

.field private static final uW:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.debug.bluetooth.service.info"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/android/server/tsu;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oneplus/android/server/sis;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/sis;-><init>(Lcom/oneplus/android/server/tsu;)V

    iput-object v0, p0, Lcom/oneplus/android/server/tsu;->mHandler:Landroid/os/Handler;

    sget-object p0, Lcom/oneplus/android/server/tsu;->TAG:Ljava/lang/String;

    const-string v0, "Constructer"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/tsu;->DBG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/tsu;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private zta(Lcom/oneplus/android/server/tsu$zta;)V
    .locals 5

    sget-boolean v0, Lcom/oneplus/android/server/tsu;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/tsu;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "report: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    :try_start_0
    iget-boolean v1, p1, Lcom/oneplus/android/server/tsu$zta;->enable:Z

    if-eqz v1, :cond_3

    const-string v1, "1"

    goto :goto_0

    :cond_3
    const-string v1, "0"

    :goto_0
    iget v2, p1, Lcom/oneplus/android/server/tsu$zta;->reason:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Lcom/oneplus/android/server/tsu$zta;->packageName:Ljava/lang/String;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "en"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "rsn"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pn"

    invoke-virtual {v3, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v1, "appid"

    const-string v2, "F6X2WLDK2K"

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v1, Lcom/oneplus/android/server/tsu;->DBG:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/oneplus/android/server/tsu;->TAG:Ljava/lang/String;

    const-string v2, "report, send data"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object p0, p0, Lcom/oneplus/android/server/tsu;->mContext:Landroid/content/Context;

    const-string v1, "bt_of_off_package_name"

    invoke-virtual {v0, p0, v1, v3, p1}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveAppData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    sget-object p1, Lcom/oneplus/android/server/tsu;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method static synthetic zta(Lcom/oneplus/android/server/tsu;Lcom/oneplus/android/server/tsu$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/tsu;->zta(Lcom/oneplus/android/server/tsu$zta;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized sendChangeBluetoothServiceInfo(ZILjava/lang/String;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/oneplus/android/server/tsu;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/tsu;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendChangeBluetoothServiceInfo, enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v0, 0x0

    if-nez p3, :cond_1

    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/oneplus/android/server/tsu;->mContext:Landroid/content/Context;

    if-nez v1, :cond_3

    sget-boolean p1, Lcom/oneplus/android/server/tsu;->DBG:Z

    if-eqz p1, :cond_2

    sget-object p1, Lcom/oneplus/android/server/tsu;->TAG:Ljava/lang/String;

    const-string p2, "mContext is null"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return v0

    :cond_3
    const/4 v1, 0x3

    if-eq p2, v1, :cond_a

    const/4 v1, 0x4

    if-eq p2, v1, :cond_a

    const/4 v1, 0x6

    if-eq p2, v1, :cond_a

    const/16 v1, 0x8

    if-eq p2, v1, :cond_a

    const/16 v1, 0x9

    if-ne p2, v1, :cond_4

    goto/16 :goto_2

    :cond_4
    :try_start_2
    const-string v1, "com.android.systemui"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "com.android.settings"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "com.oem.oemlogkit"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "android"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/oneplus/android/server/tsu;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-boolean v1, Lcom/oneplus/android/server/tsu;->DBG:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/oneplus/android/server/tsu;->TAG:Ljava/lang/String;

    const-string v3, "sendChangeBluetoothServiceInfo, message exist, ignore old message"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v1, p0, Lcom/oneplus/android/server/tsu;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    :try_start_3
    new-instance v1, Lcom/oneplus/android/server/tsu$zta;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oneplus/android/server/tsu$zta;-><init>(Lcom/oneplus/android/server/tsu;Lcom/oneplus/android/server/sis;)V

    iput-boolean p1, v1, Lcom/oneplus/android/server/tsu$zta;->enable:Z

    iput p2, v1, Lcom/oneplus/android/server/tsu$zta;->reason:I

    iput-object p3, v1, Lcom/oneplus/android/server/tsu$zta;->packageName:Ljava/lang/String;

    iget-object p1, p0, Lcom/oneplus/android/server/tsu;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p2, p0, Lcom/oneplus/android/server/tsu;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p2, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_4
    sget-object p2, Lcom/oneplus/android/server/tsu;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_8
    :goto_1
    :try_start_5
    sget-boolean p1, Lcom/oneplus/android/server/tsu;->DBG:Z

    if-eqz p1, :cond_9

    sget-object p1, Lcom/oneplus/android/server/tsu;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendChangeBluetooothServiceInfo, package name is "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", ignore the info."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_9
    monitor-exit p0

    return v0

    :cond_a
    :goto_2
    :try_start_6
    sget-boolean p1, Lcom/oneplus/android/server/tsu;->DBG:Z

    if-eqz p1, :cond_b

    sget-object p1, Lcom/oneplus/android/server/tsu;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendChangeBluetoothServiceInfo, reason is "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", ignore the info."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_b
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lcom/oneplus/android/server/tsu;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/tsu;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setContext, mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/oneplus/android/server/tsu;->mContext:Landroid/content/Context;

    return-void
.end method
