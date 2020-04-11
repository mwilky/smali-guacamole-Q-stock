.class public Lcom/android/server/lms/LmsInjector;
.super Ljava/lang/Object;
.source "LmsInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/lms/LmsInjector$EmergencyCallStateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LmsInjector"

.field private static debugOnplus:Z

.field private static gpsStatus:Z

.field private static lppeValue:Ljava/lang/String;

.field private static mEmergencyStateListener:Lcom/android/server/lms/LmsInjector$EmergencyCallStateListener;

.field private static mEmwifiStatus:Z

.field private static mLocationManager:Landroid/location/LocationManager;

.field private static mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private static mWifiManager:Landroid/net/wifi/WifiManager;

.field private static wifiStatus:I


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/lms/LmsInjector;->debugOnplus:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/lms/LmsInjector;->mEmwifiStatus:Z

    sput-boolean v0, Lcom/android/server/lms/LmsInjector;->gpsStatus:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/lms/LmsInjector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/lms/LmsInjector;->init()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/lms/LmsInjector;->debugOnplus:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/lms/LmsInjector;->lppeValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lcom/android/server/lms/LmsInjector;->wifiStatus:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0

    sput p0, Lcom/android/server/lms/LmsInjector;->wifiStatus:I

    return p0
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/lms/LmsInjector;->gpsStatus:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/lms/LmsInjector;->gpsStatus:Z

    return p0
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/lms/LmsInjector;->mEmwifiStatus:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/lms/LmsInjector;->mEmwifiStatus:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/server/lms/LmsInjector;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/lms/LmsInjector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600()Landroid/location/LocationManager;
    .locals 1

    sget-object v0, Lcom/android/server/lms/LmsInjector;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$700()Landroid/net/wifi/WifiManager;
    .locals 1

    sget-object v0, Lcom/android/server/lms/LmsInjector;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method public static getLogLevelStatusUpdates()Z
    .locals 3

    const-string/jumbo v0, "persist.sys.assert.panic"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "persist.vendor.oem.gps.debug"

    const-string v2, "0"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1

    :cond_1
    return v1
.end method


# virtual methods
.method public init()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/lms/LmsInjector;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    sput-object v0, Lcom/android/server/lms/LmsInjector;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/server/lms/LmsInjector;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/android/server/lms/LmsInjector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/server/lms/LmsInjector;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sput-object v0, Lcom/android/server/lms/LmsInjector;->mLocationManager:Landroid/location/LocationManager;

    new-instance v0, Lcom/android/server/lms/LmsInjector$EmergencyCallStateListener;

    invoke-direct {v0, p0}, Lcom/android/server/lms/LmsInjector$EmergencyCallStateListener;-><init>(Lcom/android/server/lms/LmsInjector;)V

    sput-object v0, Lcom/android/server/lms/LmsInjector;->mEmergencyStateListener:Lcom/android/server/lms/LmsInjector$EmergencyCallStateListener;

    const-string/jumbo v0, "persist.sys.gps.lppe.cp"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/lms/LmsInjector;->lppeValue:Ljava/lang/String;

    return-void
.end method

.method public listenStatusOfEmergency()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x73

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/lms/LmsInjector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v1, Lcom/android/server/lms/LmsInjector;->mEmergencyStateListener:Lcom/android/server/lms/LmsInjector$EmergencyCallStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method
