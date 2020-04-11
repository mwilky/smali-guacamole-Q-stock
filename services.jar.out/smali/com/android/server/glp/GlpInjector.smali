.class public Lcom/android/server/glp/GlpInjector;
.super Ljava/lang/Object;
.source "GlpInjector.java"


# static fields
.field private static final CONFIG_LPP_PROFILE:Ljava/lang/String; = "LPP_PROFILE"

.field private static final CONFIG_SUPL_HOST:Ljava/lang/String; = "SUPL_HOST"

.field private static final CONFIG_SUPL_PORT:Ljava/lang/String; = "SUPL_PORT"

.field private static final DEBUG_PROPERTIES_FILE:Ljava/lang/String; = "/etc/gps_debug.conf"

.field private static final GNSSLOCATION_BUGREPORT_CATEGORY:Ljava/lang/String; = "GNSS_MDM_LOCATION_FAILED"

.field private static final GNSSLOCATION_BUGREPORT_TAG:Ljava/lang/String; = "GNSS_MDM_Bugreport"

.field private static final GNSSLOCATION_EXCEPTION_LEAST_GNSS_NUM:I = 0x6

.field private static final GNSSLOCATION_EXCEPTION_LEAST_GNSS_SIGNAL:I = 0x1e

.field private static final GNSSLOCATION_EXCEPTION_TIMEOUT:I = 0x78

.field private static final TAG:Ljava/lang/String; = "GlpInjector"

.field private static gnssPassed:I

.field private static mGnssLocationExceptionNum:I

.field private static mGnssLocationExceptionTimeout:I

.field private static mMSACheck:Z


# instance fields
.field private debugLog:Z

.field private final mContext:Landroid/content/Context;

.field private mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

.field private mProperties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/server/glp/GlpInjector;->mGnssLocationExceptionNum:I

    sput v0, Lcom/android/server/glp/GlpInjector;->mGnssLocationExceptionTimeout:I

    sput v0, Lcom/android/server/glp/GlpInjector;->gnssPassed:I

    sput-boolean v0, Lcom/android/server/glp/GlpInjector;->mMSACheck:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/glp/GlpInjector;->debugLog:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/glp/GlpInjector;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    iput-object p1, p0, Lcom/android/server/glp/GlpInjector;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/android/server/glp/GlpInjector;->mProperties:Ljava/util/Properties;

    invoke-virtual {p0}, Lcom/android/server/glp/GlpInjector;->setSuplHostPort()V

    return-void
.end method

.method private checkIsChina()Z
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/glp/GlpInjector;->mContext:Landroid/content/Context;

    const-string v2, "carrier_config"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/glp/GlpInjector;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/android/server/glp/GlpInjector;->debugLog:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM MCC/MNC is available: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "GlpInjector"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "460"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static getExceptionNum()I
    .locals 1

    sget v0, Lcom/android/server/glp/GlpInjector;->mGnssLocationExceptionNum:I

    return v0
.end method

.method private getIntConfig(Ljava/lang/String;I)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/glp/GlpInjector;->mProperties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return p2

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse config parameter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Using default value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GlpInjector"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public static getNum()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public static getSingal()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method public static getTimeout()I
    .locals 1

    const/16 v0, 0x78

    return v0
.end method

.method private loadPropertiesFromGpsDebugConfig(Ljava/util/Properties;)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/etc/gps_debug.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    invoke-virtual {p1, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "GlpInjector"

    const-string v2, "Could not open GPS configuration file /etc/gps_debug.conf"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setExceptionTimeout()I
    .locals 1

    sget v0, Lcom/android/server/glp/GlpInjector;->mGnssLocationExceptionTimeout:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/glp/GlpInjector;->mGnssLocationExceptionTimeout:I

    sget v0, Lcom/android/server/glp/GlpInjector;->mGnssLocationExceptionTimeout:I

    return v0
.end method

.method public static setLppProfie(Ljava/util/Properties;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x97

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ro.boot.opcarrier"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sprint"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LPP_PROFILE"

    const-string v1, "3"

    invoke-virtual {p0, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public checkPositionMode(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "set_position_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "mode"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/glp/GlpInjector;->mMSACheck:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/glp/GlpInjector;->mMSACheck:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public cn0Compare(F)V
    .locals 2

    const/high16 v0, 0x41f00000    # 30.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    sget v0, Lcom/android/server/glp/GlpInjector;->gnssPassed:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/glp/GlpInjector;->gnssPassed:I

    iget-boolean v0, p0, Lcom/android/server/glp/GlpInjector;->debugLog:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cn0 value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "...CN0 gnssPassed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/glp/GlpInjector;->gnssPassed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlpInjector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public getPositionMode(I)I
    .locals 3

    move v0, p1

    sget-boolean v1, Lcom/android/server/glp/GlpInjector;->mMSACheck:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x2

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/glp/GlpInjector;->debugLog:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPositionMode...."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GlpInjector"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method public getSuplHost()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/server/glp/GlpInjector;->mProperties:Ljava/util/Properties;

    const-string v1, "SUPL_HOST"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "null"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GlpInjector"

    const-string/jumbo v1, "supl host is null in debug conf"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/glp/GlpInjector;->mProperties:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuplPort(I)I
    .locals 1

    const-string v0, "SUPL_PORT"

    invoke-direct {p0, v0, p1}, Lcom/android/server/glp/GlpInjector;->getIntConfig(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public ifnotimeout()Z
    .locals 3

    sget v0, Lcom/android/server/glp/GlpInjector;->gnssPassed:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    invoke-static {}, Lcom/android/server/glp/GlpInjector;->setExceptionTimeout()I

    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/android/server/glp/GlpInjector;->gnssPassed:I

    sget v1, Lcom/android/server/glp/GlpInjector;->mGnssLocationExceptionTimeout:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    return v2

    :cond_1
    return v0
.end method

.method public resetPositionMode()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/glp/GlpInjector;->debugLog:Z

    if-eqz v0, :cond_0

    const-string v0, "GlpInjector"

    const-string/jumbo v1, "resetPositionMode...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/glp/GlpInjector;->mMSACheck:Z

    return-void
.end method

.method public final sendMdmreport(Ljava/lang/StringBuilder;)V
    .locals 8

    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/glp/GlpInjector;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    const/4 v0, 0x0

    sput v0, Lcom/android/server/glp/GlpInjector;->mGnssLocationExceptionTimeout:I

    sput v0, Lcom/android/server/glp/GlpInjector;->mGnssLocationExceptionNum:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<DEVICE INFO>\nSoftwareVersion:        "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ro.build.ota.versionname"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nIssueNum:               "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/glp/GlpInjector;->mGnssLocationExceptionNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n<DUMPSYS>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/server/lms/LmsInjector;->getLogLevelStatusUpdates()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/glp/GlpInjector;->debugLog:Z

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "base_info\n"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "dump_info\n"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/glp/GlpInjector;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/android/server/glp/GlpInjector;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const-string v7, "GNSS_MDM_Bugreport"

    invoke-virtual {v4, v5, v7, v3, v6}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    iget-boolean v4, p0, Lcom/android/server/glp/GlpInjector;->debugLog:Z

    if-eqz v4, :cond_0

    const-string v4, "GlpInjector"

    const-string/jumbo v5, "preserveOsData  on going!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setSuplHostPort()V
    .locals 8

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x5a

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    const-string/jumbo v3, "ro.boot.opcarrier"

    const-string v4, "7275"

    const-string v5, "SUPL_PORT"

    const-string v6, "SUPL_HOST"

    if-eqz v1, :cond_0

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "tmo"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/server/glp/GlpInjector;->mProperties:Ljava/util/Properties;

    const-string/jumbo v1, "supl.geo.t-mobile.com"

    invoke-virtual {v0, v6, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/glp/GlpInjector;->mProperties:Ljava/util/Properties;

    invoke-virtual {v0, v5, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-array v0, v0, [I

    const/16 v1, 0x97

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sprint"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/glp/GlpInjector;->mProperties:Ljava/util/Properties;

    const-string/jumbo v1, "supl2019.lbs.sprint.com"

    invoke-virtual {v0, v6, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/glp/GlpInjector;->mProperties:Ljava/util/Properties;

    invoke-virtual {v0, v5, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/glp/GlpInjector;->checkIsChina()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/glp/GlpInjector;->mProperties:Ljava/util/Properties;

    const-string/jumbo v1, "supl.qxwz.com"

    invoke-virtual {v0, v6, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/glp/GlpInjector;->mProperties:Ljava/util/Properties;

    invoke-virtual {v0, v5, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/glp/GlpInjector;->mProperties:Ljava/util/Properties;

    const-string/jumbo v1, "supl.google.com"

    invoke-virtual {v0, v6, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/glp/GlpInjector;->mProperties:Ljava/util/Properties;

    invoke-virtual {v0, v5, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lcom/android/server/glp/GlpInjector;->mProperties:Ljava/util/Properties;

    invoke-direct {p0, v0}, Lcom/android/server/glp/GlpInjector;->loadPropertiesFromGpsDebugConfig(Ljava/util/Properties;)V

    return-void
.end method

.method public updateGnssDetectionStatus()Z
    .locals 5

    sget v0, Lcom/android/server/glp/GlpInjector;->mGnssLocationExceptionTimeout:I

    const-string/jumbo v1, "updateGnssDetectionStatus...ExceptionNum = "

    const/4 v2, 0x0

    const/16 v3, 0x78

    const-string v4, "GlpInjector"

    if-le v0, v3, :cond_0

    sub-int/2addr v0, v3

    sput v0, Lcom/android/server/glp/GlpInjector;->mGnssLocationExceptionNum:I

    iget-boolean v0, p0, Lcom/android/server/glp/GlpInjector;->debugLog:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/glp/GlpInjector;->mGnssLocationExceptionNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sput v2, Lcom/android/server/glp/GlpInjector;->mGnssLocationExceptionTimeout:I

    iget-boolean v0, p0, Lcom/android/server/glp/GlpInjector;->debugLog:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/glp/GlpInjector;->mGnssLocationExceptionNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    sget v0, Lcom/android/server/glp/GlpInjector;->mGnssLocationExceptionNum:I

    if-lez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/glp/GlpInjector;->debugLog:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "will send MDM data "

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    return v2
.end method
