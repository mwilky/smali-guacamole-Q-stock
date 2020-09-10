.class public Lcom/android/server/location/GnssLocationProvider;
.super Lcom/android/server/location/AbstractLocationProvider;
.source "GnssLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/NtpTimeHelper$InjectNtpTimeCallback;
.implements Lcom/android/server/location/GnssSatelliteBlacklistHelper$GnssSatelliteBlacklistCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GnssLocationProvider$FusedLocationListener;,
        Lcom/android/server/location/GnssLocationProvider$NetworkLocationListener;,
        Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;,
        Lcom/android/server/location/GnssLocationProvider$ProviderHandler;,
        Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;,
        Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;,
        Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;,
        Lcom/android/server/location/GnssLocationProvider$LocationExtras;,
        Lcom/android/server/location/GnssLocationProvider$GpsRequest;,
        Lcom/android/server/location/GnssLocationProvider$NativeEntryPoint;
    }
.end annotation


# static fields
.field private static final AGPS_REF_LOCATION_TYPE_GSM_CELLID:I = 0x1

.field private static final AGPS_REF_LOCATION_TYPE_UMTS_CELLID:I = 0x2

.field private static final AGPS_RIL_REQUEST_SETID_IMSI:I = 0x1

.field private static final AGPS_RIL_REQUEST_SETID_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_IMSI:I = 0x1

.field private static final AGPS_SETID_TYPE_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_NONE:I = 0x0

.field private static final AGPS_SUPL_MODE_MSA:I = 0x2

.field private static final AGPS_SUPL_MODE_MSB:I = 0x1

.field private static final ALARM_TIMEOUT:Ljava/lang/String; = "com.android.internal.location.ALARM_TIMEOUT"

.field private static final ALARM_WAKEUP:Ljava/lang/String; = "com.android.internal.location.ALARM_WAKEUP"

.field private static D:Z = false

.field private static final DEBUG:Z

.field private static final DOWNLOAD_EXTRA_WAKELOCK_KEY:Ljava/lang/String; = "GnssLocationProviderPsdsDownload"

.field private static final DOWNLOAD_PSDS_DATA:I = 0x6

.field private static final DOWNLOAD_PSDS_DATA_FINISHED:I = 0xb

.field private static final DOWNLOAD_PSDS_DATA_TIMEOUT_MS:J = 0xea60L

.field private static final ELAPSED_REALTIME_HAS_TIMESTAMP_NS:I = 0x1

.field private static final ELAPSED_REALTIME_HAS_TIME_UNCERTAINTY_NS:I = 0x2

.field private static final EMERGENCY_LOCATION_UPDATE_DURATION_MULTIPLIER:I = 0x3

.field public static final GPS_CAPABILITY_GEOFENCING:I = 0x20

.field public static final GPS_CAPABILITY_LOW_POWER_MODE:I = 0x100

.field public static final GPS_CAPABILITY_MEASUREMENTS:I = 0x40

.field public static final GPS_CAPABILITY_MEASUREMENT_CORRECTIONS:I = 0x400

.field private static final GPS_CAPABILITY_MSA:I = 0x4

.field private static final GPS_CAPABILITY_MSB:I = 0x2

.field public static final GPS_CAPABILITY_NAV_MESSAGES:I = 0x80

.field private static final GPS_CAPABILITY_ON_DEMAND_TIME:I = 0x10

.field public static final GPS_CAPABILITY_SATELLITE_BLACKLIST:I = 0x200

.field private static final GPS_CAPABILITY_SCHEDULING:I = 0x1

.field private static final GPS_CAPABILITY_SINGLE_SHOT:I = 0x8

.field private static final GPS_DELETE_ALL:I = 0xffff

.field private static final GPS_DELETE_ALMANAC:I = 0x2

.field private static final GPS_DELETE_CELLDB_INFO:I = 0x8000

.field private static final GPS_DELETE_EPHEMERIS:I = 0x1

.field private static final GPS_DELETE_HEALTH:I = 0x40

.field private static final GPS_DELETE_IONO:I = 0x10

.field private static final GPS_DELETE_POSITION:I = 0x4

.field private static final GPS_DELETE_RTI:I = 0x400

.field private static final GPS_DELETE_SADATA:I = 0x200

.field private static final GPS_DELETE_SVDIR:I = 0x80

.field private static final GPS_DELETE_SVSTEER:I = 0x100

.field private static final GPS_DELETE_TIME:I = 0x8

.field private static final GPS_DELETE_UTC:I = 0x20

.field private static final GPS_GEOFENCE_AVAILABLE:I = 0x2

.field private static final GPS_GEOFENCE_ERROR_GENERIC:I = -0x95

.field private static final GPS_GEOFENCE_ERROR_ID_EXISTS:I = -0x65

.field private static final GPS_GEOFENCE_ERROR_ID_UNKNOWN:I = -0x66

.field private static final GPS_GEOFENCE_ERROR_INVALID_TRANSITION:I = -0x67

.field private static final GPS_GEOFENCE_ERROR_TOO_MANY_GEOFENCES:I = 0x64

.field private static final GPS_GEOFENCE_OPERATION_SUCCESS:I = 0x0

.field private static final GPS_GEOFENCE_UNAVAILABLE:I = 0x1

.field private static final GPS_POLLING_THRESHOLD_INTERVAL:I = 0x2710

.field private static final GPS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field private static final GPS_POSITION_MODE_MS_BASED:I = 0x1

.field private static final GPS_POSITION_MODE_STANDALONE:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_PERIODIC:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_SINGLE:I = 0x1

.field private static final GPS_STATUS_ENGINE_OFF:I = 0x4

.field private static final GPS_STATUS_ENGINE_ON:I = 0x3

.field private static final GPS_STATUS_NONE:I = 0x0

.field private static final GPS_STATUS_SESSION_BEGIN:I = 0x1

.field private static final GPS_STATUS_SESSION_END:I = 0x2

.field private static final INITIALIZE_HANDLER:I = 0xd

.field private static final INJECT_NTP_TIME:I = 0x5

.field private static final ITAR_SPEED_LIMIT_METERS_PER_SECOND:F = 400.0f

.field private static final LOCATION_HAS_ALTITUDE:I = 0x2

.field private static final LOCATION_HAS_BEARING:I = 0x8

.field private static final LOCATION_HAS_BEARING_ACCURACY:I = 0x80

.field private static final LOCATION_HAS_HORIZONTAL_ACCURACY:I = 0x10

.field private static final LOCATION_HAS_LAT_LONG:I = 0x1

.field private static final LOCATION_HAS_SPEED:I = 0x4

.field private static final LOCATION_HAS_SPEED_ACCURACY:I = 0x40

.field private static final LOCATION_HAS_VERTICAL_ACCURACY:I = 0x20

.field private static final LOCATION_INVALID:I = 0x0

.field private static final LOCATION_OFF_DELAY_THRESHOLD_ERROR_MILLIS:J = 0x3a98L

.field private static final LOCATION_OFF_DELAY_THRESHOLD_WARN_MILLIS:J = 0x7d0L

.field private static final LOCATION_UPDATE_DURATION_MILLIS:J = 0x2710L

.field private static final LOCATION_UPDATE_MIN_TIME_INTERVAL_MILLIS:J = 0x3e8L

.field private static final MAX_RETRY_INTERVAL:J = 0xdbba00L

.field private static final NO_FIX_TIMEOUT:I = 0xea60

.field private static final PROPERTIES:Lcom/android/internal/location/ProviderProperties;

.field private static final RECENT_FIX_TIMEOUT:J = 0x2710L

.field private static final REPORT_LOCATION:I = 0x11

.field private static final REPORT_SV_STATUS:I = 0x12

.field private static final REQUEST_LOCATION:I = 0x10

.field private static final RETRY_INTERVAL:J = 0x493e0L

.field private static final SET_REQUEST:I = 0x3

.field private static final STATE_DOWNLOADING:I = 0x1

.field private static final STATE_IDLE:I = 0x2

.field private static final STATE_PENDING_NETWORK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GnssLocationProvider"

.field private static final TCP_MAX_PORT:I = 0xffff

.field private static final TCP_MIN_PORT:I = 0x0

.field private static final UPDATE_LOCATION:I = 0x7

.field private static final VERBOSE:Z

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "GnssLocationProvider"


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mC2KServerHost:Ljava/lang/String;

.field private mC2KServerPort:I

.field private mClientSource:Landroid/os/WorkSource;

.field private mDisableGpsForPowerManager:Z

.field private mDownloadPsdsDataPending:I

.field private final mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mFixInterval:I

.field private mFixRequestTime:J

.field private final mFusedLocationListener:Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;

.field private mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

.field private mGlpInjector:Lcom/android/server/glp/GlpInjector;

.field private final mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

.field private final mGnssCapabilitiesProvider:Lcom/android/server/location/GnssCapabilitiesProvider;

.field private mGnssConfiguration:Lcom/android/server/location/GnssConfiguration;

.field private final mGnssGeofenceProvider:Lcom/android/server/location/GnssGeofenceProvider;

.field private final mGnssMeasurementCorrectionsProvider:Lcom/android/server/location/GnssMeasurementCorrectionsProvider;

.field private final mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

.field private mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

.field private final mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

.field private final mGnssStatusListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

.field private mGnssVisibilityControl:Lcom/android/server/location/GnssVisibilityControl;

.field private mGpsEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private volatile mHardwareModelName:Ljava/lang/String;

.field private volatile mHardwareYear:I

.field private volatile mItarSpeedLimitExceeded:Z

.field private mLastFixTime:J

.field private mLastPositionMode:Lcom/android/server/location/GnssPositionMode;

.field private final mLocationExtras:Lcom/android/server/location/GnssLocationProvider$LocationExtras;

.field private final mLock:Ljava/lang/Object;

.field private final mLooper:Landroid/os/Looper;

.field private mLowPowerMode:Z

.field private final mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

.field private mNavigating:Z

.field private final mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private final mNetworkConnectivityHandler:Lcom/android/server/location/GnssNetworkConnectivityHandler;

.field private final mNetworkLocationListener:Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;

.field private mNmeaBuffer:[B

.field private final mNtpTimeHelper:Lcom/android/server/location/NtpTimeHelper;

.field private mPositionMode:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mProviderRequest:Lcom/android/internal/location/ProviderRequest;

.field private final mPsdsBackOff:Lcom/android/server/location/ExponentialBackOff;

.field private mShutdown:Z

.field private mStarted:Z

.field private mStartedChangedElapsedRealtime:J

.field private mStatus:I

.field private mStatusUpdateTime:J

.field private mSuplEsEnabled:Z

.field private mSuplServerHost:Ljava/lang/String;

.field private mSuplServerPort:I

.field private mSupportsPsds:Z

.field private mTimeToFirstFix:I

.field private final mTimeoutIntent:Landroid/app/PendingIntent;

.field private volatile mTopHalCapabilities:I

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakeupIntent:Landroid/app/PendingIntent;

.field private mWorkSource:Landroid/os/WorkSource;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v0, 0x3

    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GnssLocationProvider;->D:Z

    const/4 v0, 0x2

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GnssLocationProvider;->VERBOSE:Z

    new-instance v0, Lcom/android/internal/location/ProviderProperties;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x3

    const/4 v10, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    sput-object v0, Lcom/android/server/location/GnssLocationProvider;->PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->class_init_native()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;Landroid/os/Looper;)V
    .locals 9

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/AbstractLocationProvider;-><init>(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/location/GnssLocationProvider;->mStatusUpdateTime:J

    new-instance v1, Lcom/android/server/location/ExponentialBackOff;

    const-wide/32 v2, 0x493e0

    const-wide/32 v4, 0xdbba00

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/location/ExponentialBackOff;-><init>(JJ)V

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mPsdsBackOff:Lcom/android/server/location/ExponentialBackOff;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadPsdsDataPending:I

    const/16 v2, 0x3e8

    iput v2, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mLowPowerMode:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/location/GnssLocationProvider;->mFixRequestTime:J

    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGpsForPowerManager:Z

    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I

    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplEsEnabled:Z

    new-instance v3, Lcom/android/server/location/GnssLocationProvider$LocationExtras;

    invoke-direct {v3}, Lcom/android/server/location/GnssLocationProvider$LocationExtras;-><init>()V

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/GnssLocationProvider$LocationExtras;

    new-instance v3, Lcom/android/server/location/GnssLocationProvider$NetworkLocationListener;

    invoke-direct {v3, p0, v2}, Lcom/android/server/location/GnssLocationProvider$NetworkLocationListener;-><init>(Lcom/android/server/location/GnssLocationProvider;Lcom/android/server/location/GnssLocationProvider$1;)V

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mNetworkLocationListener:Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;

    new-instance v3, Lcom/android/server/location/GnssLocationProvider$FusedLocationListener;

    invoke-direct {v3, p0, v2}, Lcom/android/server/location/GnssLocationProvider$FusedLocationListener;-><init>(Lcom/android/server/location/GnssLocationProvider;Lcom/android/server/location/GnssLocationProvider$1;)V

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mFusedLocationListener:Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;

    new-instance v3, Landroid/os/WorkSource;

    invoke-direct {v3}, Landroid/os/WorkSource;-><init>()V

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mHardwareYear:I

    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    new-instance v3, Lcom/android/server/location/GnssLocationProvider$1;

    invoke-direct {v3, p0}, Lcom/android/server/location/GnssLocationProvider$1;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Lcom/android/server/location/GnssLocationProvider$8;

    invoke-direct {v3, p0}, Lcom/android/server/location/GnssLocationProvider$8;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    const/16 v3, 0x78

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mNmeaBuffer:[B

    iput-object p3, p0, Lcom/android/server/location/GnssLocationProvider;->mLooper:Landroid/os/Looper;

    new-instance v3, Lcom/android/server/glp/GlpInjector;

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/glp/GlpInjector;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mGlpInjector:Lcom/android/server/glp/GlpInjector;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    const-string v4, "GnssLocationProvider"

    invoke-virtual {v3, v0, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    const-string v4, "GnssLocationProviderPsdsDownload"

    invoke-virtual {v3, v0, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.internal.location.ALARM_WAKEUP"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v1, v4, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v1, v4, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    new-instance v3, Lcom/android/server/location/GnssNetworkConnectivityHandler;

    new-instance v4, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$Q6M8z_ZBiD7BNs3kvNmVrqoHSng;

    invoke-direct {v4, p0}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$Q6M8z_ZBiD7BNs3kvNmVrqoHSng;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    invoke-direct {v3, p1, v4, p3}, Lcom/android/server/location/GnssNetworkConnectivityHandler;-><init>(Landroid/content/Context;Lcom/android/server/location/GnssNetworkConnectivityHandler$GnssNetworkListener;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/GnssNetworkConnectivityHandler;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    const-string v3, "batterystats"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    new-instance v3, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;

    invoke-direct {v3, p0, p3}, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/location/GnssConfiguration;

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/location/GnssConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/GnssConfiguration;

    new-instance v3, Lcom/android/server/location/GnssCapabilitiesProvider;

    invoke-direct {v3}, Lcom/android/server/location/GnssCapabilitiesProvider;-><init>()V

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssCapabilitiesProvider:Lcom/android/server/location/GnssCapabilitiesProvider;

    new-instance v3, Lcom/android/internal/location/GpsNetInitiatedHandler;

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    iget-boolean v5, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplEsEnabled:Z

    invoke-direct {v3, p1, v4, v5}, Lcom/android/internal/location/GpsNetInitiatedHandler;-><init>(Landroid/content/Context;Landroid/location/INetInitiatedListener;Z)V

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    const/16 v3, 0xd

    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    new-instance v1, Lcom/android/server/location/GnssLocationProvider$2;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/location/GnssLocationProvider$2;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssStatusListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    new-instance v1, Lcom/android/server/location/GnssLocationProvider$3;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/location/GnssLocationProvider$3;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    new-instance v1, Lcom/android/server/location/GnssMeasurementCorrectionsProvider;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Lcom/android/server/location/GnssMeasurementCorrectionsProvider;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementCorrectionsProvider:Lcom/android/server/location/GnssMeasurementCorrectionsProvider;

    new-instance v1, Lcom/android/server/location/GnssLocationProvider$4;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/location/GnssLocationProvider$4;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    new-instance v1, Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-direct {v1, v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;-><init>(Lcom/android/internal/app/IBatteryStats;)V

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    new-instance v1, Lcom/android/server/location/NtpTimeHelper;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p3, p0}, Lcom/android/server/location/NtpTimeHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/NtpTimeHelper$InjectNtpTimeCallback;)V

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mNtpTimeHelper:Lcom/android/server/location/NtpTimeHelper;

    new-instance v1, Lcom/android/server/location/GnssSatelliteBlacklistHelper;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p3, p0}, Lcom/android/server/location/GnssSatelliteBlacklistHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/GnssSatelliteBlacklistHelper$GnssSatelliteBlacklistCallback;)V

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/location/-$$Lambda$5U-_NhZgxqnYDZhpyacq4qBxh8k;

    invoke-direct {v3, v1}, Lcom/android/server/location/-$$Lambda$5U-_NhZgxqnYDZhpyacq4qBxh8k;-><init>(Lcom/android/server/location/GnssSatelliteBlacklistHelper;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v2, Lcom/android/server/location/GnssBatchingProvider;

    invoke-direct {v2}, Lcom/android/server/location/GnssBatchingProvider;-><init>()V

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    new-instance v2, Lcom/android/server/location/GnssGeofenceProvider;

    invoke-direct {v2}, Lcom/android/server/location/GnssGeofenceProvider;-><init>()V

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssGeofenceProvider:Lcom/android/server/location/GnssGeofenceProvider;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/location/GnssLocationProvider$5;

    invoke-direct {v4, p0}, Lcom/android/server/location/GnssLocationProvider$5;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v6, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "location_mode"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Lcom/android/server/location/GnssLocationProvider$6;

    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/android/server/location/GnssLocationProvider$6;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/os/Handler;)V

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    sget-object v2, Lcom/android/server/location/GnssLocationProvider;->PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    invoke-virtual {p0, v2}, Lcom/android/server/location/GnssLocationProvider;->setProperties(Lcom/android/internal/location/ProviderProperties;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->setEnabled(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/location/GnssLocationProvider;)I
    .locals 1

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHardwareYear:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/location/GnssLocationProvider;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHardwareModelName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/location/GnssLocationProvider;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->native_send_ni_response(II)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/location/GnssLocationProvider;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplEsEnabled:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/location/GnssLocationProvider;Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->handleSetRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/NtpTimeHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNtpTimeHelper:Lcom/android/server/location/NtpTimeHelper;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/location/GnssLocationProvider;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->handleRequestLocation(ZZ)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->handleDownloadPsdsData()V

    return-void
.end method

.method static synthetic access$2602(Lcom/android/server/location/GnssLocationProvider;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadPsdsDataPending:I

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/location/GnssLocationProvider;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->handleUpdateLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/location/GnssLocationProvider;ZLandroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->handleReportLocation(ZLandroid/location/Location;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/location/GnssLocationProvider;Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->handleReportSvStatus(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->startNavigating()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/location/GnssLocationProvider;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->messageIdAsString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/location/GnssLocationProvider;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->setupNativeGnssService(Z)V

    return-void
.end method

.method static synthetic access$3300()Z
    .locals 1

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_is_gnss_visibility_control_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3402(Lcom/android/server/location/GnssLocationProvider;Lcom/android/server/location/GnssVisibilityControl;)Lcom/android/server/location/GnssVisibilityControl;
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/GnssVisibilityControl;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/internal/location/GpsNetInitiatedHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->reloadGpsProperties()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssNetworkConnectivityHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/GnssNetworkConnectivityHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->hibernate()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/location/GnssLocationProvider;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->injectBestLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateLowPowerMode()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->subscriptionOrCarrierConfigChanged(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/location/GnssLocationProvider;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->isGpsEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/location/GnssLocationProvider;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/location/GnssLocationProvider;->mShutdown:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateEnabled()V

    return-void
.end method

.method private static native class_init_native()V
.end method

.method private deleteAidingData(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    const v0, 0xffff

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "ephemeris"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    const-string v1, "almanac"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x2

    :cond_2
    const-string/jumbo v1, "position"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x4

    :cond_3
    const-string/jumbo v1, "time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x8

    :cond_4
    const-string v1, "iono"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x10

    :cond_5
    const-string/jumbo v1, "utc"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    or-int/lit8 v0, v0, 0x20

    :cond_6
    const-string v1, "health"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    or-int/lit8 v0, v0, 0x40

    :cond_7
    const-string/jumbo v1, "svdir"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    or-int/lit16 v0, v0, 0x80

    :cond_8
    const-string/jumbo v1, "svsteer"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    or-int/lit16 v0, v0, 0x100

    :cond_9
    const-string/jumbo v1, "sadata"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    or-int/lit16 v0, v0, 0x200

    :cond_a
    const-string/jumbo v1, "rti"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    or-int/lit16 v0, v0, 0x400

    :cond_b
    const-string v1, "celldb-info"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const v1, 0x8000

    or-int/2addr v0, v1

    :cond_c
    const-string v1, "all"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const v1, 0xffff

    or-int/2addr v0, v1

    :cond_d
    :goto_0
    if-eqz v0, :cond_e

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->native_delete_aiding_data(I)V

    :cond_e
    return-void
.end method

.method private final getDumpsys()Ljava/lang/StringBuilder;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mStarted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "  mFixInterval="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "  mLowPowerMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mLowPowerMode:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "  mGnssMeasurementsProvider.isRegistered()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    invoke-virtual {v2}, Lcom/android/server/location/GnssMeasurementsProvider;->isRegistered()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "  mGnssNavigationMessageProvider.isRegistered()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    invoke-virtual {v2}, Lcom/android/server/location/GnssNavigationMessageProvider;->isRegistered()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, " ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SCHEDULING "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "MSB "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "MSA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "SINGLE_SHOT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "ON_DEMAND_TIME "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "GEOFENCING "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const/16 v1, 0x40

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "MEASUREMENTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const/16 v1, 0x80

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "NAV_MESSAGES "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v1, ")\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->dumpGnssMetricsAsText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method private static getGeofenceStatus(I)I
    .locals 1

    const/16 v0, -0x95

    if-eq p0, v0, :cond_2

    if-eqz p0, :cond_1

    const/16 v0, 0x64

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 v0, -0x1

    return v0

    :pswitch_0
    const/4 v0, 0x2

    return v0

    :pswitch_1
    const/4 v0, 0x3

    return v0

    :pswitch_2
    const/4 v0, 0x4

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    const/4 v0, 0x5

    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x67
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSuplMode(Z)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/GnssConfiguration;

    invoke-virtual {v1, v0}, Lcom/android/server/location/GnssConfiguration;->getSuplMode(I)I

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_1

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v0
.end method

.method private handleDisable()V
    .locals 3

    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GnssLocationProvider"

    const-string v1, "handleDisable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->setGpsEnabled(Z)V

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->stopNavigating()V

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/GnssVisibilityControl;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/android/server/location/GnssVisibilityControl;->onGpsEnabledChanged(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssBatchingProvider;->disable()V

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_cleanup()V

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssMeasurementsProvider;->onGpsEnabledChanged()V

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssNavigationMessageProvider;->onGpsEnabledChanged()V

    return-void
.end method

.method private handleDownloadPsdsData()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSupportsPsds:Z

    if-nez v0, :cond_0

    const-string v0, "GnssLocationProvider"

    const-string v1, "handleDownloadPsdsData() called when PSDS not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadPsdsDataPending:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/GnssNetworkConnectivityHandler;

    invoke-virtual {v0}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->isDataNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadPsdsDataPending:I

    return-void

    :cond_2
    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadPsdsDataPending:I

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "GnssLocationProvider"

    const-string v1, "WakeLock acquired by handleDownloadPsdsData()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$psQkGhDUF5E1xdXdW4u299tSPsA;

    invoke-direct {v1, p0}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$psQkGhDUF5E1xdXdW4u299tSPsA;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleEnable()V
    .locals 5

    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    const-string v1, "GnssLocationProvider"

    if-eqz v0, :cond_0

    const-string v0, "handleEnable"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_init()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->setGpsEnabled(Z)V

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_supports_psds()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mSupportsPsds:Z

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget v3, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/location/GnssLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    :cond_1
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerHost:Ljava/lang/String;

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    iget v4, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerPort:I

    invoke-direct {p0, v3, v2, v4}, Lcom/android/server/location/GnssLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    :cond_2
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    invoke-virtual {v2}, Lcom/android/server/location/GnssMeasurementsProvider;->onGpsEnabledChanged()V

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    invoke-virtual {v2}, Lcom/android/server/location/GnssNavigationMessageProvider;->onGpsEnabledChanged()V

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    invoke-virtual {v2}, Lcom/android/server/location/GnssBatchingProvider;->enable()V

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/GnssVisibilityControl;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v1}, Lcom/android/server/location/GnssVisibilityControl;->onGpsEnabledChanged(Z)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/location/GnssLocationProvider;->setGpsEnabled(Z)V

    const-string v2, "Failed to enable location provider"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method private handleReportLocation(ZLandroid/location/Location;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGlpInjector:Lcom/android/server/glp/GlpInjector;

    invoke-virtual {v0}, Lcom/android/server/glp/GlpInjector;->updateGnssDetectionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGlpInjector:Lcom/android/server/glp/GlpInjector;

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->getDumpsys()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/glp/GlpInjector;->sendMdmreport(Ljava/lang/StringBuilder;)V

    :cond_0
    invoke-virtual {p2}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/location/Location;->getSpeed()F

    move-result v0

    const/high16 v3, 0x43c80000    # 400.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    const-string v3, "GnssLocationProvider"

    if-eqz v0, :cond_4

    const-string v0, "Hal reported a speed in excess of ITAR limit.  GPS/GNSS Navigation output blocked."

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {v0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logReceivedLocationStatus(Z)V

    :cond_3
    return-void

    :cond_4
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->VERBOSE:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reportLocation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/GnssLocationProvider$LocationExtras;

    invoke-virtual {v0}, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    invoke-virtual {p0, p2}, Lcom/android/server/location/GnssLocationProvider;->reportLocation(Landroid/location/Location;)V

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {v0, p1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logReceivedLocationStatus(Z)V

    if-eqz p1, :cond_9

    invoke-virtual {p2}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logPositionAccuracyMeters(F)V

    :cond_6
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    if-lez v0, :cond_9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    sub-long/2addr v0, v4

    long-to-int v0, v0

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    iget v4, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    invoke-virtual {v1, v4, v0}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logMissedReports(II)V

    goto :goto_1

    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/server/location/GnssLocationProvider;->mStartedChangedElapsedRealtime:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x7d0

    cmp-long v4, v0, v4

    if-lez v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected GNSS Location report "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " after location turned off"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x3a98

    cmp-long v5, v0, v5

    if-lez v5, :cond_8

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    if-nez v0, :cond_c

    if-eqz p1, :cond_c

    iget-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    iget-wide v4, p0, Lcom/android/server/location/GnssLocationProvider;->mFixRequestTime:J

    sub-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TTFF: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    invoke-virtual {v0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logTimeToFirstFixMilliSecs(I)V

    :cond_b
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssStatusListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    invoke-virtual {v0, v1}, Lcom/android/server/location/GnssStatusListenerHelper;->onFirstFix(I)V

    :cond_c
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    invoke-direct {p0, v2}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_d

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    const v4, 0xea60

    if-ge v0, v4, :cond_d

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_d
    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->updateStatus(I)V

    :cond_e
    invoke-direct {p0, v2}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    const/16 v1, 0x2710

    if-le v0, v1, :cond_10

    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_f

    const-string v0, "got fix, hibernating"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->hibernate()V

    :cond_10
    return-void
.end method

.method private handleReportSvStatus(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssStatusListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1200(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)I

    move-result v1

    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1300(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[I

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1400(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v3

    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1500(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v4

    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1600(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v5

    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1700(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/location/GnssStatusListenerHelper;->onSvStatusChanged(I[I[F[F[F[F)V

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1400(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1200(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logCn0([FI)V

    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->VERBOSE:Z

    const-string v1, "GnssLocationProvider"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SV count: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1200(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1200(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge v4, v5, :cond_9

    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1300(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[I

    move-result-object v5

    aget v5, v5, v4

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_2

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1400(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v5

    aget v5, v5, v4

    int-to-float v8, v2

    cmpl-float v5, v5, v8

    if-lez v5, :cond_1

    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1400(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v5

    aget v5, v5, v4

    float-to-int v2, v5

    :cond_1
    int-to-float v5, v3

    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1400(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v8

    aget v8, v8, v4

    add-float/2addr v5, v8

    float-to-int v3, v5

    :cond_2
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mGlpInjector:Lcom/android/server/glp/GlpInjector;

    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1400(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v8

    aget v8, v8, v4

    invoke-virtual {v5, v8}, Lcom/android/server/glp/GlpInjector;->cn0Compare(F)V

    sget-boolean v5, Lcom/android/server/location/GnssLocationProvider;->VERBOSE:Z

    if-eqz v5, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "svid: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1300(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[I

    move-result-object v8

    aget v8, v8, v4

    shr-int/lit8 v8, v8, 0x8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " cn0: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1400(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v8

    aget v8, v8, v4

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " elev: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1500(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v8

    aget v8, v8, v4

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " azimuth: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1600(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v8

    aget v8, v8, v4

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " carrier frequency: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1700(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v8

    aget v8, v8, v4

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1300(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[I

    move-result-object v8

    aget v8, v8, v4

    and-int/2addr v7, v8

    const-string v8, "  "

    if-nez v7, :cond_3

    move-object v7, v8

    goto :goto_1

    :cond_3
    const-string v7, " E"

    :goto_1
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1300(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[I

    move-result-object v7

    aget v7, v7, v4

    and-int/2addr v6, v7

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    const-string v8, " A"

    :goto_2
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1300(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[I

    move-result-object v6

    aget v6, v6, v4

    and-int/lit8 v6, v6, 0x4

    const-string v7, ""

    if-nez v6, :cond_5

    move-object v6, v7

    goto :goto_3

    :cond_5
    const-string v6, "U"

    :goto_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1300(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[I

    move-result-object v6

    aget v6, v6, v4

    and-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_6

    goto :goto_4

    :cond_6
    const-string v7, "F"

    :goto_4
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1300(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[I

    move-result-object v5

    aget v5, v5, v4

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_8

    nop

    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1300(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[I

    move-result-object v5

    aget v5, v5, v4

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {v6, v5}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logConstellationType(I)V

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_9
    if-lez v0, :cond_a

    div-int/2addr v3, v0

    :cond_a
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGlpInjector:Lcom/android/server/glp/GlpInjector;

    invoke-virtual {v1}, Lcom/android/server/glp/GlpInjector;->ifnotimeout()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGlpInjector:Lcom/android/server/glp/GlpInjector;

    invoke-virtual {v1}, Lcom/android/server/glp/GlpInjector;->updateGnssDetectionStatus()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGlpInjector:Lcom/android/server/glp/GlpInjector;

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->getDumpsys()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/glp/GlpInjector;->sendMdmreport(Ljava/lang/StringBuilder;)V

    :cond_b
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/GnssLocationProvider$LocationExtras;

    invoke-virtual {v1, v0, v3, v2}, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->set(III)V

    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    if-eqz v1, :cond_c

    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    if-ne v1, v6, :cond_c

    iget-wide v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-lez v1, :cond_c

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v8, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    sub-long/2addr v4, v8

    const-wide/16 v8, 0x2710

    cmp-long v1, v4, v8

    if-lez v1, :cond_c

    invoke-direct {p0, v7}, Lcom/android/server/location/GnssLocationProvider;->updateStatus(I)V

    :cond_c
    return-void
.end method

.method private handleRequestLocation(ZZ)V
    .locals 11

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->isRequestLocationRateLimited()Z

    move-result v0

    const-string v1, "GnssLocationProvider"

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "RequestLocation is denied due to too frequent requests."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGpsForPowerManager:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-wide/16 v2, 0x2710

    const-string v4, "gnss_hal_location_request_duration_millis"

    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_3

    const-string v4, "GNSS HAL location request is disabled by Settings."

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "location"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationManager;

    new-instance v5, Landroid/location/LocationRequest;

    invoke-direct {v5}, Landroid/location/LocationRequest;-><init>()V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v6, v7}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    move-result-object v5

    if-eqz p1, :cond_4

    const-string/jumbo v6, "network"

    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider;->mNetworkLocationListener:Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;

    const/16 v8, 0xc9

    invoke-virtual {v5, v8}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    goto :goto_0

    :cond_4
    const-string v6, "fused"

    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider;->mFusedLocationListener:Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;

    const/16 v8, 0x64

    invoke-virtual {v5, v8}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    :goto_0
    invoke-virtual {v5, v6}, Landroid/location/LocationRequest;->setProvider(Ljava/lang/String;)Landroid/location/LocationRequest;

    const/4 v8, 0x1

    if-eqz p2, :cond_5

    iget-object v9, p0, Lcom/android/server/location/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v9}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v5, v8}, Landroid/location/LocationRequest;->setLocationSettingsIgnored(Z)Landroid/location/LocationRequest;

    const-wide/16 v9, 0x3

    mul-long/2addr v2, v9

    :cond_5
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v8

    const-string v8, "GNSS HAL Requesting location updates from %s provider for %d millis."

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-virtual {v4, v5, v7, v8}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    invoke-static {v7}, Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;->access$1008(Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;)I

    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$oV78CWPlpzb195CgVgv-_YipNWw;

    invoke-direct {v9, v7, v6, v4}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$oV78CWPlpzb195CgVgv-_YipNWw;-><init>(Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;Ljava/lang/String;Landroid/location/LocationManager;)V

    invoke-virtual {v8, v9, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v8

    const-string v9, "Unable to request location."

    invoke-static {v1, v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private handleSetRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 1

    invoke-static {}, Lcom/android/server/lms/LmsInjector;->getLogLevelStatusUpdates()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GnssLocationProvider;->D:Z

    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iput-object p2, p0, Lcom/android/server/location/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateEnabled()V

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateRequirements()V

    return-void
.end method

.method private handleUpdateLocation(Landroid/location/Location;)V
    .locals 8

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "injectLocation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v7

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/location/GnssLocationProvider;->native_inject_location(DDF)V

    :cond_1
    return-void
.end method

.method private hasCapability(I)Z
    .locals 1

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mTopHalCapabilities:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hibernate()V
    .locals 7

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->stopNavigating()V

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget v3, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    int-to-long v3, v3

    add-long/2addr v3, v0

    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    const/4 v6, 0x2

    invoke-virtual {v2, v6, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private injectBestLocation(Landroid/location/Location;)V
    .locals 43

    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "injectBestLocation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GnssLocationProvider"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    nop

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    or-int/lit8 v0, v0, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    or-int/2addr v0, v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasBearing()Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x8

    goto :goto_3

    :cond_3
    move v4, v3

    :goto_3
    or-int/2addr v0, v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x10

    goto :goto_4

    :cond_4
    move v4, v3

    :goto_4
    or-int/2addr v0, v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x20

    goto :goto_5

    :cond_5
    move v4, v3

    :goto_5
    or-int/2addr v0, v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v4, 0x40

    goto :goto_6

    :cond_6
    move v4, v3

    :goto_6
    or-int/2addr v0, v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x80

    goto :goto_7

    :cond_7
    move v4, v3

    :goto_7
    or-int/2addr v0, v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v26

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v28

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v30

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearing()F

    move-result v32

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v33

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v34

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    move-result v35

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearingAccuracyDegrees()F

    move-result v36

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v37

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasElapsedRealtimeUncertaintyNanos()Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_8

    :cond_8
    move v2, v3

    :goto_8
    or-int/lit8 v2, v2, 0x1

    move/from16 v21, v2

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v39

    move-wide/from16 v22, v39

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getElapsedRealtimeUncertaintyNanos()D

    move-result-wide v41

    move-wide/from16 v24, v41

    move-object/from16 v5, p0

    move v6, v0

    move-wide/from16 v7, v26

    move-wide/from16 v9, v28

    move-wide/from16 v11, v30

    move v13, v4

    move/from16 v14, v32

    move/from16 v15, v33

    move/from16 v16, v34

    move/from16 v17, v35

    move/from16 v18, v36

    move-wide/from16 v19, v37

    invoke-direct/range {v5 .. v25}, Lcom/android/server/location/GnssLocationProvider;->native_inject_best_location(IDDDFFFFFFJIJD)V

    return-void
.end method

.method private isGpsEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGpsEnabled:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isRequestLocationRateLimited()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isSupported()Z
    .locals 1

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_is_supported()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$Q6M8z_ZBiD7BNs3kvNmVrqoHSng(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->onNetworkAvailable()V

    return-void
.end method

.method static synthetic lambda$handleRequestLocation$1(Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;Ljava/lang/String;Landroid/location/LocationManager;)V
    .locals 2

    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;->access$1006(Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Removing location updates from %s provider."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    return-void
.end method

.method private messageIdAsString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    const/16 v0, 0xb

    if-eq p1, v0, :cond_4

    const/16 v0, 0xd

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const-string v0, "<Unknown>"

    return-object v0

    :pswitch_0
    const-string v0, "REPORT_SV_STATUS"

    return-object v0

    :pswitch_1
    const-string v0, "REPORT_LOCATION"

    return-object v0

    :pswitch_2
    const-string v0, "REQUEST_LOCATION"

    return-object v0

    :cond_0
    const-string v0, "UPDATE_LOCATION"

    return-object v0

    :cond_1
    const-string v0, "DOWNLOAD_PSDS_DATA"

    return-object v0

    :cond_2
    const-string v0, "INJECT_NTP_TIME"

    return-object v0

    :cond_3
    const-string v0, "INITIALIZE_HANDLER"

    return-object v0

    :cond_4
    const-string v0, "DOWNLOAD_PSDS_DATA_FINISHED"

    return-object v0

    :cond_5
    const-string v0, "SET_REQUEST"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private native native_agps_ni_message([BI)V
.end method

.method private native native_agps_set_id(ILjava/lang/String;)V
.end method

.method private native native_agps_set_ref_location_cellid(IIIII)V
.end method

.method private native native_cleanup()V
.end method

.method private native native_delete_aiding_data(I)V
.end method

.method private native native_get_internal_state()Ljava/lang/String;
.end method

.method private native native_init()Z
.end method

.method private static native native_init_once(Z)V
.end method

.method private native native_inject_best_location(IDDDFFFFFFJIJD)V
.end method

.method private native native_inject_location(DDF)V
.end method

.method private native native_inject_psds_data([BI)V
.end method

.method private native native_inject_time(JJI)V
.end method

.method private static native native_is_gnss_visibility_control_supported()Z
.end method

.method private static native native_is_supported()Z
.end method

.method private native native_read_nmea([BI)I
.end method

.method private native native_send_ni_response(II)V
.end method

.method private native native_set_agps_server(ILjava/lang/String;I)V
.end method

.method private native native_set_position_mode(IIIIIZ)Z
.end method

.method private native native_start()Z
.end method

.method private native native_stop()Z
.end method

.method private native native_supports_psds()Z
.end method

.method private onNetworkAvailable()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNtpTimeHelper:Lcom/android/server/location/NtpTimeHelper;

    invoke-virtual {v0}, Lcom/android/server/location/NtpTimeHelper;->onNetworkAvailable()V

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadPsdsDataPending:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSupportsPsds:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->psdsDownloadRequest()V

    :cond_0
    return-void
.end method

.method private psdsDownloadRequest()V
    .locals 3

    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "psdsDownloadRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    return-void
.end method

.method private reloadGpsProperties()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/GnssConfiguration;

    invoke-virtual {v0}, Lcom/android/server/location/GnssConfiguration;->reloadGpsProperties()V

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->setSuplHostPort()V

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/GnssConfiguration;

    invoke-virtual {v0}, Lcom/android/server/location/GnssConfiguration;->getC2KHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerHost:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/GnssConfiguration;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/location/GnssConfiguration;->getC2KPort(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerPort:I

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/GnssConfiguration;

    invoke-virtual {v2}, Lcom/android/server/location/GnssConfiguration;->getEsExtensionSec()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setEmergencyExtensionSeconds(I)V

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/GnssConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/server/location/GnssConfiguration;->getSuplEs(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplEsEnabled:Z

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplEsEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setSuplEsEnabled(Z)V

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/GnssVisibilityControl;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/GnssConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/server/location/GnssVisibilityControl;->onConfigurationUpdated(Lcom/android/server/location/GnssConfiguration;)V

    :cond_1
    return-void
.end method

.method private reportAGpsStatus(II[B)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/GnssNetworkConnectivityHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->onReportAGpsStatus(II[B)V

    return-void
.end method

.method private reportGeofenceAddStatus(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$UbVMf2XkqNujf6ZZYbD3ITfhy98;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$UbVMf2XkqNujf6ZZYbD3ITfhy98;-><init>(Lcom/android/server/location/GnssLocationProvider;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private reportGeofencePauseStatus(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$YioQmt5_4rwC3kkzEgeymB15HhA;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$YioQmt5_4rwC3kkzEgeymB15HhA;-><init>(Lcom/android/server/location/GnssLocationProvider;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private reportGeofenceRemoveStatus(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$AqYK7fn42KqHmtzfEEHCId_ucqc;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$AqYK7fn42KqHmtzfEEHCId_ucqc;-><init>(Lcom/android/server/location/GnssLocationProvider;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private reportGeofenceResumeStatus(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$WHLwhMXdOptyG8XPk2vIU0pgmL8;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$WHLwhMXdOptyG8XPk2vIU0pgmL8;-><init>(Lcom/android/server/location/GnssLocationProvider;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private reportGeofenceStatus(ILandroid/location/Location;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$ii5CD-UWWm-fq57JzZZBF3Nxnic;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$ii5CD-UWWm-fq57JzZZBF3Nxnic;-><init>(Lcom/android/server/location/GnssLocationProvider;ILandroid/location/Location;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private reportGeofenceTransition(ILandroid/location/Location;IJ)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$OlaPfB60MVaXRIn-eVwZiybyWF4;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$OlaPfB60MVaXRIn-eVwZiybyWF4;-><init>(Lcom/android/server/location/GnssLocationProvider;ILandroid/location/Location;IJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private reportGnssServiceDied()V
    .locals 3

    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    const-string/jumbo v1, "reportGnssServiceDied"

    const-string v2, "GnssLocationProvider"

    if-eqz v0, :cond_0

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->D:Z

    if-eqz v0, :cond_1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$_u_h1wukFYajzrvRlCDdiTE0DwU;

    invoke-direct {v1, p0}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$_u_h1wukFYajzrvRlCDdiTE0DwU;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private reportLocation(ZLandroid/location/Location;)V
    .locals 1

    const/16 v0, 0x11

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    return-void
.end method

.method private reportLocationBatch([Landroid/location/Location;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-boolean v1, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Location batch of size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " reported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GnssLocationProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->reportLocation(Ljava/util/List;)V

    return-void
.end method

.method private reportMeasurementData(Landroid/location/GnssMeasurementsEvent;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$7an4_QLRsGpd_GYEEX9o8MWsh5g;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$7an4_QLRsGpd_GYEEX9o8MWsh5g;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/location/GnssMeasurementsEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private reportNavigationMessage(Landroid/location/GnssNavigationMessage;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$xOqKbJvk-F9q308HLNoriIqVzOc;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$xOqKbJvk-F9q308HLNoriIqVzOc;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/location/GnssNavigationMessage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private reportNfwNotification(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V
    .locals 10

    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/location/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/GnssVisibilityControl;

    if-nez v1, :cond_0

    const-string v1, "GnssLocationProvider"

    const-string/jumbo v2, "reportNfwNotification: mGnssVisibilityControl is not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/location/GnssVisibilityControl;->reportNfwNotification(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V

    return-void
.end method

.method private reportNmea(J)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNmeaBuffer:[B

    array-length v1, v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider;->native_read_nmea([BI)I

    move-result v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mNmeaBuffer:[B

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([BII)V

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssStatusListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    invoke-virtual {v2, p1, p2, v1}, Lcom/android/server/location/GnssStatusListenerHelper;->onNmeaReceived(JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private reportStatus(I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    const-string/jumbo v1, "reportStatus status: "

    const-string v2, "GnssLocationProvider"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->D:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    goto :goto_0

    :cond_3
    goto :goto_0

    :cond_4
    iput-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    goto :goto_0

    :cond_5
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    nop

    :goto_0
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    if-eq v0, v1, :cond_6

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssStatusListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    invoke-virtual {v2, v1}, Lcom/android/server/location/GnssStatusListenerHelper;->onStatusChanged(Z)V

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGlpInjector:Lcom/android/server/glp/GlpInjector;

    invoke-virtual {v1}, Lcom/android/server/glp/GlpInjector;->updateGnssDetectionStatus()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGlpInjector:Lcom/android/server/glp/GlpInjector;

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->getDumpsys()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/glp/GlpInjector;->sendMdmreport(Ljava/lang/StringBuilder;)V

    :cond_6
    return-void
.end method

.method private reportSvStatus(I[I[F[F[F[F)V
    .locals 3

    new-instance v0, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;-><init>(Lcom/android/server/location/GnssLocationProvider$1;)V

    invoke-static {v0, p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1202(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;I)I

    invoke-static {v0, p2}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1302(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;[I)[I

    invoke-static {v0, p3}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1402(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;[F)[F

    invoke-static {v0, p4}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1502(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;[F)[F

    invoke-static {v0, p5}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1602(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;[F)[F

    invoke-static {v0, p6}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1702(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;[F)[F

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    return-void
.end method

.method private requestLocation(ZZ)V
    .locals 2

    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestLocation. independentFromGnss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isUserEmergency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0x10

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    return-void
.end method

.method private requestRefLocation()V
    .locals 13

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const-string v2, "GnssLocationProvider"

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v3

    check-cast v3, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v12

    if-eq v12, v5, :cond_1

    const/16 v5, 0x8

    if-eq v12, v5, :cond_1

    const/16 v5, 0x9

    if-eq v12, v5, :cond_1

    const/16 v5, 0xa

    if-eq v12, v5, :cond_1

    const/16 v5, 0xf

    if-ne v12, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x2

    :goto_1
    nop

    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v10

    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v11

    move-object v6, p0

    move v7, v5

    move v8, v2

    move v9, v4

    invoke-direct/range {v6 .. v11}, Lcom/android/server/location/GnssLocationProvider;->native_agps_set_ref_location_cellid(IIIII)V

    goto :goto_2

    :cond_2
    const-string v4, "Error getting cell location info."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    const-string v3, "CDMA not supported."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    :goto_2
    nop

    :goto_3
    return-void
.end method

.method private requestSetID(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_5

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    and-int/lit8 v4, p1, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v2

    :cond_3
    if-nez v2, :cond_4

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    :cond_4
    if-eqz v2, :cond_5

    const/4 v1, 0x2

    :cond_5
    :goto_0
    if-nez v2, :cond_6

    const-string v4, ""

    goto :goto_1

    :cond_6
    move-object v4, v2

    :goto_1
    invoke-direct {p0, v1, v4}, Lcom/android/server/location/GnssLocationProvider;->native_agps_set_id(ILjava/lang/String;)V

    return-void
.end method

.method private requestUtcTime()V
    .locals 3

    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "utcTimeRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    return-void
.end method

.method private restartLocationRequest()V
    .locals 3

    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    const-string/jumbo v1, "restartLocationRequest"

    const-string v2, "GnssLocationProvider"

    if-eqz v0, :cond_0

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->D:Z

    if-eqz v0, :cond_1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->setStarted(Z)V

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateRequirements()V

    return-void
.end method

.method private restartRequests()V
    .locals 2

    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "restartRequests"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->restartLocationRequest()V

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssMeasurementsProvider;->resumeIfStarted()V

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssNavigationMessageProvider;->resumeIfStarted()V

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssBatchingProvider;->resumeIfStarted()V

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssGeofenceProvider:Lcom/android/server/location/GnssGeofenceProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssGeofenceProvider;->resumeIfStarted()V

    return-void
.end method

.method private sendMessage(IILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WakeLock acquired by sendMessage("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->messageIdAsString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private setGnssHardwareModelName(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    const-string/jumbo v1, "setGnssModelName called with "

    const-string v2, "GnssLocationProvider"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->D:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mHardwareModelName:Ljava/lang/String;

    return-void
.end method

.method private setGnssYearOfHardware(I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    const-string/jumbo v1, "setGnssYearOfHardware called with "

    const-string v2, "GnssLocationProvider"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->D:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mHardwareYear:I

    return-void
.end method

.method private setGpsEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/location/GnssLocationProvider;->mGpsEnabled:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setPositionMode(IIIIIZ)Z
    .locals 8

    new-instance v7, Lcom/android/server/location/GnssPositionMode;

    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssPositionMode;-><init>(IIIIIZ)V

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mLastPositionMode:Lcom/android/server/location/GnssPositionMode;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/server/location/GnssPositionMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/location/GnssLocationProvider;->native_set_position_mode(IIIIIZ)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLastPositionMode:Lcom/android/server/location/GnssPositionMode;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mLastPositionMode:Lcom/android/server/location/GnssPositionMode;

    :goto_0
    return v1
.end method

.method private setStarted(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStartedChangedElapsedRealtime:J

    :cond_0
    return-void
.end method

.method private setSubHalMeasurementCorrectionsCapabilities(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$9jdOLj83ArhY9j3s3_Ubo4wma44;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$9jdOLj83ArhY9j3s3_Ubo4wma44;-><init>(Lcom/android/server/location/GnssLocationProvider;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setSuplHostPort()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGlpInjector:Lcom/android/server/glp/GlpInjector;

    invoke-virtual {v0}, Lcom/android/server/glp/GlpInjector;->setSuplHostPort()V

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGlpInjector:Lcom/android/server/glp/GlpInjector;

    invoke-virtual {v0}, Lcom/android/server/glp/GlpInjector;->getSuplHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGlpInjector:Lcom/android/server/glp/GlpInjector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/glp/GlpInjector;->getSuplPort(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I

    if-lez v1, :cond_0

    const v2, 0xffff

    if-gt v1, v2, :cond_0

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/location/GnssLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private setTopHalCapabilities(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$FgVpMm9HUsK34prF193as-eSjf8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$FgVpMm9HUsK34prF193as-eSjf8;-><init>(Lcom/android/server/location/GnssLocationProvider;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setupNativeGnssService(Z)V
    .locals 3

    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider;->native_init_once(Z)V

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_init()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "GnssLocationProvider"

    const-string v2, "Native initialization failed."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_cleanup()V

    :goto_0
    return-void
.end method

.method private startNavigating()V
    .locals 13

    invoke-static {}, Lcom/android/server/lms/LmsInjector;->getLogLevelStatusUpdates()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GnssLocationProvider;->D:Z

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/OpGpsNotificationInjector;->updateGpsRequstPackage(Z)V

    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-nez v1, :cond_b

    sget-boolean v1, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    const-string/jumbo v2, "startNavigating"

    const-string v3, "GnssLocationProvider"

    if-eqz v1, :cond_0

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v1, Lcom/android/server/location/GnssLocationProvider;->D:Z

    if-eqz v1, :cond_1

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->setStarted(Z)V

    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "startNavigating with ITAR limit in place. Output limited  until slow enough speed reported."

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "assisted_gps_enabled"

    invoke-static {v2, v4, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-direct {p0, v2}, Lcom/android/server/location/GnssLocationProvider;->getSuplMode(Z)I

    move-result v4

    iput v4, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    sget-boolean v4, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    const/4 v5, 0x2

    if-eqz v4, :cond_7

    iget v4, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    if-eqz v4, :cond_6

    if-eq v4, v0, :cond_5

    if-eq v4, v5, :cond_4

    const-string/jumbo v4, "unknown"

    goto :goto_1

    :cond_4
    const-string v4, "MS_ASSISTED"

    goto :goto_1

    :cond_5
    const-string v4, "MS_BASED"

    goto :goto_1

    :cond_6
    const-string/jumbo v4, "standalone"

    nop

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setting position_mode to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_8

    iget v4, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    goto :goto_2

    :cond_8
    const/16 v4, 0x3e8

    :goto_2
    move v9, v4

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mGlpInjector:Lcom/android/server/glp/GlpInjector;

    iget v6, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    invoke-virtual {v4, v6}, Lcom/android/server/glp/GlpInjector;->getPositionMode(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-boolean v4, v4, Lcom/android/internal/location/ProviderRequest;->lowPowerMode:Z

    iput-boolean v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLowPowerMode:Z

    iget v7, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-boolean v12, p0, Lcom/android/server/location/GnssLocationProvider;->mLowPowerMode:Z

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/android/server/location/GnssLocationProvider;->setPositionMode(IIIIIZ)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->setStarted(Z)V

    const-string/jumbo v0, "set_position_mode failed in startNavigating()"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_start()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->setStarted(Z)V

    const-string/jumbo v0, "native_start failed in startNavigating()"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->updateStatus(I)V

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/GnssLocationProvider$LocationExtras;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->reset()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/location/GnssLocationProvider;->mFixRequestTime:J

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_b

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    const v1, 0xea60

    if-lt v0, v1, :cond_b

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/32 v6, 0xea60

    add-long/2addr v3, v6

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v5, v3, v4, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_b
    return-void
.end method

.method private stopNavigating()V
    .locals 3

    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    const-string/jumbo v1, "stopNavigating"

    const-string v2, "GnssLocationProvider"

    if-eqz v0, :cond_0

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/lms/LmsInjector;->getLogLevelStatusUpdates()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GnssLocationProvider;->D:Z

    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->D:Z

    if-eqz v0, :cond_1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/OpGpsNotificationInjector;->updateGpsRequstPackage(Z)V

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGlpInjector:Lcom/android/server/glp/GlpInjector;

    invoke-virtual {v1}, Lcom/android/server/glp/GlpInjector;->resetPositionMode()V

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->setStarted(Z)V

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_stop()Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLastPositionMode:Lcom/android/server/location/GnssPositionMode;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->updateStatus(I)V

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/GnssLocationProvider$LocationExtras;

    invoke-virtual {v0}, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->reset()V

    :cond_2
    return-void
.end method

.method private subscriptionOrCarrierConfigChanged(Landroid/content/Context;)V
    .locals 8

    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    const-string v1, "GnssLocationProvider"

    if-eqz v0, :cond_0

    const-string/jumbo v0, "received SIM related action: "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string v3, "carrier_config"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v4

    :goto_0
    const/4 v5, 0x0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    sget-boolean v6, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIM MCC/MNC is available: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v2, :cond_4

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v2, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    nop

    const-string v6, "gps.persist_lpp_mode_bool"

    invoke-virtual {v1, v6}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    :cond_4
    const-string/jumbo v1, "persist.sys.gps.lpp"

    if-eqz v5, :cond_6

    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/GnssConfiguration;

    invoke-virtual {v6}, Lcom/android/server/location/GnssConfiguration;->loadPropertiesFromCarrierConfig()V

    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/GnssConfiguration;

    invoke-virtual {v6}, Lcom/android/server/location/GnssConfiguration;->getLppProfile()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-static {v1, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    goto :goto_2

    :cond_6
    const-string v6, ""

    invoke-static {v1, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->reloadGpsProperties()V

    goto :goto_3

    :cond_7
    sget-boolean v6, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v6, :cond_8

    const-string v6, "SIM MCC/MNC is still not available"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_3
    return-void
.end method

.method private updateClientUids(Landroid/os/WorkSource;)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-virtual {p1, v0}, Landroid/os/WorkSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/app/IBatteryStats;->noteGpsChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GnssLocationProvider"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-static {v0, p1}, Landroid/os/WorkSource;->diffChains(Landroid/os/WorkSource;Landroid/os/WorkSource;)[Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    aget-object v4, v0, v1

    aget-object v5, v0, v3

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/WorkSource$WorkChain;

    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v7}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v9

    invoke-virtual {v7}, Landroid/os/WorkSource$WorkChain;->getAttributionTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v2, v9, v10}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/WorkSource$WorkChain;

    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v7}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v9

    invoke-virtual {v7}, Landroid/os/WorkSource$WorkChain;->getAttributionTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v2, v9, v10}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-virtual {v6, p1}, Landroid/os/WorkSource;->transferWorkChains(Landroid/os/WorkSource;)V

    :cond_3
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-virtual {v4, p1}, Landroid/os/WorkSource;->setReturningDiffs(Landroid/os/WorkSource;)[Landroid/os/WorkSource;

    move-result-object v4

    if-eqz v4, :cond_5

    aget-object v1, v4, v1

    aget-object v3, v4, v3

    if-eqz v1, :cond_4

    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v1}, Landroid/os/WorkSource;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v5}, Landroid/os/WorkSource;->get(I)I

    move-result v7

    invoke-virtual {v1, v5}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v2, v7, v8}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    if-eqz v3, :cond_5

    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v3}, Landroid/os/WorkSource;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v3, v5}, Landroid/os/WorkSource;->get(I)I

    move-result v7

    invoke-virtual {v3, v5}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v2, v7, v8}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method private updateEnabled()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-class v1, Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGpsForPowerManager:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    and-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-boolean v1, v1, Lcom/android/internal/location/ProviderRequest;->locationSettingsIgnored:Z

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mShutdown:Z

    xor-int/2addr v1, v2

    and-int/2addr v0, v1

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->isGpsEnabled()Z

    move-result v1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->handleEnable()V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->handleDisable()V

    :goto_1
    return-void
.end method

.method private updateLowPowerMode()V
    .locals 7

    invoke-static {}, Lcom/android/server/location/GnssLocationProviderInjector;->getStopGpsState()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4, v3}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v4

    iget v5, v4, Landroid/os/PowerSaveState;->locationMode:I

    if-eq v5, v3, :cond_1

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    goto :goto_2

    :cond_1
    iget-boolean v5, v4, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v5

    if-nez v5, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    nop

    :goto_1
    or-int/2addr v1, v2

    :goto_2
    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGpsForPowerManager:Z

    if-eq v1, v2, :cond_3

    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGpsForPowerManager:Z

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateEnabled()V

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateRequirements()V

    :cond_3
    return-void
.end method

.method private updateRequirements()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    const-string/jumbo v1, "setRequest "

    const-string v2, "GnssLocationProvider"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->D:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->isGpsEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v0, v0, Lcom/android/internal/location/ProviderRequest;->interval:J

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderRequest;->lowPowerMode:Z

    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLowPowerMode:Z

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    int-to-long v0, v0

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v3, v3, Lcom/android/internal/location/ProviderRequest;->interval:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interval overflow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v3, v1, Lcom/android/internal/location/ProviderRequest;->interval:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v4, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-boolean v9, p0, Lcom/android/server/location/GnssLocationProvider;->mLowPowerMode:Z

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/location/GnssLocationProvider;->setPositionMode(IIIIIZ)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "set_position_mode failed in updateRequirements"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {v0}, Lcom/android/server/OpGpsNotificationInjector;->updateGpsRequstPackage(Z)V

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->startNavigating()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    const v1, 0xea60

    if-lt v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_7
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->stopNavigating()V

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_8
    :goto_0
    return-void

    :cond_9
    :goto_1
    return-void
.end method

.method private updateStatus(I)V
    .locals 2

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatusUpdateTime:J

    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mStarted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "   (changed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/location/GnssLocationProvider;->mStartedChangedElapsedRealtime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v1, " ago)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "  mFixInterval="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "  mLowPowerMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mLowPowerMode:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "  mGnssMeasurementsProvider.isRegistered()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    invoke-virtual {v2}, Lcom/android/server/location/GnssMeasurementsProvider;->isRegistered()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "  mGnssNavigationMessageProvider.isRegistered()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    invoke-virtual {v2}, Lcom/android/server/location/GnssNavigationMessageProvider;->isRegistered()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "  mDisableGpsForPowerManager="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGpsForPowerManager:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "  mTopHalCapabilities=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTopHalCapabilities:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SCHEDULING "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "MSB "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "MSA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "SINGLE_SHOT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "ON_DEMAND_TIME "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "GEOFENCING "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const/16 v1, 0x40

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "MEASUREMENTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const/16 v1, 0x80

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "NAV_MESSAGES "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const/16 v1, 0x100

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "LOW_POWER_MODE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const/16 v1, 0x200

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "SATELLITE_BLACKLIST "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const/16 v1, 0x400

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "MEASUREMENT_CORRECTIONS "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    const-string v2, ")\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "  SubHal=MEASUREMENT_CORRECTIONS["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementCorrectionsProvider:Lcom/android/server/location/GnssMeasurementCorrectionsProvider;

    invoke-virtual {v1}, Lcom/android/server/location/GnssMeasurementCorrectionsProvider;->toStringCapabilities()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->dumpGnssMetricsAsText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  native internal state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_get_internal_state()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    return-void
.end method

.method public getGnssBatchingProvider()Lcom/android/server/location/GnssBatchingProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    return-object v0
.end method

.method public getGnssCapabilitiesProvider()Lcom/android/server/location/GnssCapabilitiesProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssCapabilitiesProvider:Lcom/android/server/location/GnssCapabilitiesProvider;

    return-object v0
.end method

.method public getGnssMeasurementCorrectionsProvider()Lcom/android/server/location/GnssMeasurementCorrectionsProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementCorrectionsProvider:Lcom/android/server/location/GnssMeasurementCorrectionsProvider;

    return-object v0
.end method

.method public getGnssMeasurementsProvider()Lcom/android/server/location/GnssMeasurementsProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    return-object v0
.end method

.method public getGnssMetricsProvider()Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;
    .locals 1

    new-instance v0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$rE3aXybVXWDfHPxCjEXzxG9bPmo;

    invoke-direct {v0, p0}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$rE3aXybVXWDfHPxCjEXzxG9bPmo;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    return-object v0
.end method

.method public getGnssNavigationMessageProvider()Lcom/android/server/location/GnssNavigationMessageProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    return-object v0
.end method

.method public getGnssStatusProvider()Lcom/android/server/location/GnssStatusListenerHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssStatusListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    return-object v0
.end method

.method public getGnssSystemInfoProvider()Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;
    .locals 1

    new-instance v0, Lcom/android/server/location/GnssLocationProvider$7;

    invoke-direct {v0, p0}, Lcom/android/server/location/GnssLocationProvider$7;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    return-object v0
.end method

.method public getGpsGeofenceProxy()Landroid/location/IGpsGeofenceHardware;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssGeofenceProvider:Lcom/android/server/location/GnssGeofenceProvider;

    return-object v0
.end method

.method public getNetInitiatedListener()Landroid/location/INetInitiatedListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    return-object v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/GnssLocationProvider$LocationExtras;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->setBundle(Landroid/os/Bundle;)V

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    return v0
.end method

.method public getStatusUpdateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatusUpdateTime:J

    return-wide v0
.end method

.method public injectTime(JJI)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/location/GnssLocationProvider;->native_inject_time(JJI)V

    return-void
.end method

.method isInEmergencySession()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$getGnssMetricsProvider$8$GnssLocationProvider()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {v0}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->dumpGnssMetricsAsProtoString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$handleDownloadPsdsData$2$GnssLocationProvider()V
    .locals 6

    new-instance v0, Lcom/android/server/location/GpsPsdsDownloader;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/GnssConfiguration;

    invoke-virtual {v1}, Lcom/android/server/location/GnssConfiguration;->getProperties()Ljava/util/Properties;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/location/GpsPsdsDownloader;-><init>(Ljava/util/Properties;)V

    invoke-virtual {v0}, Lcom/android/server/location/GpsPsdsDownloader;->downloadPsdsData()[B

    move-result-object v1

    if-eqz v1, :cond_1

    sget-boolean v2, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "GnssLocationProvider"

    const-string v3, "calling native_inject_psds_data"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    array-length v2, v1

    invoke-direct {p0, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->native_inject_psds_data([BI)V

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mPsdsBackOff:Lcom/android/server/location/ExponentialBackOff;

    invoke-virtual {v2}, Lcom/android/server/location/ExponentialBackOff;->reset()V

    :cond_1
    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mPsdsBackOff:Lcom/android/server/location/ExponentialBackOff;

    invoke-virtual {v4}, Lcom/android/server/location/ExponentialBackOff;->nextBackoffMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_4

    :try_start_1
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    sget-boolean v3, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "GnssLocationProvider"

    const-string v4, "WakeLock released by handleDownloadPsdsData()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "GnssLocationProvider"

    const-string v5, "Wakelock timeout & release race exception in handleDownloadPsdsData()"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    goto :goto_0

    :cond_4
    const-string v3, "GnssLocationProvider"

    const-string v4, "WakeLock expired before release in handleDownloadPsdsData()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public synthetic lambda$onUpdateSatelliteBlacklist$0$GnssLocationProvider([I[I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/GnssConfiguration;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/GnssConfiguration;->setSatelliteBlacklist([I[I)V

    return-void
.end method

.method public synthetic lambda$reportGeofenceAddStatus$11$GnssLocationProvider(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {p2}, Lcom/android/server/location/GnssLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceAddStatus(II)V

    return-void
.end method

.method public synthetic lambda$reportGeofencePauseStatus$13$GnssLocationProvider(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {p2}, Lcom/android/server/location/GnssLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofencePauseStatus(II)V

    return-void
.end method

.method public synthetic lambda$reportGeofenceRemoveStatus$12$GnssLocationProvider(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {p2}, Lcom/android/server/location/GnssLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceRemoveStatus(II)V

    return-void
.end method

.method public synthetic lambda$reportGeofenceResumeStatus$14$GnssLocationProvider(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {p2}, Lcom/android/server/location/GnssLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceResumeStatus(II)V

    return-void
.end method

.method public synthetic lambda$reportGeofenceStatus$10$GnssLocationProvider(ILandroid/location/Location;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    const/4 v2, 0x0

    sget v3, Landroid/location/FusedBatchOptions$SourceTechnologies;->GNSS:I

    invoke-virtual {v1, v2, v0, p2, v3}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceMonitorStatus(IILandroid/location/Location;I)V

    return-void
.end method

.method public synthetic lambda$reportGeofenceTransition$9$GnssLocationProvider(ILandroid/location/Location;IJ)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    :cond_0
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    const/4 v7, 0x0

    sget v8, Landroid/location/FusedBatchOptions$SourceTechnologies;->GNSS:I

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceTransition(ILandroid/location/Location;IJII)V

    return-void
.end method

.method public synthetic lambda$reportGnssServiceDied$7$GnssLocationProvider()V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->setupNativeGnssService(Z)V

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->isGpsEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/location/GnssLocationProvider;->setGpsEnabled(Z)V

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateEnabled()V

    :cond_0
    if-nez v1, :cond_1

    new-array v0, v0, [I

    const/16 v3, 0xfb

    aput v3, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->reloadGpsProperties()V

    :cond_2
    return-void
.end method

.method public synthetic lambda$reportMeasurementData$3$GnssLocationProvider(Landroid/location/GnssMeasurementsEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssMeasurementsProvider;->onMeasurementsAvailable(Landroid/location/GnssMeasurementsEvent;)V

    return-void
.end method

.method public synthetic lambda$reportNavigationMessage$4$GnssLocationProvider(Landroid/location/GnssNavigationMessage;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssNavigationMessageProvider;->onNavigationMessageAvailable(Landroid/location/GnssNavigationMessage;)V

    return-void
.end method

.method public synthetic lambda$setSubHalMeasurementCorrectionsCapabilities$6$GnssLocationProvider(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementCorrectionsProvider:Lcom/android/server/location/GnssMeasurementCorrectionsProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssMeasurementCorrectionsProvider;->onCapabilitiesUpdated(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssCapabilitiesProvider:Lcom/android/server/location/GnssCapabilitiesProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssCapabilitiesProvider;->setSubHalMeasurementCorrectionsCapabilities(I)V

    return-void
.end method

.method public synthetic lambda$setTopHalCapabilities$5$GnssLocationProvider(I)V
    .locals 2

    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mTopHalCapabilities:I

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNtpTimeHelper:Lcom/android/server/location/NtpTimeHelper;

    invoke-virtual {v0}, Lcom/android/server/location/NtpTimeHelper;->enablePeriodicTimeInjection()V

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->requestUtcTime()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    const/16 v1, 0x40

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/location/GnssMeasurementsProvider;->onCapabilitiesUpdated(Z)V

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    const/16 v1, 0x80

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/location/GnssNavigationMessageProvider;->onCapabilitiesUpdated(Z)V

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->restartRequests()V

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssCapabilitiesProvider:Lcom/android/server/location/GnssCapabilitiesProvider;

    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTopHalCapabilities:I

    invoke-virtual {v0, v1}, Lcom/android/server/location/GnssCapabilitiesProvider;->setTopHalCapabilities(I)V

    return-void
.end method

.method public onUpdateSatelliteBlacklist([I[I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$WbIUWqWbiKrZx6NHwSpsFU1pHKI;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$WbIUWqWbiKrZx6NHwSpsFU1pHKI;-><init>(Lcom/android/server/location/GnssLocationProvider;[I[I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {v0}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->resetConstellationTypes()V

    return-void
.end method

.method public reportNiNotification(IIIIILjava/lang/String;Ljava/lang/String;II)V
    .locals 28

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    const-string v10, "GnssLocationProvider"

    const-string/jumbo v11, "reportNiNotification: entered"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "notificationId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", niType: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", notifyFlags: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", timeout: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", defaultResponse: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "requestorId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", text: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", requestorIdEncoding: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", textEncoding: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    invoke-direct {v10}, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;-><init>()V

    iput v1, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    iput v2, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    and-int/lit8 v11, v3, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v11, :cond_0

    move v11, v13

    goto :goto_0

    :cond_0
    move v11, v12

    :goto_0
    iput-boolean v11, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    and-int/lit8 v11, v3, 0x2

    if-eqz v11, :cond_1

    move v11, v13

    goto :goto_1

    :cond_1
    move v11, v12

    :goto_1
    iput-boolean v11, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    and-int/lit8 v11, v3, 0x4

    if-eqz v11, :cond_2

    move v12, v13

    :cond_2
    iput-boolean v12, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    iput v4, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    iput v5, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    iput-object v6, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    iput-object v7, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    iput v8, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    iput v9, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    iget-object v11, v0, Lcom/android/server/location/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v11, v10}, Lcom/android/internal/location/GpsNetInitiatedHandler;->handleNiNotification(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    const/16 v12, 0x7c

    iget v14, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    iget v15, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    iget-boolean v11, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    iget-boolean v13, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    move/from16 v17, v13

    iget-boolean v13, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    move/from16 v18, v13

    iget v13, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    move/from16 v19, v13

    iget v13, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    move/from16 v20, v13

    iget-object v13, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    move-object/from16 v21, v13

    iget-object v13, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    move-object/from16 v22, v13

    iget v13, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    move/from16 v23, v13

    iget v13, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    move/from16 v24, v13

    iget-boolean v13, v0, Lcom/android/server/location/GnssLocationProvider;->mSuplEsEnabled:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GnssLocationProvider;->isGpsEnabled()Z

    move-result v26

    const/16 v27, 0x0

    move/from16 v25, v13

    const/4 v13, 0x1

    move/from16 v16, v11

    invoke-static/range {v12 .. v27}, Landroid/util/StatsLog;->write(IIIIZZZIILjava/lang/String;Ljava/lang/String;IIZZI)I

    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    const-string v2, "delete_aiding_data"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider;->deleteAidingData(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const-string v2, "force_time_injection"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->requestUtcTime()V

    goto :goto_0

    :cond_1
    const-string v2, "force_psds_injection"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mSupportsPsds:Z

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->psdsDownloadRequest()V

    goto :goto_0

    :cond_2
    const-string v2, "GnssLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendExtraCommand: unknown command "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mGlpInjector:Lcom/android/server/glp/GlpInjector;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/glp/GlpInjector;->checkPositionMode(Ljava/lang/String;Landroid/os/Bundle;)V
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

.method public setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 3

    new-instance v0, Lcom/android/server/location/GnssLocationProvider$GpsRequest;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/GnssLocationProvider$GpsRequest;-><init>(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    return-void
.end method
