.class public Lcom/android/server/LocationManagerService;
.super Landroid/location/ILocationManager$Stub;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LocationManagerService$LinkedListener;,
        Lcom/android/server/LocationManagerService$LinkedListenerBase;,
        Lcom/android/server/LocationManagerService$UpdateRecord;,
        Lcom/android/server/LocationManagerService$Receiver;,
        Lcom/android/server/LocationManagerService$Identity;,
        Lcom/android/server/LocationManagerService$MockLocationProvider;,
        Lcom/android/server/LocationManagerService$LocationProvider;,
        Lcom/android/server/LocationManagerService$LocationManagerServiceInner;
    }
.end annotation


# static fields
.field private static final ACCESS_LOCATION_EXTRA_COMMANDS:Ljava/lang/String; = "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

.field public static D:Z = false

.field private static DEBUG_ONEPLUS:Z = false

.field private static final DEFAULT_BACKGROUND_THROTTLE_INTERVAL_MS:J = 0x1b7740L

.field private static final DEFAULT_LAST_LOCATION_MAX_AGE_MS:J = 0x124f80L

.field private static final DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

.field private static final FOREGROUND_IMPORTANCE_CUTOFF:I = 0x7d

.field private static final FUSED_LOCATION_SERVICE_ACTION:Ljava/lang/String; = "com.android.location.service.FusedLocationProvider"

.field private static final HIGH_POWER_INTERVAL_MS:J = 0x493e0L

.field private static final LOG_SHIELD:Ljava/lang/String; = "XXXXXXXXXXXXXXXXXXXXXXX"

.field private static final MAX_PROVIDER_SCHEDULING_JITTER_MS:I = 0x64

.field private static final NANOS_PER_MILLI:J = 0xf4240L

.field private static final NETWORK_LOCATION_SERVICE_ACTION:Ljava/lang/String; = "com.android.location.service.v3.NetworkLocationProvider"

.field private static final RESOLUTION_LEVEL_COARSE:I = 0x1

.field private static final RESOLUTION_LEVEL_FINE:I = 0x2

.field private static final RESOLUTION_LEVEL_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LocationManagerService"

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "*location*"


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAppOps:Landroid/app/AppOpsManager;

.field private final mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBatterySaverMode:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mBlacklist:Lcom/android/server/location/LocationBlacklist;

.field private mComboNlpPackageName:Ljava/lang/String;

.field private mComboNlpReadyMarker:Ljava/lang/String;

.field private mComboNlpScreenMarker:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mCurrentUserProfiles:[I

.field private mExtraLocationControllerPackage:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mExtraLocationControllerPackageEnabled:Z

.field private mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

.field private mGeofenceManager:Lcom/android/server/location/GeofenceManager;

.field private mGnssBatchingCallback:Landroid/location/IBatchedLocationCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mGnssBatchingDeathCallback:Lcom/android/server/LocationManagerService$LinkedListener;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/LocationManagerService$LinkedListener<",
            "Landroid/location/IBatchedLocationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mGnssBatchingInProgress:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

.field private mGnssCapabilitiesProvider:Lcom/android/server/location/GnssCapabilitiesProvider;

.field private mGnssMeasurementCorrectionsProvider:Lcom/android/server/location/GnssMeasurementCorrectionsProvider;

.field private final mGnssMeasurementsListeners:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/LocationManagerService$LinkedListener<",
            "Landroid/location/IGnssMeasurementsListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

.field private mGnssMetricsProvider:Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;

.field private final mGnssNavigationMessageListeners:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/LocationManagerService$LinkedListener<",
            "Landroid/location/IGnssNavigationMessageListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

.field private final mGnssStatusListeners:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/LocationManagerService$LinkedListener<",
            "Landroid/location/IGnssStatusListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mGnssStatusProvider:Lcom/android/server/location/GnssStatusListenerHelper;

.field private mGnssSystemInfoProvider:Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;

.field private mGpsGeofenceProxy:Landroid/location/IGpsGeofenceHardware;

.field private final mHandler:Landroid/os/Handler;

.field private final mIgnoreSettingsPackageWhitelist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastLocation:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastLocationCoarseInterval:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationFudger:Lcom/android/server/location/LocationFudger;

.field private final mLocationUsageLogger:Lcom/android/server/LocationUsageLogger;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPassiveProvider:Lcom/android/server/location/PassiveProvider;

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mProviders:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/LocationManagerService$LocationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mRealProviders:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/LocationManagerService$LocationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceivers:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Lcom/android/server/LocationManagerService$Receiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecordsByProvider:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/LocationManagerService$UpdateRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "LocationManagerService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/LocationManagerService;->DEBUG_ONEPLUS:Z

    new-instance v0, Landroid/location/LocationRequest;

    invoke-direct {v0}, Landroid/location/LocationRequest;-><init>()V

    sput-object v0, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/location/ILocationManager$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/location/LocationRequestStatistics;

    invoke-direct {v0}, Lcom/android/server/location/LocationRequestStatistics;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mIgnoreSettingsPackageWhitelist:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssStatusListeners:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v0, v1, v0

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mCurrentUserProfiles:[I

    iput-boolean v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingInProgress:Z

    iput-object p1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/LocationUsageLogger;

    invoke-direct {v0}, Lcom/android/server/LocationUsageLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/LocationUsageLogger;

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    new-instance v1, Lcom/android/server/-$$Lambda$LocationManagerService$bojY6dMaI07zh6_sF7ERxgmk6U0;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$LocationManagerService$bojY6dMaI07zh6_sF7ERxgmk6U0;-><init>(Lcom/android/server/LocationManagerService;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->setLocationPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V

    new-instance v1, Lcom/android/server/-$$Lambda$LocationManagerService$pUnNobtfzLC9eAlVqCMKySwbo3U;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$LocationManagerService$pUnNobtfzLC9eAlVqCMKySwbo3U;-><init>(Lcom/android/server/LocationManagerService;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->setLocationExtraPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V

    invoke-static {}, Lcom/android/server/lms/LmsInjector;->getLogLevelStatusUpdates()Z

    move-result v1

    sput-boolean v1, Lcom/android/server/LocationManagerService;->D:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/LocationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->onIgnoreSettingsWhitelistChangedLocked()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/LocationManagerService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->onPackageDisappearedLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/LocationManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->onUserChangedLocked(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/LocationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->onUserProfilesChangedLocked()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/LocationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->onScreenStateChangedLocked()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/LocationManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/LocationManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/PassiveProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mPassiveProvider:Lcom/android/server/location/PassiveProvider;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/LocationManagerService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->isCurrentProfileLocked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/LocationManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->isLocationEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$LocationProvider;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->updateProviderUseableLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/LocationManagerService;)Landroid/location/IBatchedLocationCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingCallback:Landroid/location/IBatchedLocationCallback;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/LocationManagerService;Landroid/location/Location;Lcom/android/server/LocationManagerService$LocationProvider;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->handleLocationChangedLocked(Landroid/location/Location;Lcom/android/server/LocationManagerService$LocationProvider;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$LocationProvider;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/LocationManagerService;II)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->getAllowedResolutionLevel(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/LocationManagerService;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$UpdateRecord;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->isSettingsExemptLocked(Lcom/android/server/LocationManagerService$UpdateRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/LocationManagerService;)Landroid/app/AppOpsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/LocationManagerService;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getResolutionPermission(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Receiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/LocationManagerService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/LocationManagerService;)Landroid/app/ActivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$4200(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/LocationManagerService;->isImportanceForeground(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationRequestStatistics;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationUsageLogger;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/LocationUsageLogger;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/LocationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->onAppOpChangedLocked()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/LocationManagerService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->onLocationModeChangedLocked(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/LocationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->onProviderAllowedChangedLocked()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/LocationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->onBackgroundThrottleIntervalChangedLocked()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/LocationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->onBackgroundThrottleWhitelistChangedLocked()V

    return-void
.end method

.method private addGnssDataListener(Landroid/os/IInterface;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;Ljava/util/function/Consumer;)Z
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T",
            "Listener::Landroid/os/IInterface;",
            ">(TT",
            "Listener;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/server/location/RemoteListenerHelper<",
            "TT",
            "Listener;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/LocationManagerService$LinkedListener<",
            "TT",
            "Listener;",
            ">;>;",
            "Ljava/util/function/Consumer<",
            "TT",
            "Listener;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p4

    invoke-direct {v1, v11}, Lcom/android/server/LocationManagerService;->hasGnssPermissions(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    if-nez v12, :cond_0

    move-object/from16 v3, p1

    goto/16 :goto_7

    :cond_0
    new-instance v0, Lcom/android/server/location/CallerIdentity;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-direct {v0, v3, v4, v11}, Lcom/android/server/location/CallerIdentity;-><init>(IILjava/lang/String;)V

    move-object v13, v0

    new-instance v0, Lcom/android/server/LocationManagerService$LinkedListener;

    const/4 v10, 0x0

    move-object v5, v0

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move-object v8, v13

    move-object/from16 v9, p6

    invoke-direct/range {v5 .. v10}, Lcom/android/server/LocationManagerService$LinkedListener;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/android/server/location/CallerIdentity;Ljava/util/function/Consumer;Lcom/android/server/LocationManagerService$1;)V

    move-object v14, v0

    invoke-interface/range {p1 .. p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v15

    iget-object v10, v1, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    invoke-direct {v1, v15, v14}, Lcom/android/server/LocationManagerService;->linkToListenerDeathNotificationLocked(Landroid/os/IBinder;Lcom/android/server/LocationManagerService$LinkedListenerBase;)Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit v10

    return v2

    :cond_1
    move-object/from16 v9, p5

    invoke-virtual {v9, v15, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-wide/from16 v16, v2

    :try_start_1
    iget-object v0, v1, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    if-eq v12, v0, :cond_3

    iget-object v0, v1, Lcom/android/server/LocationManagerService;->mGnssStatusProvider:Lcom/android/server/location/GnssStatusListenerHelper;

    if-ne v12, v0, :cond_2

    goto :goto_0

    :cond_2
    move-object/from16 v19, v10

    goto :goto_2

    :cond_3
    :goto_0
    iget-object v2, v1, Lcom/android/server/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/LocationUsageLogger;

    const/4 v3, 0x0

    iget-object v0, v1, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    if-ne v12, v0, :cond_4

    const/4 v0, 0x2

    move v4, v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x3

    move v4, v0

    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    iget-object v5, v1, Lcom/android/server/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v5, v11}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v5, p2

    move-object v9, v0

    move-object/from16 v19, v10

    move/from16 v10, v18

    :try_start_2
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;I)V

    :goto_2
    invoke-direct {v1, v13}, Lcom/android/server/LocationManagerService;->isThrottlingExemptLocked(Lcom/android/server/location/CallerIdentity;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v1, Lcom/android/server/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0, v11}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->isImportanceForeground(I)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    move-object/from16 v3, p1

    goto :goto_4

    :cond_6
    :goto_3
    move-object/from16 v3, p1

    :try_start_3
    invoke-virtual {v12, v3, v13}, Lcom/android/server/location/RemoteListenerHelper;->addListener(Landroid/os/IInterface;Lcom/android/server/location/CallerIdentity;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    const/4 v0, 0x1

    :try_start_4
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v19

    return v0

    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v3, p1

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object/from16 v3, p1

    move-object/from16 v19, v10

    :goto_5
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catchall_3
    move-exception v0

    move-object/from16 v3, p1

    move-object/from16 v19, v10

    :goto_6
    monitor-exit v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_6

    :cond_7
    move-object/from16 v3, p1

    :goto_7
    return v2
.end method

.method private addProviderLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$LocationProvider;->onAllowedChangedLocked()V

    invoke-virtual {p1, v1}, Lcom/android/server/LocationManagerService$LocationProvider;->onUseableChangedLocked(Z)V

    return-void
.end method

.method private applyRequirementsLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V
    .locals 22
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/ArrayList;

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    move-object v4, v0

    new-instance v0, Lcom/android/internal/location/ProviderRequest;

    invoke-direct {v0}, Lcom/android/internal/location/ProviderRequest;-><init>()V

    move-object v5, v0

    iget-object v0, v1, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    if-eqz v3, :cond_15

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_0
    iget-object v0, v1, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v8, "location_background_throttle_interval_ms"

    const-wide/32 v9, 0x1b7740

    invoke-static {v0, v8, v9, v10}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    iget v0, v1, Lcom/android/server/LocationManagerService;->mBatterySaverMode:I

    const/4 v10, 0x3

    const/4 v12, 0x1

    if-ne v0, v10, :cond_0

    move v0, v12

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v10, v1, Lcom/android/server/LocationManagerService;->mBatterySaverMode:I

    const/4 v13, 0x4

    if-ne v10, v13, :cond_1

    iget-object v10, v1, Lcom/android/server/LocationManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v10}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v10

    if-nez v10, :cond_1

    move v10, v12

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    iput-boolean v12, v5, Lcom/android/internal/location/ProviderRequest;->lowPowerMode:Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/LocationManagerService$UpdateRecord;

    iget-object v15, v14, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v15, v15, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v15, v15, Lcom/android/server/location/CallerIdentity;->mUid:I

    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    invoke-direct {v1, v15}, Lcom/android/server/LocationManagerService;->isCurrentProfileLocked(I)Z

    move-result v15

    if-nez v15, :cond_2

    goto :goto_2

    :cond_2
    iget-object v15, v14, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v15, v15, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v15, v15, Lcom/android/server/location/CallerIdentity;->mUid:I

    invoke-static {v15}, Lcom/android/server/am/OpBGFrozenInjector;->isBlockedGpsUid(I)Z

    move-result v15

    if-eqz v15, :cond_3

    goto :goto_2

    :cond_3
    iget-object v15, v14, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v15, v15, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v15, v15, Lcom/android/server/location/CallerIdentity;->mPid:I

    iget-object v11, v14, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v11, v11, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v11, v11, Lcom/android/server/location/CallerIdentity;->mUid:I

    iget-object v12, v14, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v12, v12, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v12, v12, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    move-object/from16 v18, v13

    iget-object v13, v14, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v13, v13, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    invoke-virtual {v1, v15, v11, v12, v13}, Lcom/android/server/LocationManagerService;->checkLocationAccess(IILjava/lang/String;I)Z

    move-result v11

    if-nez v11, :cond_4

    move-object/from16 v13, v18

    const/4 v12, 0x1

    goto :goto_2

    :cond_4
    if-nez v10, :cond_6

    if-eqz v0, :cond_5

    invoke-static {v14}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1500(Lcom/android/server/LocationManagerService$UpdateRecord;)Z

    move-result v11

    if-nez v11, :cond_5

    goto :goto_3

    :cond_5
    const/4 v11, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v11, 0x1

    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableLocked()Z

    move-result v12

    if-eqz v12, :cond_7

    if-eqz v11, :cond_8

    :cond_7
    invoke-direct {v1, v14}, Lcom/android/server/LocationManagerService;->isSettingsExemptLocked(Lcom/android/server/LocationManagerService$UpdateRecord;)Z

    move-result v12

    if-eqz v12, :cond_d

    const/4 v12, 0x1

    iput-boolean v12, v5, Lcom/android/internal/location/ProviderRequest;->locationSettingsIgnored:Z

    const/4 v12, 0x0

    iput-boolean v12, v5, Lcom/android/internal/location/ProviderRequest;->lowPowerMode:Z

    :cond_8
    invoke-static {v14}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$4000(Lcom/android/server/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v12

    move v13, v10

    move v15, v11

    invoke-virtual {v12}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v10

    move/from16 v19, v0

    iget-boolean v0, v5, Lcom/android/internal/location/ProviderRequest;->locationSettingsIgnored:Z

    if-nez v0, :cond_a

    iget-object v0, v14, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    invoke-direct {v1, v0}, Lcom/android/server/LocationManagerService;->isThrottlingExemptLocked(Lcom/android/server/location/CallerIdentity;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {v14}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1500(Lcom/android/server/LocationManagerService$UpdateRecord;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    :cond_9
    invoke-virtual {v12}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v20

    cmp-long v0, v10, v20

    if-eqz v0, :cond_a

    new-instance v0, Landroid/location/LocationRequest;

    invoke-direct {v0, v12}, Landroid/location/LocationRequest;-><init>(Landroid/location/LocationRequest;)V

    move-object v12, v0

    invoke-virtual {v12, v10, v11}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    :cond_a
    iput-object v12, v14, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    iget-object v0, v5, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12}, Landroid/location/LocationRequest;->isLowPowerMode()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    iput-boolean v0, v5, Lcom/android/internal/location/ProviderRequest;->lowPowerMode:Z

    goto :goto_5

    :cond_b
    const/4 v0, 0x0

    :goto_5
    iget-wide v0, v5, Lcom/android/internal/location/ProviderRequest;->interval:J

    cmp-long v0, v10, v0

    if-gez v0, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, v5, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    iput-wide v10, v5, Lcom/android/internal/location/ProviderRequest;->interval:J

    goto :goto_6

    :cond_c
    const/4 v0, 0x1

    :goto_6
    move-object/from16 v1, p0

    move v12, v0

    move v10, v13

    move-object/from16 v13, v18

    move/from16 v0, v19

    goto/16 :goto_2

    :cond_d
    move/from16 v19, v0

    move v13, v10

    move v15, v11

    const/4 v0, 0x1

    move-object/from16 v1, p0

    move v12, v0

    move-object/from16 v13, v18

    move/from16 v0, v19

    goto/16 :goto_2

    :cond_e
    move/from16 v19, v0

    move v13, v10

    iget-boolean v0, v5, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    if-eqz v0, :cond_14

    iget-wide v0, v5, Lcom/android/internal/location/ProviderRequest;->interval:J

    const-wide/16 v10, 0x3e8

    add-long/2addr v0, v10

    const-wide/16 v10, 0x3

    mul-long/2addr v0, v10

    const-wide/16 v10, 0x2

    div-long/2addr v0, v10

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/LocationManagerService$UpdateRecord;

    iget-object v12, v11, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v12, v12, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v12, v12, Lcom/android/server/location/CallerIdentity;->mUid:I

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    move-object/from16 v14, p0

    invoke-direct {v14, v12}, Lcom/android/server/LocationManagerService;->isCurrentProfileLocked(I)Z

    move-result v12

    if-eqz v12, :cond_12

    iget-object v12, v11, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    iget-object v15, v5, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v15, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_f

    goto :goto_7

    :cond_f
    invoke-virtual {v12}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v15

    cmp-long v15, v15, v0

    if-gtz v15, :cond_11

    iget-object v15, v11, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v15, v15, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v15, :cond_10

    iget-object v15, v11, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v15, v15, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    invoke-static {v15}, Lcom/android/server/LocationManagerService;->isValidWorkSource(Landroid/os/WorkSource;)Z

    move-result v15

    if-eqz v15, :cond_10

    iget-object v15, v11, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v15, v15, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v4, v15}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    move-wide/from16 v16, v0

    goto :goto_8

    :cond_10
    iget-object v15, v11, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v15, v15, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v15, v15, Lcom/android/server/location/CallerIdentity;->mUid:I

    move-wide/from16 v16, v0

    iget-object v0, v11, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v0, v0, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v15, v0}, Landroid/os/WorkSource;->add(ILjava/lang/String;)Z

    goto :goto_8

    :cond_11
    move-wide/from16 v16, v0

    goto :goto_8

    :cond_12
    move-wide/from16 v16, v0

    :goto_8
    move-wide/from16 v0, v16

    goto :goto_7

    :cond_13
    move-object/from16 v14, p0

    move-wide/from16 v16, v0

    goto :goto_9

    :cond_14
    move-object/from16 v14, p0

    goto :goto_9

    :catchall_0
    move-exception v0

    move-object v14, v1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_15
    move-object v14, v1

    :goto_9
    invoke-virtual {v2, v5, v4}, Lcom/android/server/LocationManagerService$LocationProvider;->setRequestLocked(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    return-void
.end method

.method private applyRequirementsLocked(Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    :cond_0
    return-void
.end method

.method private canCallerAccessMockLocation(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3a

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkPackageName(Ljava/lang/String;)V
    .locals 7

    const-string v0, "invalid package name: "

    if-eqz p1, :cond_3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    return-void

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid UID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkResolutionLevelIsSufficientForGeofenceUse(I)V
    .locals 2

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Geofence usage requires ACCESS_FINE_LOCATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkResolutionLevelIsSufficientForProviderUseLocked(ILjava/lang/String;)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->getMinimumResolutionLevelForProviderUseLocked(Ljava/lang/String;)I

    move-result v0

    if-ge p1, v0, :cond_2

    const/4 v1, 0x1

    const-string v2, "\""

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Insufficient permission for \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" location provider."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" location provider requires ACCESS_FINE_LOCATION permission."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" location provider requires ACCESS_COARSE_LOCATION or ACCESS_FINE_LOCATION permission."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-void
.end method

.method private createSanitizedRequest(Landroid/location/LocationRequest;IZ)Landroid/location/LocationRequest;
    .locals 5

    new-instance v0, Landroid/location/LocationRequest;

    invoke-direct {v0, p1}, Landroid/location/LocationRequest;-><init>(Landroid/location/LocationRequest;)V

    if-nez p3, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/LocationRequest;->setLowPowerMode(Z)Landroid/location/LocationRequest;

    :cond_0
    const/4 v1, 0x2

    if-ge p2, v1, :cond_4

    invoke-virtual {v0}, Landroid/location/LocationRequest;->getQuality()I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_2

    const/16 v2, 0xcb

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    goto :goto_0

    :cond_2
    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    nop

    :goto_0
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v1

    const-wide/32 v3, 0x927c0

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    invoke-virtual {v0, v3, v4}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    :cond_3
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getFastestInterval()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-gez v1, :cond_4

    invoke-virtual {v0, v3, v4}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    :cond_4
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getFastestInterval()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_5

    invoke-virtual {p1}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    :cond_5
    return-object v0
.end method

.method private dumpGnssDataListenersLocked(Ljava/io/PrintWriter;Landroid/util/ArrayMap;)V
    .locals 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "+",
            "Lcom/android/server/LocationManagerService$LinkedListenerBase;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$LinkedListenerBase;

    iget-object v2, v1, Lcom/android/server/LocationManagerService$LinkedListenerBase;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/location/CallerIdentity;->mPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/location/CallerIdentity;->mUid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->isThrottlingExemptLocked(Lcom/android/server/location/CallerIdentity;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private ensureFallbackFusedProviderPresentLocked([Ljava/lang/String;)V
    .locals 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const-string v0, "LocationManagerService"

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/android/server/ServiceWatcher;->getSignatureSets(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.location.service.FusedLocationProvider"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    const/16 v7, 0x80

    invoke-virtual {v1, v4, v7, v6}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/16 v9, 0x40

    :try_start_0
    invoke-virtual {v1, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    iget-object v10, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v10, v3}, Lcom/android/server/ServiceWatcher;->isSignatureMatch([Landroid/content/pm/Signature;Ljava/util/List;)Z

    move-result v10

    if-nez v10, :cond_1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " resolves service "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", but has wrong signature, ignoring"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    nop

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v9, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found fused provider without metadata: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const/4 v10, -0x1

    const-string/jumbo v11, "serviceVersion"

    invoke-virtual {v9, v11, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_6

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_3

    sget-boolean v10, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v10, :cond_0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Fallback candidate not in /system: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v1, v2, v8}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_4

    sget-boolean v10, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v10, :cond_0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Fallback candidate not signed the same as system: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    sget-boolean v5, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found fallback provider: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :cond_6
    sget-boolean v10, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v10, :cond_7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Fallback candidate not version 0: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    goto/16 :goto_0

    :catch_0
    move-exception v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "missing package: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v5, "Unable to find a fused location provider that is in the system partition with version 0 and signed with the platform certificate. Such a package is needed to provide a default fused location provider in the event that no other fused location provider has been installed or is currently available. For example, coreOnly boot mode when decrypting the data partition. The fallback must also be marked coreApp=\"true\" in the manifest"

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static foregroundAsString(Z)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "foreground"

    goto :goto_0

    :cond_0
    const-string v0, "background"

    :goto_0
    return-object v0
.end method

.method private getAllowedResolutionLevel(II)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getCallerAllowedResolutionLevel()I
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/LocationManagerService;->getAllowedResolutionLevel(II)I

    move-result v0

    return v0
.end method

.method private getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$LocationProvider;

    invoke-virtual {v1}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getMinimumResolutionLevelForProviderUseLocked(Ljava/lang/String;)I
    .locals 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_8

    const-string/jumbo v0, "passive"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const-string/jumbo v0, "network"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_7

    const-string v0, "fused"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$LocationProvider;

    invoke-virtual {v3}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/android/server/LocationManagerService$LocationProvider;->getPropertiesLocked()Lcom/android/internal/location/ProviderProperties;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-boolean v5, v4, Lcom/android/internal/location/ProviderProperties;->mRequiresSatellite:Z

    if-eqz v5, :cond_3

    return v1

    :cond_3
    iget-boolean v5, v4, Lcom/android/internal/location/ProviderProperties;->mRequiresNetwork:Z

    if-nez v5, :cond_4

    iget-boolean v5, v4, Lcom/android/internal/location/ProviderProperties;->mRequiresCell:Z

    if-eqz v5, :cond_5

    :cond_4
    return v2

    :cond_5
    goto :goto_0

    :cond_6
    return v1

    :cond_7
    :goto_1
    return v2

    :cond_8
    :goto_2
    return v1
.end method

.method private getReceiverLocked(Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;
    .locals 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object v10, p0

    move-object v11, p1

    iget-object v0, v10, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/LocationManagerService$Receiver;

    if-nez v12, :cond_0

    new-instance v13, Lcom/android/server/LocationManagerService$Receiver;

    const/4 v2, 0x0

    const/4 v9, 0x0

    move-object v0, v13

    move-object v1, p0

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/server/LocationManagerService$Receiver;-><init>(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;ZLcom/android/server/LocationManagerService$1;)V

    move-object v12, v13

    iget-object v0, v10, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v12
.end method

.method private getReceiverLocked(Landroid/location/ILocationListener;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;
    .locals 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object v10, p0

    invoke-interface {p1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    iget-object v0, v10, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/LocationManagerService$Receiver;

    if-nez v12, :cond_1

    new-instance v13, Lcom/android/server/LocationManagerService$Receiver;

    const/4 v3, 0x0

    const/4 v9, 0x0

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/server/LocationManagerService$Receiver;-><init>(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;ZLcom/android/server/LocationManagerService$1;)V

    move-object v12, v13

    invoke-virtual {v12}, Lcom/android/server/LocationManagerService$Receiver;->getListener()Landroid/location/ILocationListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0, v12}, Lcom/android/server/LocationManagerService;->linkToListenerDeathNotificationLocked(Landroid/os/IBinder;Lcom/android/server/LocationManagerService$LinkedListenerBase;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v10, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v12
.end method

.method private getResolutionPermission(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    return-object v0

    :cond_1
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    return-object v0
.end method

.method private handleLocationChangedLocked(Landroid/location/Location;Lcom/android/server/LocationManagerService$LocationProvider;)V
    .locals 30
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->isComplete()Z

    move-result v3

    const-string v4, "LocationManagerService"

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dropping incomplete location: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableLocked()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LocationManagerService$LocationProvider;->isPassiveLocked()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mPassiveProvider:Lcom/android/server/location/PassiveProvider;

    invoke-virtual {v3, v1}, Lcom/android/server/location/PassiveProvider;->updateLocation(Landroid/location/Location;)V

    :cond_2
    sget-boolean v3, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v3, :cond_3

    const-string v3, "incoming location: XXXXXXXXXXXXXXXXXXXXXXX"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableLocked()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/android/server/LocationManagerService;->updateLastLocationLocked(Landroid/location/Location;Ljava/lang/String;)V

    :cond_4
    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Location;

    if-nez v3, :cond_5

    new-instance v7, Landroid/location/Location;

    invoke-direct {v7, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    move-object v3, v7

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableLocked()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v7

    invoke-virtual {v3}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v9

    sub-long/2addr v7, v9

    const-wide v9, 0x8bb2c97000L

    cmp-long v9, v7, v9

    if-lez v9, :cond_6

    invoke-virtual {v3, v1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    :cond_6
    nop

    const-string/jumbo v9, "noGPSLocation"

    invoke-virtual {v3, v9}, Landroid/location/Location;->getExtraLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v9

    iget-object v10, v0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    if-eqz v10, :cond_26

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_7

    move-object/from16 v18, v3

    move-wide/from16 v19, v7

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    goto/16 :goto_a

    :cond_7
    const/4 v11, 0x0

    if-eqz v9, :cond_8

    iget-object v12, v0, Lcom/android/server/LocationManagerService;->mLocationFudger:Lcom/android/server/location/LocationFudger;

    invoke-virtual {v12, v9}, Lcom/android/server/location/LocationFudger;->getOrCreate(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v11

    :cond_8
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_22

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/LocationManagerService$UpdateRecord;

    iget-object v1, v15, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    const/16 v17, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableLocked()Z

    move-result v18

    if-nez v18, :cond_9

    invoke-direct {v0, v15}, Lcom/android/server/LocationManagerService;->isSettingsExemptLocked(Lcom/android/server/LocationManagerService$UpdateRecord;)Z

    move-result v18

    if-nez v18, :cond_9

    move-object/from16 v18, v3

    move-wide/from16 v19, v7

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    goto/16 :goto_4

    :cond_9
    move-object/from16 v18, v3

    iget-object v3, v1, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v3, v3, Lcom/android/server/location/CallerIdentity;->mUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v0, v3}, Lcom/android/server/LocationManagerService;->isCurrentProfileLocked(I)Z

    move-result v19

    if-nez v19, :cond_b

    move-wide/from16 v19, v7

    iget-object v7, v1, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v7, v7, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/android/server/LocationManagerService;->isProviderPackage(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c

    sget-boolean v7, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v7, :cond_a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "skipping loc update for background user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " (current user: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", app: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v8, v8, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    goto/16 :goto_4

    :cond_a
    move-object/from16 v24, v9

    move-object/from16 v25, v10

    goto/16 :goto_4

    :cond_b
    move-wide/from16 v19, v7

    :cond_c
    iget-object v7, v0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    iget-object v8, v1, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v8, v8, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/server/location/LocationBlacklist;->isBlacklisted(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    sget-boolean v7, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v7, :cond_d

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "skipping loc update for blacklisted app: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v8, v8, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    goto/16 :goto_4

    :cond_d
    move-object/from16 v24, v9

    move-object/from16 v25, v10

    goto/16 :goto_4

    :cond_e
    iget-object v7, v1, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v7, v7, Lcom/android/server/location/CallerIdentity;->mUid:I

    invoke-static {v7}, Lcom/android/server/am/OpBGFrozenInjector;->isBlockedGpsUid(I)Z

    move-result v7

    if-eqz v7, :cond_f

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "uid block  uid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v8, v8, Lcom/android/server/location/CallerIdentity;->mUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " package ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v8, v8, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    goto/16 :goto_4

    :cond_f
    iget v7, v1, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    const/4 v8, 0x2

    if-ge v7, v8, :cond_10

    move-object v7, v11

    goto :goto_1

    :cond_10
    move-object/from16 v7, p1

    :goto_1
    if-eqz v7, :cond_17

    invoke-static {v15}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$5000(Lcom/android/server/LocationManagerService$UpdateRecord;)Landroid/location/Location;

    move-result-object v8

    if-eqz v8, :cond_12

    invoke-static {v7, v8, v15, v5, v6}, Lcom/android/server/LocationManagerService;->shouldBroadcastSafeLocked(Landroid/location/Location;Landroid/location/Location;Lcom/android/server/LocationManagerService$UpdateRecord;J)Z

    move-result v22

    if-eqz v22, :cond_11

    goto :goto_2

    :cond_11
    move/from16 v22, v3

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    goto/16 :goto_5

    :cond_12
    :goto_2
    if-nez v8, :cond_13

    move/from16 v22, v3

    new-instance v3, Landroid/location/Location;

    invoke-direct {v3, v7}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    move-object v8, v3

    invoke-static {v15, v8}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$5002(Lcom/android/server/LocationManagerService$UpdateRecord;Landroid/location/Location;)Landroid/location/Location;

    goto :goto_3

    :cond_13
    move/from16 v22, v3

    invoke-virtual {v8, v7}, Landroid/location/Location;->set(Landroid/location/Location;)V

    :goto_3
    iget-object v3, v1, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v3, v3, Lcom/android/server/location/CallerIdentity;->mPid:I

    move-object/from16 v23, v8

    iget-object v8, v1, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v8, v8, Lcom/android/server/location/CallerIdentity;->mUid:I

    move-object/from16 v24, v9

    iget-object v9, v1, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v9, v9, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    move-object/from16 v25, v10

    iget v10, v1, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    invoke-direct {v0, v3, v8, v9, v10}, Lcom/android/server/LocationManagerService;->reportLocationAccessNoThrow(IILjava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_15

    sget-boolean v3, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v3, :cond_14

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "skipping loc update for no op app: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v8, v8, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    :goto_4
    move-object/from16 v1, p1

    move-object/from16 v3, v18

    move-wide/from16 v7, v19

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    goto/16 :goto_0

    :cond_15
    invoke-virtual {v1, v7}, Lcom/android/server/LocationManagerService$Receiver;->callLocationChangedLocked(Landroid/location/Location;)Z

    move-result v3

    if-nez v3, :cond_16

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RemoteException calling onLocationChanged on "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    move/from16 v17, v3

    :cond_16
    invoke-static {v15}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$4000(Lcom/android/server/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/LocationRequest;->decrementNumUpdates()V

    goto :goto_5

    :cond_17
    move/from16 v22, v3

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    :goto_5
    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v8, "location_disable_status_callbacks"

    const/4 v9, 0x1

    invoke-static {v3, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1b

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LocationManagerService$LocationProvider;->getStatusUpdateTimeLocked()J

    move-result-wide v8

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/server/LocationManagerService$LocationProvider;->getStatusLocked(Landroid/os/Bundle;)I

    move-result v10

    invoke-static {v15}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$5100(Lcom/android/server/LocationManagerService$UpdateRecord;)J

    move-result-wide v26

    cmp-long v16, v8, v26

    if-lez v16, :cond_1a

    const-wide/16 v28, 0x0

    cmp-long v16, v26, v28

    if-nez v16, :cond_18

    move-object/from16 v16, v7

    const/4 v7, 0x2

    if-eq v10, v7, :cond_1c

    goto :goto_6

    :cond_18
    move-object/from16 v16, v7

    :goto_6
    invoke-static {v15, v8, v9}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$5102(Lcom/android/server/LocationManagerService$UpdateRecord;J)J

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v10, v3}, Lcom/android/server/LocationManagerService$Receiver;->callStatusChangedLocked(Ljava/lang/String;ILandroid/os/Bundle;)Z

    move-result v7

    if-nez v7, :cond_19

    const/16 v17, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v3

    const-string v3, "RemoteException calling onStatusChanged on "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_19
    move-object/from16 v21, v3

    goto :goto_7

    :cond_1a
    move-object/from16 v21, v3

    move-object/from16 v16, v7

    goto :goto_7

    :cond_1b
    move-object/from16 v16, v7

    :cond_1c
    :goto_7
    invoke-static {v15}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$4000(Lcom/android/server/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result v3

    if-lez v3, :cond_1d

    invoke-static {v15}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$4000(Lcom/android/server/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/LocationRequest;->getExpireAt()J

    move-result-wide v7

    cmp-long v3, v7, v5

    if-gez v3, :cond_1f

    :cond_1d
    if-nez v13, :cond_1e

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v3

    :cond_1e
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    if-eqz v17, :cond_21

    if-nez v12, :cond_20

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v3

    :cond_20
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    move-object/from16 v1, p1

    move-object/from16 v3, v18

    move-wide/from16 v7, v19

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    goto/16 :goto_0

    :cond_22
    move-object/from16 v18, v3

    move-wide/from16 v19, v7

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    if-eqz v12, :cond_23

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$Receiver;

    invoke-direct {v0, v3}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    goto :goto_8

    :cond_23
    if-eqz v13, :cond_25

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$UpdateRecord;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$4800(Lcom/android/server/LocationManagerService$UpdateRecord;Z)V

    goto :goto_9

    :cond_24
    invoke-direct {v0, v2}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    :cond_25
    return-void

    :cond_26
    move-object/from16 v18, v3

    move-wide/from16 v19, v7

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    :goto_a
    return-void
.end method

.method private hasGnssPermissions(Ljava/lang/String;)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v1

    const-string v2, "gps"

    invoke-direct {p0, v1, v2}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUseLocked(ILjava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v2, v3, p1, v1}, Lcom/android/server/LocationManagerService;->checkLocationAccess(IILjava/lang/String;I)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return v6

    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private initializeLocked()V
    .locals 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mPowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mUserManager:Landroid/os/UserManager;

    new-instance v0, Lcom/android/server/location/LocationFudger;

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/server/location/LocationFudger;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLocationFudger:Lcom/android/server/location/LocationFudger;

    new-instance v0, Lcom/android/server/location/LocationBlacklist;

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/server/location/LocationBlacklist;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    invoke-virtual {v0}, Lcom/android/server/location/LocationBlacklist;->init()V

    new-instance v0, Lcom/android/server/location/GeofenceManager;

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    invoke-direct {v0, v1, v2}, Lcom/android/server/location/GeofenceManager;-><init>(Landroid/content/Context;Lcom/android/server/location/LocationBlacklist;)V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->initializeProvidersLocked()V

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    new-instance v1, Lcom/android/server/LocationManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/LocationManagerService$1;-><init>(Lcom/android/server/LocationManagerService;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;ILandroid/app/AppOpsManager$OnOpChangedListener;)V

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v1, Lcom/android/server/-$$Lambda$LocationManagerService$2PZQdsle7L3JDh5TZyL5YAyDqTk;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$LocationManagerService$2PZQdsle7L3JDh5TZyL5YAyDqTk;-><init>(Lcom/android/server/LocationManagerService;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    new-instance v1, Lcom/android/server/-$$Lambda$LocationManagerService$tHPgS5c0niUhGntiX8gOnWrZpg8;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$LocationManagerService$tHPgS5c0niUhGntiX8gOnWrZpg8;-><init>(Lcom/android/server/LocationManagerService;)V

    const/16 v4, 0x7d

    invoke-virtual {v0, v1, v4}, Landroid/app/ActivityManager;->addOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;I)V

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "location_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v4, Lcom/android/server/LocationManagerService$2;

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/android/server/LocationManagerService$2;-><init>(Lcom/android/server/LocationManagerService;Landroid/os/Handler;)V

    const/4 v5, -0x1

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "location_providers_allowed"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v4, Lcom/android/server/LocationManagerService$3;

    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v6}, Lcom/android/server/LocationManagerService$3;-><init>(Lcom/android/server/LocationManagerService;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "location_background_throttle_interval_ms"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v4, Lcom/android/server/LocationManagerService$4;

    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v6}, Lcom/android/server/LocationManagerService$4;-><init>(Lcom/android/server/LocationManagerService;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "location_background_throttle_package_whitelist"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v4, Lcom/android/server/LocationManagerService$5;

    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v6}, Lcom/android/server/LocationManagerService$5;-><init>(Lcom/android/server/LocationManagerService;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "location_ignore_settings_package_whitelist"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v4, Lcom/android/server/LocationManagerService$6;

    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v6}, Lcom/android/server/LocationManagerService$6;-><init>(Lcom/android/server/LocationManagerService;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    new-instance v1, Lcom/android/server/-$$Lambda$LocationManagerService$g2YvHnuXGNr_JWSge7Toq3BS9cY;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$LocationManagerService$g2YvHnuXGNr_JWSge7Toq3BS9cY;-><init>(Lcom/android/server/LocationManagerService;)V

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(ILjava/util/function/Consumer;)V

    new-instance v1, Lcom/android/server/LocationManagerService$7;

    invoke-direct {v1, p0}, Lcom/android/server/LocationManagerService$7;-><init>(Lcom/android/server/LocationManagerService;)V

    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v3}, Lcom/android/server/LocationManagerService$7;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/LocationManagerService$8;

    invoke-direct {v4, p0}, Lcom/android/server/LocationManagerService$8;-><init>(Lcom/android/server/LocationManagerService;)V

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v8, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    move-object v6, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v3, Lcom/android/server/lms/LmsInjector;

    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/lms/LmsInjector;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/android/server/lms/LmsInjector;->listenStatusOfEmergency()V

    const/16 v3, -0x2710

    iput v3, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->onUserChangedLocked(I)V

    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->onBackgroundThrottleWhitelistChangedLocked()V

    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->onIgnoreSettingsWhitelistChangedLocked()V

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->getLocationPowerSaveMode()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->onBatterySaverModeChangedLocked(I)V

    new-instance v2, Lcom/android/server/LocationManagerService$LocationManagerServiceInner;

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, p0}, Lcom/android/server/LocationManagerService$LocationManagerServiceInner;-><init>(Lcom/android/server/LocationManagerService;Landroid/content/Context;Lcom/android/server/LocationManagerService;)V

    invoke-static {v2}, Lcom/android/server/LocationManagerServiceInjector;->prepare(Lcom/android/server/LocationManagerService$LocationManagerServiceInner;)V

    invoke-static {p0, v2}, Lcom/android/server/am/OpBGFrozenInjector;->initFromLMS(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$LocationManagerServiceInner;)V

    return-void
.end method

.method private initializeProvidersLocked()V
    .locals 32
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Lcom/android/server/LocationManagerService$LocationProvider;

    const/4 v2, 0x0

    const-string/jumbo v3, "passive"

    invoke-direct {v1, v0, v3, v2}, Lcom/android/server/LocationManagerService$LocationProvider;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Lcom/android/server/LocationManagerService$1;)V

    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    new-instance v3, Lcom/android/server/location/PassiveProvider;

    iget-object v4, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v1}, Lcom/android/server/location/PassiveProvider;-><init>(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;)V

    iput-object v3, v0, Lcom/android/server/LocationManagerService;->mPassiveProvider:Lcom/android/server/location/PassiveProvider;

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mPassiveProvider:Lcom/android/server/location/PassiveProvider;

    invoke-virtual {v1, v3}, Lcom/android/server/LocationManagerService$LocationProvider;->attachLocked(Lcom/android/server/location/AbstractLocationProvider;)V

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->isSupported()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    new-instance v3, Lcom/android/server/LocationManagerService$LocationProvider;

    const-string v5, "gps"

    invoke-direct {v3, v0, v5, v4, v2}, Lcom/android/server/LocationManagerService$LocationProvider;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;ZLcom/android/server/LocationManagerService$1;)V

    iget-object v5, v0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {v0, v3}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    new-instance v5, Lcom/android/server/location/GnssLocationProvider;

    iget-object v6, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v7, v0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v5, v6, v3, v7}, Lcom/android/server/location/GnssLocationProvider;-><init>(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;Landroid/os/Looper;)V

    invoke-virtual {v3, v5}, Lcom/android/server/LocationManagerService$LocationProvider;->attachLocked(Lcom/android/server/location/AbstractLocationProvider;)V

    invoke-virtual {v5}, Lcom/android/server/location/GnssLocationProvider;->getGnssSystemInfoProvider()Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/LocationManagerService;->mGnssSystemInfoProvider:Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;

    invoke-virtual {v5}, Lcom/android/server/location/GnssLocationProvider;->getGnssBatchingProvider()Lcom/android/server/location/GnssBatchingProvider;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    invoke-virtual {v5}, Lcom/android/server/location/GnssLocationProvider;->getGnssMetricsProvider()Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/LocationManagerService;->mGnssMetricsProvider:Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;

    invoke-virtual {v5}, Lcom/android/server/location/GnssLocationProvider;->getGnssCapabilitiesProvider()Lcom/android/server/location/GnssCapabilitiesProvider;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/LocationManagerService;->mGnssCapabilitiesProvider:Lcom/android/server/location/GnssCapabilitiesProvider;

    invoke-virtual {v5}, Lcom/android/server/location/GnssLocationProvider;->getGnssStatusProvider()Lcom/android/server/location/GnssStatusListenerHelper;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/LocationManagerService;->mGnssStatusProvider:Lcom/android/server/location/GnssStatusListenerHelper;

    invoke-virtual {v5}, Lcom/android/server/location/GnssLocationProvider;->getNetInitiatedListener()Landroid/location/INetInitiatedListener;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/LocationManagerService;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    invoke-virtual {v5}, Lcom/android/server/location/GnssLocationProvider;->getGnssMeasurementsProvider()Lcom/android/server/location/GnssMeasurementsProvider;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    nop

    invoke-virtual {v5}, Lcom/android/server/location/GnssLocationProvider;->getGnssMeasurementCorrectionsProvider()Lcom/android/server/location/GnssMeasurementCorrectionsProvider;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/LocationManagerService;->mGnssMeasurementCorrectionsProvider:Lcom/android/server/location/GnssMeasurementCorrectionsProvider;

    invoke-virtual {v5}, Lcom/android/server/location/GnssLocationProvider;->getGnssNavigationMessageProvider()Lcom/android/server/location/GnssNavigationMessageProvider;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    invoke-virtual {v5}, Lcom/android/server/location/GnssLocationProvider;->getGpsGeofenceProxy()Landroid/location/IGpsGeofenceHardware;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/LocationManagerService;->mGpsGeofenceProxy:Landroid/location/IGpsGeofenceHardware;

    :cond_0
    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x107005c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    sget-boolean v7, Lcom/android/server/LocationManagerService;->D:Z

    const-string v8, "LocationManagerService"

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "certificates for location providers pulled from: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {v0, v6}, Lcom/android/server/LocationManagerService;->ensureFallbackFusedProviderPresentLocked([Ljava/lang/String;)V

    new-instance v7, Lcom/android/server/LocationManagerService$LocationProvider;

    const-string/jumbo v9, "network"

    invoke-direct {v7, v0, v9, v4, v2}, Lcom/android/server/LocationManagerService$LocationProvider;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;ZLcom/android/server/LocationManagerService$1;)V

    iget-object v10, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const v13, 0x1110077

    const v14, 0x104019a

    const v15, 0x107005c

    const-string v12, "com.android.location.service.v3.NetworkLocationProvider"

    move-object v11, v7

    invoke-static/range {v10 .. v15}, Lcom/android/server/location/LocationProviderProxy;->createAndBind(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;Ljava/lang/String;III)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v9

    if-eqz v9, :cond_2

    iget-object v10, v0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {v0, v7}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    invoke-virtual {v7, v9}, Lcom/android/server/LocationManagerService$LocationProvider;->attachLocked(Lcom/android/server/location/AbstractLocationProvider;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v10, "no network location provider found"

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v10, Lcom/android/server/LocationManagerService$LocationProvider;

    const-string v11, "fused"

    invoke-direct {v10, v0, v11, v2}, Lcom/android/server/LocationManagerService$LocationProvider;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Lcom/android/server/LocationManagerService$1;)V

    iget-object v12, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const v15, 0x111006f

    const v16, 0x1040180

    const v17, 0x107005c

    const-string v14, "com.android.location.service.FusedLocationProvider"

    move-object v13, v10

    invoke-static/range {v12 .. v17}, Lcom/android/server/location/LocationProviderProxy;->createAndBind(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;Ljava/lang/String;III)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v11

    if-eqz v11, :cond_3

    iget-object v12, v0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {v0, v10}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    invoke-virtual {v10, v11}, Lcom/android/server/LocationManagerService$LocationProvider;->attachLocked(Lcom/android/server/location/AbstractLocationProvider;)V

    goto :goto_1

    :cond_3
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "Location service needs a fused location provider"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string/jumbo v13, "no fused location provider found"

    invoke-static {v8, v13, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-object v12, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const v13, 0x1110070

    const v14, 0x1040181

    invoke-static {v12, v13, v14, v5}, Lcom/android/server/location/GeocoderProxy;->createAndBind(Landroid/content/Context;III)Lcom/android/server/location/GeocoderProxy;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    iget-object v5, v0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-nez v5, :cond_4

    const-string/jumbo v5, "no geocoder provider found"

    invoke-static {v8, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v12, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const v13, 0x1110071

    const v14, 0x1040182

    const v15, 0x107005c

    iget-object v5, v0, Lcom/android/server/LocationManagerService;->mGpsGeofenceProxy:Landroid/location/IGpsGeofenceHardware;

    const/16 v17, 0x0

    move-object/from16 v16, v5

    invoke-static/range {v12 .. v17}, Lcom/android/server/location/GeofenceProxy;->createAndBind(Landroid/content/Context;IIILandroid/location/IGpsGeofenceHardware;Landroid/location/IFusedGeofenceHardware;)Lcom/android/server/location/GeofenceProxy;

    move-result-object v5

    if-nez v5, :cond_5

    const-string v12, "Unable to bind FLP Geofence proxy."

    invoke-static {v8, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const v12, 0x1040151

    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Lcom/android/server/LocationManagerService;->mComboNlpPackageName:Ljava/lang/String;

    iget-object v12, v0, Lcom/android/server/LocationManagerService;->mComboNlpPackageName:Ljava/lang/String;

    if-eqz v12, :cond_6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mComboNlpPackageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ".nlp:ready"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Lcom/android/server/LocationManagerService;->mComboNlpReadyMarker:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mComboNlpPackageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ".nlp:screen"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Lcom/android/server/LocationManagerService;->mComboNlpScreenMarker:Ljava/lang/String;

    :cond_6
    invoke-static {}, Landroid/hardware/location/ActivityRecognitionHardware;->isSupported()Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_7

    iget-object v14, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v14}, Landroid/hardware/location/ActivityRecognitionHardware;->getInstance(Landroid/content/Context;)Landroid/hardware/location/ActivityRecognitionHardware;

    move-result-object v13

    move-object/from16 v19, v13

    goto :goto_2

    :cond_7
    const-string v14, "Hardware Activity-Recognition not supported."

    invoke-static {v8, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v19, v13

    :goto_2
    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const v16, 0x1110068

    const v17, 0x1040136

    const v18, 0x107005c

    move v14, v12

    move-object/from16 v15, v19

    invoke-static/range {v13 .. v18}, Lcom/android/server/location/ActivityRecognitionProxy;->createAndBind(Landroid/content/Context;ZLandroid/hardware/location/ActivityRecognitionHardware;III)Lcom/android/server/location/ActivityRecognitionProxy;

    move-result-object v13

    if-nez v13, :cond_8

    const-string v14, "Unable to bind ActivityRecognitionProxy."

    invoke-static {v8, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const v8, 0x1070094

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    array-length v14, v8

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v14, :cond_9

    aget-object v4, v8, v2

    const-string v15, ","

    invoke-virtual {v4, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    const/16 v18, 0x0

    aget-object v20, v15, v18

    move-object/from16 v21, v1

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    new-instance v20, Lcom/android/internal/location/ProviderProperties;

    const/16 v17, 0x1

    aget-object v22, v15, v17

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v23

    const/16 v22, 0x2

    aget-object v22, v15, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v24

    const/16 v22, 0x3

    aget-object v22, v15, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v25

    const/16 v22, 0x4

    aget-object v22, v15, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v26

    const/16 v22, 0x5

    aget-object v22, v15, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v27

    const/16 v22, 0x6

    aget-object v22, v15, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v28

    const/16 v22, 0x7

    aget-object v22, v15, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v29

    const/16 v22, 0x8

    aget-object v22, v15, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    const/16 v22, 0x9

    aget-object v22, v15, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    move-object/from16 v22, v20

    invoke-direct/range {v22 .. v31}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    move-object/from16 v20, v3

    new-instance v3, Lcom/android/server/LocationManagerService$LocationProvider;

    move-object/from16 v23, v4

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v4}, Lcom/android/server/LocationManagerService$LocationProvider;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Lcom/android/server/LocationManagerService$1;)V

    invoke-direct {v0, v3}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    new-instance v4, Lcom/android/server/location/MockProvider;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-direct {v4, v1, v3, v0}, Lcom/android/server/location/MockProvider;-><init>(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;Lcom/android/internal/location/ProviderProperties;)V

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    move/from16 v4, v17

    move-object/from16 v3, v20

    move-object/from16 v1, v21

    goto/16 :goto_3

    :cond_9
    return-void
.end method

.method private isCurrentProfileLocked(I)Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mCurrentUserProfiles:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    return v0
.end method

.method private static isImportanceForeground(I)Z
    .locals 1

    const/16 v0, 0x7d

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isLocationEnabled()Z
    .locals 1

    iget v0, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    invoke-virtual {p0, v0}, Lcom/android/server/LocationManagerService;->isLocationEnabledForUser(I)Z

    move-result v0

    return v0
.end method

.method private isSettingsExemptLocked(Lcom/android/server/LocationManagerService$UpdateRecord;)Z
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$4000(Lcom/android/server/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationRequest;->isLocationSettingsIgnored()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mIgnoreSettingsPackageWhitelist:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v1, v1, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v1, v1, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p1, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v0, v0, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/LocationManagerService;->isProviderPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isThrottlingExemptLocked(Lcom/android/server/location/CallerIdentity;)Z
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    iget v0, p1, Lcom/android/server/location/CallerIdentity;->mUid:I

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    iget-object v2, p1, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    const-string v2, "cttl"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/LocationManagerService;->isProviderPackage(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method private static isValidWorkSource(Landroid/os/WorkSource;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/os/WorkSource;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/WorkSource$WorkChain;

    invoke-virtual {v3}, Landroid/os/WorkSource$WorkChain;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method private linkToListenerDeathNotificationLocked(Landroid/os/IBinder;Lcom/android/server/LocationManagerService$LinkedListenerBase;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, p2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not link "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/android/server/LocationManagerService$LinkedListenerBase;->mListenerName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " death callback."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LocationManagerService"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private onAppOpChangedLocked()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$Receiver;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$LocationProvider;

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private onBackgroundThrottleIntervalChangedLocked()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$LocationProvider;

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onBackgroundThrottleWhitelistChangedLocked()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getAllowUnthrottledLocation()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "location_background_throttle_package_whitelist"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$LocationProvider;

    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onBatterySaverModeChangedLocked(I)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Battery Saver location mode changed from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/LocationManagerService;->mBatterySaverMode:I

    invoke-static {v1}, Landroid/os/PowerManager;->locationPowerSaveModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/os/PowerManager;->locationPowerSaveModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/server/LocationManagerService;->mBatterySaverMode:I

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput p1, p0, Lcom/android/server/LocationManagerService;->mBatterySaverMode:I

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$LocationProvider;

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private onIgnoreSettingsWhitelistChangedLocked()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "lock"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mIgnoreSettingsPackageWhitelist:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mIgnoreSettingsPackageWhitelist:Landroid/util/ArraySet;

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getAllowIgnoreLocationSettings()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "location_ignore_settings_package_whitelist"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mIgnoreSettingsPackageWhitelist:Landroid/util/ArraySet;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$LocationProvider;

    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onLocationModeChangedLocked(Z)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "location enabled is now "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->isLocationEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$LocationProvider;

    invoke-virtual {v1}, Lcom/android/server/LocationManagerService$LocationProvider;->onLocationModeChangedLocked()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.location.MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_2
    return-void
.end method

.method private onPackageDisappearedLocked(Ljava/lang/String;)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$Receiver;

    iget-object v3, v2, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v3, v3, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$Receiver;

    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private onPermissionsChangedLocked()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$LocationProvider;

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onProviderAllowedChangedLocked()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$LocationProvider;

    invoke-virtual {v1}, Lcom/android/server/LocationManagerService$LocationProvider;->onAllowedChangedLocked()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onScreenStateChangedLocked()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    iget v0, p0, Lcom/android/server/LocationManagerService;->mBatterySaverMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$LocationProvider;

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onUidImportanceChangedLocked(II)V
    .locals 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    invoke-static {p2}, Lcom/android/server/LocationManagerService;->isImportanceForeground(I)Z

    move-result v6

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    move-object v7, v0

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/LocationManagerService$UpdateRecord;

    iget-object v5, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v5, v5, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v5, v5, Lcom/android/server/location/CallerIdentity;->mUid:I

    if-ne v5, p1, :cond_1

    invoke-static {v4}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1500(Lcom/android/server/LocationManagerService$UpdateRecord;)Z

    move-result v5

    if-eq v5, v6, :cond_1

    sget-boolean v5, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "request from uid "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " is now "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/LocationManagerService;->foregroundAsString(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "LocationManagerService"

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v4, v6}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1600(Lcom/android/server/LocationManagerService$UpdateRecord;Z)V

    iget-object v5, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v5, v5, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    invoke-direct {p0, v5}, Lcom/android/server/LocationManagerService;->isThrottlingExemptLocked(Lcom/android/server/location/CallerIdentity;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v7, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_1

    :cond_2
    goto :goto_0

    :cond_3
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    sget-object v3, Lcom/android/server/-$$Lambda$qoNbXUvSu3yuTPVXPUfZW_HDrTQ;->INSTANCE:Lcom/android/server/-$$Lambda$qoNbXUvSu3yuTPVXPUfZW_HDrTQ;

    move-object v0, p0

    move v4, p1

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LocationManagerService;->updateGnssDataProviderOnUidImportanceChangedLocked(Landroid/util/ArrayMap;Lcom/android/server/location/RemoteListenerHelper;Ljava/util/function/Function;IZ)V

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    sget-object v3, Lcom/android/server/-$$Lambda$HALkbmbB2IPr_wdFkPjiIWCzJsY;->INSTANCE:Lcom/android/server/-$$Lambda$HALkbmbB2IPr_wdFkPjiIWCzJsY;

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LocationManagerService;->updateGnssDataProviderOnUidImportanceChangedLocked(Landroid/util/ArrayMap;Lcom/android/server/location/RemoteListenerHelper;Ljava/util/function/Function;IZ)V

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssStatusListeners:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mGnssStatusProvider:Lcom/android/server/location/GnssStatusListenerHelper;

    sget-object v3, Lcom/android/server/-$$Lambda$hu439-4T6QBT8QyZnspMtXqICWs;->INSTANCE:Lcom/android/server/-$$Lambda$hu439-4T6QBT8QyZnspMtXqICWs;

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LocationManagerService;->updateGnssDataProviderOnUidImportanceChangedLocked(Landroid/util/ArrayMap;Lcom/android/server/location/RemoteListenerHelper;Ljava/util/function/Function;IZ)V

    return-void
.end method

.method private onUserChangedLocked(I)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    iget v0, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "foreground user is changing to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$LocationProvider;

    invoke-virtual {v1}, Lcom/android/server/LocationManagerService$LocationProvider;->onUserChangingLocked()V

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->onUserProfilesChangedLocked()V

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    invoke-virtual {v0, p1}, Lcom/android/server/location/LocationBlacklist;->switchUser(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->onLocationModeChangedLocked(Z)V

    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->onProviderAllowedChangedLocked()V

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$LocationProvider;

    invoke-virtual {v2, v0}, Lcom/android/server/LocationManagerService$LocationProvider;->onUseableChangedLocked(Z)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private onUserProfilesChangedLocked()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mUserManager:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mCurrentUserProfiles:[I

    return-void
.end method

.method private removeGnssDataListener(Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T",
            "Listener::Landroid/os/IInterface;",
            ">(TT",
            "Listener;",
            "Lcom/android/server/location/RemoteListenerHelper<",
            "TT",
            "Listener;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/LocationManagerService$LinkedListener<",
            "TT",
            "Listener;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-interface/range {p1 .. p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    move-object/from16 v5, p3

    :try_start_0
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService$LinkedListener;

    move-object v6, v0

    if-nez v6, :cond_1

    monitor-exit v4

    return-void

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, v1, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    if-eq v2, v0, :cond_2

    iget-object v0, v1, Lcom/android/server/LocationManagerService;->mGnssStatusProvider:Lcom/android/server/location/GnssStatusListenerHelper;

    if-ne v2, v0, :cond_4

    :cond_2
    iget-object v9, v1, Lcom/android/server/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/LocationUsageLogger;

    const/4 v10, 0x1

    iget-object v0, v1, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    if-ne v2, v0, :cond_3

    const/4 v0, 0x2

    move v11, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    move v11, v0

    :goto_0
    iget-object v0, v6, Lcom/android/server/LocationManagerService$LinkedListener;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v12, v0, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v16, 0x0

    iget-object v0, v1, Lcom/android/server/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    iget-object v15, v6, Lcom/android/server/LocationManagerService$LinkedListener;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v15, v15, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v15}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v0

    const/4 v15, 0x0

    move/from16 v17, v0

    invoke-virtual/range {v9 .. v17}, Lcom/android/server/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :try_start_2
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    invoke-direct {v1, v3, v6}, Lcom/android/server/LocationManagerService;->unlinkFromListenerDeathNotificationLocked(Landroid/os/IBinder;Lcom/android/server/LocationManagerService$LinkedListenerBase;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v9, p1

    :try_start_3
    invoke-virtual {v2, v9}, Lcom/android/server/location/RemoteListenerHelper;->removeListener(Landroid/os/IInterface;)V

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v9, p1

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catchall_1
    move-exception v0

    move-object/from16 v9, p1

    :goto_1
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_1
.end method

.method private removeProviderLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/LocationManagerService$LocationProvider;->onUseableChangedLocked(Z)V

    :cond_0
    return-void
.end method

.method private removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V
    .locals 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/LocationManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "remove "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/android/server/LocationManagerService$Receiver;->access$4900(Lcom/android/server/LocationManagerService$Receiver;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$Receiver;->isListener()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$Receiver;->getListener()Landroid/location/ILocationListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/LocationManagerService;->unlinkFromListenerDeathNotificationLocked(Landroid/os/IBinder;Lcom/android/server/LocationManagerService$LinkedListenerBase;)Z

    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$Receiver;->clearPendingBroadcastsLocked()V

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(Z)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p1, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/LocationManagerService$UpdateRecord;

    invoke-static {v4, v0}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$4800(Lcom/android/server/LocationManagerService$UpdateRecord;Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_4
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method private reportLocationAccessNoThrow(IILjava/lang/String;I)Z
    .locals 3

    invoke-static {p4}, Lcom/android/server/LocationManagerService;->resolutionLevelToOp(I)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v0, p2, p3}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->getAllowedResolutionLevel(II)I

    move-result v2

    if-lt v2, p4, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private requestLocationUpdatesLocked(Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;ILjava/lang/String;)V
    .locals 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    :cond_0
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-direct {p0, v6}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v7

    if-eqz v7, :cond_7

    new-instance v8, Lcom/android/server/LocationManagerService$UpdateRecord;

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LocationManagerService$UpdateRecord;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;Lcom/android/server/LocationManagerService$1;)V

    sget-boolean v1, Lcom/android/server/LocationManagerService;->D:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/server/LocationManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_4

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1500(Lcom/android/server/LocationManagerService$UpdateRecord;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "foreground"

    goto :goto_0

    :cond_2
    const-string v2, "background"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->isThrottlingExemptLocked(Lcom/android/server/location/CallerIdentity;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, " [whitelisted]"

    goto :goto_1

    :cond_3
    const-string v2, ""

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocationManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p2, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$UpdateRecord;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-static {v1, v2}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$4800(Lcom/android/server/LocationManagerService$UpdateRecord;Z)V

    :cond_5
    invoke-virtual {v7}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableLocked()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->isSettingsExemptLocked(Lcom/android/server/LocationManagerService$UpdateRecord;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {p2, v6, v2}, Lcom/android/server/LocationManagerService$Receiver;->access$3900(Lcom/android/server/LocationManagerService$Receiver;Ljava/lang/String;Z)Z

    :cond_6
    invoke-direct {p0, v6}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(Z)V

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "provider doesn\'t exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "provider name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static resolutionLevelToOp(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private static resolutionLevelToOpStr(I)Ljava/lang/String;
    .locals 2

    const-string v0, "android:fine_location"

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    return-object v0

    :cond_0
    return-object v0

    :cond_1
    const-string v0, "android:coarse_location"

    return-object v0

    :cond_2
    return-object v0
.end method

.method private static shouldBroadcastSafeLocked(Landroid/location/Location;Landroid/location/Location;Lcom/android/server/LocationManagerService$UpdateRecord;J)Z
    .locals 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {p2}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$4000(Lcom/android/server/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/LocationRequest;->getFastestInterval()J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    const-wide/16 v5, 0x64

    sub-long v5, v1, v5

    cmp-long v5, v3, v5

    const/4 v6, 0x0

    if-gez v5, :cond_1

    return v6

    :cond_1
    invoke-static {p2}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$4000(Lcom/android/server/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v5

    invoke-virtual {v5}, Landroid/location/LocationRequest;->getSmallestDisplacement()F

    move-result v5

    float-to-double v7, v5

    const-wide/16 v9, 0x0

    cmpl-double v5, v7, v9

    if-lez v5, :cond_2

    invoke-virtual {p0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v5

    float-to-double v9, v5

    cmpg-double v5, v9, v7

    if-gtz v5, :cond_2

    return v6

    :cond_2
    invoke-static {p2}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$4000(Lcom/android/server/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v5

    invoke-virtual {v5}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result v5

    if-gtz v5, :cond_3

    return v6

    :cond_3
    invoke-static {p2}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$4000(Lcom/android/server/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v5

    invoke-virtual {v5}, Landroid/location/LocationRequest;->getExpireAt()J

    move-result-wide v9

    cmp-long v5, v9, p3

    if-ltz v5, :cond_4

    goto :goto_0

    :cond_4
    move v0, v6

    :goto_0
    return v0
.end method

.method private unlinkFromListenerDeathNotificationLocked(Landroid/os/IBinder;Lcom/android/server/LocationManagerService$LinkedListenerBase;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, p2, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not unlink "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/android/server/LocationManagerService$LinkedListenerBase;->mListenerName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " death callback."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LocationManagerService"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private updateGnssDataProviderOnUidImportanceChangedLocked(Landroid/util/ArrayMap;Lcom/android/server/location/RemoteListenerHelper;Ljava/util/function/Function;IZ)V
    .locals 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T",
            "Listener::Landroid/os/IInterface;",
            ">(",
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "+",
            "Lcom/android/server/LocationManagerService$LinkedListenerBase;",
            ">;",
            "Lcom/android/server/location/RemoteListenerHelper<",
            "TT",
            "Listener;",
            ">;",
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TT",
            "Listener;",
            ">;IZ)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$LinkedListenerBase;

    iget-object v3, v2, Lcom/android/server/LocationManagerService$LinkedListenerBase;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v4, v3, Lcom/android/server/location/CallerIdentity;->mUid:I

    if-eq v4, p4, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v4, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/android/server/LocationManagerService$LinkedListenerBase;->mListenerName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is now "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Lcom/android/server/LocationManagerService;->foregroundAsString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LocationManagerService"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    invoke-interface {p3, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IInterface;

    if-nez p5, :cond_3

    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->isThrottlingExemptLocked(Lcom/android/server/location/CallerIdentity;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2, v4}, Lcom/android/server/location/RemoteListenerHelper;->removeListener(Landroid/os/IInterface;)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p2, v4, v3}, Lcom/android/server/location/RemoteListenerHelper;->addListener(Landroid/os/IInterface;Lcom/android/server/location/CallerIdentity;)V

    :goto_2
    goto :goto_0

    :cond_4
    return-void
.end method

.method private updateLastLocationLocked(Landroid/location/Location;Ljava/lang/String;)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const-string/jumbo v0, "noGPSLocation"

    invoke-virtual {p1, v0}, Landroid/location/Location;->getExtraLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    if-nez v2, :cond_0

    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v0, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Landroid/location/Location;->getExtraLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    if-nez v1, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {p1, v0, v3}, Landroid/location/Location;->setExtraLocation(Ljava/lang/String;Landroid/location/Location;)V

    :cond_1
    :goto_0
    invoke-virtual {v2, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    return-void
.end method

.method private updateProviderUseableLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V
    .locals 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableLocked()Z

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/LocationManagerService$UpdateRecord;

    iget-object v5, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v5, v5, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v5, v5, Lcom/android/server/location/CallerIdentity;->mUid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/LocationManagerService;->isCurrentProfileLocked(I)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v4}, Lcom/android/server/LocationManagerService;->isSettingsExemptLocked(Lcom/android/server/LocationManagerService$UpdateRecord;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    iget-object v5, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v5, v5, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v5, v5, Lcom/android/server/location/CallerIdentity;->mUid:I

    invoke-static {v5}, Lcom/android/server/am/OpBGFrozenInjector;->isBlockedGpsUid(I)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateProviderUseableLocked uid block  uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v6, v6, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v6, v6, Lcom/android/server/location/CallerIdentity;->mUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " package ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v6, v6, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v6, v6, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LocationManagerService"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v5, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/android/server/LocationManagerService$Receiver;->access$3900(Lcom/android/server/LocationManagerService$Receiver;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_4

    if-nez v1, :cond_3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v5

    :cond_3
    iget-object v5, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    goto :goto_0

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_6

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/LocationManagerService$Receiver;

    invoke-direct {p0, v4}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_6
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    return-void
.end method


# virtual methods
.method public addGnssBatchingCallback(Landroid/location/IBatchedLocationCallback;Ljava/lang/String;)Z
    .locals 9

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Location Hardware permission not granted to access hardware batching"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->hasGnssPermissions(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v5, Lcom/android/server/location/CallerIdentity;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-direct {v5, v0, v2, p2}, Lcom/android/server/location/CallerIdentity;-><init>(IILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingCallback:Landroid/location/IBatchedLocationCallback;

    new-instance v8, Lcom/android/server/LocationManagerService$LinkedListener;

    const-string v4, "BatchedLocationCallback"

    new-instance v6, Lcom/android/server/-$$Lambda$LocationManagerService$ma_5PjwiFAbM39eIaW8jFG89f1w;

    invoke-direct {v6, p0}, Lcom/android/server/-$$Lambda$LocationManagerService$ma_5PjwiFAbM39eIaW8jFG89f1w;-><init>(Lcom/android/server/LocationManagerService;)V

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/LocationManagerService$LinkedListener;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/android/server/location/CallerIdentity;Ljava/util/function/Consumer;Lcom/android/server/LocationManagerService$1;)V

    iput-object v8, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingDeathCallback:Lcom/android/server/LocationManagerService$LinkedListener;

    invoke-interface {p1}, Landroid/location/IBatchedLocationCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingDeathCallback:Lcom/android/server/LocationManagerService$LinkedListener;

    invoke-direct {p0, v2, v3}, Lcom/android/server/LocationManagerService;->linkToListenerDeathNotificationLocked(Landroid/os/IBinder;Lcom/android/server/LocationManagerService$LinkedListenerBase;)Z

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v0

    return v1

    :cond_1
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_0
    return v1
.end method

.method public addGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;Ljava/lang/String;)Z
    .locals 7

    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    new-instance v6, Lcom/android/server/-$$Lambda$XnEj1qgrS2tLlw6uNlntfcuKl88;

    invoke-direct {v6, p0}, Lcom/android/server/-$$Lambda$XnEj1qgrS2tLlw6uNlntfcuKl88;-><init>(Lcom/android/server/LocationManagerService;)V

    const-string v3, "GnssMeasurementsListener"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/LocationManagerService;->addGnssDataListener(Landroid/os/IInterface;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;Ljava/util/function/Consumer;)Z

    move-result v0

    return v0
.end method

.method public addGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;Ljava/lang/String;)Z
    .locals 7

    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    new-instance v6, Lcom/android/server/-$$Lambda$wg7j1ZorSDGIu2L17I_NmjcwgzQ;

    invoke-direct {v6, p0}, Lcom/android/server/-$$Lambda$wg7j1ZorSDGIu2L17I_NmjcwgzQ;-><init>(Lcom/android/server/LocationManagerService;)V

    const-string v3, "GnssNavigationMessageListener"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/LocationManagerService;->addGnssDataListener(Landroid/os/IInterface;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;Ljava/util/function/Consumer;)Z

    move-result v0

    return v0
.end method

.method public addTestProvider(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "passive"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/server/LocationManagerService$LocationProvider;->isMock()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->removeProviderLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\" already exists"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    :goto_0
    new-instance v4, Lcom/android/server/LocationManagerService$MockLocationProvider;

    const/4 v5, 0x0

    invoke-direct {v4, p0, p1, v5}, Lcom/android/server/LocationManagerService$MockLocationProvider;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Lcom/android/server/LocationManagerService$1;)V

    invoke-direct {p0, v4}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    new-instance v5, Lcom/android/server/location/MockProvider;

    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v4, p2}, Lcom/android/server/location/MockProvider;-><init>(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;Lcom/android/internal/location/ProviderProperties;)V

    invoke-virtual {v4, v5}, Lcom/android/server/LocationManagerService$MockLocationProvider;->attachLocked(Lcom/android/server/location/AbstractLocationProvider;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot mock the passive location provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkLocationAccess(IILjava/lang/String;I)Z
    .locals 3

    invoke-static {p4}, Lcom/android/server/LocationManagerService;->resolutionLevelToOp(I)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->getAllowedResolutionLevel(II)I

    move-result v2

    if-lt v2, p4, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "LocationManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    array-length v1, p3

    const/4 v2, 0x0

    if-lez v1, :cond_2

    aget-object v1, p3, v2

    const-string v3, "--gnssmetrics"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssMetricsProvider:Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssMetricsProvider:Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;

    invoke-interface {v1}, Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;->getGnssMetricsAsProtoString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    :cond_1
    monitor-exit v0

    return-void

    :cond_2
    const-string v1, "Current Location Manager state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Current System Time: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", Current Elapsed Time: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Current user: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mCurrentUserProfiles:[I

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Location mode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->isLocationEnabled()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Battery Saver Location Mode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/LocationManagerService;->mBatterySaverMode:I

    invoke-static {v3}, Landroid/os/PowerManager;->locationPowerSaveModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  Location Listeners:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$Receiver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "  Active Records by Provider:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LocationManagerService$UpdateRecord;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "      "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    goto :goto_1

    :cond_5
    const-string v1, "  Active GnssMeasurement Listeners:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    invoke-direct {p0, p2, v1}, Lcom/android/server/LocationManagerService;->dumpGnssDataListenersLocked(Ljava/io/PrintWriter;Landroid/util/ArrayMap;)V

    const-string v1, "  Active GnssNavigationMessage Listeners:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    invoke-direct {p0, p2, v1}, Lcom/android/server/LocationManagerService;->dumpGnssDataListenersLocked(Ljava/io/PrintWriter;Landroid/util/ArrayMap;)V

    const-string v1, "  Active GnssStatus Listeners:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssStatusListeners:Landroid/util/ArrayMap;

    invoke-direct {p0, p2, v1}, Lcom/android/server/LocationManagerService;->dumpGnssDataListenersLocked(Ljava/io/PrintWriter;Landroid/util/ArrayMap;)V

    const-string v1, "  Historical Records by Provider:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

    iget-object v1, v1, Lcom/android/server/location/LocationRequestStatistics;->statistics:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->providerName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const-string v1, "  Last Known Locations:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/Location;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    const-string v1, "  Last Known Locations Coarse Intervals:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/Location;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    invoke-virtual {v1, p2}, Lcom/android/server/location/GeofenceManager;->dump(Ljava/io/PrintWriter;)V

    goto :goto_6

    :cond_9
    const-string v1, "  Geofences: null"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_6
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    if-eqz v1, :cond_a

    const-string v1, "  "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    invoke-virtual {v1, p2}, Lcom/android/server/location/LocationBlacklist;->dump(Ljava/io/PrintWriter;)V

    goto :goto_7

    :cond_a
    const-string v1, "  mBlacklist=null"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_7
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Location controller extra package: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " enabled: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/LocationManagerService;->mExtraLocationControllerPackageEnabled:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_b
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "  Throttling Whitelisted Packages:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    :cond_c
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mIgnoreSettingsPackageWhitelist:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "  Bypass Whitelisted Packages:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mIgnoreSettingsPackageWhitelist:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9

    :cond_d
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLocationFudger:Lcom/android/server/location/LocationFudger;

    if-eqz v1, :cond_e

    const-string v1, "  fudger: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLocationFudger:Lcom/android/server/location/LocationFudger;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/location/LocationFudger;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_a

    :cond_e
    const-string v1, "  fudger: null"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_a
    array-length v1, p3

    if-lez v1, :cond_f

    const-string/jumbo v1, "short"

    aget-object v2, p3, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    monitor-exit v0

    return-void

    :cond_f
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$LocationProvider;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/LocationManagerService$LocationProvider;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_b

    :cond_10
    iget-boolean v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingInProgress:Z

    if-eqz v1, :cond_11

    const-string v1, "  GNSS batching in progress"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_11
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public flushGnssBatch(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Location Hardware permission not granted to access hardware batching"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->hasGnssPermissions(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LocationManagerService"

    const-string v1, "flushGnssBatch called without GNSS permissions"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingInProgress:Z

    if-nez v1, :cond_1

    const-string v1, "LocationManagerService"

    const-string v2, "flushGnssBatch called with no batch in progress"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    invoke-virtual {v1}, Lcom/android/server/location/GnssBatchingProvider;->flush()V

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

.method public geocoderIsPresent()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAllProviders()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$LocationProvider;

    invoke-virtual {v3}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "fused"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBackgroundThrottlingWhitelist()[Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    const-string/jumbo v1, "network"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    :cond_3
    return-object v2
.end method

.method public getCurrentProviderPackageList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->isLocationEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-static {p1, v0, v2}, Lcom/android/server/OpGpsNotificationInjector;->getCurrentProviderPackageList(Ljava/lang/String;ZLjava/util/HashMap;)Ljava/util/List;

    move-result-object v2

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getCurrentProviderPackageListsForInteger(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->isLocationEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-static {p1, v0, v2}, Lcom/android/server/OpGpsNotificationInjector;->getCurrentProviderPackageListsForInteger(Ljava/lang/String;ZLjava/util/HashMap;)Ljava/util/List;

    move-result-object v2

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getExtraLocationControllerPackage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v0, :cond_0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/location/GeocoderProxy;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDDDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v1, :cond_0

    move-object v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-virtual/range {v1 .. v13}, Lcom/android/server/location/GeocoderProxy;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getGnssBatchSize(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Location Hardware permission not granted to access hardware batching"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->hasGnssPermissions(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/location/GnssBatchingProvider;->getBatchSize()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getGnssCapabilities(Ljava/lang/String;)J
    .locals 3

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Location Hardware permission not granted to obtain GNSS chipset capabilities."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->hasGnssPermissions(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssCapabilitiesProvider:Lcom/android/server/location/GnssCapabilitiesProvider;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/location/GnssCapabilitiesProvider;->getGnssCapabilities()J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getGnssHardwareModelName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssSystemInfoProvider:Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;->getGnssHardwareModelName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGnssTimeMillis()Landroid/location/LocationTime;
    .locals 9

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    if-nez v1, :cond_0

    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    new-instance v6, Landroid/location/LocationTime;

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    add-long/2addr v7, v4

    invoke-direct {v6, v7, v8, v2, v3}, Landroid/location/LocationTime;-><init>(JJ)V

    monitor-exit v0

    return-object v6

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getGnssYearOfHardware()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssSystemInfoProvider:Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;->getGnssYearOfHardware()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIgnoreSettingsWhitelist()[Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mIgnoreSettingsPackageWhitelist:Landroid/util/ArraySet;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLastLocation(Landroid/location/LocationRequest;Ljava/lang/String;)Landroid/location/Location;
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v3, v1, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    :goto_0
    move-object v4, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v0

    move v5, v0

    invoke-direct {v1, v2}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    nop

    invoke-virtual {v4}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v5, v0}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUseLocked(ILjava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    move v6, v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    move v7, v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    iget-object v0, v1, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    invoke-virtual {v0, v2}, Lcom/android/server/location/LocationBlacklist;->isBlacklisted(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const/4 v10, 0x0

    if-eqz v0, :cond_2

    :try_start_2
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_1

    const-string v0, "LocationManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "not returning last loc for blacklisted app: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    nop

    :try_start_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    return-object v10

    :catchall_0
    move-exception v0

    move-object/from16 v19, v4

    goto/16 :goto_4

    :cond_2
    :try_start_4
    invoke-virtual {v4}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-nez v0, :cond_3

    :try_start_5
    const-string v11, "fused"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v0, v11

    :cond_3
    :try_start_6
    invoke-direct {v1, v0}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-nez v11, :cond_4

    :try_start_7
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    return-object v10

    :cond_4
    :try_start_8
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    invoke-direct {v1, v12}, Lcom/android/server/LocationManagerService;->isCurrentProfileLocked(I)Z

    move-result v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-nez v12, :cond_5

    :try_start_9
    invoke-virtual {v1, v2}, Lcom/android/server/LocationManagerService;->isProviderPackage(Ljava/lang/String;)Z

    move-result v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-nez v12, :cond_5

    nop

    :try_start_a
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    return-object v10

    :cond_5
    :try_start_b
    invoke-virtual {v11}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableLocked()Z

    move-result v12
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-nez v12, :cond_6

    nop

    :try_start_c
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    return-object v10

    :cond_6
    const/4 v12, 0x2

    if-ge v5, v12, :cond_7

    :try_start_d
    iget-object v13, v1, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/location/Location;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_1

    :cond_7
    :try_start_e
    iget-object v13, v1, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/location/Location;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :goto_1
    if-nez v13, :cond_8

    nop

    :try_start_f
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    return-object v10

    :cond_8
    :try_start_10
    invoke-static {v5}, Lcom/android/server/LocationManagerService;->resolutionLevelToOpStr(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    invoke-virtual {v13}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v17

    const-wide/32 v19, 0xf4240

    div-long v17, v17, v19

    sub-long v15, v15, v17

    iget-object v12, v1, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v10, "location_last_location_max_age_millis"
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    move-object/from16 v19, v4

    move/from16 v20, v5

    const-wide/32 v4, 0x124f80

    :try_start_11
    invoke-static {v12, v10, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    cmp-long v4, v15, v4

    if-lez v4, :cond_9

    :try_start_12
    iget-object v4, v1, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v4, v14, v7, v2}, Landroid/app/AppOpsManager;->unsafeCheckOp(Ljava/lang/String;ILjava/lang/String;)I

    move-result v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    const/4 v5, 0x4

    if-ne v4, v5, :cond_9

    nop

    :try_start_13
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    const/4 v3, 0x0

    return-object v3

    :catchall_1
    move-exception v0

    move/from16 v5, v20

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    move/from16 v5, v20

    const/4 v10, 0x2

    if-ge v5, v10, :cond_b

    :try_start_14
    const-string/jumbo v10, "noGPSLocation"

    invoke-virtual {v13, v10}, Landroid/location/Location;->getExtraLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v10

    if-eqz v10, :cond_a

    new-instance v12, Landroid/location/Location;

    move-object/from16 v17, v0

    iget-object v0, v1, Lcom/android/server/LocationManagerService;->mLocationFudger:Lcom/android/server/location/LocationFudger;

    invoke-virtual {v0, v10}, Lcom/android/server/location/LocationFudger;->getOrCreate(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    invoke-direct {v12, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    move-object v4, v12

    goto :goto_2

    :cond_a
    move-object/from16 v17, v0

    :goto_2
    goto :goto_3

    :cond_b
    move-object/from16 v17, v0

    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, v13}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    move-object v4, v0

    :goto_3
    if-eqz v4, :cond_d

    invoke-direct {v1, v6, v7, v2, v5}, Lcom/android/server/LocationManagerService;->reportLocationAccessNoThrow(IILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_d

    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_c

    const-string v0, "LocationManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "not returning last loc for no op app: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    :cond_c
    const/4 v4, 0x0

    :cond_d
    nop

    :try_start_15
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3

    return-object v4

    :catchall_2
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v0

    move/from16 v5, v20

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object/from16 v19, v4

    :goto_4
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catchall_5
    move-exception v0

    monitor-exit v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    throw v0
.end method

.method public getProviderProperties(Ljava/lang/String;)Lcom/android/internal/location/ProviderProperties;
    .locals 3

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUseLocked(ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/LocationManagerService$LocationProvider;->getPropertiesLocked()Lcom/android/internal/location/ProviderProperties;

    move-result-object v2

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Criteria;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/LocationManagerService$LocationProvider;

    invoke-virtual {v4}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "fused"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v5}, Lcom/android/server/LocationManagerService;->getMinimumResolutionLevelForProviderUseLocked(Ljava/lang/String;)I

    move-result v6

    if-ge v0, v6, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v4}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableLocked()Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v4}, Lcom/android/server/LocationManagerService$LocationProvider;->getPropertiesLocked()Lcom/android/internal/location/ProviderProperties;

    move-result-object v6

    invoke-static {v5, v6, p1}, Landroid/location/LocationProvider;->propertiesMeetCriteria(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Landroid/location/Criteria;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    goto :goto_0

    :cond_4
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getTestProviderCurrentRequests(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/location/LocationRequest;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/server/LocationManagerService$LocationProvider;->isMock()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Lcom/android/server/LocationManagerService$MockLocationProvider;

    invoke-static {v2}, Lcom/android/server/LocationManagerService$MockLocationProvider;->access$5300(Lcom/android/server/LocationManagerService$MockLocationProvider;)Lcom/android/internal/location/ProviderRequest;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    monitor-exit v0

    return-object v3

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Lcom/android/server/LocationManagerService$MockLocationProvider;->access$5300(Lcom/android/server/LocationManagerService$MockLocationProvider;)Lcom/android/internal/location/ProviderRequest;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/LocationRequest;

    new-instance v6, Landroid/location/LocationRequest;

    invoke-direct {v6, v5}, Landroid/location/LocationRequest;-><init>(Landroid/location/LocationRequest;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-object v3

    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public injectGnssMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Location Hardware permission not granted to inject GNSS measurement corrections."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->hasGnssPermissions(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "LocationManagerService"

    if-nez v0, :cond_0

    const-string v0, "Can not inject GNSS corrections due to no permission."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementCorrectionsProvider:Lcom/android/server/location/GnssMeasurementCorrectionsProvider;

    if-nez v0, :cond_1

    const-string v0, "Can not inject GNSS corrections. GNSS measurement corrections provider not available."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssMeasurementCorrectionsProvider;->injectGnssMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)V

    return-void
.end method

.method public injectLocation(Landroid/location/Location;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Location Hardware permission not granted to inject location"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const-string v2, "Access Fine Location permission not granted to inject Location"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_1

    sget-boolean v1, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v1, :cond_0

    const-string v1, "LocationManagerService"

    const-string v2, "injectLocation(): called with null location"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableLocked()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    monitor-exit v1

    return v0

    :cond_3
    invoke-virtual {v2}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/LocationManagerService;->updateLastLocationLocked(Landroid/location/Location;Ljava/lang/String;)V

    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :cond_4
    :goto_0
    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isExtraLocationControllerPackageEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/LocationManagerService;->mExtraLocationControllerPackageEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isLocationEnabledForUser(I)Z
    .locals 5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    const-string v2, "Requires INTERACT_ACROSS_USERS permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "location_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isProviderEnabledForUser(Ljava/lang/String;I)Z
    .locals 4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p2, :cond_0

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    const-string v2, "Requires INTERACT_ACROSS_USERS permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "fused"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, p2}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableForUserLocked(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isProviderPackage(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$LocationProvider;

    invoke-virtual {v2}, Lcom/android/server/LocationManagerService$LocationProvider;->getPackagesLocked()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$addGnssBatchingCallback$8$LocationManagerService(Landroid/location/IBatchedLocationCallback;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/LocationManagerService;->stopGnssBatch()Z

    invoke-virtual {p0}, Lcom/android/server/LocationManagerService;->removeGnssBatchingCallback()V

    return-void
.end method

.method public synthetic lambda$initializeLocked$2$LocationManagerService()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->onPermissionsChangedLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$initializeLocked$3$LocationManagerService(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/-$$Lambda$LocationManagerService$G-JjItJofmJkJhbftqezuIe8Sio;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$LocationManagerService$G-JjItJofmJkJhbftqezuIe8Sio;-><init>(Lcom/android/server/LocationManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$initializeLocked$4$LocationManagerService(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->onUidImportanceChangedLocked(II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$initializeLocked$5$LocationManagerService(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/-$$Lambda$LocationManagerService$GVLGDgL1Vk3AKo-zMjRmo3-OLpQ;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/-$$Lambda$LocationManagerService$GVLGDgL1Vk3AKo-zMjRmo3-OLpQ;-><init>(Lcom/android/server/LocationManagerService;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$initializeLocked$6$LocationManagerService(Landroid/os/PowerSaveState;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p1, Landroid/os/PowerSaveState;->locationMode:I

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->onBatterySaverModeChangedLocked(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$initializeLocked$7$LocationManagerService(Landroid/os/PowerSaveState;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/-$$Lambda$LocationManagerService$wT7D5HWSJcE1hXhYNGDPH6IVDx0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/-$$Lambda$LocationManagerService$wT7D5HWSJcE1hXhYNGDPH6IVDx0;-><init>(Lcom/android/server/LocationManagerService;Landroid/os/PowerSaveState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$new$0$LocationManagerService(I)[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$new$1$LocationManagerService(I)[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public locationCallbackFinished(Landroid/location/ILocationListener;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$Receiver;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/server/LocationManagerService$Receiver;->access$3700(Lcom/android/server/LocationManagerService$Receiver;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerGnssStatusCallback(Landroid/location/IGnssStatusListener;Ljava/lang/String;)Z
    .locals 7

    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mGnssStatusProvider:Lcom/android/server/location/GnssStatusListenerHelper;

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mGnssStatusListeners:Landroid/util/ArrayMap;

    new-instance v6, Lcom/android/server/-$$Lambda$1kw1pGRY14l4iRI8vioJeswbbZ0;

    invoke-direct {v6, p0}, Lcom/android/server/-$$Lambda$1kw1pGRY14l4iRI8vioJeswbbZ0;-><init>(Lcom/android/server/LocationManagerService;)V

    const-string v3, "GnssStatusListener"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/LocationManagerService;->addGnssDataListener(Landroid/os/IInterface;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;Ljava/util/function/Consumer;)Z

    move-result v0

    return v0
.end method

.method public removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 12

    if-eqz p2, :cond_1

    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeGeofence: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/LocationUsageLogger;

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v6, p3}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v11

    move-object v6, p3

    move-object v10, p1

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;I)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/location/GeofenceManager;->removeFence(Landroid/location/Geofence;Landroid/app/PendingIntent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid pending intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeGnssBatchingCallback()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingCallback:Landroid/location/IBatchedLocationCallback;

    invoke-interface {v1}, Landroid/location/IBatchedLocationCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingDeathCallback:Lcom/android/server/LocationManagerService$LinkedListener;

    invoke-direct {p0, v1, v2}, Lcom/android/server/LocationManagerService;->unlinkFromListenerDeathNotificationLocked(Landroid/os/IBinder;Lcom/android/server/LocationManagerService$LinkedListenerBase;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingCallback:Landroid/location/IBatchedLocationCallback;

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingDeathCallback:Lcom/android/server/LocationManagerService$LinkedListener;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/LocationManagerService;->removeGnssDataListener(Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;)V

    return-void
.end method

.method public removeGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/LocationManagerService;->removeGnssDataListener(Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;)V

    return-void
.end method

.method public removeTestProvider(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/android/server/LocationManagerService$LocationProvider;->isMock()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->removeProviderLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/LocationManagerService$LocationProvider;

    invoke-virtual {v6}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v4, v6

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    invoke-direct {p0, v4}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :cond_4
    :try_start_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\" unknown"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v3

    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public removeUpdates(Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 10

    invoke-static {}, Lcom/android/server/lms/LmsInjector;->getLogLevelStatusUpdates()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "need either listener or intent"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cannot register both listener and intent"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    if-eqz p2, :cond_4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p2

    move v3, v0

    move v4, v8

    move-object v5, p3

    :try_start_0
    invoke-direct/range {v1 .. v7}, Lcom/android/server/LocationManagerService;->getReceiverLocked(Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, v0

    move v4, v8

    move-object v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/LocationManagerService;->getReceiverLocked(Landroid/location/ILocationListener;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v1

    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v9

    return-void

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :catchall_1
    move-exception v1

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public requestGeofence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v9, p3

    move-object/from16 v8, p4

    if-nez p1, :cond_0

    sget-object v0, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    move-object v7, v0

    goto :goto_0

    :cond_0
    move-object/from16 v7, p1

    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v6

    invoke-direct {v1, v6}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForGeofenceUse(I)V

    if-eqz v9, :cond_4

    invoke-direct {v1, v8}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    nop

    :try_start_0
    invoke-virtual {v7}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v6, v0}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUseLocked(ILjava/lang/String;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    iget-object v0, v1, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move v5, v0

    invoke-direct {v1, v7, v6, v5}, Lcom/android/server/LocationManagerService;->createSanitizedRequest(Landroid/location/LocationRequest;IZ)Landroid/location/LocationRequest;

    move-result-object v4

    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestGeofence: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LocationManagerService"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    move-object/from16 v3, p2

    :goto_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v19

    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "LocationManagerService"

    const-string/jumbo v2, "proximity alerts are currently available only to the primary user"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    :try_start_1
    iget-object v2, v1, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-object v10, v1, Lcom/android/server/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/LocationUsageLogger;

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v15, 0x0

    const/16 v16, 0x1

    iget-object v0, v1, Lcom/android/server/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v13, p4

    move-object v14, v7

    move-object/from16 v17, p2

    invoke-virtual/range {v10 .. v18}, Lcom/android/server/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;I)V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v2, v1, Lcom/android/server/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v3, v4

    move-object v10, v4

    move-object/from16 v4, p2

    move v11, v5

    move-object/from16 v5, p3

    move v12, v6

    move-object v13, v7

    move/from16 v7, v19

    move-object/from16 v8, p4

    :try_start_4
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/location/GeofenceManager;->addFence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;IILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    move-object v10, v4

    move v11, v5

    move v12, v6

    move-object v13, v7

    :goto_3
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v10, v4

    move v11, v5

    move v12, v6

    move-object v13, v7

    :goto_4
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catchall_4
    move-exception v0

    move v12, v6

    move-object v13, v7

    :goto_5
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_5

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid pending intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 24

    move-object/from16 v8, p0

    move-object/from16 v7, p4

    invoke-static {}, Lcom/android/server/lms/LmsInjector;->getLogLevelStatusUpdates()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    iget-object v6, v8, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    if-nez p1, :cond_0

    :try_start_0
    sget-object v0, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v12, p1

    move-object v13, v6

    move-object v14, v7

    goto/16 :goto_9

    :cond_0
    move-object/from16 v5, p1

    :goto_0
    :try_start_1
    invoke-direct {v8, v7}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v0

    move v4, v0

    nop

    invoke-virtual {v5}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v4, v0}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUseLocked(ILjava/lang/String;)V

    invoke-virtual {v5}, Landroid/location/LocationRequest;->getWorkSource()Landroid/os/WorkSource;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    move-object/from16 v18, v0

    const/4 v0, 0x0

    if-eqz v18, :cond_1

    :try_start_2
    invoke-virtual/range {v18 .. v18}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v8, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    goto/16 :goto_9

    :cond_1
    :goto_1
    :try_start_3
    invoke-virtual {v5}, Landroid/location/LocationRequest;->getHideFromAppOps()Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    move/from16 v19, v1

    if-eqz v19, :cond_2

    :try_start_4
    iget-object v1, v8, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    :try_start_5
    invoke-virtual {v5}, Landroid/location/LocationRequest;->isLocationSettingsIgnored()Z

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    if-eqz v1, :cond_3

    :try_start_6
    iget-object v1, v8, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_3
    :try_start_7
    iget-object v0, v8, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    move v3, v0

    invoke-direct {v8, v5, v4, v3}, Lcom/android/server/LocationManagerService;->createSanitizedRequest(Landroid/location/LocationRequest;IZ)Landroid/location/LocationRequest;

    move-result-object v0

    move-object v15, v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    move v14, v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    move v13, v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    move-wide/from16 v20, v9

    :try_start_8
    invoke-virtual {v8, v14, v13, v7, v4}, Lcom/android/server/LocationManagerService;->checkLocationAccess(IILjava/lang/String;I)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    if-nez p3, :cond_6

    if-eqz p2, :cond_5

    goto :goto_3

    :cond_5
    :try_start_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "need either listener or intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2
    move-exception v0

    move v10, v3

    move v11, v4

    move-object v12, v5

    move v9, v13

    move/from16 v22, v14

    move-object v1, v15

    move-object v13, v6

    move-object v14, v7

    goto/16 :goto_8

    :cond_6
    :goto_3
    if-eqz p3, :cond_8

    if-nez p2, :cond_7

    goto :goto_4

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot register both listener and intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_8
    :goto_4
    :try_start_a
    iget-object v9, v8, Lcom/android/server/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/LocationUsageLogger;

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz p2, :cond_9

    move v0, v1

    goto :goto_5

    :cond_9
    move v0, v2

    :goto_5
    if-eqz p3, :cond_a

    goto :goto_6

    :cond_a
    move v1, v2

    :goto_6
    const/16 v16, 0x0

    iget-object v2, v8, Lcom/android/server/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v2, v7}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v17
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    move-object/from16 v12, p4

    move v2, v13

    move-object v13, v5

    move/from16 v22, v14

    move v14, v0

    move-object/from16 v23, v15

    move v15, v1

    :try_start_b
    invoke-virtual/range {v9 .. v17}, Lcom/android/server/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    if-eqz p3, :cond_b

    move-object/from16 v1, p0

    move v9, v2

    move-object/from16 v2, p3

    move v10, v3

    move/from16 v3, v22

    move v11, v4

    move v4, v9

    move-object v12, v5

    move-object/from16 v5, p4

    move-object v13, v6

    move-object/from16 v6, v18

    move-object v14, v7

    move/from16 v7, v19

    :try_start_c
    invoke-direct/range {v1 .. v7}, Lcom/android/server/LocationManagerService;->getReceiverLocked(Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object/from16 v1, v23

    goto :goto_8

    :cond_b
    move v9, v2

    move v10, v3

    move v11, v4

    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, v22

    move v4, v9

    move-object/from16 v5, p4

    move-object/from16 v6, v18

    move/from16 v7, v19

    :try_start_d
    invoke-direct/range {v1 .. v7}, Lcom/android/server/LocationManagerService;->getReceiverLocked(Landroid/location/ILocationListener;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :goto_7
    move-object/from16 v1, v23

    :try_start_e
    invoke-direct {v8, v1, v0, v9, v14}, Lcom/android/server/LocationManagerService;->requestLocationUpdatesLocked(Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;ILjava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :try_start_f
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v13

    return-void

    :catchall_4
    move-exception v0

    goto :goto_8

    :catchall_5
    move-exception v0

    move-object/from16 v1, v23

    goto :goto_8

    :catchall_6
    move-exception v0

    move v9, v2

    move v10, v3

    move v11, v4

    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    move-object/from16 v1, v23

    goto :goto_8

    :catchall_7
    move-exception v0

    move v10, v3

    move v11, v4

    move-object v12, v5

    move v9, v13

    move/from16 v22, v14

    move-object v1, v15

    move-object v13, v6

    move-object v14, v7

    :goto_8
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catchall_8
    move-exception v0

    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    :goto_9
    monitor-exit v13
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    throw v0

    :catchall_9
    move-exception v0

    goto :goto_9
.end method

.method public sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 5

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUseLocked(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/LocationUsageLogger;

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2, p3}, Lcom/android/server/LocationManagerService$LocationProvider;->sendExtraCommandLocked(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/LocationUsageLogger;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3, p1}, Lcom/android/server/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;)V

    monitor-exit v0

    return v4

    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires ACCESS_LOCATION_EXTRA_COMMANDS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public sendNiResponse(II)Z
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    invoke-interface {v0, p1, p2}, Landroid/location/INetInitiatedListener;->sendNiResponse(II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "LocationManagerService"

    const-string v2, "RemoteException in LocationManagerService.sendNiResponse"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "calling sendNiResponse from outside of the system is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setExtraLocationControllerPackage(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "android.permission.LOCATION_HARDWARE permission required"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setExtraLocationControllerPackageEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "android.permission.LOCATION_HARDWARE permission required"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/LocationManagerService;->mExtraLocationControllerPackageEnabled:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setTestProviderEnabled(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 5

    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/LocationManagerService$LocationProvider;->isMock()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/android/server/LocationManagerService$MockLocationProvider;

    invoke-virtual {v2, p2}, Lcom/android/server/LocationManagerService$MockLocationProvider;->setEnabledLocked(Z)V

    monitor-exit v0

    return-void

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;)V
    .locals 8

    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/LocationManagerService$LocationProvider;->isMock()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const v3, 0x534e4554

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "33091107"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "!="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_1
    move-object v3, v1

    check-cast v3, Lcom/android/server/LocationManagerService$MockLocationProvider;

    invoke-virtual {v3, p2}, Lcom/android/server/LocationManagerService$MockLocationProvider;->setLocationLocked(Landroid/location/Location;)V

    monitor-exit v0

    return-void

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;JLjava/lang/String;)V
    .locals 5

    invoke-direct {p0, p6}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/LocationManagerService$LocationProvider;->isMock()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/android/server/LocationManagerService$MockLocationProvider;

    invoke-virtual {v2, p2, p3, p4, p5}, Lcom/android/server/LocationManagerService$MockLocationProvider;->setStatusLocked(ILandroid/os/Bundle;J)V

    monitor-exit v0

    return-void

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startGnssBatch(JZLjava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Location Hardware permission not granted to access hardware batching"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p4}, Lcom/android/server/LocationManagerService;->hasGnssPermissions(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingInProgress:Z

    if-eqz v1, :cond_1

    const-string v1, "LocationManagerService"

    const-string/jumbo v2, "startGnssBatch unexpectedly called w/o stopping prior batch"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/LocationManagerService;->stopGnssBatch()Z

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingInProgress:Z

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/location/GnssBatchingProvider;->start(JZ)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public stopGnssBatch()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Location Hardware permission not granted to access hardware batching"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingInProgress:Z

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    invoke-virtual {v1}, Lcom/android/server/location/GnssBatchingProvider;->stop()Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public systemRunning()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->initializeLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssStatusProvider:Lcom/android/server/location/GnssStatusListenerHelper;

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssStatusListeners:Landroid/util/ArrayMap;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/LocationManagerService;->removeGnssDataListener(Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;)V

    return-void
.end method
