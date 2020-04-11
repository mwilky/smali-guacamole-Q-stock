.class public Lcom/oneplus/android/server/OpBluetoothServiceTrackInjector;
.super Ljava/lang/Object;
.source "OpBluetoothServiceTrackInjector.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;

.field private static sOpBluetoothServiceTrack:Lcom/oneplus/android/server/IOpBluetoothServiceTrack;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/oneplus/android/server/OpBluetoothServiceTrackInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/android/server/OpBluetoothServiceTrackInjector;->TAG:Ljava/lang/String;

    const-string v0, "persist.debug.bluetooth.service.info"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/android/server/OpBluetoothServiceTrackInjector;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkInterface()Z
    .locals 2

    sget-object v0, Lcom/oneplus/android/server/OpBluetoothServiceTrackInjector;->sOpBluetoothServiceTrack:Lcom/oneplus/android/server/IOpBluetoothServiceTrack;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_bluetooth_service_information:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/IOpBluetoothServiceTrack;

    sput-object v0, Lcom/oneplus/android/server/OpBluetoothServiceTrackInjector;->sOpBluetoothServiceTrack:Lcom/oneplus/android/server/IOpBluetoothServiceTrack;

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/OpBluetoothServiceTrackInjector;->sOpBluetoothServiceTrack:Lcom/oneplus/android/server/IOpBluetoothServiceTrack;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/OpBluetoothServiceTrackInjector;->TAG:Ljava/lang/String;

    const-string v1, "sOpBluetoothServiceTrack is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static sendChangeBluetoothServiceInfo(ZILjava/lang/String;)Z
    .locals 3

    sget-boolean v0, Lcom/oneplus/android/server/OpBluetoothServiceTrackInjector;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/OpBluetoothServiceTrackInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendChangeBluetoothServiceInfo, enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/oneplus/android/server/OpBluetoothServiceTrackInjector;->checkInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/OpBluetoothServiceTrackInjector;->sOpBluetoothServiceTrack:Lcom/oneplus/android/server/IOpBluetoothServiceTrack;

    invoke-interface {v0, p0, p1, p2}, Lcom/oneplus/android/server/IOpBluetoothServiceTrack;->sendChangeBluetoothServiceInfo(ZILjava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lcom/oneplus/android/server/OpBluetoothServiceTrackInjector;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/OpBluetoothServiceTrackInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setContext, Context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/oneplus/android/server/OpBluetoothServiceTrackInjector;->checkInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/OpBluetoothServiceTrackInjector;->sOpBluetoothServiceTrack:Lcom/oneplus/android/server/IOpBluetoothServiceTrack;

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/IOpBluetoothServiceTrack;->setContext(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
