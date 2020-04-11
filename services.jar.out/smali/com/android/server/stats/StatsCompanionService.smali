.class public Lcom/android/server/stats/StatsCompanionService;
.super Landroid/os/IStatsCompanionService$Stub;
.source "StatsCompanionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/stats/StatsCompanionService$ConnectivityStatsCallback;,
        Lcom/android/server/stats/StatsCompanionService$ThermalEventListener;,
        Lcom/android/server/stats/StatsCompanionService$StatsdDeathRecipient;,
        Lcom/android/server/stats/StatsCompanionService$Lifecycle;,
        Lcom/android/server/stats/StatsCompanionService$ShutdownEventReceiver;,
        Lcom/android/server/stats/StatsCompanionService$PeriodicAlarmListener;,
        Lcom/android/server/stats/StatsCompanionService$PullingAlarmListener;,
        Lcom/android/server/stats/StatsCompanionService$AnomalyAlarmListener;,
        Lcom/android/server/stats/StatsCompanionService$AppUpdateReceiver;,
        Lcom/android/server/stats/StatsCompanionService$CompanionHandler;
    }
.end annotation


# static fields
.field private static final APPLICATION_INFO_FIELD_ID:I = 0x1

.field public static final CODE_ACTIVE_CONFIGS_BROADCAST:I = 0x1

.field public static final CODE_DATA_BROADCAST:I = 0x1

.field public static final CODE_SUBSCRIBER_BROADCAST:I = 0x1

.field public static final CONFIG_DIR:Ljava/lang/String; = "/data/misc/stats-service"

.field private static final CPU_TIME_PER_THREAD_FREQ_MAX_NUM_FREQUENCIES:I = 0x8

.field public static final DEATH_THRESHOLD:I = 0xa

.field static final DEBUG:Z = false

.field private static final EXTERNAL_STATS_SYNC_TIMEOUT_MILLIS:J = 0x7d0L

.field public static final EXTRA_LAST_REPORT_TIME:Ljava/lang/String; = "android.app.extra.LAST_REPORT_TIME"

.field private static final INSTALLER_FIELD_ID:I = 0x5

.field private static final MAX_BATTERY_STATS_HELPER_FREQUENCY_MS:I = 0x3e8

.field private static final MEMORY_INTERESTING_NATIVE_PROCESSES:[Ljava/lang/String;

.field private static final MILLIS_IN_A_DAY:J

.field private static final PACKAGE_NAME_FIELD_ID:I = 0x4

.field public static final RESULT_RECEIVER_CONTROLLER_KEY:Ljava/lang/String; = "controller_activity"

.field static final TAG:Ljava/lang/String; = "StatsCompanionService"

.field private static final UID_FIELD_ID:I = 0x1

.field private static final VERSION_FIELD_ID:I = 0x2

.field private static final VERSION_STRING_FIELD_ID:I = 0x3

.field private static sStatsd:Landroid/os/IStatsManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sStatsdLock"
        }
    .end annotation
.end field

.field private static final sStatsdLock:Ljava/lang/Object;

.field private static sThermalService:Landroid/os/IThermalService;


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAnomalyAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private final mAppUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mBaseDir:Ljava/io/File;

.field private mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field private mBatteryStatsHelperTimestampMs:J

.field private final mContext:Landroid/content/Context;

.field private mCpuUidActiveTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

.field private mCpuUidClusterTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

.field private mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

.field private mCpuUidUserSysTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

.field private final mDeathTimeMillis:Ljava/util/HashSet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sStatsdLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDebugElapsedClockPreviousValue:J

.field private mDebugElapsedClockPullCount:J

.field private mDebugFailingElapsedClockPreviousValue:J

.field private mDebugFailingElapsedClockPullCount:J

.field private final mDeletedFiles:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sStatsdLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/server/stats/StatsCompanionService$CompanionHandler;

.field private mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

.field private final mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReaderDiff;

.field private final mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

.field private final mNetworkStatsService:Landroid/net/INetworkStatsService;

.field private final mPeriodicAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private mProcessStats:Lcom/android/internal/app/procstats/IProcessStats;

.field private final mPullingAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private final mShutdownEventReceiver:Lcom/android/server/stats/StatsCompanionService$ShutdownEventReceiver;

.field private mStoragedUidIoStatsReader:Lcom/android/internal/os/StoragedUidIoStatsReader;

.field private mTelephony:Landroid/telephony/TelephonyManager;

.field private final mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

.field private final mUserUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/IWifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/stats/StatsCompanionService;->MILLIS_IN_A_DAY:J

    const-string v2, "/system/bin/statsd"

    const-string v3, "/system/bin/surfaceflinger"

    const-string v4, "/system/bin/apexd"

    const-string v5, "/system/bin/audioserver"

    const-string v6, "/system/bin/cameraserver"

    const-string v7, "/system/bin/drmserver"

    const-string v8, "/system/bin/healthd"

    const-string v9, "/system/bin/incidentd"

    const-string v10, "/system/bin/installd"

    const-string v11, "/system/bin/lmkd"

    const-string v12, "/system/bin/logd"

    const-string/jumbo v13, "media.codec"

    const-string/jumbo v14, "media.extractor"

    const-string/jumbo v15, "media.metrics"

    const-string v16, "/system/bin/mediadrmserver"

    const-string v17, "/system/bin/mediaserver"

    const-string v18, "/system/bin/performanced"

    const-string v19, "/system/bin/tombstoned"

    const-string v20, "/system/bin/traced"

    const-string v21, "/system/bin/traced_probes"

    const-string/jumbo v22, "webview_zygote"

    const-string/jumbo v23, "zygote"

    const-string/jumbo v24, "zygote64"

    filled-new-array/range {v2 .. v24}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/stats/StatsCompanionService;->MEMORY_INTERESTING_NATIVE_PROCESSES:[Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/stats/StatsCompanionService;->sStatsdLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    invoke-direct {p0}, Landroid/os/IStatsCompanionService$Stub;-><init>()V

    new-instance v0, Lcom/android/server/stats/StatsCompanionService$AnomalyAlarmListener;

    invoke-direct {v0}, Lcom/android/server/stats/StatsCompanionService$AnomalyAlarmListener;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mAnomalyAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    new-instance v0, Lcom/android/server/stats/StatsCompanionService$PullingAlarmListener;

    invoke-direct {v0}, Lcom/android/server/stats/StatsCompanionService$PullingAlarmListener;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mPullingAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    new-instance v0, Lcom/android/server/stats/StatsCompanionService$PeriodicAlarmListener;

    invoke-direct {v0}, Lcom/android/server/stats/StatsCompanionService$PeriodicAlarmListener;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mPeriodicAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    new-instance v0, Lcom/android/internal/os/KernelWakelockReader;

    invoke-direct {v0}, Lcom/android/internal/os/KernelWakelockReader;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

    new-instance v0, Lcom/android/internal/os/KernelWakelockStats;

    invoke-direct {v0}, Lcom/android/internal/os/KernelWakelockStats;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mTelephony:Landroid/telephony/TelephonyManager;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mDeathTimeMillis:Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mDeletedFiles:Ljava/util/HashMap;

    new-instance v1, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mCpuUidUserSysTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

    new-instance v1, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    invoke-direct {v1, v2}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    new-instance v1, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

    invoke-direct {v1, v2}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mCpuUidActiveTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

    new-instance v1, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

    invoke-direct {v1, v2}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mCpuUidClusterTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

    new-instance v1, Lcom/android/internal/os/StoragedUidIoStatsReader;

    invoke-direct {v1}, Lcom/android/internal/os/StoragedUidIoStatsReader;-><init>()V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mStoragedUidIoStatsReader:Lcom/android/internal/os/StoragedUidIoStatsReader;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/stats/StatsCompanionService;->mDebugElapsedClockPreviousValue:J

    iput-wide v1, p0, Lcom/android/server/stats/StatsCompanionService;->mDebugElapsedClockPullCount:J

    iput-wide v1, p0, Lcom/android/server/stats/StatsCompanionService;->mDebugFailingElapsedClockPreviousValue:J

    iput-wide v1, p0, Lcom/android/server/stats/StatsCompanionService;->mDebugFailingElapsedClockPullCount:J

    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const-wide/16 v1, -0x3e8

    iput-wide v1, p0, Lcom/android/server/stats/StatsCompanionService;->mBatteryStatsHelperTimestampMs:J

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "stats_companion"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mBaseDir:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    nop

    const-string/jumbo v1, "procstats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/procstats/IProcessStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mProcessStats:Lcom/android/internal/app/procstats/IProcessStats;

    iput-object p1, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mAlarmManager:Landroid/app/AlarmManager;

    nop

    const-string/jumbo v1, "netstats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mNetworkStatsService:Landroid/net/INetworkStatsService;

    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    new-instance v1, Lcom/android/server/stats/StatsCompanionService$AppUpdateReceiver;

    invoke-direct {v1, v0}, Lcom/android/server/stats/StatsCompanionService$AppUpdateReceiver;-><init>(Lcom/android/server/stats/StatsCompanionService$1;)V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mAppUpdateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/stats/StatsCompanionService$1;

    invoke-direct {v1, p0}, Lcom/android/server/stats/StatsCompanionService$1;-><init>(Lcom/android/server/stats/StatsCompanionService;)V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mUserUpdateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/stats/StatsCompanionService$ShutdownEventReceiver;

    invoke-direct {v1}, Lcom/android/server/stats/StatsCompanionService$ShutdownEventReceiver;-><init>()V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mShutdownEventReceiver:Lcom/android/server/stats/StatsCompanionService$ShutdownEventReceiver;

    new-instance v1, Lcom/android/internal/os/PowerProfile;

    invoke-direct {v1, p1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    move-result v2

    new-array v3, v2, [Lcom/android/internal/os/KernelCpuSpeedReader;

    iput-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {v1, v4}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

    new-instance v7, Lcom/android/internal/os/KernelCpuSpeedReader;

    invoke-direct {v7, v3, v5}, Lcom/android/internal/os/KernelCpuSpeedReader;-><init>(II)V

    aput-object v7, v6, v4

    invoke-virtual {v1, v4}, Lcom/android/internal/os/PowerProfile;->getNumCoresInCpuCluster(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "thermalservice"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    const-string v5, "StatsCompanionService"

    if-eqz v4, :cond_1

    invoke-static {v4}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    move-result-object v6

    sput-object v6, Lcom/android/server/stats/StatsCompanionService;->sThermalService:Landroid/os/IThermalService;

    :try_start_0
    sget-object v6, Lcom/android/server/stats/StatsCompanionService;->sThermalService:Landroid/os/IThermalService;

    new-instance v7, Lcom/android/server/stats/StatsCompanionService$ThermalEventListener;

    invoke-direct {v7, v0}, Lcom/android/server/stats/StatsCompanionService$ThermalEventListener;-><init>(Lcom/android/server/stats/StatsCompanionService$1;)V

    invoke-interface {v6, v7}, Landroid/os/IThermalService;->registerThermalEventListener(Landroid/os/IThermalEventListener;)Z

    const-string/jumbo v6, "register thermal listener successfully"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    const-string/jumbo v7, "register thermal listener error"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto :goto_2

    :cond_1
    const-string v6, "cannot find thermalservice, no throttling push notifications"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    new-instance v6, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v6}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v6}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    new-instance v8, Lcom/android/server/stats/StatsCompanionService$ConnectivityStatsCallback;

    invoke-direct {v8, v0}, Lcom/android/server/stats/StatsCompanionService$ConnectivityStatsCallback;-><init>(Lcom/android/server/stats/StatsCompanionService$1;)V

    invoke-virtual {v7, v6, v8}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v5, Lcom/android/server/stats/StatsCompanionService$CompanionHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/android/server/stats/StatsCompanionService$CompanionHandler;-><init>(Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/android/server/stats/StatsCompanionService;->mHandler:Lcom/android/server/stats/StatsCompanionService$CompanionHandler;

    iget-object v5, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver;->getSettingsModifiedReader(Landroid/content/Context;)Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/server/stats/StatsCompanionService;->sStatsdLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/stats/StatsCompanionService;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mDeathTimeMillis:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1100()J
    .locals 2

    sget-wide v0, Lcom/android/server/stats/StatsCompanionService;->MILLIS_IN_A_DAY:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/android/server/stats/StatsCompanionService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mDeletedFiles:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200()Landroid/os/IStatsManager;
    .locals 1

    sget-object v0, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    return-object v0
.end method

.method static synthetic access$202(Landroid/os/IStatsManager;)Landroid/os/IStatsManager;
    .locals 0

    sput-object p0, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    return-object p0
.end method

.method static synthetic access$300()Landroid/os/IStatsManager;
    .locals 1

    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->fetchStatsdService()Landroid/os/IStatsManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/stats/StatsCompanionService;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/stats/StatsCompanionService;->informAllUidsLocked(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/stats/StatsCompanionService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->forgetEverythingLocked()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/stats/StatsCompanionService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->systemReady()V

    return-void
.end method

.method private addNetworkStats(ILjava/util/List;Landroid/net/NetworkStats;Z)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;",
            "Landroid/net/NetworkStats;",
            "Z)V"
        }
    .end annotation

    invoke-virtual/range {p3 .. p3}, Landroid/net/NetworkStats;->size()I

    move-result v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v7

    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v9, v1, v3

    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    move-object v11, v1

    const/4 v1, 0x0

    move v12, v1

    :goto_0
    if-ge v12, v0, :cond_1

    move-object/from16 v13, p3

    invoke-virtual {v13, v12, v11}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    new-instance v14, Landroid/os/StatsLogEventWrapper;

    move-object v1, v14

    move/from16 v2, p1

    move-wide v3, v7

    move-wide v5, v9

    invoke-direct/range {v1 .. v6}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    iget v2, v11, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-virtual {v1, v2}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    if-eqz p4, :cond_0

    iget v2, v11, Landroid/net/NetworkStats$Entry;->set:I

    invoke-virtual {v1, v2}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    :cond_0
    iget-wide v2, v11, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    iget-wide v2, v11, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    iget-wide v2, v11, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    iget-wide v2, v11, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    move-object/from16 v2, p2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v2, p2

    move-object/from16 v13, p3

    return-void
.end method

.method private static anonAndSwapInKilobytes(Lcom/android/server/am/MemoryStatUtil$MemoryStat;)I
    .locals 4

    iget-wide v0, p0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->anonRssInBytes:J

    iget-wide v2, p0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->swapInBytes:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/SynchronousResultReceiver;",
            ")TT;"
        }
    .end annotation

    const-string v0, "StatsCompanionService"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-wide/16 v2, 0x7d0

    :try_start_0
    invoke-virtual {p0, v2, v3}, Landroid/os/SynchronousResultReceiver;->awaitResult(J)Landroid/os/SynchronousResultReceiver$Result;

    move-result-object v2

    iget-object v3, v2, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    iget-object v3, v2, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->setDefusable(Z)V

    iget-object v3, v2, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const-string v4, "controller_activity"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no controller energy info supplied for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/SynchronousResultReceiver;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "timeout reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/SynchronousResultReceiver;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " stats"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1
.end method

.method private enforceCallingPermission()V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "android.permission.STATSCOMPANION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized fetchBluetoothData()Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/SynchronousResultReceiver;

    const-string v2, "bluetooth"

    invoke-direct {v1, v2}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->requestControllerActivityEnergyInfo(Landroid/os/ResultReceiver;)V

    invoke-static {v1}, Lcom/android/server/stats/StatsCompanionService;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_1
    const-string v1, "StatsCompanionService"

    const-string v2, "Failed to get bluetooth adapter!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static fetchStatsdService()Landroid/os/IStatsManager;
    .locals 1

    const-string/jumbo v0, "stats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IStatsManager;

    move-result-object v0

    return-object v0
.end method

.method private forgetEverythingLocked()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "StatsCompanionService.sStatsdLock"
        }
    .end annotation

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mAppUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mUserUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mShutdownEventReceiver:Lcom/android/server/stats/StatsCompanionService$ShutdownEventReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/android/server/stats/StatsCompanionService;->cancelAnomalyAlarm()V

    invoke-virtual {p0}, Lcom/android/server/stats/StatsCompanionService;->cancelPullingAlarm()V

    const-class v0, Lcom/android/server/BinderCallsStatsService$Internal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/BinderCallsStatsService$Internal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/BinderCallsStatsService$Internal;->reset()V

    :cond_0
    const-class v1, Lcom/android/internal/os/LooperStats;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/LooperStats;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/os/LooperStats;->reset()V

    :cond_1
    return-void
.end method

.method private getBatteryStatsHelper()Lcom/android/internal/os/BatteryStatsHelper;
    .locals 8

    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper;

    iget-object v4, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4, v1}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v4, 0x0

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {v0, v4}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/stats/StatsCompanionService;->mBatteryStatsHelperTimestampMs:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    iput-wide v2, p0, Lcom/android/server/stats/StatsCompanionService;->mBatteryStatsHelperTimestampMs:J

    :cond_1
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    return-object v0
.end method

.method private final informAllUidsLocked(Landroid/content/Context;)V
    .locals 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sStatsdLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "StatsCompanionService"

    const-string/jumbo v1, "user"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    sget-object v6, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    const/4 v7, 0x0

    aget-object v8, v5, v7

    invoke-interface {v6, v8}, Landroid/os/IStatsManager;->informAllUidData(Landroid/os/ParcelFileDescriptor;)V

    :try_start_1
    aget-object v6, v5, v7

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    const-string v7, "Failed to close the read side of the pipe."

    invoke-static {v0, v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    aget-object v0, v5, v3

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v6, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$lgt3DadUXkgOLn-AdC3Gl42vPKY;

    invoke-direct {v6, v0, v4, v2}, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$lgt3DadUXkgOLn-AdC3Gl42vPKY;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/util/List;Landroid/content/pm/PackageManager;)V

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_1
    move-exception v3

    const-string v5, "Failed to create a pipe to send uid map data."

    invoke-static {v0, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static synthetic lambda$informAllUidsLocked$0(Landroid/os/ParcelFileDescriptor;Ljava/util/List;Landroid/content/pm/PackageManager;)V
    .locals 16

    move-object/from16 v1, p2

    const-string v2, ""

    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    move-object/from16 v3, p0

    invoke-direct {v0, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v4, v0

    :try_start_0
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, v4}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v5, v0

    const/4 v0, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    const v8, 0x402000

    iget v9, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v8, v9}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    move v10, v0

    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_2

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v0, v2

    :goto_2
    const-wide v11, 0x20b00000001L

    :try_start_2
    invoke-virtual {v5, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    const-wide v13, 0x10500000001L

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PackageInfo;

    iget-object v15, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v13, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PackageInfo;

    invoke-virtual {v15}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v13

    move-object v15, v2

    const-wide v1, 0x10300000002L

    invoke-virtual {v5, v1, v2, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10900000003L

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PackageInfo;

    iget-object v13, v13, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v5, v1, v2, v13}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v1, 0x10900000004L

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PackageInfo;

    iget-object v13, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v1, v2, v13}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v1, 0x10900000005L

    if-nez v0, :cond_0

    move-object v13, v15

    goto :goto_3

    :cond_0
    move-object v13, v0

    :goto_3
    invoke-virtual {v5, v1, v2, v13}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v5, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_4

    :cond_1
    move-object v15, v2

    :goto_4
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p2

    move-object v2, v15

    goto/16 :goto_1

    :cond_2
    move-object v15, v2

    move-object/from16 v1, p2

    move v0, v10

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v5}, Landroid/util/proto/ProtoOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method static synthetic lambda$pullDiskIo$6(IJJLjava/util/List;IJJJJJJJJJJ)V
    .locals 16

    new-instance v6, Landroid/os/StatsLogEventWrapper;

    move-object v0, v6

    move/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    move-wide/from16 v2, p7

    invoke-virtual {v0, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    move-wide/from16 v4, p9

    invoke-virtual {v0, v4, v5}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    move-wide/from16 v6, p11

    invoke-virtual {v0, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    move-wide/from16 v8, p13

    invoke-virtual {v0, v8, v9}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    move-wide/from16 v10, p15

    invoke-virtual {v0, v10, v11}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    move-wide/from16 v12, p17

    invoke-virtual {v0, v12, v13}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    move-wide/from16 v14, p19

    invoke-virtual {v0, v14, v15}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    move-wide/from16 v1, p21

    invoke-virtual {v0, v1, v2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    move-wide/from16 v1, p23

    invoke-virtual {v0, v1, v2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    move-wide/from16 v1, p25

    invoke-virtual {v0, v1, v2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    move-object/from16 v3, p5

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$pullKernelUidCpuActiveTime$4(IJJLjava/util/List;ILjava/lang/Long;)V
    .locals 7

    new-instance v6, Landroid/os/StatsLogEventWrapper;

    move-object v0, v6

    move v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    invoke-virtual {v0, p6}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    invoke-virtual {p7}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$pullKernelUidCpuClusterTime$3(IJJLjava/util/List;I[J)V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    array-length v1, p7

    if-ge v0, v1, :cond_0

    new-instance v1, Landroid/os/StatsLogEventWrapper;

    move-object v2, v1

    move v3, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    invoke-virtual {v1, p6}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    invoke-virtual {v1, v0}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    aget-wide v2, p7, v0

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic lambda$pullKernelUidCpuFreqTime$2(IJJLjava/util/List;I[J)V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    array-length v1, p7

    if-ge v0, v1, :cond_1

    aget-wide v1, p7, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/StatsLogEventWrapper;

    move-object v2, v1

    move v3, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    invoke-virtual {v1, p6}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    invoke-virtual {v1, v0}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    aget-wide v2, p7, v0

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$pullKernelUidCpuTime$1(IJJLjava/util/List;I[J)V
    .locals 11

    const/4 v0, 0x0

    aget-wide v0, p7, v0

    const/4 v2, 0x1

    aget-wide v2, p7, v2

    new-instance v10, Landroid/os/StatsLogEventWrapper;

    move-object v4, v10

    move v5, p0

    move-wide v6, p1

    move-wide v8, p3

    invoke-direct/range {v4 .. v9}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    move/from16 v5, p6

    invoke-virtual {v4, v5}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    invoke-virtual {v4, v0, v1}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v4, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    move-object/from16 v6, p5

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$readProcStatsHighWaterMark$5(ILjava/io/File;Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private milliAmpHrsToNanoAmpSecs(D)J
    .locals 6

    const-wide v0, 0xd693a400L

    const-wide v2, 0x41ead27480000000L    # 3.6E9

    mul-double/2addr v2, p1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-long v2, v2

    return-wide v2
.end method

.method private pullAppOps(JJLjava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v0, v1, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    new-instance v4, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v4}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    new-instance v5, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v6

    const-wide/16 v7, 0x1

    sget-object v9, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v6, v7, v8, v9}, Ljava/time/Instant;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v6

    const-wide v8, 0x7fffffffffffffffL

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;-><init>(JJ)V

    invoke-virtual {v5}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->build()Landroid/app/AppOpsManager$HistoricalOpsRequest;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/server/stats/-$$Lambda$wPejPqIRC0ueiw9uak8ULakT1R8;

    invoke-direct {v7, v4}, Lcom/android/server/stats/-$$Lambda$wPejPqIRC0ueiw9uak8ULakT1R8;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/AppOpsManager;->getHistoricalOps(Landroid/app/AppOpsManager$HistoricalOpsRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    const-wide/16 v6, 0x7d0

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v8}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$HistoricalOps;

    new-instance v13, Landroid/os/StatsLogEventWrapper;

    const/16 v8, 0x274c

    move-object v7, v13

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    invoke-direct/range {v7 .. v12}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    move-object v7, v13

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    invoke-virtual {v6}, Landroid/app/AppOpsManager$HistoricalOps;->getUidCount()I

    move-result v10

    if-ge v9, v10, :cond_2

    invoke-virtual {v6, v9}, Landroid/app/AppOpsManager$HistoricalOps;->getUidOpsAt(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AppOpsManager$HistoricalUidOps;->getUid()I

    move-result v11

    move v12, v8

    :goto_1
    invoke-virtual {v10}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v13

    if-ge v12, v13, :cond_1

    invoke-virtual {v10, v12}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v13

    move v14, v8

    :goto_2
    invoke-virtual {v13}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOpCount()I

    move-result v15

    if-ge v14, v15, :cond_0

    invoke-virtual {v13, v14}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v15

    invoke-virtual {v7, v11}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    invoke-virtual {v13}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    invoke-virtual {v15}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    const/16 v8, 0xd

    move-object/from16 v16, v0

    invoke-virtual {v15, v8}, Landroid/app/AppOpsManager$HistoricalOp;->getForegroundAccessCount(I)J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v15, v8}, Landroid/app/AppOpsManager$HistoricalOp;->getBackgroundAccessCount(I)J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v15, v8}, Landroid/app/AppOpsManager$HistoricalOp;->getForegroundRejectCount(I)J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v15, v8}, Landroid/app/AppOpsManager$HistoricalOp;->getBackgroundRejectCount(I)J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v15, v8}, Landroid/app/AppOpsManager$HistoricalOp;->getForegroundAccessDuration(I)J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v15, v8}, Landroid/app/AppOpsManager$HistoricalOp;->getBackgroundAccessDuration(I)J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v1, p5

    :try_start_1
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    add-int/lit8 v14, v14, 0x1

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v0, v16

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    move-object/from16 v1, p5

    move-object/from16 v16, v0

    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x0

    move-object/from16 v1, p0

    goto :goto_1

    :cond_1
    move-object/from16 v1, p5

    move-object/from16 v16, v0

    add-int/lit8 v9, v9, 0x1

    const/4 v8, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_0

    :cond_2
    move-object/from16 v1, p5

    move-object/from16 v16, v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v1, p5

    :goto_3
    :try_start_2
    const-string v4, "StatsCompanionService"

    const-string v5, "Could not read appops"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    nop

    :goto_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_2
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private pullAppSize(IJJLjava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    const-string v1, "StatsCompanionService"

    :try_start_0
    const-string v0, "/data/system/diskstats_cache.json"

    invoke-static {v0}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "queryTime"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-string/jumbo v3, "packageNames"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const-string v8, "appSizes"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    const-string v9, "appDataSizes"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    const-string v10, "cacheSizes"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v11

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ne v12, v11, :cond_2

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ne v12, v11, :cond_2

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-eq v12, v11, :cond_0

    move-object/from16 v14, p6

    goto :goto_1

    :cond_0
    const/4 v12, 0x0

    :goto_0
    if-ge v12, v11, :cond_1

    new-instance v19, Landroid/os/StatsLogEventWrapper;

    move-object/from16 v13, v19

    move/from16 v14, p1

    move-wide/from16 v15, p2

    move-wide/from16 v17, p4

    invoke-direct/range {v13 .. v18}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    move-object/from16 v13, v19

    invoke-virtual {v3, v12}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    invoke-virtual {v8, v12, v4, v5}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v9, v12, v4, v5}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v10, v12, v4, v5}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v13, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v14, p6

    :try_start_1
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v14, p6

    goto :goto_3

    :cond_2
    move-object/from16 v14, p6

    :goto_1
    const-string v4, "formatting error in diskstats cache file!"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v14, p6

    :goto_2
    const-string v2, "exception reading diskstats cache file"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method

.method private pullAppsOnExternalStorageInfo(IJJLjava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    if-eqz v6, :cond_6

    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v8

    if-eqz v8, :cond_4

    const/4 v9, -0x1

    invoke-virtual {v8}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v9, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v8}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v9, 0x2

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isExternal()Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v9, 0x3

    :cond_2
    :goto_1
    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    new-instance v10, Landroid/os/StatsLogEventWrapper;

    move-object v11, v10

    move/from16 v12, p1

    move-wide/from16 v13, p2

    move-wide/from16 v15, p4

    invoke-direct/range {v11 .. v16}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    invoke-virtual {v10, v9}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    iget-object v11, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    move-object/from16 v11, p6

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move-object/from16 v11, p6

    goto :goto_2

    :cond_4
    move-object/from16 v11, p6

    goto :goto_2

    :cond_5
    move-object/from16 v11, p6

    goto :goto_2

    :cond_6
    move-object/from16 v11, p6

    :goto_2
    goto :goto_0

    :cond_7
    move-object/from16 v11, p6

    return-void
.end method

.method private pullBinderCallsStats(IJJLjava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/android/server/BinderCallsStatsService$Internal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/BinderCallsStatsService$Internal;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/BinderCallsStatsService$Internal;->getExportedCallStats()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/BinderCallsStatsService$Internal;->reset()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    new-instance v10, Landroid/os/StatsLogEventWrapper;

    move-object v4, v10

    move v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v4 .. v9}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    iget v5, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->workSourceUid:I

    invoke-virtual {v4, v5}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    iget-object v5, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->methodName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    iget-wide v5, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    iget-wide v5, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->exceptionCount:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    iget-wide v5, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->latencyMicros:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    iget-wide v5, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxLatencyMicros:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    iget-wide v5, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    iget-wide v5, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxCpuTimeMicros:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    iget-wide v5, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxReplySizeBytes:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    iget-wide v5, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxRequestSizeBytes:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    iget-wide v5, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    iget-boolean v5, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->screenInteractive:Z

    invoke-virtual {v4, v5}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    iget v5, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callingUid:I

    invoke-virtual {v4, v5}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    move-object/from16 v5, p6

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object/from16 v5, p6

    return-void

    :cond_1
    move-object/from16 v5, p6

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "binderStats is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private pullBinderCallsStatsExceptions(IJJLjava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/android/server/BinderCallsStatsService$Internal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/BinderCallsStatsService$Internal;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/BinderCallsStatsService$Internal;->getExportedExceptionStats()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    new-instance v10, Landroid/os/StatsLogEventWrapper;

    move-object v4, v10

    move v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v4 .. v9}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    move-object/from16 v5, p6

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object/from16 v5, p6

    return-void

    :cond_1
    move-object/from16 v5, p6

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "binderStats is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private pullBluetoothActivityInfo(IJJLjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->fetchBluetoothData()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object v0

    new-instance v7, Landroid/os/StatsLogEventWrapper;

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getBluetoothStackState()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerTxTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerRxTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerIdleTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerEnergyUsed()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-interface {p6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private pullBluetoothBytesTransfer(IJJLjava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->fetchBluetoothData()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getUidTraffic()[Landroid/bluetooth/UidTraffic;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getUidTraffic()[Landroid/bluetooth/UidTraffic;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    new-instance v11, Landroid/os/StatsLogEventWrapper;

    move-object v5, v11

    move v6, p1

    move-wide v7, p2

    move-wide/from16 v9, p4

    invoke-direct/range {v5 .. v10}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    invoke-virtual {v4}, Landroid/bluetooth/UidTraffic;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    invoke-virtual {v4}, Landroid/bluetooth/UidTraffic;->getRxBytes()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v4}, Landroid/bluetooth/UidTraffic;->getTxBytes()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    move-object/from16 v6, p6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v6, p6

    goto :goto_1

    :cond_1
    move-object/from16 v6, p6

    :goto_1
    return-void
.end method

.method private pullBuildInformation(IJJLjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    new-instance v6, Landroid/os/StatsLogEventWrapper;

    move-object v0, v6

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    invoke-interface {p6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private pullCategorySize(IJJLjava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p6

    :try_start_0
    const-string v0, "/data/system/diskstats_cache.json"

    invoke-static {v0}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "queryTime"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    new-instance v3, Landroid/os/StatsLogEventWrapper;

    move-object v8, v3

    move/from16 v9, p1

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    invoke-direct/range {v8 .. v13}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    const-string v8, "appSize"

    invoke-virtual {v2, v8, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v3, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Landroid/os/StatsLogEventWrapper;

    move-object v10, v8

    move/from16 v11, p1

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    invoke-direct/range {v10 .. v15}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    move-object v3, v8

    const/4 v8, 0x2

    invoke-virtual {v3, v8}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    const-string v8, "appDataSize"

    invoke-virtual {v2, v8, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v3, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Landroid/os/StatsLogEventWrapper;

    move-object v10, v8

    move/from16 v11, p1

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    invoke-direct/range {v10 .. v15}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    move-object v3, v8

    const/4 v8, 0x3

    invoke-virtual {v3, v8}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    const-string v8, "cacheSize"

    invoke-virtual {v2, v8, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v3, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Landroid/os/StatsLogEventWrapper;

    move-object v10, v8

    move/from16 v11, p1

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    invoke-direct/range {v10 .. v15}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    move-object v3, v8

    const/4 v8, 0x4

    invoke-virtual {v3, v8}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    const-string/jumbo v8, "photosSize"

    invoke-virtual {v2, v8, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v3, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Landroid/os/StatsLogEventWrapper;

    move-object v10, v8

    move/from16 v11, p1

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    invoke-direct/range {v10 .. v15}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    move-object v3, v8

    const/4 v8, 0x5

    invoke-virtual {v3, v8}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    const-string/jumbo v8, "videosSize"

    invoke-virtual {v2, v8, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v3, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Landroid/os/StatsLogEventWrapper;

    move-object v10, v8

    move/from16 v11, p1

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    invoke-direct/range {v10 .. v15}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    move-object v3, v8

    const/4 v8, 0x6

    invoke-virtual {v3, v8}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    const-string v8, "audioSize"

    invoke-virtual {v2, v8, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v3, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Landroid/os/StatsLogEventWrapper;

    move-object v10, v8

    move/from16 v11, p1

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    invoke-direct/range {v10 .. v15}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    move-object v3, v8

    const/4 v8, 0x7

    invoke-virtual {v3, v8}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    const-string v8, "downloadsSize"

    invoke-virtual {v2, v8, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v3, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Landroid/os/StatsLogEventWrapper;

    move-object v10, v8

    move/from16 v11, p1

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    invoke-direct/range {v10 .. v15}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    move-object v3, v8

    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    const-string/jumbo v8, "systemSize"

    invoke-virtual {v2, v8, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v3, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Landroid/os/StatsLogEventWrapper;

    move-object v10, v8

    move/from16 v11, p1

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    invoke-direct/range {v10 .. v15}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    move-object v3, v8

    const/16 v8, 0x9

    invoke-virtual {v3, v8}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    const-string/jumbo v8, "otherSize"

    invoke-virtual {v2, v8, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v3, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "StatsCompanionService"

    const-string v3, "exception reading diskstats cache file"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private pullCoolingDevices(IJJLjava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    sget-object v0, Lcom/android/server/stats/StatsCompanionService;->sThermalService:Landroid/os/IThermalService;

    invoke-interface {v0}, Landroid/os/IThermalService;->getCurrentCoolingDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/CoolingDevice;

    new-instance v11, Landroid/os/StatsLogEventWrapper;

    move-object v5, v11

    move v6, p1

    move-wide v7, p2

    move-wide/from16 v9, p4

    invoke-direct/range {v5 .. v10}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    move-object v5, v11

    invoke-virtual {v4}, Landroid/os/CoolingDevice;->getType()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    invoke-virtual {v4}, Landroid/os/CoolingDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/os/CoolingDevice;->getValue()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v6, p6

    :try_start_1
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    nop

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object/from16 v6, p6

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object/from16 v6, p6

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v6, p6

    :goto_1
    :try_start_2
    const-string v3, "StatsCompanionService"

    const-string v4, "Disconnected from thermal service. Cannot pull temperatures."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    nop

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_1
    move-exception v0

    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private pullCpuTimePerFreq(IJJLjava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/stats/StatsCompanionService;->mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/internal/os/KernelCpuSpeedReader;->readAbsolute()[J

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_0

    new-instance v10, Landroid/os/StatsLogEventWrapper;

    move-object v4, v10

    move v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v4 .. v9}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    invoke-virtual {v4, v0}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    invoke-virtual {v4, v3}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    aget-wide v5, v2, v3

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    move-object/from16 v5, p6

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_0
    move-object/from16 v5, p6

    goto :goto_2

    :cond_1
    move-object/from16 v5, p6

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v5, p6

    return-void
.end method

.method private pullCpuTimePerThreadFreq(IJJLjava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/stats/StatsCompanionService;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    if-eqz v1, :cond_7

    nop

    invoke-virtual {v1}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->getProcessCpuUsageDiffed()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v2, v0, Lcom/android/server/stats/StatsCompanionService;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    invoke-virtual {v2}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->getCpuFrequenciesKhz()[I

    move-result-object v2

    array-length v3, v2

    const-string v4, "StatsCompanionService"

    const/16 v5, 0x8

    if-gt v3, v5, :cond_5

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;

    iget-object v7, v6, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->threadCpuUsages:Ljava/util/ArrayList;

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;

    iget-object v10, v9, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    array-length v10, v10

    array-length v11, v2

    if-ne v10, v11, :cond_2

    new-instance v10, Landroid/os/StatsLogEventWrapper;

    move-object v12, v10

    move/from16 v13, p1

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    invoke-direct/range {v12 .. v17}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    iget v11, v6, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->uid:I

    invoke-virtual {v10, v11}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    iget v11, v6, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->processId:I

    invoke-virtual {v10, v11}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    iget v11, v9, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->threadId:I

    invoke-virtual {v10, v11}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    iget-object v11, v6, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    iget-object v11, v9, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->threadName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v5, :cond_1

    array-length v12, v2

    if-ge v11, v12, :cond_0

    aget v12, v2, v11

    invoke-virtual {v10, v12}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    iget-object v12, v9, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    aget v12, v12, v11

    invoke-virtual {v10, v12}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    goto :goto_3

    :cond_0
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    invoke-virtual {v10, v12}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_1
    move-object/from16 v11, p6

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v11, p6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected number of usage times, expected "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v10, v2

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " but got "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v9, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    array-length v10, v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    move-object/from16 v11, p6

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    move-object/from16 v11, p6

    return-void

    :cond_5
    move-object/from16 v11, p6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected maximum 8 frequencies, but got "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_6
    move-object/from16 v11, p6

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "processCpuUsages is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    move-object/from16 v11, p6

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "mKernelCpuThreadReader is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private pullDangerousPermissionState(JJLjava/util/List;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v0, v1, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v4, v0

    iget-object v0, v1, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/os/UserManager;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    move v6, v0

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-ge v7, v6, :cond_5

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    move-object v8, v0

    const/16 v0, 0x1000

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    invoke-virtual {v4, v0, v9}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v0

    move-object v9, v0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    move v10, v0

    const/4 v0, 0x0

    move v11, v0

    :goto_1
    if-ge v11, v10, :cond_4

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    move-object v12, v0

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v0, :cond_0

    move-object/from16 v18, v4

    move-object/from16 v4, p5

    goto/16 :goto_5

    :cond_0
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v0, v0

    move v13, v0

    const/4 v0, 0x0

    move v14, v0

    :goto_2
    if-ge v14, v13, :cond_3

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v0, v0, v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v15, v0

    const/16 v16, 0x0

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v4, v15, v0}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v17

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v15, v0, v8}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    nop

    :try_start_2
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v1

    move-object/from16 v18, v4

    const/4 v4, 0x1

    if-eq v1, v4, :cond_1

    move-object/from16 v4, p5

    goto :goto_4

    :cond_1
    new-instance v1, Landroid/os/StatsLogEventWrapper;

    const/16 v20, 0x2742

    move-object/from16 v19, v1

    move-wide/from16 v21, p1

    move-wide/from16 v23, p3

    invoke-direct/range {v19 .. v24}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    invoke-virtual {v1, v15}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    iget-object v4, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v4}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    iget-object v4, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    iget-object v4, v12, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v4, v4, v14

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v1, v4}, Landroid/os/StatsLogEventWrapper;->writeBoolean(Z)V

    invoke-virtual {v1, v0}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v4, p5

    :try_start_3
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v4, p5

    nop

    :goto_4
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p0

    move-object/from16 v4, v18

    goto :goto_2

    :cond_3
    move-object/from16 v18, v4

    move-object/from16 v4, p5

    :goto_5
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p0

    move-object/from16 v4, v18

    goto/16 :goto_1

    :cond_4
    move-object/from16 v18, v4

    move-object/from16 v4, p5

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v4, v18

    goto/16 :goto_0

    :cond_5
    move-object/from16 v18, v4

    move-object/from16 v4, p5

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v4, p5

    :goto_6
    :try_start_4
    const-string v1, "StatsCompanionService"

    const-string v5, "Could not read permissions"

    invoke-static {v1, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    nop

    :goto_7
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_2
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private pullDebugElapsedClock(IJJLjava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/server/stats/StatsCompanionService;->mDebugElapsedClockPreviousValue:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    sub-long v6, v2, v4

    :goto_0
    move-wide v4, v6

    new-instance v12, Landroid/os/StatsLogEventWrapper;

    move-object v6, v12

    move/from16 v7, p1

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v6 .. v11}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    iget-wide v7, v0, Lcom/android/server/stats/StatsCompanionService;->mDebugElapsedClockPullCount:J

    invoke-virtual {v6, v7, v8}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v6, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v6, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v6, v4, v5}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v7, v0, Lcom/android/server/stats/StatsCompanionService;->mDebugElapsedClockPullCount:J

    const-wide/16 v9, 0x2

    rem-long/2addr v7, v9

    const-wide/16 v9, 0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_1

    new-instance v7, Landroid/os/StatsLogEventWrapper;

    move-object v11, v7

    move/from16 v12, p1

    move-wide/from16 v13, p2

    move-wide/from16 v15, p4

    invoke-direct/range {v11 .. v16}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    iget-wide v11, v0, Lcom/android/server/stats/StatsCompanionService;->mDebugElapsedClockPullCount:J

    invoke-virtual {v7, v11, v12}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v7, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v7, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v7, v4, v5}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-wide v7, v0, Lcom/android/server/stats/StatsCompanionService;->mDebugElapsedClockPullCount:J

    add-long/2addr v7, v9

    iput-wide v7, v0, Lcom/android/server/stats/StatsCompanionService;->mDebugElapsedClockPullCount:J

    iput-wide v2, v0, Lcom/android/server/stats/StatsCompanionService;->mDebugElapsedClockPreviousValue:J

    return-void
.end method

.method private pullDebugFailingElapsedClock(IJJLjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    new-instance v6, Landroid/os/StatsLogEventWrapper;

    move-object v0, v6

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/stats/StatsCompanionService;->mDebugFailingElapsedClockPullCount:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/android/server/stats/StatsCompanionService;->mDebugFailingElapsedClockPullCount:J

    const-wide/16 v5, 0x5

    rem-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    iget-wide v3, p0, Lcom/android/server/stats/StatsCompanionService;->mDebugFailingElapsedClockPullCount:J

    invoke-virtual {v0, v3, v4}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v0, v1, v2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v0, v1, v2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    iget-wide v3, p0, Lcom/android/server/stats/StatsCompanionService;->mDebugFailingElapsedClockPreviousValue:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    sub-long v5, v1, v3

    :goto_0
    invoke-virtual {v0, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    iput-wide v1, p0, Lcom/android/server/stats/StatsCompanionService;->mDebugFailingElapsedClockPreviousValue:J

    invoke-interface {p6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iput-wide v1, p0, Lcom/android/server/stats/StatsCompanionService;->mDebugFailingElapsedClockPreviousValue:J

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failing debug elapsed clock"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private pullDeviceCalculatedPowerBlameOther(IJJLjava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->getBatteryStatsHelper()Lcom/android/internal/os/BatteryStatsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatterySipper;

    iget-object v3, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-object v4, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v4, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-object v4, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v4, Lcom/android/internal/os/BatterySipper$DrainType;->USER:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    new-instance v3, Landroid/os/StatsLogEventWrapper;

    move-object v5, v3

    move v6, p1

    move-wide v7, p2

    move-wide v9, p4

    invoke-direct/range {v5 .. v10}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    iget-object v4, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v4}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    iget-wide v4, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-object v6, p0

    invoke-direct {p0, v4, v5}, Lcom/android/server/stats/StatsCompanionService;->milliAmpHrsToNanoAmpSecs(D)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    move-object/from16 v4, p6

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move-object v6, p0

    move-object/from16 v4, p6

    return-void
.end method

.method private pullDeviceCalculatedPowerBlameUid(IJJLjava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->getBatteryStatsHelper()Lcom/android/internal/os/BatteryStatsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatterySipper;

    iget-object v3, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-object v4, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v4, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/os/StatsLogEventWrapper;

    move-object v5, v3

    move v6, p1

    move-wide v7, p2

    move-wide v9, p4

    invoke-direct/range {v5 .. v10}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    iget-object v4, v2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    iget-wide v4, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-object v6, p0

    invoke-direct {p0, v4, v5}, Lcom/android/server/stats/StatsCompanionService;->milliAmpHrsToNanoAmpSecs(D)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    move-object/from16 v4, p6

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v6, p0

    move-object/from16 v4, p6

    return-void
.end method

.method private pullDeviceCalculatedPowerUse(IJJLjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->getBatteryStatsHelper()Lcom/android/internal/os/BatteryStatsHelper;

    move-result-object v0

    new-instance v7, Landroid/os/StatsLogEventWrapper;

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getComputedPower()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/stats/StatsCompanionService;->milliAmpHrsToNanoAmpSecs(D)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-interface {p6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private pullDirectoryUsage(IJJLjava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p6

    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    new-instance v10, Landroid/os/StatsLogEventWrapper;

    move-object v4, v10

    move v5, p1

    move-wide v6, p2

    move-wide/from16 v8, p4

    invoke-direct/range {v4 .. v9}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Landroid/os/StatsLogEventWrapper;

    move-object v7, v5

    move v8, p1

    move-wide v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v7 .. v12}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    move-object v4, v5

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Landroid/os/StatsLogEventWrapper;

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    move-object v4, v5

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v2}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private pullDiskIo(IJJLjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mStoragedUidIoStatsReader:Lcom/android/internal/os/StoragedUidIoStatsReader;

    new-instance v8, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$C35-JUjeqVrZ2ptbyqiMciF6UQM;

    move-object v1, v8

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$C35-JUjeqVrZ2ptbyqiMciF6UQM;-><init>(IJJLjava/util/List;)V

    invoke-virtual {v0, v8}, Lcom/android/internal/os/StoragedUidIoStatsReader;->readAbsolute(Lcom/android/internal/os/StoragedUidIoStatsReader$Callback;)V

    return-void
.end method

.method private pullDiskStats(IJJLjava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v1, "storaged not found"

    const/16 v0, 0x200

    new-array v2, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    int-to-byte v3, v0

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "system/statsdperftest.tmp"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v4, v0

    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v4, :cond_2

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_2
    nop

    :goto_3
    throw v1

    :catch_2
    move-exception v0

    move-object v5, v0

    if-eqz v4, :cond_1

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v6

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_3
    const-string v10, "StatsCompanionService"

    if-eqz v5, :cond_4

    const-string v0, "Error performing diskstats latency test"

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, -0x1

    :cond_4
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v11

    const/4 v12, -0x1

    :try_start_4
    const-string/jumbo v0, "storaged"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {v0}, Landroid/os/IStoraged$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IStoraged;

    move-result-object v13

    invoke-interface {v13}, Landroid/os/IStoraged;->getRecentPerf()I

    move-result v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    move v12, v1

    goto :goto_5

    :catch_3
    move-exception v0

    invoke-static {v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    new-instance v0, Landroid/os/StatsLogEventWrapper;

    move-object v13, v0

    move/from16 v14, p1

    move-wide/from16 v15, p2

    move-wide/from16 v17, p4

    invoke-direct/range {v13 .. v18}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    invoke-virtual {v0, v8, v9}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v0, v11}, Landroid/os/StatsLogEventWrapper;->writeBoolean(Z)V

    invoke-virtual {v0, v12}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    move-object/from16 v1, p6

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private pullExternalStorageInfo(IJJLjava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/VolumeInfo;

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v5

    invoke-static {v5}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v6

    if-eqz v6, :cond_5

    const-string/jumbo v7, "mounted"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x3

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v8

    if-nez v8, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    const/4 v7, 0x2

    :cond_1
    :goto_1
    invoke-virtual {v6}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v6}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x2

    goto :goto_2

    :cond_3
    const/4 v8, 0x3

    :goto_2
    new-instance v15, Landroid/os/StatsLogEventWrapper;

    move-object v9, v15

    move/from16 v10, p1

    move-wide/from16 v11, p2

    move-wide/from16 v13, p4

    invoke-direct/range {v9 .. v14}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    invoke-virtual {v9, v8}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    invoke-virtual {v9, v7}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    iget-wide v10, v6, Landroid/os/storage/DiskInfo;->size:J

    invoke-virtual {v9, v10, v11}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    move-object/from16 v10, p6

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    move-object/from16 v10, p6

    goto :goto_3

    :cond_5
    move-object/from16 v10, p6

    :goto_3
    goto :goto_0

    :cond_6
    move-object/from16 v10, p6

    goto :goto_4

    :cond_7
    move-object/from16 v10, p6

    :goto_4
    return-void
.end method

.method private pullFaceSettings(IJJLjava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    move-object v1, p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v0, v1, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/UserManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_6

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    new-instance v13, Landroid/os/StatsLogEventWrapper;

    move-object v7, v13

    move v8, p1

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v7 .. v12}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    move-object v7, v13

    iget-object v8, v1, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "face_unlock_keyguard_enabled"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    move v8, v10

    goto :goto_1

    :cond_0
    move v8, v9

    :goto_1
    invoke-virtual {v7, v8}, Landroid/os/StatsLogEventWrapper;->writeBoolean(Z)V

    iget-object v8, v1, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "face_unlock_dismisses_keyguard"

    invoke-static {v8, v11, v9, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_1

    move v8, v10

    goto :goto_2

    :cond_1
    move v8, v9

    :goto_2
    invoke-virtual {v7, v8}, Landroid/os/StatsLogEventWrapper;->writeBoolean(Z)V

    iget-object v8, v1, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "face_unlock_attention_required"

    invoke-static {v8, v11, v10, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_2

    move v8, v10

    goto :goto_3

    :cond_2
    move v8, v9

    :goto_3
    invoke-virtual {v7, v8}, Landroid/os/StatsLogEventWrapper;->writeBoolean(Z)V

    iget-object v8, v1, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "face_unlock_app_enabled"

    invoke-static {v8, v11, v10, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_3

    move v8, v10

    goto :goto_4

    :cond_3
    move v8, v9

    :goto_4
    invoke-virtual {v7, v8}, Landroid/os/StatsLogEventWrapper;->writeBoolean(Z)V

    iget-object v8, v1, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "face_unlock_always_require_confirmation"

    invoke-static {v8, v11, v9, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_4

    move v8, v10

    goto :goto_5

    :cond_4
    move v8, v9

    :goto_5
    invoke-virtual {v7, v8}, Landroid/os/StatsLogEventWrapper;->writeBoolean(Z)V

    iget-object v8, v1, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "face_unlock_diversity_required"

    invoke-static {v8, v11, v10, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_5

    move v9, v10

    :cond_5
    invoke-virtual {v7, v9}, Landroid/os/StatsLogEventWrapper;->writeBoolean(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v8, p6

    :try_start_1
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_6
    move-object/from16 v8, p6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_1
    move-exception v0

    move-object/from16 v8, p6

    :goto_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private pullKernelUidCpuActiveTime(IJJLjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mCpuUidActiveTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

    new-instance v8, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$xPc-EMoQkRUC4lkJfxYah3VZObc;

    move-object v1, v8

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$xPc-EMoQkRUC4lkJfxYah3VZObc;-><init>(IJJLjava/util/List;)V

    invoke-virtual {v0, v8}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    return-void
.end method

.method private pullKernelUidCpuClusterTime(IJJLjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mCpuUidClusterTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

    new-instance v8, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$8XwH_9_4XyR23VE4UEw0TLmPhXk;

    move-object v1, v8

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$8XwH_9_4XyR23VE4UEw0TLmPhXk;-><init>(IJJLjava/util/List;)V

    invoke-virtual {v0, v8}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    return-void
.end method

.method private pullKernelUidCpuFreqTime(IJJLjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    new-instance v8, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$CEX8Lyeg27KwlBp4VWGjp9hZExA;

    move-object v1, v8

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$CEX8Lyeg27KwlBp4VWGjp9hZExA;-><init>(IJJLjava/util/List;)V

    invoke-virtual {v0, v8}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    return-void
.end method

.method private pullKernelUidCpuTime(IJJLjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mCpuUidUserSysTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

    new-instance v8, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$UBm3QCI0bvsnm37DPdPZCp_VPm0;

    move-object v1, v8

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$UBm3QCI0bvsnm37DPdPZCp_VPm0;-><init>(IJJLjava/util/List;)V

    invoke-virtual {v0, v8}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    return-void
.end method

.method private pullKernelWakelock(IJJLjava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/stats/StatsCompanionService;->mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

    iget-object v2, v0, Lcom/android/server/stats/StatsCompanionService;->mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

    invoke-virtual {v1, v2}, Lcom/android/internal/os/KernelWakelockReader;->readKernelWakelockStats(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/KernelWakelockStats;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/KernelWakelockStats$Entry;

    new-instance v12, Landroid/os/StatsLogEventWrapper;

    move-object v6, v12

    move v7, p1

    move-wide v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v6 .. v11}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    invoke-virtual {v6, v4}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    iget v7, v5, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    invoke-virtual {v6, v7}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    iget v7, v5, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    invoke-virtual {v6, v7}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    iget-wide v7, v5, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    invoke-virtual {v6, v7, v8}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    move-object/from16 v7, p6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object/from16 v7, p6

    return-void
.end method

.method private pullLooperStats(IJJLjava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/android/internal/os/LooperStats;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/LooperStats;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/os/LooperStats;->getEntries()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/os/LooperStats;->reset()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/LooperStats$ExportedEntry;

    new-instance v10, Landroid/os/StatsLogEventWrapper;

    move-object v4, v10

    move v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v4 .. v9}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    iget v5, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->workSourceUid:I

    invoke-virtual {v4, v5}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    iget-object v5, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->handlerClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->threadName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->messageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    iget-wide v5, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->messageCount:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    iget-wide v5, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->exceptionCount:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    iget-wide v5, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->recordedMessageCount:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    iget-wide v5, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->totalLatencyMicros:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    iget-wide v5, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->cpuUsageMicros:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    iget-boolean v5, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->isInteractive:Z

    invoke-virtual {v4, v5}, Landroid/os/StatsLogEventWrapper;->writeBoolean(Z)V

    iget-wide v5, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxCpuUsageMicros:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    iget-wide v5, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxLatencyMicros:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    iget-wide v5, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->recordedDelayMessageCount:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    iget-wide v5, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->delayMillis:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    iget-wide v5, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxDelayMillis:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    move-object/from16 v5, p6

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object/from16 v5, p6

    return-void

    :cond_1
    move-object/from16 v5, p6

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "looperStats null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private pullMobileBytesTransfer(IJJLjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    const-string v0, "StatsCompanionService"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    const-class v3, Landroid/os/BatteryStatsInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStatsInternal;

    invoke-virtual {v3}, Landroid/os/BatteryStatsInternal;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/stats/StatsCompanionService;->mNetworkStatsService:Landroid/net/INetworkStatsService;

    if-nez v5, :cond_1

    const-string v5, "NetworkStats Service is not available!"

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/android/server/stats/StatsCompanionService;->mNetworkStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v5, v4}, Landroid/net/INetworkStatsService;->getDetailedUidStats([Ljava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkStats;->groupedByUid()Landroid/net/NetworkStats;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {p0, p1, p6, v5, v6}, Lcom/android/server/stats/StatsCompanionService;->addNetworkStats(ILjava/util/List;Landroid/net/NetworkStats;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_3
    const-string v4, "Pulling netstats for mobile bytes has error"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private pullMobileBytesTransferByFgBg(IJJLjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    const-string v0, "StatsCompanionService"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    const-class v3, Landroid/os/BatteryStatsInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStatsInternal;

    invoke-virtual {v3}, Landroid/os/BatteryStatsInternal;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/stats/StatsCompanionService;->mNetworkStatsService:Landroid/net/INetworkStatsService;

    if-nez v5, :cond_1

    const-string v5, "NetworkStats Service is not available!"

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/android/server/stats/StatsCompanionService;->mNetworkStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v5, v4}, Landroid/net/INetworkStatsService;->getDetailedUidStats([Ljava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/stats/StatsCompanionService;->rollupNetworkStatsByFGBG(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, p1, p6, v5, v6}, Lcom/android/server/stats/StatsCompanionService;->addNetworkStats(ILjava/util/List;Landroid/net/NetworkStats;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_3
    const-string v4, "Pulling netstats for mobile bytes w/ fg/bg has error"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private pullModemActivityInfo(IJJLjava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    move-object v1, p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    monitor-enter p0

    :try_start_0
    iget-object v0, v1, Lcom/android/server/stats/StatsCompanionService;->mTelephony:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/stats/StatsCompanionService;->mTelephony:Landroid/telephony/TelephonyManager;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/android/server/stats/StatsCompanionService;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/SynchronousResultReceiver;

    const-string/jumbo v4, "telephony"

    invoke-direct {v0, v4}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/stats/StatsCompanionService;->mTelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4, v0}, Landroid/telephony/TelephonyManager;->requestModemActivityInfo(Landroid/os/ResultReceiver;)V

    invoke-static {v0}, Lcom/android/server/stats/StatsCompanionService;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/telephony/ModemActivityInfo;

    new-instance v11, Landroid/os/StatsLogEventWrapper;

    move-object v5, v11

    move v6, p1

    move-wide v7, p2

    move-wide/from16 v9, p4

    invoke-direct/range {v5 .. v10}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    invoke-virtual {v4}, Landroid/telephony/ModemActivityInfo;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v4}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v4}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v4}, Landroid/telephony/ModemActivityInfo;->getTxTimeMillis()[I

    move-result-object v6

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v4}, Landroid/telephony/ModemActivityInfo;->getTxTimeMillis()[I

    move-result-object v6

    const/4 v7, 0x1

    aget v6, v6, v7

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v4}, Landroid/telephony/ModemActivityInfo;->getTxTimeMillis()[I

    move-result-object v6

    const/4 v7, 0x2

    aget v6, v6, v7

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v4}, Landroid/telephony/ModemActivityInfo;->getTxTimeMillis()[I

    move-result-object v6

    const/4 v7, 0x3

    aget v6, v6, v7

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v4}, Landroid/telephony/ModemActivityInfo;->getTxTimeMillis()[I

    move-result-object v6

    const/4 v7, 0x4

    aget v6, v6, v7

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v4}, Landroid/telephony/ModemActivityInfo;->getRxTimeMillis()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v4}, Landroid/telephony/ModemActivityInfo;->getEnergyUsed()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    move-object/from16 v6, p6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object/from16 v6, p6

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v6, p6

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private pullNativeProcessMemoryState(IJJLjava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/server/stats/StatsCompanionService;->MEMORY_INTERESTING_NATIVE_PROCESSES:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/android/server/stats/StatsCompanionService;->MEMORY_INTERESTING_NATIVE_PROCESSES:[Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    aget v3, v1, v2

    invoke-static {v3}, Lcom/android/server/am/MemoryStatUtil;->readMemoryStatFromProcfs(I)Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    move-result-object v4

    if-nez v4, :cond_0

    move-object/from16 v8, p6

    goto :goto_1

    :cond_0
    invoke-static {v3}, Landroid/os/Process;->getUidForPid(I)I

    move-result v5

    invoke-static {v3}, Lcom/android/server/am/MemoryStatUtil;->readCmdlineFromProcfs(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    move-object/from16 v8, p6

    goto :goto_1

    :cond_1
    new-instance v7, Landroid/os/StatsLogEventWrapper;

    move-object v8, v7

    move v9, p1

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    invoke-direct/range {v8 .. v13}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    invoke-virtual {v7, v5}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    invoke-virtual {v7, v6}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    iget-wide v8, v4, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgfault:J

    invoke-virtual {v7, v8, v9}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    iget-wide v8, v4, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgmajfault:J

    invoke-virtual {v7, v8, v9}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    iget-wide v8, v4, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->rssInBytes:J

    invoke-virtual {v7, v8, v9}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    iget-wide v8, v4, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->startTimeNanos:J

    invoke-virtual {v7, v8, v9}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    iget-wide v8, v4, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->swapInBytes:J

    invoke-virtual {v7, v8, v9}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-static {v4}, Lcom/android/server/stats/StatsCompanionService;->anonAndSwapInKilobytes(Lcom/android/server/am/MemoryStatUtil$MemoryStat;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    move-object/from16 v8, p6

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v8, p6

    return-void
.end method

.method private pullNumBiometricsEnrolled(IIJJLjava/util/List;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "android.hardware.fingerprint"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Landroid/hardware/fingerprint/FingerprintManager;

    :cond_0
    const-string v5, "android.hardware.biometrics.face"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/hardware/face/FaceManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Landroid/hardware/face/FaceManager;

    :cond_1
    const/4 v5, 0x1

    if-ne v1, v5, :cond_2

    if-nez v3, :cond_2

    return-void

    :cond_2
    const/4 v6, 0x4

    if-ne v1, v6, :cond_3

    if-nez v4, :cond_3

    return-void

    :cond_3
    iget-object v7, v0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-class v8, Landroid/os/UserManager;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    if-nez v7, :cond_4

    return-void

    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    invoke-virtual {v7}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/UserInfo;

    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    const/4 v13, 0x0

    if-ne v1, v5, :cond_5

    invoke-virtual {v3, v12}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v13

    goto :goto_1

    :cond_5
    if-ne v1, v6, :cond_6

    invoke-virtual {v4, v12}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v13

    :goto_1
    new-instance v20, Landroid/os/StatsLogEventWrapper;

    move-object/from16 v14, v20

    move/from16 v15, p2

    move-wide/from16 v16, p3

    move-wide/from16 v18, p5

    invoke-direct/range {v14 .. v19}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    invoke-virtual {v14, v12}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    invoke-virtual {v14, v13}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    move-object/from16 v15, p7

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    move-object/from16 v15, p7

    return-void

    :cond_7
    move-object/from16 v15, p7

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method private pullPowerProfile(IJJLjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Landroid/os/StatsLogEventWrapper;

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    invoke-virtual {v0, v2}, Lcom/android/internal/os/PowerProfile;->writeToProto(Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/StatsLogEventWrapper;->writeStorage([B)V

    invoke-interface {p6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private pullProcessCpuTime(IJJLjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    invoke-direct {v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    move v0, v1

    :goto_0
    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v1

    new-instance v8, Landroid/os/StatsLogEventWrapper;

    move-object v2, v8

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v2 .. v7}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    move-object v2, v8

    iget v3, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    invoke-virtual {v2, v3}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    iget-object v3, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    iget-wide v3, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    invoke-virtual {v2, v3, v4}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    iget-wide v3, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    invoke-virtual {v2, v3, v4}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-interface {p6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private pullProcessMemoryHighWaterMark(IJJLjava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p6

    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->getMemoryStateForProcesses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ProcessMemoryState;

    iget v4, v3, Landroid/app/ProcessMemoryState;->pid:I

    invoke-static {v4}, Lcom/android/server/am/MemoryStatUtil;->readRssHighWaterMarkFromProcfs(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    new-instance v6, Landroid/os/StatsLogEventWrapper;

    move-object v7, v6

    move/from16 v8, p1

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v7 .. v12}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    iget v7, v3, Landroid/app/ProcessMemoryState;->uid:I

    invoke-virtual {v6, v7}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    iget-object v7, v3, Landroid/app/ProcessMemoryState;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/server/stats/StatsCompanionService;->MEMORY_INTERESTING_NATIVE_PROCESSES:[Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_2

    aget v4, v2, v3

    invoke-static {v4}, Landroid/os/Process;->getUidForPid(I)I

    move-result v5

    invoke-static {v4}, Lcom/android/server/am/MemoryStatUtil;->readCmdlineFromProcfs(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Lcom/android/server/am/MemoryStatUtil;->readRssHighWaterMarkFromProcfs(I)J

    move-result-wide v7

    new-instance v15, Landroid/os/StatsLogEventWrapper;

    move-object v9, v15

    move/from16 v10, p1

    move-wide/from16 v11, p2

    move-wide/from16 v13, p4

    invoke-direct/range {v9 .. v14}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    invoke-virtual {v9, v5}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    invoke-virtual {v9, v6}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    invoke-virtual {v9, v7, v8}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v3, "sys.rss_hwm_reset.on"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private pullProcessMemoryState(IJJLjava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getMemoryStateForProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProcessMemoryState;

    iget v3, v2, Landroid/app/ProcessMemoryState;->uid:I

    iget v4, v2, Landroid/app/ProcessMemoryState;->pid:I

    invoke-static {v3, v4}, Lcom/android/server/am/MemoryStatUtil;->readMemoryStatFromFilesystem(II)Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v10, Landroid/os/StatsLogEventWrapper;

    move-object v4, v10

    move v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v4 .. v9}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    iget v5, v2, Landroid/app/ProcessMemoryState;->uid:I

    invoke-virtual {v4, v5}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    iget-object v5, v2, Landroid/app/ProcessMemoryState;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    iget v5, v2, Landroid/app/ProcessMemoryState;->oomScore:I

    invoke-virtual {v4, v5}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    iget-wide v5, v3, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgfault:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    iget-wide v5, v3, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgmajfault:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    iget-wide v5, v3, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->rssInBytes:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    iget-wide v5, v3, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->cacheInBytes:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    iget-wide v5, v3, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->swapInBytes:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    iget-wide v5, v3, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->startTimeNanos:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-static {v3}, Lcom/android/server/stats/StatsCompanionService;->anonAndSwapInKilobytes(Lcom/android/server/am/MemoryStatUtil$MemoryStat;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    move-object/from16 v5, p6

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object/from16 v5, p6

    return-void
.end method

.method private pullProcessStats(IIJJLjava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v8, p1

    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/stats/StatsCompanionService;->readProcStatsHighWaterMark(I)J

    move-result-wide v2

    move-wide v9, v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v1, Lcom/android/server/stats/StatsCompanionService;->mProcessStats:Lcom/android/internal/app/procstats/IProcessStats;

    const/4 v6, 0x1

    move-wide v3, v9

    move/from16 v5, p1

    move-object v7, v0

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/app/procstats/IProcessStats;->getCommittedStats(JIZLjava/util/List;)J

    move-result-wide v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_0
    :try_start_2
    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v4, v7}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    new-array v5, v5, [I

    invoke-static {v4, v5}, Lcom/android/server/stats/StatsCompanionService;->readFully(Ljava/io/InputStream;[I)[B

    move-result-object v7

    new-instance v17, Landroid/os/StatsLogEventWrapper;

    move-object/from16 v11, v17

    move/from16 v12, p2

    move-wide/from16 v13, p3

    move-wide/from16 v15, p5

    invoke-direct/range {v11 .. v16}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    move-object/from16 v11, v17

    aget v6, v5, v6

    invoke-static {v7, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    invoke-virtual {v11, v6}, Landroid/os/StatsLogEventWrapper;->writeStorage([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v6, p7

    :try_start_3
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v12, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/android/server/stats/StatsCompanionService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    new-instance v12, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/android/server/stats/StatsCompanionService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->createNewFile()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    nop

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object/from16 v6, p7

    goto :goto_4

    :catch_3
    move-exception v0

    move-object/from16 v6, p7

    :goto_0
    :try_start_4
    const-string v2, "StatsCompanionService"

    const-string v3, "Getting procstats failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_4
    move-exception v0

    move-object/from16 v6, p7

    :goto_1
    const-string v2, "StatsCompanionService"

    const-string v3, "Getting procstats failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    goto :goto_3

    :catch_5
    move-exception v0

    move-object/from16 v6, p7

    :goto_2
    const-string v2, "StatsCompanionService"

    const-string v3, "Getting procstats failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_3
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    :goto_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private pullProcessSystemIonHeapSize(IJJLjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/am/MemoryStatUtil;->readProcessSystemIonHeapSizesFromDebugfs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MemoryStatUtil$IonAllocations;

    new-instance v9, Landroid/os/StatsLogEventWrapper;

    move-object v3, v9

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-direct/range {v3 .. v8}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    iget v4, v2, Lcom/android/server/am/MemoryStatUtil$IonAllocations;->pid:I

    invoke-static {v4}, Landroid/os/Process;->getUidForPid(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    iget v4, v2, Lcom/android/server/am/MemoryStatUtil$IonAllocations;->pid:I

    invoke-static {v4}, Lcom/android/server/am/MemoryStatUtil;->readCmdlineFromProcfs(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    iget-wide v4, v2, Lcom/android/server/am/MemoryStatUtil$IonAllocations;->totalSizeInBytes:J

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    iget v4, v2, Lcom/android/server/am/MemoryStatUtil$IonAllocations;->count:I

    invoke-virtual {v3, v4}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    iget-wide v4, v2, Lcom/android/server/am/MemoryStatUtil$IonAllocations;->maxSizeInBytes:J

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    move-object/from16 v4, p6

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object/from16 v4, p6

    return-void
.end method

.method private pullRoleHolders(JJLjava/util/List;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v0, v1, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v4, v0

    const-class v0, Lcom/android/server/role/RoleManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/role/RoleManagerInternal;

    move-object v5, v0

    iget-object v0, v1, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/os/UserManager;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    move-object v6, v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    move v7, v0

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v7, :cond_2

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    move v9, v0

    invoke-virtual {v5, v9}, Lcom/android/server/role/RoleManagerInternal;->getRolesAndHolders(I)Landroid/util/ArrayMap;

    move-result-object v0

    move-object v10, v0

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v0

    move v11, v0

    const/4 v0, 0x0

    move v12, v0

    :goto_1
    if-ge v12, v11, :cond_1

    invoke-virtual {v10, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v13, v0

    invoke-virtual {v10, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v0

    move v15, v0

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, v15, :cond_0

    invoke-virtual {v14, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v0

    const/4 v0, 0x0

    move-object/from16 v17, v5

    move-object/from16 v5, v16

    :try_start_1
    invoke-virtual {v4, v5, v0, v9}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    new-instance v16, Landroid/os/StatsLogEventWrapper;

    const/16 v19, 0x2741

    move-object/from16 v18, v16

    move-wide/from16 v20, p1

    move-wide/from16 v22, p3

    invoke-direct/range {v18 .. v23}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    move-object/from16 v18, v16

    move-object/from16 v16, v4

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    invoke-virtual {v0, v5}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v4, p5

    :try_start_3
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object/from16 v4, p5

    goto :goto_3

    :catch_0
    move-exception v0

    move-object/from16 v16, v4

    move-object/from16 v4, p5

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    nop

    const-string v0, "StatsCompanionService"

    move/from16 v19, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Role holder "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not found"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    move/from16 v19, v1

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_1

    :cond_1
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_0

    :cond_2
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_1
    move-exception v0

    :goto_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private pullSystemElapsedRealtime(IJJLjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    new-instance v6, Landroid/os/StatsLogEventWrapper;

    move-object v0, v6

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-interface {p6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private pullSystemIonHeapSize(IJJLjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/am/MemoryStatUtil;->readSystemIonHeapSizeFromDebugfs()J

    move-result-wide v0

    new-instance v8, Landroid/os/StatsLogEventWrapper;

    move-object v2, v8

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v2 .. v7}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    invoke-virtual {v2, v0, v1}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-interface {p6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private pullSystemUpTime(IJJLjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    new-instance v6, Landroid/os/StatsLogEventWrapper;

    move-object v0, v6

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-interface {p6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private pullTemperature(IJJLjava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    sget-object v0, Lcom/android/server/stats/StatsCompanionService;->sThermalService:Landroid/os/IThermalService;

    invoke-interface {v0}, Landroid/os/IThermalService;->getCurrentTemperatures()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Temperature;

    new-instance v11, Landroid/os/StatsLogEventWrapper;

    move-object v5, v11

    move v6, p1

    move-wide v7, p2

    move-wide/from16 v9, p4

    invoke-direct/range {v5 .. v10}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    move-object v5, v11

    invoke-virtual {v4}, Landroid/os/Temperature;->getType()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    invoke-virtual {v4}, Landroid/os/Temperature;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/os/Temperature;->getValue()F

    move-result v6

    const/high16 v7, 0x41200000    # 10.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    invoke-virtual {v4}, Landroid/os/Temperature;->getStatus()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v6, p6

    :try_start_1
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    nop

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object/from16 v6, p6

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object/from16 v6, p6

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v6, p6

    :goto_1
    :try_start_2
    const-string v3, "StatsCompanionService"

    const-string v4, "Disconnected from thermal service. Cannot pull temperatures."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    nop

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_1
    move-exception v0

    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private pullTimeZoneDataInfo(IJJLjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Unknown"

    :try_start_0
    invoke-static {}, Landroid/icu/util/TimeZone;->getTZDataVersion()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "StatsCompanionService"

    const-string v3, "Getting tzdb version failed: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    new-instance v7, Landroid/os/StatsLogEventWrapper;

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    invoke-virtual {v1, v0}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    invoke-interface {p6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private pullWifiActivityInfo(IJJLjava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    move-object v1, p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    monitor-enter p0

    :try_start_0
    iget-object v0, v1, Lcom/android/server/stats/StatsCompanionService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "wifi"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/stats/StatsCompanionService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v0, v1, Lcom/android/server/stats/StatsCompanionService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    if-eqz v0, :cond_1

    :try_start_1
    new-instance v0, Landroid/os/SynchronousResultReceiver;

    const-string/jumbo v4, "wifi"

    invoke-direct {v0, v4}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/stats/StatsCompanionService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v4, v0}, Landroid/net/wifi/IWifiManager;->requestActivityInfo(Landroid/os/ResultReceiver;)V

    invoke-static {v0}, Lcom/android/server/stats/StatsCompanionService;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiActivityEnergyInfo;

    new-instance v11, Landroid/os/StatsLogEventWrapper;

    move-object v5, v11

    move v6, p1

    move-wide v7, p2

    move-wide/from16 v9, p4

    invoke-direct/range {v5 .. v10}, Landroid/os/StatsLogEventWrapper;-><init>(IJJ)V

    move-object v5, v11

    invoke-virtual {v4}, Landroid/net/wifi/WifiActivityEnergyInfo;->getTimeStamp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v4}, Landroid/net/wifi/WifiActivityEnergyInfo;->getStackState()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    invoke-virtual {v4}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerTxTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v4}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerRxTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v4}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerIdleTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    invoke-virtual {v4}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerEnergyUsed()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v6, p6

    :try_start_2
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    nop

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v6, p6

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v6, p6

    :goto_0
    :try_start_3
    const-string v4, "StatsCompanionService"

    const-string v5, "Pulling wifiManager for wifi controller activity energy info has error"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    nop

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_1
    move-object/from16 v6, p6

    :goto_3
    return-void

    :catchall_2
    move-exception v0

    move-object/from16 v6, p6

    :goto_4
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_4
.end method

.method private pullWifiBytesTransfer(IJJLjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    const-string v0, "StatsCompanionService"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    const-class v3, Landroid/os/BatteryStatsInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStatsInternal;

    invoke-virtual {v3}, Landroid/os/BatteryStatsInternal;->getWifiIfaces()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/stats/StatsCompanionService;->mNetworkStatsService:Landroid/net/INetworkStatsService;

    if-nez v5, :cond_1

    const-string v5, "NetworkStats Service is not available!"

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/android/server/stats/StatsCompanionService;->mNetworkStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v5, v4}, Landroid/net/INetworkStatsService;->getDetailedUidStats([Ljava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkStats;->groupedByUid()Landroid/net/NetworkStats;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {p0, p1, p6, v5, v6}, Lcom/android/server/stats/StatsCompanionService;->addNetworkStats(ILjava/util/List;Landroid/net/NetworkStats;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_3
    const-string v4, "Pulling netstats for wifi bytes has error"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private pullWifiBytesTransferByFgBg(IJJLjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    const-string v0, "StatsCompanionService"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    const-class v3, Landroid/os/BatteryStatsInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStatsInternal;

    invoke-virtual {v3}, Landroid/os/BatteryStatsInternal;->getWifiIfaces()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/stats/StatsCompanionService;->mNetworkStatsService:Landroid/net/INetworkStatsService;

    if-nez v5, :cond_1

    const-string v5, "NetworkStats Service is not available!"

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/android/server/stats/StatsCompanionService;->mNetworkStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v5, v4}, Landroid/net/INetworkStatsService;->getDetailedUidStats([Ljava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/stats/StatsCompanionService;->rollupNetworkStatsByFGBG(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, p1, p6, v5, v6}, Lcom/android/server/stats/StatsCompanionService;->addNetworkStats(ILjava/util/List;Landroid/net/NetworkStats;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_3
    const-string v4, "Pulling netstats for wifi bytes w/ fg/bg has error"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method static readFully(Ljava/io/InputStream;[I)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v2, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x4000

    :goto_0
    new-array v2, v2, [B

    :goto_1
    array-length v3, v2

    sub-int/2addr v3, v0

    invoke-virtual {p0, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, 0x0

    if-gez v3, :cond_1

    aput v0, p1, v4

    return-object v2

    :cond_1
    add-int/2addr v0, v3

    array-length v5, v2

    if-lt v0, v5, :cond_2

    add-int/lit16 v5, v0, 0x4000

    new-array v5, v5, [B

    invoke-static {v2, v4, v5, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v5

    :cond_2
    goto :goto_1
.end method

.method private readProcStatsHighWaterMark(I)J
    .locals 7

    const-string v0, "StatsCompanionService"

    const-wide/16 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mBaseDir:Ljava/io/File;

    new-instance v4, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$BNidAMcUS8SzzhAyVRAjvZQ7-Gc;

    invoke-direct {v4, p1}, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$BNidAMcUS8SzzhAyVRAjvZQ7-Gc;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_2

    array-length v4, v3

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    array-length v4, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Only 1 file expected for high water mark. Found "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v3

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "_"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :cond_2
    :goto_0
    return-wide v1

    :catch_0
    move-exception v3

    const-string v4, "Failed to parse file name."

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v3

    const-string v4, "Failed to get procstats high watermark file."

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_1
    return-wide v1
.end method

.method private rollupNetworkStatsByFGBG(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 7

    new-instance v0, Landroid/net/NetworkStats;

    invoke-virtual {p1}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v2, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, v1, Landroid/net/NetworkStats$Entry;->tag:I

    const/4 v2, -0x1

    iput v2, v1, Landroid/net/NetworkStats$Entry;->metered:I

    iput v2, v1, Landroid/net/NetworkStats$Entry;->roaming:I

    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    move-result v2

    new-instance v3, Landroid/net/NetworkStats$Entry;

    invoke-direct {v3}, Landroid/net/NetworkStats$Entry;-><init>()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    invoke-virtual {p1, v4, v3}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    iget v5, v3, Landroid/net/NetworkStats$Entry;->tag:I

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    iget v5, v3, Landroid/net/NetworkStats$Entry;->set:I

    iput v5, v1, Landroid/net/NetworkStats$Entry;->set:I

    iget v5, v3, Landroid/net/NetworkStats$Entry;->uid:I

    iput v5, v1, Landroid/net/NetworkStats$Entry;->uid:I

    iget-wide v5, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iput-wide v5, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v5, v3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iput-wide v5, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v5, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    iput-wide v5, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v5, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    iput-wide v5, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private sayHiToStatsd()V
    .locals 10

    sget-object v0, Lcom/android/server/stats/StatsCompanionService;->sStatsdLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    if-eqz v1, :cond_0

    const-string v1, "StatsCompanionService"

    const-string v2, "Trying to fetch statsd, but it was already fetched"

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "sStatsd is not null when being fetched"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->fetchStatsdService()Landroid/os/IStatsManager;

    move-result-object v1

    sput-object v1, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    sget-object v1, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    if-nez v1, :cond_1

    const-string v1, "StatsCompanionService"

    const-string v2, "Could not yet find statsd to tell it that StatsCompanion is alive."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    :cond_1
    :try_start_1
    sget-object v1, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    invoke-interface {v1}, Landroid/os/IStatsManager;->statsCompanionReady()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v1, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    invoke-interface {v1}, Landroid/os/IStatsManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/stats/StatsCompanionService$StatsdDeathRecipient;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/stats/StatsCompanionService$StatsdDeathRecipient;-><init>(Lcom/android/server/stats/StatsCompanionService;Lcom/android/server/stats/StatsCompanionService$1;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "StatsCompanionService"

    const-string/jumbo v3, "linkToDeath(StatsdDeathRecipient) failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->forgetEverythingLocked()V

    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/stats/StatsCompanionService;->mAppUpdateReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_INITIALIZE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/stats/StatsCompanionService;->mUserUpdateReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, v1

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.REBOOT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/stats/StatsCompanionService;->mShutdownEventReceiver:Lcom/android/server/stats/StatsCompanionService$ShutdownEventReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, v1

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v4, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/android/server/stats/StatsCompanionService;->informAllUidsLocked(Landroid/content/Context;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {v2, v3}, Lcom/android/server/stats/StatsCompanionService;->restoreCallingIdentity(J)V

    nop

    const-string v4, "StatsCompanionService"

    const-string v5, "Told statsd that StatsCompanionService is alive."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/stats/StatsCompanionService;->restoreCallingIdentity(J)V

    throw v4
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_1
    move-exception v1

    :try_start_6
    const-string v2, "StatsCompanionService"

    const-string v3, "Failed to inform statsd that statscompanion is ready"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->forgetEverythingLocked()V

    :goto_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method private systemReady()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->sayHiToStatsd()V

    return-void
.end method

.method private static final toIntArray(Ljava/util/List;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static final toLongArray(Ljava/util/List;)[J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public cancelAlarmForSubscriberTriggering()V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mPeriodicAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public cancelAnomalyAlarm()V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mAnomalyAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public cancelPullingAlarm()V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mPullingAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-string v1, "StatsCompanionService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/stats/StatsCompanionService;->sStatsdLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of configuration files deleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mDeletedFiles:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mDeletedFiles:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "  timestamp, deleted file name"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mDeletedFiles:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v5, v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/stats/StatsCompanionService;->mDeletedFiles:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pullData(I)[Landroid/os/StatsLogEventWrapper;
    .locals 13

    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v9

    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v11, v1, v3

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such tagId data as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StatsCompanionService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :pswitch_1
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullProcessSystemIonHeapSize(IJJLjava/util/List;)V

    goto/16 :goto_0

    :pswitch_2
    move-object v1, p0

    move-wide v2, v9

    move-wide v4, v11

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullAppOps(JJLjava/util/List;)V

    goto/16 :goto_0

    :pswitch_3
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullCoolingDevices(IJJLjava/util/List;)V

    goto/16 :goto_0

    :pswitch_4
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullFaceSettings(IJJLjava/util/List;)V

    goto/16 :goto_0

    :pswitch_5
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullAppsOnExternalStorageInfo(IJJLjava/util/List;)V

    goto/16 :goto_0

    :pswitch_6
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullSystemIonHeapSize(IJJLjava/util/List;)V

    goto/16 :goto_0

    :pswitch_7
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullExternalStorageInfo(IJJLjava/util/List;)V

    goto/16 :goto_0

    :pswitch_8
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullTimeZoneDataInfo(IJJLjava/util/List;)V

    goto/16 :goto_0

    :pswitch_9
    move-object v1, p0

    move-wide v2, v9

    move-wide v4, v11

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullDangerousPermissionState(JJLjava/util/List;)V

    goto/16 :goto_0

    :pswitch_a
    move-object v1, p0

    move-wide v2, v9

    move-wide v4, v11

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/stats/StatsCompanionService;->pullRoleHolders(JJLjava/util/List;)V

    goto/16 :goto_0

    :pswitch_b
    const/4 v2, 0x4

    move-object v1, p0

    move v3, p1

    move-wide v4, v9

    move-wide v6, v11

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/stats/StatsCompanionService;->pullNumBiometricsEnrolled(IIJJLjava/util/List;)V

    goto/16 :goto_0

    :pswitch_c
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullDebugFailingElapsedClock(IJJLjava/util/List;)V

    goto/16 :goto_0

    :pswitch_d
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullDebugElapsedClock(IJJLjava/util/List;)V

    goto/16 :goto_0

    :pswitch_e
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullBuildInformation(IJJLjava/util/List;)V

    goto/16 :goto_0

    :pswitch_f
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullProcessMemoryHighWaterMark(IJJLjava/util/List;)V

    goto/16 :goto_0

    :pswitch_10
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullDeviceCalculatedPowerBlameOther(IJJLjava/util/List;)V

    goto/16 :goto_0

    :pswitch_11
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullDeviceCalculatedPowerBlameUid(IJJLjava/util/List;)V

    goto/16 :goto_0

    :pswitch_12
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullDeviceCalculatedPowerUse(IJJLjava/util/List;)V

    goto/16 :goto_0

    :pswitch_13
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullCpuTimePerThreadFreq(IJJLjava/util/List;)V

    goto/16 :goto_0

    :pswitch_14
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullNativeProcessMemoryState(IJJLjava/util/List;)V

    goto/16 :goto_0

    :pswitch_15
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullProcessCpuTime(IJJLjava/util/List;)V

    goto/16 :goto_0

    :pswitch_16
    const/4 v2, 0x2

    move-object v1, p0

    move v3, p1

    move-wide v4, v9

    move-wide v6, v11

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/stats/StatsCompanionService;->pullProcessStats(IIJJLjava/util/List;)V

    goto/16 :goto_0

    :pswitch_17
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullPowerProfile(IJJLjava/util/List;)V

    goto/16 :goto_0

    :pswitch_18
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullDiskIo(IJJLjava/util/List;)V

    goto/16 :goto_0

    :pswitch_19
    const/4 v2, 0x1

    move-object v1, p0

    move v3, p1

    move-wide v4, v9

    move-wide v6, v11

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/stats/StatsCompanionService;->pullNumBiometricsEnrolled(IIJJLjava/util/List;)V

    goto/16 :goto_0

    :pswitch_1a
    const/16 v2, 0xf

    move-object v1, p0

    move v3, p1

    move-wide v4, v9

    move-wide v6, v11

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/stats/StatsCompanionService;->pullProcessStats(IIJJLjava/util/List;)V

    goto/16 :goto_0

    :pswitch_1b
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullCategorySize(IJJLjava/util/List;)V

    goto/16 :goto_0

    :pswitch_1c
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullAppSize(IJJLjava/util/List;)V

    goto/16 :goto_0

    :pswitch_1d
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullDirectoryUsage(IJJLjava/util/List;)V

    goto/16 :goto_0

    :pswitch_1e
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullDiskStats(IJJLjava/util/List;)V

    goto/16 :goto_0

    :pswitch_1f
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullLooperStats(IJJLjava/util/List;)V

    goto/16 :goto_0

    :pswitch_20
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullBinderCallsStatsExceptions(IJJLjava/util/List;)V

    goto/16 :goto_0

    :pswitch_21
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullBinderCallsStats(IJJLjava/util/List;)V

    goto/16 :goto_0

    :pswitch_22
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullTemperature(IJJLjava/util/List;)V

    goto/16 :goto_0

    :pswitch_23
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullKernelUidCpuClusterTime(IJJLjava/util/List;)V

    goto/16 :goto_0

    :pswitch_24
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullKernelUidCpuActiveTime(IJJLjava/util/List;)V

    goto/16 :goto_0

    :pswitch_25
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullSystemUpTime(IJJLjava/util/List;)V

    goto/16 :goto_0

    :pswitch_26
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullSystemElapsedRealtime(IJJLjava/util/List;)V

    goto/16 :goto_0

    :pswitch_27
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullProcessMemoryState(IJJLjava/util/List;)V

    goto/16 :goto_0

    :pswitch_28
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullModemActivityInfo(IJJLjava/util/List;)V

    goto/16 :goto_0

    :pswitch_29
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullWifiActivityInfo(IJJLjava/util/List;)V

    goto/16 :goto_0

    :pswitch_2a
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullKernelUidCpuFreqTime(IJJLjava/util/List;)V

    goto/16 :goto_0

    :pswitch_2b
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullKernelUidCpuTime(IJJLjava/util/List;)V

    goto/16 :goto_0

    :pswitch_2c
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullCpuTimePerFreq(IJJLjava/util/List;)V

    goto/16 :goto_0

    :pswitch_2d
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullBluetoothActivityInfo(IJJLjava/util/List;)V

    goto :goto_0

    :pswitch_2e
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullBluetoothBytesTransfer(IJJLjava/util/List;)V

    goto :goto_0

    :pswitch_2f
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullKernelWakelock(IJJLjava/util/List;)V

    goto :goto_0

    :pswitch_30
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullMobileBytesTransferByFgBg(IJJLjava/util/List;)V

    goto :goto_0

    :pswitch_31
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullMobileBytesTransfer(IJJLjava/util/List;)V

    goto :goto_0

    :pswitch_32
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullWifiBytesTransferByFgBg(IJJLjava/util/List;)V

    goto :goto_0

    :pswitch_33
    move-object v1, p0

    move v2, p1

    move-wide v3, v9

    move-wide v5, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/stats/StatsCompanionService;->pullWifiBytesTransfer(IJJLjava/util/List;)V

    nop

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/StatsLogEventWrapper;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/StatsLogEventWrapper;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_0
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public sendActiveConfigsChangedBroadcast(Landroid/os/IBinder;[J)V
    .locals 7

    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    new-instance v0, Landroid/content/IntentSender;

    invoke-direct {v0, p1}, Landroid/content/IntentSender;-><init>(Landroid/os/IBinder;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object v6, v1

    const-string v1, "android.app.extra.STATS_ACTIVE_CONFIG_KEYS"

    invoke-virtual {v6, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "StatsCompanionService"

    const-string v3, "Unable to send active configs changed broadcast using IntentSender"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public sendDataBroadcast(Landroid/os/IBinder;J)V
    .locals 7

    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    new-instance v0, Landroid/content/IntentSender;

    invoke-direct {v0, p1}, Landroid/content/IntentSender;-><init>(Landroid/os/IBinder;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object v6, v1

    const-string v1, "android.app.extra.LAST_REPORT_TIME"

    invoke-virtual {v6, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "StatsCompanionService"

    const-string v3, "Unable to send using IntentSender"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public sendSubscriberBroadcast(Landroid/os/IBinder;JJJJ[Ljava/lang/String;Landroid/os/StatsDimensionsValue;)V
    .locals 20

    move-wide/from16 v1, p2

    move-object/from16 v3, p10

    invoke-direct/range {p0 .. p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    new-instance v4, Landroid/content/IntentSender;

    move-object/from16 v10, p1

    invoke-direct {v4, v10}, Landroid/content/IntentSender;-><init>(Landroid/os/IBinder;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v5, "android.app.extra.STATS_CONFIG_UID"

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v5, "android.app.extra.STATS_CONFIG_KEY"

    move-wide/from16 v11, p4

    invoke-virtual {v0, v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v5, "android.app.extra.STATS_SUBSCRIPTION_ID"

    move-wide/from16 v13, p6

    invoke-virtual {v0, v5, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v5, "android.app.extra.STATS_SUBSCRIPTION_RULE_ID"

    move-wide/from16 v8, p8

    invoke-virtual {v0, v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v5, "android.app.extra.STATS_DIMENSIONS_VALUE"

    move-object/from16 v15, p11

    invoke-virtual {v0, v5, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v7

    new-instance v0, Ljava/util/ArrayList;

    array-length v5, v3

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v6, v0

    array-length v0, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_0

    move/from16 v16, v0

    aget-object v0, v3, v5

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v16

    goto :goto_0

    :cond_0
    const-string v0, "android.app.extra.STATS_BROADCAST_SUBSCRIBER_COOKIES"

    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-object/from16 v5, p0

    :try_start_0
    iget-object v0, v5, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v5, v0

    move-object/from16 v19, v6

    move/from16 v6, v16

    move-object/from16 v16, v7

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    :try_start_1
    invoke-virtual/range {v4 .. v9}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v19, v6

    move-object/from16 v16, v7

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to send using IntentSender from uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "; presumably it had been cancelled."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "StatsCompanionService"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public setAlarmForSubscriberTriggering(J)V
    .locals 9

    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x3

    const-string v6, "StatsCompanionService.periodic"

    iget-object v7, p0, Lcom/android/server/stats/StatsCompanionService;->mPeriodicAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v8, p0, Lcom/android/server/stats/StatsCompanionService;->mHandler:Lcom/android/server/stats/StatsCompanionService$CompanionHandler;

    move-wide v4, p1

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setAnomalyAlarm(J)V
    .locals 9

    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x3

    const-string v6, "StatsCompanionService.anomaly"

    iget-object v7, p0, Lcom/android/server/stats/StatsCompanionService;->mAnomalyAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v8, p0, Lcom/android/server/stats/StatsCompanionService;->mHandler:Lcom/android/server/stats/StatsCompanionService$CompanionHandler;

    move-wide v4, p1

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setPullingAlarm(J)V
    .locals 9

    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x3

    const-string v6, "StatsCompanionService.pull"

    iget-object v7, p0, Lcom/android/server/stats/StatsCompanionService;->mPullingAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v8, p0, Lcom/android/server/stats/StatsCompanionService;->mHandler:Lcom/android/server/stats/StatsCompanionService$CompanionHandler;

    move-wide v4, p1

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public statsdReady()V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->sayHiToStatsd()V

    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.action.STATSD_STARTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public triggerUidSnapshot()V
    .locals 6

    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    sget-object v0, Lcom/android/server/stats/StatsCompanionService;->sStatsdLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/stats/StatsCompanionService;->informAllUidsLocked(Landroid/content/Context;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v2}, Lcom/android/server/stats/StatsCompanionService;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_3
    const-string v4, "StatsCompanionService"

    const-string v5, "Failed to trigger uid snapshot."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    :try_start_4
    invoke-static {v1, v2}, Lcom/android/server/stats/StatsCompanionService;->restoreCallingIdentity(J)V

    goto :goto_0

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    invoke-static {v1, v2}, Lcom/android/server/stats/StatsCompanionService;->restoreCallingIdentity(J)V

    throw v3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
