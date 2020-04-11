.class public Lcom/oneplus/android/server/wifi/OpWifiService;
.super Lcom/oneplus/android/wifi/IOpWifi$Stub;
.source ""


# static fields
.field static final DEBUG:Z = true

.field static final TAG:Ljava/lang/String; = "OpWifiService"

.field private static final sCREATOR:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/oneplus/android/wifi/IOpWifi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/android/server/wifi/zta;

    invoke-direct {v0}, Lcom/oneplus/android/server/wifi/zta;-><init>()V

    sput-object v0, Lcom/oneplus/android/server/wifi/OpWifiService;->sCREATOR:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/android/wifi/IOpWifi$Stub;-><init>()V

    const-string p0, "OpWifiService"

    const-string v0, "construct called"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getDefault()Lcom/oneplus/android/wifi/IOpWifi;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/wifi/OpWifiService;->sCREATOR:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/wifi/IOpWifi;

    return-object v0
.end method


# virtual methods
.method public publish(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publish context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpWifiService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/oneplus/android/server/wifi/OpWifiService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/oneplus/android/wifi/IOpWifi$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const-string p1, "oneplus_wifi_service"

    invoke-static {p1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public testOpWifi()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p0, "OpWifiService"

    const-string v0, "Just test. testOpWifi"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method
