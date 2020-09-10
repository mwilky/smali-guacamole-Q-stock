.class public Lcom/android/server/pm/permission/PermissionManagerService;
.super Ljava/lang/Object;
.source "PermissionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;
    }
.end annotation


# static fields
.field private static final BACKUP_TIMEOUT_MILLIS:J

.field private static final BLOCKING_PERMISSION_FLAGS:I = 0x34

.field private static final EMPTY_INT_ARRAY:[I

.field private static final FULLER_PERMISSION_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final GRANT_DENIED:I = 0x1

.field private static final GRANT_INSTALL:I = 0x2

.field private static final GRANT_RUNTIME:I = 0x3

.field private static final GRANT_UPGRADE:I = 0x4

.field private static final IS_SUPPORT_COLOR_ADS:Z

.field private static final MAX_PERMISSION_TREE_FOOTPRINT:I = 0x8000

.field private static final TAG:Ljava/lang/String; = "PackageManager"

.field private static final UPDATE_PERMISSIONS_ALL:I = 0x1

.field private static final UPDATE_PERMISSIONS_REPLACE_ALL:I = 0x4

.field private static final UPDATE_PERMISSIONS_REPLACE_PKG:I = 0x2

.field private static final USER_PERMISSION_FLAGS:I = 0x3


# instance fields
.field private mBackgroundPermissions:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

.field private final mGlobalGids:[I

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

.field private mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

.field private mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mPrivappPermissionsViolations:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettings:Lcom/android/server/pm/permission/PermissionSettings;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mSystemPermissions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSystemReady:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mUserManagerInt:Landroid/os/UserManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xee

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/permission/PermissionManagerService;->IS_SUPPORT_COLOR_ADS:Z

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sput-wide v2, Lcom/android/server/pm/permission/PermissionManagerService;->BACKUP_TIMEOUT_MILLIS:J

    new-array v0, v1, [I

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->EMPTY_INT_ARRAY:[I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    new-instance v0, Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/android/server/pm/permission/PermissionSettings;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    new-instance v0, Lcom/android/server/ServiceThread;

    const/4 v1, 0x1

    const-string v2, "PackageManager"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;)V

    new-instance v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p1, v2, p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/pm/permission/PermissionManagerService;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getSystemPermissions()Landroid/util/SparseArray;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getGlobalGids()[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mGlobalGids:[I

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/SystemConfig;->getPermissions()Landroid/util/ArrayMap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/SystemConfig$PermissionEntry;

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v7, v5, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v6

    if-nez v6, :cond_0

    new-instance v7, Lcom/android/server/pm/permission/BasePermission;

    iget-object v8, v5, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    const-string v9, "android"

    invoke-direct {v7, v8, v9, v1}, Lcom/android/server/pm/permission/BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v6, v7

    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v8, v5, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Lcom/android/server/pm/permission/PermissionSettings;->putPermissionLocked(Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;)V

    :cond_0
    iget-object v7, v5, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    if-eqz v7, :cond_1

    iget-object v7, v5, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    iget-boolean v8, v5, Lcom/android/server/SystemConfig$PermissionEntry;->perUser:Z

    invoke-virtual {v6, v7, v8}, Lcom/android/server/pm/permission/BasePermission;->setGids([IZ)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/PermissionManagerService$1;)V

    const-class v3, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v3, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class v3, Landroid/permission/PermissionManagerInternal;

    invoke-static {v3, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic access$100(Lcom/android/server/pm/permission/PermissionManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->systemReady()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;[I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRequestedRuntimePermissions(Landroid/content/pm/PackageParser$Package;[I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;II)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->getWhitelistedRestrictedPermissions(Landroid/content/pm/PackageParser$Package;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;[ILjava/util/List;IILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/permission/PermissionManagerService;->setWhitelistedRestrictedPermissions(Landroid/content/pm/PackageParser$Package;[ILjava/util/List;IILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermissionsGrantedToDisabledPackageLocked(Landroid/content/pm/PackageParser$Package;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->updateAllPermissions(Ljava/lang/String;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;I)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->isPermissionsReviewRequired(Landroid/content/pm/PackageParser$Package;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/pm/permission/PermissionManagerService;IIIILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)Z
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlagsForAllApps(IIIILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/pm/permission/PermissionManagerService;IIZZZLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Landroid/content/pm/PackageParser$Package;II)I
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->checkUidPermission(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;II)Landroid/content/pm/PermissionGroupInfo;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionGroupInfo(Ljava/lang/String;II)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/pm/permission/PermissionManagerService;II)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getAllPermissionGroups(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;II)Landroid/content/pm/PermissionInfo;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionInfo(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;II)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionInfoByGroup(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionSettings;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;Ljava/util/ArrayList;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermissionsIfGroupChanged(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;Ljava/util/ArrayList;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/os/UserHandle;)[B
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->backupRuntimePermissions(Landroid/os/UserHandle;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/pm/permission/PermissionManagerService;[BLandroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->restoreRuntimePermissions([BLandroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->restoreDelayedRuntimePermissions(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->addOnRuntimePermissionStateChangedListener(Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->removeOnRuntimePermissionStateChangedListener(Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->addAllPermissions(Landroid/content/pm/PackageParser$Package;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->addAllPermissionGroups(Landroid/content/pm/PackageParser$Package;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->removeAllPermissions(Landroid/content/pm/PackageParser$Package;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PermissionInfo;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->addDynamicPermission(Landroid/content/pm/PermissionInfo;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->removeDynamicPermission(Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method private addAllPermissionGroups(Landroid/content/pm/PackageParser$Package;Z)V
    .locals 12

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const-string v3, "PackageManager"

    if-ge v2, v0, :cond_7

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$PermissionGroup;

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v5, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    iget-object v6, v4, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$PermissionGroup;

    if-nez v5, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    :cond_0
    iget-object v6, v5, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    :goto_1
    iget-object v7, v4, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v7, v7, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/16 v8, 0x100

    const/16 v9, 0x20

    if-eqz v5, :cond_3

    if-eqz v7, :cond_1

    goto :goto_3

    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission group "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v4, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v11, v11, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " from package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v4, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v11, v11, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " ignored: original from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v5, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v11, v11, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_6

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v3, :cond_6

    if-nez v1, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    const-string v3, "DUP:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v4, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_3
    :goto_3
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v3, v3, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    iget-object v10, v4, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v10, v10, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v10, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_6

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v3, :cond_6

    if-nez v1, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v3

    goto :goto_4

    :cond_4
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4
    if-eqz v7, :cond_5

    const-string v3, "UPD:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v3, v4, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    if-eqz v1, :cond_8

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Permission Groups: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void
.end method

.method private addAllPermissions(Landroid/content/pm/PackageParser$Package;Z)V
    .locals 7

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Permission;

    iget-object v3, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v4, v3, Landroid/content/pm/PermissionInfo;->flags:I

    const v5, -0x40000001    # -1.9999999f

    and-int/2addr v4, v5

    iput v4, v3, Landroid/content/pm/PermissionInfo;->flags:I

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x16

    if-le v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    iget-object v5, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$PermissionGroup;

    iput-object v4, v2, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v4, :cond_0

    iget-object v4, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v2, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    if-nez v4, :cond_0

    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " in an unknown group "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v4, v2, Landroid/content/pm/PackageParser$Permission;->tree:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionTreeLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v5}, Lcom/android/server/pm/permission/PermissionSettings;->getAllPermissionTreesLocked()Ljava/util/Collection;

    move-result-object v5

    invoke-static {v4, v2, p1, v5, p2}, Lcom/android/server/pm/permission/BasePermission;->createOrUpdate(Lcom/android/server/pm/permission/BasePermission;Landroid/content/pm/PackageParser$Permission;Landroid/content/pm/PackageParser$Package;Ljava/util/Collection;Z)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v6, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lcom/android/server/pm/permission/PermissionSettings;->putPermissionTreeLocked(Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;)V

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v5}, Lcom/android/server/pm/permission/PermissionSettings;->getAllPermissionTreesLocked()Ljava/util/Collection;

    move-result-object v5

    invoke-static {v4, v2, p1, v5, p2}, Lcom/android/server/pm/permission/BasePermission;->createOrUpdate(Lcom/android/server/pm/permission/BasePermission;Landroid/content/pm/PackageParser$Permission;Landroid/content/pm/PackageParser$Package;Ljava/util/Collection;Z)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v6, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lcom/android/server/pm/permission/PermissionSettings;->putPermissionLocked(Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;)V

    :goto_1
    monitor-exit v3

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_2
    return-void
.end method

.method private addDynamicPermission(Landroid/content/pm/PermissionInfo;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)Z
    .locals 9

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    iget v0, p1, Landroid/content/pm/PermissionInfo;->labelRes:I

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Label must be specified in permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/pm/permission/PermissionSettings;->enforcePermissionTree(Ljava/lang/String;I)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v3, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    iget v4, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v4}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v4

    if-eqz v3, :cond_3

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->enforcePermissionCapLocked(Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/BasePermission;)V

    new-instance v5, Lcom/android/server/pm/permission/BasePermission;

    iget-object v6, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-direct {v5, v6, v7, v8}, Lcom/android/server/pm/permission/BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v2, v5

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->isDynamic()Z

    move-result v5

    if-eqz v5, :cond_6

    :goto_2
    invoke-virtual {v2, v4, p1, v0}, Lcom/android/server/pm/permission/BasePermission;->addToTree(ILandroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/BasePermission;)Z

    move-result v5

    if-eqz v3, :cond_4

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v7, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7, v2}, Lcom/android/server/pm/permission/PermissionSettings;->putPermissionLocked(Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;)V

    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_5

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionChanged()V

    :cond_5
    return v3

    :cond_6
    :try_start_1
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not allowed to modify non-dynamic permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Instant apps can\'t add permissions"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private addOnRuntimePermissionStateChangedListener(Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private adjustPermissionProtectionFlagsLocked(ILjava/lang/String;I)I
    .locals 5

    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return p1

    :cond_0
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_6

    if-eqz v1, :cond_6

    const/16 v2, 0x7d0

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    if-nez v2, :cond_2

    return p1

    :cond_2
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1a

    if-ge v3, v4, :cond_3

    return v0

    :cond_3
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    if-nez v3, :cond_4

    return p1

    :cond_4
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v4

    if-eq v4, v1, :cond_5

    return p1

    :cond_5
    return p1

    :cond_6
    :goto_0
    return p1
.end method

.method private backupRuntimePermissions(Landroid/os/UserHandle;)[B
    .locals 4

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/pm/permission/-$$Lambda$js2BSmz1ucAEj8fgl3jw5trxIjw;

    invoke-direct {v3, v0}, Lcom/android/server/pm/permission/-$$Lambda$js2BSmz1ucAEj8fgl3jw5trxIjw;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v1, p1, v2, v3}, Landroid/permission/PermissionControllerManager;->getRuntimePermissionBackup(Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Landroid/permission/PermissionControllerManager$OnGetRuntimePermissionBackupCallback;)V

    :try_start_0
    sget-wide v1, Lcom/android/server/pm/permission/PermissionManagerService;->BACKUP_TIMEOUT_MILLIS:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create permission backup for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return-object v2
.end method

.method private calculateCurrentPermissionFootprintLocked(Lcom/android/server/pm/permission/BasePermission;)I
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettings.mLock",
            "mLock"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v1, v1, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/BasePermission;

    invoke-virtual {p1, v2}, Lcom/android/server/pm/permission/BasePermission;->calculateFootprint(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->isOem()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemConfig;->getOemPermissions(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OEM permission"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " requested by package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " must be explicitly declared granted or not"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkIfLegacyStorageOpsNeedToBeUpdated(Landroid/content/pm/PackageParser$Package;Z[I)[I
    .locals 2

    if-eqz p2, :cond_1

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->hasRequestedLegacyExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    return-object v0

    :cond_1
    return-object p3
.end method

.method private checkPermission(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 9

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, p4}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, v0, p3, p4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Landroid/content/pm/PackageParser$Package;II)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v2, p4}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v3

    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v4

    invoke-virtual {v4, p1, p4}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    if-eqz v3, :cond_3

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v7, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/android/server/pm/permission/BasePermission;->isInstant()Z

    move-result v8

    if-eqz v8, :cond_2

    monitor-exit v5

    return v6

    :cond_2
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    return v6

    :cond_4
    :goto_0
    invoke-static {v4, p1, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->isImpliedPermissionGranted(Lcom/android/server/pm/permission/PermissionsState;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5

    return v6

    :cond_5
    return v1
.end method

.method private checkUidPermission(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;II)I
    .locals 8

    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, p4}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v4, p3}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v5, v4}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v5

    const/4 v6, -0x1

    if-nez v5, :cond_2

    return v6

    :cond_2
    if-eqz p2, :cond_8

    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    if-eqz v5, :cond_3

    if-eqz v1, :cond_4

    return v6

    :cond_3
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v5, p2, p4, v0}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Landroid/content/pm/PackageParser$Package;II)Z

    move-result v5

    if-eqz v5, :cond_4

    return v6

    :cond_4
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v5

    invoke-virtual {v5, p1, v4}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_6

    if-eqz v2, :cond_5

    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v7, p1}, Lcom/android/server/pm/permission/PermissionSettings;->isPermissionInstant(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    return v3

    :cond_5
    return v3

    :cond_6
    invoke-static {v5, p1, v4}, Lcom/android/server/pm/permission/PermissionManagerService;->isImpliedPermissionGranted(Lcom/android/server/pm/permission/PermissionsState;Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_7

    return v3

    :cond_7
    goto :goto_2

    :cond_8
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    if-eqz v5, :cond_a

    invoke-virtual {v5, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    return v3

    :cond_9
    sget-object v7, Lcom/android/server/pm/permission/PermissionManagerService;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    sget-object v7, Lcom/android/server/pm/permission/PermissionManagerService;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    return v3

    :cond_a
    :goto_2
    return v6
.end method

.method public static create(Landroid/content/Context;Ljava/lang/Object;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .locals 2

    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    const-class v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    return-object v1
.end method

.method private doNotifyRuntimePermissionStateChanged(Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;

    invoke-interface {v3, p1, p2}, Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;->onRuntimePermissionStateChanged(Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private enforceCrossUserPermission(IIZZZLjava/lang/String;)V
    .locals 3

    if-ltz p2, :cond_7

    if-eqz p4, :cond_0

    const-string/jumbo v0, "no_debugging_features"

    invoke-static {v0, p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceShellRestriction(Ljava/lang/String;II)V

    :cond_0
    if-nez p5, :cond_1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne p2, v0, :cond_1

    return-void

    :cond_1
    const/16 v0, 0x3e7

    if-ne p2, v0, :cond_2

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    if-nez p2, :cond_4

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, v0, :cond_4

    :cond_3
    return-void

    :cond_4
    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_6

    if-eqz p1, :cond_6

    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    if-eqz p3, :cond_5

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v1, v2, p6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceGrantRevokeGetRuntimePermissionPermissions(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " requires "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " or "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " requires "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " or "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private enforcePermissionCapLocked(Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/BasePermission;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettings.mLock",
            "mLock"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/android/server/pm/permission/BasePermission;->getUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->calculateCurrentPermissionFootprintLocked(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/pm/PermissionInfo;->calculateFootprint()I

    move-result v1

    add-int/2addr v1, v0

    const v2, 0x8000

    if-gt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Permission tree size cap exceeded"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method private getAllPermissionGroups(II)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v1, v1, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v3, v3, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$PermissionGroup;

    invoke-static {v4, p1}, Landroid/content/pm/PackageParser;->generatePermissionGroupInfo(Landroid/content/pm/PackageParser$PermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    if-nez v2, :cond_1

    monitor-exit v0

    return-object v1

    :cond_1
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

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

.method private getPermissionFlags(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 9

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, p4}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "getPermissionFlags"

    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceGrantRevokeGetRuntimePermissionPermissions(Ljava/lang/String;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "getPermissionFlags"

    move-object v2, p0

    move v3, p3

    move v4, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v3

    if-nez v3, :cond_2

    monitor-exit v2

    return v1

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, v0, p3, p4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Landroid/content/pm/PackageParser$Package;II)Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_3
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v2

    invoke-virtual {v2, p1, p4}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v3

    return v3

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_4
    :goto_0
    return v1
.end method

.method private getPermissionGroupInfo(Ljava/lang/String;II)Landroid/content/pm/PermissionGroupInfo;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p3}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v1, v1, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$PermissionGroup;

    invoke-static {v1, p2}, Landroid/content/pm/PackageParser;->generatePermissionGroupInfo(Landroid/content/pm/PackageParser$PermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getPermissionInfo(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/pm/PermissionInfo;
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p4}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v2

    if-nez v2, :cond_1

    monitor-exit v0

    return-object v1

    :cond_1
    nop

    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getProtectionLevel()I

    move-result v1

    invoke-direct {p0, v1, p2, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->adjustPermissionProtectionFlagsLocked(ILjava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1, p3}, Lcom/android/server/pm/permission/BasePermission;->generatePermissionInfo(II)Landroid/content/pm/PermissionInfo;

    move-result-object v3

    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getPermissionInfoByGroup(Ljava/lang/String;II)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p3}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v0

    return-object v1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/BasePermission;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/pm/permission/BasePermission;->generatePermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    goto :goto_0

    :cond_3
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getVolumeUuidForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->isExternal()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "primary_physical"

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    return-object v0

    :cond_2
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v0
.end method

.method private getWhitelistedRestrictedPermissions(Landroid/content/pm/PackageParser$Package;II)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v1

    const/4 v2, 0x0

    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_1

    or-int/lit16 v2, v2, 0x1000

    :cond_1
    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_2

    or-int/lit16 v2, v2, 0x2000

    :cond_2
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_3

    or-int/lit16 v2, v2, 0x800

    :cond_3
    const/4 v3, 0x0

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_6

    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6, p3}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v7

    and-int v8, v7, v2

    if-eqz v8, :cond_5

    if-nez v3, :cond_4

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v8

    :cond_4
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    return-object v3
.end method

.method private grantRequestedRuntimePermissions(Landroid/content/pm/PackageParser$Package;[I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 9

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v8, p2, v1

    move-object v2, p0

    move-object v3, p1

    move v4, v8

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRequestedRuntimePermissionsForUser(Landroid/content/pm/PackageParser$Package;I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private grantRequestedRuntimePermissionsForUser(Landroid/content/pm/PackageParser$Package;I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 22

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move-object/from16 v13, p3

    iget-object v0, v11, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Lcom/android/server/pm/PackageSetting;

    if-nez v14, :cond_0

    return-void

    :cond_0
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v15

    const/16 v16, 0x14

    iget-object v0, v11, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move/from16 v17, v0

    iget-object v0, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v1, v11, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v12}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result v18

    iget-object v0, v11, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    iget-object v1, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2, v9}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v2

    move-object/from16 v19, v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v19, :cond_8

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_2
    if-eqz v18, :cond_3

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/permission/BasePermission;->isInstant()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_3
    if-nez v17, :cond_4

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/permission/BasePermission;->isRuntimeOnly()Z

    move-result v1

    if-nez v1, :cond_9

    :cond_4
    if-eqz v13, :cond_5

    invoke-static {v13, v9}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_5
    invoke-virtual {v15, v9, v12}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v20

    if-eqz v17, :cond_6

    and-int/lit8 v1, v20, 0x14

    if-nez v1, :cond_9

    iget-object v3, v11, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object v2, v9

    move/from16 v5, p4

    move/from16 v6, p2

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    goto :goto_2

    :cond_6
    and-int/lit8 v1, v20, 0x40

    if-eqz v1, :cond_7

    iget-object v3, v11, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/16 v4, 0x40

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object v2, v9

    move/from16 v6, p4

    move/from16 v7, p2

    move-object/from16 v21, v9

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    goto :goto_2

    :cond_7
    move-object/from16 v21, v9

    goto :goto_2

    :cond_8
    move-object/from16 v21, v9

    :cond_9
    :goto_2
    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v21, v9

    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_a
    return-void
.end method

.method private grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p5

    move-object/from16 v12, p6

    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, v11}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No such user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    const-string v2, "grantRuntimePermission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "grantRuntimePermission"

    move-object/from16 v1, p0

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    if-eqz v1, :cond_16

    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v0, :cond_16

    iget-object v2, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v0

    move-object v3, v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_15

    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    move/from16 v4, p4

    invoke-virtual {v0, v1, v4, v11}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Landroid/content/pm/PackageParser$Package;II)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v3, v1}, Lcom/android/server/pm/permission/BasePermission;->enforceDeclaredUsedAndRuntimeOrDevelopment(Landroid/content/pm/PackageParser$Package;)V

    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_1

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v11, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v7

    invoke-virtual {v7, v9, v11}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v13

    and-int/lit8 v0, v13, 0x10

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot grant system fixed permission "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PackageManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    if-nez p3, :cond_3

    and-int/lit8 v0, v13, 0x4

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot grant policy fixed permission "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PackageManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isHardRestricted()Z

    move-result v0

    if-eqz v0, :cond_4

    and-int/lit16 v0, v13, 0x3800

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot grant hard restricted non-exempt permission "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PackageManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isSoftRestricted()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    iget-object v14, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v15

    invoke-static {v0, v14, v15, v9}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->forPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->canBeGranted()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot grant soft restricted permission "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PackageManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v0

    const/4 v14, -0x1

    if-eqz v0, :cond_7

    invoke-virtual {v7, v3}, Lcom/android/server/pm/permission/PermissionsState;->grantInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v0

    if-eq v0, v14, :cond_6

    if-eqz v12, :cond_6

    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onInstallPermissionGranted()V

    :cond_6
    return-void

    :cond_7
    invoke-virtual {v6, v11}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isInstant()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    :cond_8
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot grant non-ephemeral permission"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " for package "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_0
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v0, v2, :cond_a

    const-string v0, "PackageManager"

    const-string v2, "Cannot grant runtime permission to a legacy app"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    invoke-virtual {v7, v3, v11}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v2

    if-eq v2, v14, :cond_13

    const/4 v0, 0x1

    if-eq v2, v0, :cond_b

    goto :goto_1

    :cond_b
    if-eqz v12, :cond_c

    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-virtual {v12, v0, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onGidsChanged(II)V

    :cond_c
    :goto_1
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x4db

    invoke-direct {v8, v0, v9, v10}, Lcom/android/server/pm/permission/PermissionManagerService;->logPermission(ILjava/lang/String;Ljava/lang/String;)V

    :cond_d
    if-eqz v12, :cond_e

    invoke-virtual {v12, v5, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionGranted(II)V

    :cond_e
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {v8, v10, v11}, Lcom/android/server/pm/permission/PermissionManagerService;->notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    :cond_f
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    :try_start_1
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, v11}, Landroid/os/UserManagerInternal;->isUserInitialized(I)Z

    move-result v0

    if-eqz v0, :cond_11

    const-class v0, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManagerInternal;

    invoke-virtual {v0, v5, v10}, Landroid/os/storage/StorageManagerInternal;->onExternalStoragePolicyChanged(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_11
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    :cond_12
    return-void

    :catchall_0
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_13
    return-void

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    move/from16 v4, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown permission: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    move/from16 v4, p4

    :goto_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_2

    :cond_16
    move/from16 v4, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private grantRuntimePermissionsGrantedToDisabledPackageLocked(Landroid/content/pm/PackageParser$Package;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 19
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v1, v8, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getDisabledSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v9

    if-eqz v9, :cond_9

    iget-object v0, v9, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-nez v0, :cond_2

    goto/16 :goto_5

    :cond_2
    iget-object v0, v9, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->hasChildPackages()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_4

    :cond_3
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v0, 0x0

    move v12, v0

    :goto_0
    if-ge v12, v11, :cond_7

    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/lang/String;

    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, v13}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v14

    if-eqz v14, :cond_6

    invoke-virtual {v14}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v14}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v15

    array-length v6, v15

    const/4 v0, 0x0

    move v5, v0

    :goto_1
    if-ge v5, v6, :cond_6

    aget v4, v15, v5

    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    invoke-virtual {v0, v13, v4}, Lcom/android/server/pm/permission/PermissionsState;->hasRuntimePermission(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v2, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v16, v4

    move/from16 v4, p2

    move/from16 v17, v5

    move/from16 v5, v16

    move/from16 v18, v6

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    goto :goto_2

    :cond_5
    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    :goto_2
    add-int/lit8 v5, v17, 0x1

    move/from16 v6, v18

    goto :goto_1

    :cond_6
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_7
    return-void

    :cond_8
    :goto_4
    return-void

    :cond_9
    :goto_5
    return-void
.end method

.method private grantSignaturePermission(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/permission/BasePermission;Lcom/android/server/pm/permission/PermissionsState;)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isOEM()Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isVendorPrivileged()Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isPrivileged()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isVendorPrivileged()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    :goto_1
    sget-boolean v8, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_DISABLE:Z

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "android"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iget-object v11, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isSystem()Z

    move-result v11

    const-string v12, "PackageManager"

    if-nez v8, :cond_b

    if-eqz v5, :cond_b

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isPrivileged()Z

    move-result v13

    if-eqz v13, :cond_b

    if-eqz v11, :cond_b

    if-nez v10, :cond_b

    if-eqz v9, :cond_b

    invoke-direct/range {p0 .. p2}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPrivappWhitelistEntry(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Z

    move-result v13

    if-nez v13, :cond_b

    iget-boolean v13, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemReady:Z

    if-nez v13, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    move-result v13

    if-nez v13, :cond_a

    const/4 v13, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isVendor()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v14

    iget-object v15, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/android/server/SystemConfig;->getVendorPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v13

    goto :goto_2

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isProduct()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v14

    iget-object v15, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/android/server/SystemConfig;->getProductPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v13

    goto :goto_2

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isProductServices()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v14

    iget-object v15, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/android/server/SystemConfig;->getProductServicesPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v13

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v14

    iget-object v15, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/android/server/SystemConfig;->getPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v13

    :goto_2
    if-eqz v13, :cond_6

    invoke-virtual {v13, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    goto :goto_3

    :cond_5
    const/4 v14, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v14, 0x1

    :goto_4
    if-eqz v14, :cond_9

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Privileged permission "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for package "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " - not in privapp-permissions whitelist"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v6, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    if-eqz v6, :cond_8

    iget-object v6, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    if-nez v6, :cond_7

    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    iput-object v6, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    :cond_7
    iget-object v6, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    goto :goto_5

    :cond_8
    const/4 v6, 0x0

    goto :goto_5

    :cond_9
    const/4 v6, 0x0

    return v6

    :cond_a
    const/4 v6, 0x0

    :goto_5
    sget-boolean v7, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    if-eqz v7, :cond_b

    return v6

    :cond_b
    iget-object v6, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v7}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v7

    iget-object v13, v2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/pm/PackageSettingBase;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v13

    if-nez v13, :cond_d

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/pm/PackageSettingBase;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v13

    iget-object v14, v2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v15, 0x4

    invoke-virtual {v13, v14, v15}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v13

    if-nez v13, :cond_d

    iget-object v13, v2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v14, v7, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v13

    if-nez v13, :cond_d

    iget-object v13, v7, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v14, v2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v13, v14, v15}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v13

    if-eqz v13, :cond_c

    goto :goto_6

    :cond_c
    const/4 v13, 0x0

    goto :goto_7

    :cond_d
    :goto_6
    const/4 v13, 0x1

    :goto_7
    const/4 v14, 0x1

    new-array v15, v14, [I

    const/4 v14, 0x0

    aput v14, v15, v14

    invoke-static {v15}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v14

    if-eqz v14, :cond_e

    if-nez v13, :cond_e

    invoke-static {v2, v1}, Lcom/android/server/pm/OpPackageManagerHelperInjector;->allowOrdinaryAppGrantingSigPerms(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Allowing package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " to get permission "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x1

    :cond_e
    if-nez v13, :cond_2b

    if-nez v5, :cond_10

    if-eqz v3, :cond_f

    goto :goto_8

    :cond_f
    move-object/from16 v16, v6

    move-object/from16 v17, v7

    goto/16 :goto_10

    :cond_10
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isSystem()Z

    move-result v14

    if-eqz v14, :cond_2a

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    move-result v14

    if-eqz v14, :cond_26

    iget-object v14, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v15, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManagerInternal;->getDisabledSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v14

    if-eqz v14, :cond_11

    iget-object v15, v14, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v15, Lcom/android/server/pm/PackageSetting;

    goto :goto_9

    :cond_11
    const/4 v15, 0x0

    :goto_9
    if-eqz v15, :cond_15

    move-object/from16 v16, v6

    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    if-eqz v5, :cond_12

    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v6

    if-nez v6, :cond_13

    :cond_12
    if-eqz v3, :cond_14

    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->isOem()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-static {v15, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    :cond_13
    const/4 v13, 0x1

    move-object/from16 v17, v7

    goto/16 :goto_d

    :cond_14
    move-object/from16 v17, v7

    goto/16 :goto_d

    :cond_15
    move-object/from16 v16, v6

    :cond_16
    if-eqz v15, :cond_19

    if-eqz v14, :cond_19

    invoke-direct {v0, v14, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->isPackageRequestingPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19

    if-eqz v5, :cond_17

    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v6

    if-nez v6, :cond_18

    :cond_17
    if-eqz v3, :cond_19

    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->isOem()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-static {v15, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19

    :cond_18
    const/4 v13, 0x1

    :cond_19
    iget-object v6, v2, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    if-eqz v6, :cond_25

    iget-object v6, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    move-object/from16 v17, v7

    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v7, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManagerInternal;->getDisabledSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    if-eqz v6, :cond_1a

    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    goto :goto_a

    :cond_1a
    const/4 v7, 0x0

    :goto_a
    if-eqz v6, :cond_24

    if-eqz v5, :cond_1b

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v18

    if-nez v18, :cond_1c

    :cond_1b
    if-eqz v3, :cond_23

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isOem()Z

    move-result v18

    if-eqz v18, :cond_22

    :cond_1c
    invoke-direct {v0, v6, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->isPackageRequestingPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1d

    invoke-static {v7, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1d

    const/4 v13, 0x1

    goto :goto_d

    :cond_1d
    move-object/from16 v18, v7

    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v7, :cond_21

    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_20

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v6

    move-object/from16 v6, v19

    check-cast v6, Landroid/content/pm/PackageParser$Package;

    if-eqz v6, :cond_1e

    move-object/from16 v19, v7

    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    goto :goto_c

    :cond_1e
    move-object/from16 v19, v7

    const/4 v7, 0x0

    :goto_c
    nop

    invoke-direct {v0, v6, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->isPackageRequestingPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1f

    invoke-static {v7, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1f

    const/4 v13, 0x1

    goto :goto_d

    :cond_1f
    move-object/from16 v7, v19

    move-object/from16 v6, v20

    goto :goto_b

    :cond_20
    move-object/from16 v20, v6

    goto :goto_d

    :cond_21
    move-object/from16 v20, v6

    goto :goto_d

    :cond_22
    move-object/from16 v20, v6

    move-object/from16 v18, v7

    goto :goto_d

    :cond_23
    move-object/from16 v20, v6

    move-object/from16 v18, v7

    goto :goto_d

    :cond_24
    move-object/from16 v20, v6

    move-object/from16 v18, v7

    goto :goto_d

    :cond_25
    move-object/from16 v17, v7

    :goto_d
    goto :goto_f

    :cond_26
    move-object/from16 v16, v6

    move-object/from16 v17, v7

    iget-object v6, v2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    if-eqz v5, :cond_27

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isPrivileged()Z

    move-result v7

    if-nez v7, :cond_28

    :cond_27
    if-eqz v3, :cond_29

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isOem()Z

    move-result v7

    if-eqz v7, :cond_29

    invoke-static {v6, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_29

    :cond_28
    const/4 v7, 0x1

    goto :goto_e

    :cond_29
    const/4 v7, 0x0

    :goto_e
    move v13, v7

    :goto_f
    if-eqz v13, :cond_2c

    if-eqz v5, :cond_2c

    if-nez v4, :cond_2c

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isVendor()Z

    move-result v6

    if-eqz v6, :cond_2c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " cannot be granted to privileged vendor apk "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " because it isn\'t a \'vendorPrivileged\' permission."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    goto :goto_10

    :cond_2a
    move-object/from16 v16, v6

    move-object/from16 v17, v7

    goto :goto_10

    :cond_2b
    move-object/from16 v16, v6

    move-object/from16 v17, v7

    :cond_2c
    :goto_10
    if-nez v13, :cond_39

    if-nez v13, :cond_2d

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isPre23()Z

    move-result v6

    if-eqz v6, :cond_2d

    iget-object v6, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0x17

    if-ge v6, v7, :cond_2d

    const/4 v13, 0x1

    :cond_2d
    if-nez v13, :cond_2f

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isInstaller()Z

    move-result v6

    if-eqz v6, :cond_2f

    iget-object v6, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v12, 0x2

    const/4 v14, 0x0

    invoke-virtual {v7, v12, v14}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2e

    iget-object v6, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v12, 0x6

    invoke-virtual {v7, v12, v14}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    :cond_2e
    const/4 v13, 0x1

    :cond_2f
    if-nez v13, :cond_30

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isVerifier()Z

    move-result v6

    if-eqz v6, :cond_30

    iget-object v6, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v12, 0x3

    const/4 v14, 0x0

    invoke-virtual {v7, v12, v14}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    const/4 v13, 0x1

    :cond_30
    if-nez v13, :cond_31

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isPreInstalled()Z

    move-result v6

    if-eqz v6, :cond_31

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isSystem()Z

    move-result v6

    if-eqz v6, :cond_31

    const/4 v13, 0x1

    :cond_31
    if-nez v13, :cond_32

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v6

    if-eqz v6, :cond_32

    move-object/from16 v6, p4

    invoke-virtual {v6, v1}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v13

    goto :goto_11

    :cond_32
    move-object/from16 v6, p4

    :goto_11
    if-nez v13, :cond_33

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isSetup()Z

    move-result v7

    if-eqz v7, :cond_33

    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v12, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_33

    const/4 v13, 0x1

    :cond_33
    if-nez v13, :cond_34

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isSystemTextClassifier()Z

    move-result v7

    if-eqz v7, :cond_34

    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v12, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v14, 0x5

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_34

    const/4 v13, 0x1

    :cond_34
    if-nez v13, :cond_35

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isConfigurator()Z

    move-result v7

    if-eqz v7, :cond_35

    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v12, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v14, 0x9

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_35

    const/4 v13, 0x1

    :cond_35
    if-nez v13, :cond_36

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isWellbeing()Z

    move-result v7

    if-eqz v7, :cond_36

    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v12, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v14, 0x7

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_36

    const/4 v13, 0x1

    :cond_36
    if-nez v13, :cond_37

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isDocumenter()Z

    move-result v7

    if-eqz v7, :cond_37

    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v12, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v14, 0x8

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_37

    const/4 v13, 0x1

    :cond_37
    if-nez v13, :cond_38

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isIncidentReportApprover()Z

    move-result v7

    if-eqz v7, :cond_38

    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v12, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v14, 0xa

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_38

    const/4 v7, 0x1

    move v13, v7

    :cond_38
    if-nez v13, :cond_3a

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isAppPredictor()Z

    move-result v7

    if-eqz v7, :cond_3a

    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v12, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v14, 0xb

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3a

    const/4 v13, 0x1

    goto :goto_12

    :cond_39
    move-object/from16 v6, p4

    :cond_3a
    :goto_12
    return v13
.end method

.method private static hasPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Permission;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private hasPrivappWhitelistEntry(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/content/pm/PackageParser$Package;->isVendor()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    iget-object v2, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemConfig;->getVendorPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$Package;->isProduct()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    iget-object v2, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemConfig;->getProductPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$Package;->isProductServices()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    iget-object v2, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemConfig;->getProductServicesPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    iget-object v2, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemConfig;->getPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    if-nez v3, :cond_5

    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    if-eqz v4, :cond_4

    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    invoke-direct {p0, p1, v4}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPrivappWhitelistEntry(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3

    :cond_5
    :goto_2
    nop

    :goto_3
    return v1
.end method

.method private inheritPermissionStateToNewImplicitPermissionLocked(Landroid/util/ArraySet;Ljava/lang/String;Lcom/android/server/pm/permission/PermissionsState;Landroid/content/pm/PackageParser$Package;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/permission/PermissionsState;",
            "Landroid/content/pm/PackageParser$Package;",
            "I)V"
        }
    .end annotation

    iget-object v0, p4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p3, v5, p5}, Lcom/android/server/pm/permission/PermissionsState;->hasRuntimePermission(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p3, v5}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    if-nez v1, :cond_3

    invoke-virtual {p3, v5, p5}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v6

    or-int/2addr v2, v6

    goto :goto_2

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    const/4 v2, 0x0

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p3, v5, p5}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v6

    or-int/2addr v2, v6

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_6

    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " inherits runtime perm grant from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PackageManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v4, p2}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    invoke-virtual {p3, v4, p5}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    :cond_6
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v4, p2}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    invoke-virtual {p3, v4, p5, v2, v2}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    return-void
.end method

.method private static isImpliedPermissionGranted(Lcom/android/server/pm/permission/PermissionsState;Ljava/lang/String;I)Z
    .locals 1

    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isNewPlatformPermissionForPackage(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Z
    .locals 6

    const/4 v0, 0x0

    sget-object v1, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    sget-object v3, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    aget-object v3, v3, v2

    iget-object v4, v3, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget v5, v3, Landroid/content/pm/PackageParser$NewPermissionInfo;->sdkVersion:I

    if-ge v4, v5, :cond_0

    const/4 v0, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Auto-granting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to old pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PackageManager"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method private isPackageRequestingPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private isPermissionsReviewRequired(Landroid/content/pm/PackageParser$Package;I)Z
    .locals 3

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/pm/permission/PermissionsState;->isPermissionReviewRequired(I)Z

    move-result v2

    return v2
.end method

.method public static synthetic lambda$NPd9St1HBvGAtg1uhMV2Upfww4g(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->doNotifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    return-void
.end method

.method private logPermission(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    invoke-virtual {v0, p3}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    const/16 v1, 0x4d9

    invoke-virtual {v0, v1, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method private notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V
    .locals 3

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$NPd9St1HBvGAtg1uhMV2Upfww4g;->INSTANCE:Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$NPd9St1HBvGAtg1uhMV2Upfww4g;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, p0, p1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private removeAllPermissions(Landroid/content/pm/PackageParser$Package;Z)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$Permission;

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v5, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    iget-object v6, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/permission/BasePermission;

    if-nez v5, :cond_0

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v6, v6, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    iget-object v7, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/permission/BasePermission;

    move-object v5, v6

    :cond_0
    if-eqz v5, :cond_2

    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/BasePermission;->isPermission(Landroid/content/pm/PackageParser$Permission;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/BasePermission;->setPermission(Landroid/content/pm/PackageParser$Permission;)V

    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v6, :cond_2

    if-eqz p2, :cond_2

    if-nez v2, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x100

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v6

    goto :goto_1

    :cond_1
    const/16 v6, 0x20

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    iget-object v6, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v4}, Landroid/content/pm/PackageParser$Permission;->isAppOp()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v6, v6, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    iget-object v7, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    if-eqz v6, :cond_3

    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v3, :cond_5

    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Permissions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_7

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/PermissionSettings;->isPermissionAppOp(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v5, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    if-eqz v5, :cond_6

    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v6, v6, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    if-eqz v2, :cond_8

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v3, :cond_8

    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Permissions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeDynamicPermission(Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionSettings;->enforcePermissionTree(Ljava/lang/String;I)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v2

    if-nez v2, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->isDynamic()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not allowed to modify non-dynamic permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/permission/PermissionSettings;->removePermissionLocked(Ljava/lang/String;)V

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionRemoved()V

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Instant applications don\'t have access to this method"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private removeOnRuntimePermissionStateChangedListener(Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private restoreDelayedRuntimePermissions(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$KZ0-FIR02GsOfMAAOdWzIbkVHHM;

    invoke-direct {v3, p0, p2}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$KZ0-FIR02GsOfMAAOdWzIbkVHHM;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/os/UserHandle;)V

    invoke-virtual {v1, p1, p2, v2, v3}, Landroid/permission/PermissionControllerManager;->restoreDelayedRuntimePermissionBackup(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private restorePermissionState(Landroid/content/pm/PackageParser$Package;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 37

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lcom/android/server/pm/PackageSetting;

    if-nez v12, :cond_0

    return-void

    :cond_0
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v13

    move-object v1, v13

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v14

    const/4 v2, 0x0

    sget-object v3, Lcom/android/server/pm/permission/PermissionManagerService;->EMPTY_INT_ARRAY:[I

    const/4 v4, 0x0

    const/4 v0, 0x0

    if-eqz v9, :cond_3

    invoke-virtual {v12, v0}, Lcom/android/server/pm/PackageSetting;->setInstallPermissionsFixed(Z)V

    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->isSharedUser()Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Lcom/android/server/pm/permission/PermissionsState;

    invoke-direct {v5, v13}, Lcom/android/server/pm/permission/PermissionsState;-><init>(Lcom/android/server/pm/permission/PermissionsState;)V

    move-object v1, v5

    invoke-virtual {v13}, Lcom/android/server/pm/permission/PermissionsState;->reset()V

    move-object v15, v1

    move v5, v2

    goto :goto_0

    :cond_1
    iget-object v5, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    nop

    :try_start_0
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v6

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v15

    invoke-direct {v7, v6, v15}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeUnusedSharedUserPermissionsLocked(Lcom/android/server/pm/SharedUserSetting;[I)[I

    move-result-object v6

    move-object v3, v6

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v2, 0x1

    :cond_2
    monitor-exit v5

    move-object v15, v1

    move v5, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    move-object v15, v1

    move v5, v2

    :goto_0
    iget-object v1, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mGlobalGids:[I

    invoke-virtual {v13, v1}, Lcom/android/server/pm/permission/PermissionsState;->setGlobalGids([I)V

    iget-object v2, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iget-object v6, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_21

    const/16 v16, 0x0

    move/from16 v36, v4

    move-object v4, v3

    move/from16 v3, v16

    move/from16 v16, v36

    :goto_1
    if-ge v3, v6, :cond_67

    :try_start_2
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1a

    move/from16 v19, v5

    :try_start_3
    iget-object v5, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v5, v0}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v5

    move/from16 v20, v6

    iget-object v6, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v11, 0x17

    if-lt v6, v11, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    const/4 v11, 0x0

    sget-boolean v21, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_19

    if-eqz v21, :cond_5

    move-object/from16 v21, v11

    :try_start_4
    const-string v11, "PackageManager"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v22, v4

    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " checking "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object v11, v12

    move-object/from16 v32, v14

    move-object v9, v15

    move/from16 v4, v16

    move-object/from16 v3, v22

    move-object v14, v7

    move-object v12, v10

    move/from16 v7, v19

    move/from16 v10, p2

    goto/16 :goto_2e

    :catchall_2
    move-exception v0

    move-object/from16 v22, v4

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object v11, v12

    move-object/from16 v32, v14

    move-object v9, v15

    move/from16 v4, v16

    move-object/from16 v3, v22

    move-object v14, v7

    move-object v12, v10

    move/from16 v7, v19

    move/from16 v10, p2

    goto/16 :goto_2e

    :cond_5
    move-object/from16 v22, v4

    move-object/from16 v21, v11

    :goto_3
    if-eqz v5, :cond_64

    :try_start_6
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v4

    if-nez v4, :cond_6

    move-object/from16 v24, v1

    move/from16 v25, v3

    move-object/from16 v28, v12

    move-object/from16 v32, v14

    move-object v9, v15

    const/4 v7, 0x0

    move-object v15, v0

    move-object v12, v10

    goto/16 :goto_27

    :cond_6
    invoke-virtual {v15, v0}, Lcom/android/server/pm/permission/PermissionsState;->hasRequestedPermission(Ljava/lang/String;)Z

    move-result v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_17

    if-nez v4, :cond_f

    :try_start_7
    iget-object v4, v8, Landroid/content/pm/PackageParser$Package;->implicitPermissions:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "android.permission.ACTIVITY_RECOGNITION"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    move-object/from16 v24, v1

    goto/16 :goto_7

    :cond_8
    :goto_4
    iget-object v4, v8, Landroid/content/pm/PackageParser$Package;->implicitPermissions:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v4, :cond_9

    const-string v4, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " is newly added for "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v24, v1

    goto/16 :goto_7

    :cond_9
    move-object/from16 v24, v1

    goto/16 :goto_7

    :cond_a
    sget-object v4, Landroid/permission/PermissionManager;->SPLIT_PERMISSIONS:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v4, :cond_e

    sget-object v11, Landroid/permission/PermissionManager;->SPLIT_PERMISSIONS:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/permission/PermissionManager$SplitPermissionInfo;

    invoke-virtual {v11}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v24, v23

    move/from16 v23, v4

    invoke-virtual {v11}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v4, v24

    invoke-virtual {v15, v4}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_c

    move-object/from16 v21, v4

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-boolean v24, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v24, :cond_b

    move-object/from16 v24, v1

    const-string v1, "PackageManager"

    move-object/from16 v25, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v26, v11

    const-string v11, " is newly added for "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_7

    :cond_b
    move-object/from16 v24, v1

    move-object/from16 v25, v4

    move-object/from16 v26, v11

    goto :goto_7

    :cond_c
    move-object/from16 v24, v1

    move-object/from16 v25, v4

    move-object/from16 v26, v11

    goto :goto_6

    :cond_d
    move-object/from16 v26, v11

    move-object/from16 v25, v24

    move-object/from16 v24, v1

    :goto_6
    add-int/lit8 v9, v9, 0x1

    move/from16 v4, v23

    move-object/from16 v1, v24

    goto :goto_5

    :cond_e
    move-object/from16 v24, v1

    move/from16 v23, v4

    goto :goto_7

    :cond_f
    move-object/from16 v24, v1

    :goto_7
    move-object/from16 v1, v21

    :try_start_8
    iget-object v4, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_17

    if-eqz v4, :cond_11

    :try_start_9
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->isInstant()Z

    move-result v4

    if-nez v4, :cond_11

    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v4, :cond_10

    const-string v4, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Denying non-ephemeral permission "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " for package "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move/from16 v25, v3

    move-object/from16 v28, v12

    move-object/from16 v32, v14

    move-object v9, v15

    const/4 v7, 0x0

    move-object v12, v10

    goto/16 :goto_28

    :cond_10
    move/from16 v25, v3

    move-object/from16 v28, v12

    move-object/from16 v32, v14

    move-object v9, v15

    const/4 v7, 0x0

    move-object v12, v10

    goto/16 :goto_28

    :cond_11
    :try_start_a
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->isRuntimeOnly()Z

    move-result v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_17

    if-eqz v4, :cond_13

    if-nez v6, :cond_13

    :try_start_b
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v4, :cond_12

    const-string v4, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Denying runtime-only permission "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " for package "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move/from16 v25, v3

    move-object/from16 v28, v12

    move-object/from16 v32, v14

    move-object v9, v15

    const/4 v7, 0x0

    move-object v12, v10

    goto/16 :goto_28

    :cond_12
    move/from16 v25, v3

    move-object/from16 v28, v12

    move-object/from16 v32, v14

    move-object v9, v15

    const/4 v7, 0x0

    move-object v12, v10

    goto/16 :goto_28

    :cond_13
    :try_start_c
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    const/4 v11, 0x1

    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->isAppOp()Z

    move-result v21
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_17

    if-eqz v21, :cond_14

    move/from16 v21, v9

    :try_start_d
    iget-object v9, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    move/from16 v23, v11

    iget-object v11, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v4, v11}, Lcom/android/server/pm/permission/PermissionSettings;->addAppOpPackage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_8

    :cond_14
    move/from16 v21, v9

    move/from16 v23, v11

    :goto_8
    :try_start_e
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->isNormal()Z

    move-result v9

    if-eqz v9, :cond_15

    const/4 v11, 0x2

    move/from16 v25, v3

    goto :goto_a

    :cond_15
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v9
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_17

    if-eqz v9, :cond_18

    :try_start_f
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v9
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    if-nez v9, :cond_17

    if-eqz v1, :cond_16

    goto :goto_9

    :cond_16
    const/4 v11, 0x3

    move/from16 v25, v3

    goto :goto_a

    :cond_17
    :goto_9
    const/4 v11, 0x4

    move/from16 v25, v3

    goto :goto_a

    :cond_18
    :try_start_10
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->isSignature()Z

    move-result v9
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_17

    if-eqz v9, :cond_1b

    :try_start_11
    invoke-direct {v7, v4, v8, v5, v15}, Lcom/android/server/pm/permission/PermissionManagerService;->grantSignaturePermission(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/permission/BasePermission;Lcom/android/server/pm/permission/PermissionsState;)Z

    move-result v9

    move/from16 v25, v3

    const/4 v11, 0x1

    new-array v3, v11, [I

    const/4 v11, 0x0

    aput v11, v3, v11

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_19

    iget-object v3, v8, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v3, v3, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v3}, Lcom/android/server/pm/OpPackageManagerHelperInjector;->isTrustedSystemSignature([Landroid/content/pm/Signature;)Z

    move-result v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    or-int/2addr v3, v9

    move v9, v3

    :cond_19
    if-eqz v9, :cond_1a

    const/4 v11, 0x2

    move/from16 v21, v9

    goto :goto_a

    :cond_1a
    move/from16 v21, v9

    move/from16 v11, v23

    goto :goto_a

    :cond_1b
    move/from16 v25, v3

    move/from16 v11, v23

    :goto_a
    :try_start_12
    sget-boolean v3, Lcom/android/server/pm/permission/PermissionManagerService;->IS_SUPPORT_COLOR_ADS:Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_17

    if-eqz v3, :cond_1d

    :try_start_13
    iget-object v3, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/server/OPAppSwitchManagerServiceInjector;->getOposAdsSettings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v3, :cond_1c

    const-string v3, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v11

    const-string v11, "granting permission "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " to package "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto :goto_b

    :cond_1c
    move/from16 v23, v11

    :goto_b
    const/4 v11, 0x2

    goto :goto_c

    :cond_1d
    move/from16 v23, v11

    move/from16 v11, v23

    :goto_c
    :try_start_14
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_17

    if-eqz v3, :cond_1e

    :try_start_15
    const-string v3, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v0

    const-string v0, "Considering granting permission "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to package "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto :goto_d

    :cond_1e
    move-object/from16 v23, v0

    :goto_d
    const/4 v9, 0x1

    if-eq v11, v9, :cond_5f

    :try_start_16
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v18
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_13

    if-nez v18, :cond_20

    :try_start_17
    new-array v0, v9, [I

    const/16 v9, 0x15

    const/16 v17, 0x0

    aput v9, v0, v17

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/pm/OpReserveAppInjector;->isReserveApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    :cond_1f
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->areInstallPermissionsFixed()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v0

    if-nez v0, :cond_20

    if-nez v21, :cond_20

    invoke-virtual {v15, v4}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-direct {v7, v4, v8}, Lcom/android/server/pm/permission/PermissionManagerService;->isNewPlatformPermissionForPackage(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v11, 0x1

    :cond_20
    const/4 v0, 0x2

    if-eq v11, v0, :cond_5b

    const/4 v0, 0x3

    if-eq v11, v0, :cond_3e

    const/4 v0, 0x4

    if-eq v11, v0, :cond_24

    if-eqz v10, :cond_22

    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_e

    :cond_21
    move-object/from16 v28, v12

    move-object/from16 v32, v14

    move-object v9, v15

    const/4 v7, 0x0

    move-object v12, v10

    goto/16 :goto_28

    :cond_22
    :goto_e
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v0, :cond_23

    const-string v0, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Not granting permission "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " to package "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " because it was previously installed without"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    move-object/from16 v28, v12

    move-object/from16 v32, v14

    move-object v9, v15

    const/4 v7, 0x0

    move-object v12, v10

    goto/16 :goto_28

    :cond_23
    move-object/from16 v28, v12

    move-object/from16 v32, v14

    move-object v9, v15

    const/4 v7, 0x0

    move-object v12, v10

    goto/16 :goto_28

    :cond_24
    nop

    :try_start_18
    invoke-virtual {v15, v4}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    if-eqz v0, :cond_25

    :try_start_19
    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v9
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    goto :goto_f

    :cond_25
    const/4 v9, 0x0

    :goto_f
    if-nez v1, :cond_26

    move-object v3, v5

    goto :goto_10

    :cond_26
    :try_start_1a
    iget-object v3, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v3, v1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v3

    :goto_10
    move-object/from16 v27, v1

    invoke-virtual {v15, v3}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    move/from16 v28, v9

    const/4 v9, -0x1

    if-eq v1, v9, :cond_27

    const v1, 0xbbff

    move/from16 v29, v11

    const/4 v11, 0x0

    :try_start_1b
    invoke-virtual {v15, v3, v9, v1, v11}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    const/4 v1, 0x1

    move/from16 v16, v1

    goto :goto_11

    :cond_27
    move/from16 v29, v11

    :goto_11
    :try_start_1c
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->isHardRestricted()Z

    move-result v1

    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->isSoftRestricted()Z

    move-result v9

    array-length v11, v14
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    move-object/from16 v30, v3

    move-object/from16 v10, v22

    const/4 v3, 0x0

    move/from16 v36, v28

    move-object/from16 v28, v12

    move/from16 v12, v36

    :goto_12
    if-ge v3, v11, :cond_3d

    :try_start_1d
    aget v22, v14, v3

    move/from16 v31, v22

    move/from16 v32, v11

    iget-object v11, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    if-eqz v11, :cond_28

    :try_start_1e
    iget-object v11, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    move-object/from16 v33, v4

    move/from16 v4, v31

    invoke-virtual {v11, v4}, Lcom/android/server/policy/PermissionPolicyInternal;->isInitialized(I)Z

    move-result v11
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    if-eqz v11, :cond_29

    const/4 v11, 0x1

    goto :goto_13

    :catchall_3
    move-exception v0

    move-object/from16 v12, p3

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object v3, v10

    move-object/from16 v32, v14

    move-object v9, v15

    move/from16 v4, v16

    move-object/from16 v11, v28

    move/from16 v10, p2

    move-object v14, v7

    move/from16 v7, v19

    goto/16 :goto_2e

    :cond_28
    move-object/from16 v33, v4

    move/from16 v4, v31

    :cond_29
    const/4 v11, 0x0

    :goto_13
    const/16 v22, 0x0

    :try_start_1f
    iget-object v7, v5, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v15, v7, v4}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v7
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    and-int/lit16 v7, v7, 0x3800

    if-eqz v7, :cond_2a

    const/4 v7, 0x1

    goto :goto_14

    :cond_2a
    const/4 v7, 0x0

    :goto_14
    move-object/from16 v31, v14

    :try_start_20
    iget-object v14, v5, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v15, v14, v4}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v14

    and-int/lit16 v14, v14, 0x4000

    if-eqz v14, :cond_2b

    const/4 v14, 0x1

    goto :goto_15

    :cond_2b
    const/4 v14, 0x0

    :goto_15
    if-eqz v6, :cond_34

    if-eqz v11, :cond_2f

    if-eqz v1, :cond_2f

    if-nez v7, :cond_2e

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v34

    if-eqz v34, :cond_2c

    move-object/from16 v34, v0

    invoke-virtual {v13, v5, v4}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_5

    move-object/from16 v35, v15

    const/4 v15, -0x1

    if-eq v0, v15, :cond_2d

    const/4 v0, 0x1

    move/from16 v22, v0

    goto :goto_16

    :cond_2c
    move-object/from16 v34, v0

    move-object/from16 v35, v15

    :cond_2d
    :goto_16
    if-nez v14, :cond_30

    or-int/lit16 v12, v12, 0x4000

    const/16 v22, 0x1

    goto :goto_17

    :cond_2e
    move-object/from16 v34, v0

    move-object/from16 v35, v15

    goto :goto_17

    :cond_2f
    move-object/from16 v34, v0

    move-object/from16 v35, v15

    if-eqz v11, :cond_30

    if-eqz v9, :cond_30

    if-nez v7, :cond_30

    if-nez v14, :cond_30

    or-int/lit16 v12, v12, 0x4000

    const/16 v22, 0x1

    :cond_30
    :goto_17
    and-int/lit8 v0, v12, 0x40

    if-eqz v0, :cond_31

    and-int/lit8 v12, v12, -0x41

    const/16 v22, 0x1

    :cond_31
    and-int/lit8 v0, v12, 0x8

    if-eqz v0, :cond_32

    and-int/lit8 v12, v12, -0x9

    const/16 v22, 0x1

    goto :goto_18

    :cond_32
    if-eqz v11, :cond_33

    if-eqz v1, :cond_33

    if-eqz v7, :cond_37

    :cond_33
    :try_start_21
    invoke-virtual {v13, v5, v4}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v0

    const/4 v15, -0x1

    if-eq v0, v15, :cond_37

    const/16 v22, 0x1

    goto :goto_18

    :cond_34
    move-object/from16 v34, v0

    move-object/from16 v35, v15

    iget-object v0, v5, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v13, v0, v4}, Lcom/android/server/pm/permission/PermissionsState;->hasRuntimePermission(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_35

    invoke-virtual {v13, v5, v4}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v0

    const/4 v15, -0x1

    if-eq v0, v15, :cond_35

    or-int/lit8 v12, v12, 0x40

    const/16 v22, 0x1

    :cond_35
    if-eqz v11, :cond_37

    if-nez v1, :cond_36

    if-eqz v9, :cond_37

    :cond_36
    if-nez v7, :cond_37

    if-nez v14, :cond_37

    or-int/lit16 v12, v12, 0x4000

    const/16 v22, 0x1

    :cond_37
    :goto_18
    if-eqz v11, :cond_3b

    if-nez v1, :cond_38

    if-eqz v9, :cond_39

    :cond_38
    if-eqz v7, :cond_3b

    :cond_39
    if-eqz v14, :cond_3b

    and-int/lit16 v0, v12, -0x4001

    if-nez v6, :cond_3a

    or-int/lit8 v0, v0, 0x40

    move v12, v0

    goto :goto_19

    :cond_3a
    move v12, v0

    :goto_19
    const/16 v22, 0x1

    :cond_3b
    if-eqz v22, :cond_3c

    invoke-static {v10, v4}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v0

    move-object v10, v0

    :cond_3c
    const-string v0, "RESTORE UPGRADE"

    move-object/from16 v15, v23

    invoke-static {v8, v15, v12, v0}, Lcom/android/server/pm/PermissionPmInjector;->mayClearFlagsForLegacyApp(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    move v12, v0

    const v0, 0xfbff

    invoke-virtual {v13, v5, v4, v0, v12}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_4

    nop

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v7, p0

    move-object/from16 v23, v15

    move-object/from16 v14, v31

    move/from16 v11, v32

    move-object/from16 v4, v33

    move-object/from16 v0, v34

    move-object/from16 v15, v35

    goto/16 :goto_12

    :catchall_4
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v12, p3

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object v3, v10

    move/from16 v4, v16

    move/from16 v7, v19

    move-object/from16 v11, v28

    move-object/from16 v32, v31

    move-object/from16 v9, v35

    move/from16 v10, p2

    goto/16 :goto_2e

    :catchall_5
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v12, p3

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object v3, v10

    move-object v9, v15

    move/from16 v4, v16

    move/from16 v7, v19

    move-object/from16 v11, v28

    move-object/from16 v32, v31

    move/from16 v10, p2

    goto/16 :goto_2e

    :catchall_6
    move-exception v0

    move-object/from16 v12, p3

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object v3, v10

    move-object/from16 v32, v14

    move-object v9, v15

    move/from16 v4, v16

    move/from16 v7, v19

    move-object/from16 v11, v28

    move-object/from16 v14, p0

    move/from16 v10, p2

    goto/16 :goto_2e

    :cond_3d
    move-object/from16 v34, v0

    move-object/from16 v33, v4

    move-object/from16 v31, v14

    move-object/from16 v35, v15

    move-object/from16 v15, v23

    move-object/from16 v12, p3

    move-object v4, v10

    move-object/from16 v32, v31

    move-object/from16 v9, v35

    const/4 v7, 0x0

    goto/16 :goto_29

    :catchall_7
    move-exception v0

    move/from16 v10, p2

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object v11, v12

    move-object/from16 v32, v14

    move-object v9, v15

    move/from16 v4, v16

    move/from16 v7, v19

    move-object/from16 v3, v22

    move-object/from16 v14, p0

    move-object/from16 v12, p3

    goto/16 :goto_2e

    :cond_3e
    move-object/from16 v27, v1

    move-object/from16 v33, v4

    move/from16 v29, v11

    move-object/from16 v28, v12

    move-object/from16 v31, v14

    move-object/from16 v35, v15

    move-object/from16 v15, v23

    :try_start_22
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->isHardRestricted()Z

    move-result v0

    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->isSoftRestricted()Z

    move-result v1
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_f

    move-object/from16 v7, v31

    :try_start_23
    array-length v3, v7
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_e

    move-object/from16 v9, v22

    const/4 v4, 0x0

    :goto_1a
    if-ge v4, v3, :cond_5a

    :try_start_24
    aget v10, v7, v4

    move-object/from16 v12, p0

    iget-object v11, v12, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_d

    if-eqz v11, :cond_3f

    :try_start_25
    iget-object v11, v12, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    invoke-virtual {v11, v10}, Lcom/android/server/policy/PermissionPolicyInternal;->isInitialized(I)Z

    move-result v11
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_8

    if-eqz v11, :cond_3f

    const/4 v11, 0x1

    goto :goto_1b

    :catchall_8
    move-exception v0

    move/from16 v10, p2

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object/from16 v32, v7

    move-object v3, v9

    move-object v14, v12

    move/from16 v4, v16

    move/from16 v7, v19

    move-object/from16 v11, v28

    move-object/from16 v9, v35

    move-object/from16 v12, p3

    goto/16 :goto_2e

    :cond_3f
    const/4 v11, 0x0

    :goto_1b
    nop

    move/from16 v23, v3

    move-object/from16 v3, v33

    move-object/from16 v14, v35

    :try_start_26
    invoke-virtual {v14, v3, v10}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v22
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_c

    if-eqz v22, :cond_40

    :try_start_27
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v30
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_9

    goto :goto_1c

    :catchall_9
    move-exception v0

    move/from16 v10, p2

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object/from16 v32, v7

    move-object v3, v9

    move-object v9, v14

    move/from16 v4, v16

    move/from16 v7, v19

    move-object/from16 v11, v28

    move-object v14, v12

    move-object/from16 v12, p3

    goto/16 :goto_2e

    :cond_40
    const/16 v30, 0x0

    :goto_1c
    move/from16 v31, v30

    const/16 v30, 0x0

    move-object/from16 v32, v7

    :try_start_28
    iget-object v7, v5, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v14, v7, v10}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v7

    and-int/lit16 v7, v7, 0x3800

    if-eqz v7, :cond_41

    const/4 v7, 0x1

    goto :goto_1d

    :cond_41
    const/4 v7, 0x0

    :goto_1d
    iget-object v12, v5, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v14, v12, v10}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v12

    and-int/lit16 v12, v12, 0x4000

    if-eqz v12, :cond_42

    const/4 v12, 0x1

    goto :goto_1e

    :cond_42
    const/4 v12, 0x0

    :goto_1e
    if-eqz v6, :cond_4f

    if-eqz v11, :cond_47

    if-eqz v0, :cond_47

    if-nez v7, :cond_46

    if-eqz v22, :cond_43

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v33

    if-eqz v33, :cond_43

    move-object/from16 v33, v3

    invoke-virtual {v13, v5, v10}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v3
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_b

    move-object/from16 v35, v14

    const/4 v14, -0x1

    if-eq v3, v14, :cond_44

    const/4 v3, 0x1

    move/from16 v30, v3

    goto :goto_1f

    :cond_43
    move-object/from16 v33, v3

    move-object/from16 v35, v14

    :cond_44
    :goto_1f
    if-nez v12, :cond_45

    move/from16 v3, v31

    or-int/lit16 v3, v3, 0x4000

    const/16 v30, 0x1

    goto :goto_20

    :cond_45
    move/from16 v3, v31

    goto :goto_20

    :cond_46
    move-object/from16 v33, v3

    move-object/from16 v35, v14

    move/from16 v3, v31

    goto :goto_20

    :cond_47
    move-object/from16 v33, v3

    move-object/from16 v35, v14

    move/from16 v3, v31

    if-eqz v11, :cond_48

    if-eqz v1, :cond_48

    if-nez v7, :cond_48

    if-nez v12, :cond_48

    or-int/lit16 v3, v3, 0x4000

    const/16 v30, 0x1

    :cond_48
    :goto_20
    and-int/lit8 v14, v3, 0x40

    if-eqz v14, :cond_49

    and-int/lit8 v3, v3, -0x41

    const/16 v30, 0x1

    :cond_49
    and-int/lit8 v14, v3, 0x8

    if-eqz v14, :cond_4a

    and-int/lit8 v3, v3, -0x9

    const/16 v30, 0x1

    move/from16 v31, v4

    goto/16 :goto_24

    :cond_4a
    if-eqz v11, :cond_4c

    if-eqz v0, :cond_4c

    if-eqz v7, :cond_4b

    goto :goto_21

    :cond_4b
    move/from16 v31, v3

    goto :goto_22

    :cond_4c
    :goto_21
    if-eqz v22, :cond_4d

    :try_start_29
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v14

    if-eqz v14, :cond_4d

    invoke-virtual {v13, v5, v10}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v14

    move/from16 v31, v3

    const/4 v3, -0x1

    if-ne v14, v3, :cond_4e

    const/16 v30, 0x1

    move/from16 v3, v31

    move/from16 v31, v4

    goto :goto_24

    :cond_4d
    move/from16 v31, v3

    :cond_4e
    :goto_22
    move/from16 v3, v31

    move/from16 v31, v4

    goto :goto_24

    :cond_4f
    move-object/from16 v33, v3

    move-object/from16 v35, v14

    move/from16 v3, v31

    if-nez v22, :cond_50

    const-string v14, "android"

    move/from16 v31, v4

    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_51

    or-int/lit8 v3, v3, 0x48

    const/16 v30, 0x1

    goto :goto_23

    :cond_50
    move/from16 v31, v4

    :cond_51
    :goto_23
    iget-object v4, v5, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v13, v4, v10}, Lcom/android/server/pm/permission/PermissionsState;->hasRuntimePermission(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_52

    invoke-virtual {v13, v5, v10}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v4

    const/4 v14, -0x1

    if-eq v4, v14, :cond_52

    const/4 v4, 0x1

    move/from16 v30, v4

    :cond_52
    if-eqz v11, :cond_54

    if-nez v0, :cond_53

    if-eqz v1, :cond_54

    :cond_53
    if-nez v7, :cond_54

    if-nez v12, :cond_54

    or-int/lit16 v3, v3, 0x4000

    const/16 v30, 0x1

    :cond_54
    :goto_24
    if-eqz v11, :cond_58

    if-nez v0, :cond_55

    if-eqz v1, :cond_56

    :cond_55
    if-eqz v7, :cond_58

    :cond_56
    if-eqz v12, :cond_58

    and-int/lit16 v3, v3, -0x4001

    if-nez v6, :cond_57

    or-int/lit8 v3, v3, 0x40

    :cond_57
    const/16 v30, 0x1

    :cond_58
    if-eqz v30, :cond_59

    invoke-static {v9, v10}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v4

    move-object v9, v4

    :cond_59
    const-string v4, "RESTORE RUNTIME"

    invoke-static {v8, v15, v3, v4}, Lcom/android/server/pm/PermissionPmInjector;->mayClearFlagsForLegacyApp(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;ILjava/lang/String;)I

    move-result v4

    move v3, v4

    const v4, 0xfbff

    invoke-virtual {v13, v5, v10, v4, v3}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_a

    nop

    add-int/lit8 v4, v31, 0x1

    move/from16 v3, v23

    move-object/from16 v7, v32

    goto/16 :goto_1a

    :catchall_a
    move-exception v0

    move-object/from16 v14, p0

    move/from16 v10, p2

    move-object/from16 v12, p3

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object v3, v9

    move/from16 v4, v16

    move/from16 v7, v19

    move-object/from16 v11, v28

    move-object/from16 v9, v35

    goto/16 :goto_2e

    :catchall_b
    move-exception v0

    move/from16 v10, p2

    move-object/from16 v12, p3

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object v3, v9

    move-object v9, v14

    move/from16 v4, v16

    move/from16 v7, v19

    move-object/from16 v11, v28

    move-object/from16 v14, p0

    goto/16 :goto_2e

    :catchall_c
    move-exception v0

    move-object/from16 v32, v7

    move/from16 v10, p2

    move-object/from16 v12, p3

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object v3, v9

    move-object v9, v14

    move/from16 v4, v16

    move/from16 v7, v19

    move-object/from16 v11, v28

    move-object/from16 v14, p0

    goto/16 :goto_2e

    :catchall_d
    move-exception v0

    move-object/from16 v32, v7

    move-object/from16 v14, p0

    move/from16 v10, p2

    move-object/from16 v12, p3

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object v3, v9

    move/from16 v4, v16

    move/from16 v7, v19

    move-object/from16 v11, v28

    move-object/from16 v9, v35

    goto/16 :goto_2e

    :cond_5a
    move-object/from16 v32, v7

    move-object/from16 v12, p3

    move-object v4, v9

    move-object/from16 v9, v35

    const/4 v7, 0x0

    goto/16 :goto_29

    :catchall_e
    move-exception v0

    move-object/from16 v32, v7

    move-object/from16 v14, p0

    move/from16 v10, p2

    move-object/from16 v12, p3

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move/from16 v4, v16

    move/from16 v7, v19

    move-object/from16 v3, v22

    move-object/from16 v11, v28

    move-object/from16 v9, v35

    goto/16 :goto_2e

    :catchall_f
    move-exception v0

    move-object/from16 v32, v31

    move-object/from16 v14, p0

    move/from16 v10, p2

    move-object/from16 v12, p3

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move/from16 v4, v16

    move/from16 v7, v19

    move-object/from16 v3, v22

    move-object/from16 v11, v28

    move-object/from16 v9, v35

    goto/16 :goto_2e

    :cond_5b
    move-object/from16 v27, v1

    move-object/from16 v33, v4

    move/from16 v29, v11

    move-object/from16 v28, v12

    move-object/from16 v32, v14

    move-object/from16 v35, v15

    move-object/from16 v15, v23

    :try_start_2a
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    array-length v1, v0
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_12

    move-object/from16 v4, v22

    const/4 v3, 0x0

    :goto_25
    if-ge v3, v1, :cond_5d

    :try_start_2b
    aget v7, v0, v3
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_10

    move-object/from16 v10, v33

    move-object/from16 v9, v35

    :try_start_2c
    invoke-virtual {v9, v10, v7}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v11

    if-eqz v11, :cond_5c

    invoke-virtual {v9, v5, v7}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    const v11, 0xfbff

    const/4 v12, 0x0

    invoke-virtual {v9, v5, v7, v11, v12}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    invoke-static {v4, v7}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v11

    move-object v4, v11

    :cond_5c
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v35, v9

    move-object/from16 v33, v10

    goto :goto_25

    :catchall_10
    move-exception v0

    move-object/from16 v9, v35

    move-object/from16 v14, p0

    move/from16 v10, p2

    move-object/from16 v12, p3

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object v3, v4

    move/from16 v4, v16

    move/from16 v7, v19

    move-object/from16 v11, v28

    goto/16 :goto_2e

    :cond_5d
    move-object/from16 v10, v33

    move-object/from16 v9, v35

    invoke-virtual {v13, v5}, Lcom/android/server/pm/permission/PermissionsState;->grantInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v0
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_11

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5e

    const/4 v0, 0x1

    move-object/from16 v12, p3

    move/from16 v16, v0

    const/4 v7, 0x0

    goto/16 :goto_29

    :cond_5e
    move-object/from16 v12, p3

    const/4 v7, 0x0

    goto/16 :goto_29

    :catchall_11
    move-exception v0

    move-object/from16 v14, p0

    move/from16 v10, p2

    move-object/from16 v12, p3

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object v3, v4

    move/from16 v4, v16

    move/from16 v7, v19

    move-object/from16 v11, v28

    goto/16 :goto_2e

    :catchall_12
    move-exception v0

    move-object/from16 v9, v35

    move-object/from16 v14, p0

    move/from16 v10, p2

    move-object/from16 v12, p3

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move/from16 v4, v16

    move/from16 v7, v19

    move-object/from16 v3, v22

    move-object/from16 v11, v28

    goto/16 :goto_2e

    :catchall_13
    move-exception v0

    move-object/from16 v32, v14

    move-object v9, v15

    move-object/from16 v14, p0

    move/from16 v10, p2

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object v11, v12

    move/from16 v4, v16

    move/from16 v7, v19

    move-object/from16 v3, v22

    move-object/from16 v12, p3

    goto/16 :goto_26

    :cond_5f
    move-object/from16 v27, v1

    move-object v10, v4

    move-object/from16 v28, v12

    move-object/from16 v32, v14

    move-object v9, v15

    move-object/from16 v15, v23

    :try_start_2d
    invoke-virtual {v13, v5}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v0
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_16

    const/4 v1, -0x1

    if-eq v0, v1, :cond_60

    const v0, 0xfbff

    const/4 v7, 0x0

    :try_start_2e
    invoke-virtual {v13, v5, v1, v0, v7}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_15

    const/4 v4, 0x1

    :try_start_2f
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Un-granting permission "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (protectionLevel="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->getProtectionLevel()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " flags=0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_14

    move-object/from16 v12, p3

    move/from16 v16, v4

    move-object/from16 v4, v22

    goto/16 :goto_29

    :catchall_14
    move-exception v0

    move-object/from16 v14, p0

    move/from16 v10, p2

    move-object/from16 v12, p3

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move/from16 v7, v19

    move-object/from16 v3, v22

    move-object/from16 v11, v28

    goto/16 :goto_2e

    :catchall_15
    move-exception v0

    move-object/from16 v14, p0

    move/from16 v10, p2

    move-object/from16 v12, p3

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move/from16 v4, v16

    move/from16 v7, v19

    move-object/from16 v3, v22

    move-object/from16 v11, v28

    goto/16 :goto_2e

    :cond_60
    const/4 v7, 0x0

    :try_start_30
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->isAppOp()Z

    move-result v0

    if-eqz v0, :cond_63

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_16

    if-eqz v0, :cond_62

    move-object/from16 v12, p3

    if-eqz v12, :cond_61

    :try_start_31
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    :cond_61
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not granting permission "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (protectionLevel="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->getProtectionLevel()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " flags=0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28

    :cond_62
    move-object/from16 v12, p3

    goto/16 :goto_28

    :cond_63
    move-object/from16 v12, p3

    goto/16 :goto_28

    :catchall_16
    move-exception v0

    move-object/from16 v12, p3

    move-object/from16 v14, p0

    move/from16 v10, p2

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move/from16 v4, v16

    move/from16 v7, v19

    move-object/from16 v3, v22

    move-object/from16 v11, v28

    goto/16 :goto_2e

    :catchall_17
    move-exception v0

    move-object/from16 v28, v12

    move-object/from16 v32, v14

    move-object v9, v15

    move-object v12, v10

    move-object/from16 v14, p0

    move/from16 v10, p2

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move/from16 v4, v16

    move/from16 v7, v19

    move-object/from16 v3, v22

    move-object/from16 v11, v28

    :goto_26
    goto/16 :goto_2e

    :cond_64
    move-object/from16 v24, v1

    move/from16 v25, v3

    move-object/from16 v28, v12

    move-object/from16 v32, v14

    move-object v9, v15

    const/4 v7, 0x0

    move-object v15, v0

    move-object v12, v10

    :goto_27
    if-eqz v12, :cond_65

    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    :cond_65
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v0, :cond_66

    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown permission "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_18

    :cond_66
    :goto_28
    move-object/from16 v4, v22

    :goto_29
    add-int/lit8 v3, v25, 0x1

    move-object/from16 v11, p4

    move v0, v7

    move-object v15, v9

    move-object v10, v12

    move/from16 v5, v19

    move/from16 v6, v20

    move-object/from16 v1, v24

    move-object/from16 v12, v28

    move-object/from16 v14, v32

    move-object/from16 v7, p0

    move/from16 v9, p2

    goto/16 :goto_1

    :catchall_18
    move-exception v0

    move-object/from16 v14, p0

    move/from16 v10, p2

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move/from16 v4, v16

    move/from16 v7, v19

    move-object/from16 v3, v22

    move-object/from16 v11, v28

    goto/16 :goto_2e

    :catchall_19
    move-exception v0

    move-object/from16 v22, v4

    move-object/from16 v28, v12

    move-object/from16 v32, v14

    move-object v9, v15

    move-object v12, v10

    move-object/from16 v14, p0

    move/from16 v10, p2

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move/from16 v4, v16

    move/from16 v7, v19

    move-object/from16 v3, v22

    move-object/from16 v11, v28

    goto/16 :goto_2e

    :catchall_1a
    move-exception v0

    move-object/from16 v22, v4

    move-object/from16 v28, v12

    move-object/from16 v32, v14

    move-object v9, v15

    move-object v12, v10

    move-object/from16 v14, p0

    move/from16 v10, p2

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move v7, v5

    move/from16 v4, v16

    move-object/from16 v3, v22

    move-object/from16 v11, v28

    goto/16 :goto_2e

    :cond_67
    move-object/from16 v24, v1

    move/from16 v25, v3

    move-object/from16 v22, v4

    move/from16 v19, v5

    move/from16 v20, v6

    move-object/from16 v28, v12

    move-object/from16 v32, v14

    move-object v9, v15

    const/4 v7, 0x0

    move-object v12, v10

    if-nez v16, :cond_68

    move/from16 v10, p2

    if-eqz v10, :cond_69

    goto :goto_2a

    :cond_68
    move/from16 v10, p2

    :goto_2a
    :try_start_32
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/pm/PackageSetting;->areInstallPermissionsFixed()Z

    move-result v0
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_20

    if-nez v0, :cond_69

    :try_start_33
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v0
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_1b

    if-eqz v0, :cond_6a

    goto :goto_2b

    :catchall_1b
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move/from16 v4, v16

    move/from16 v7, v19

    move-object/from16 v3, v22

    move-object/from16 v11, v28

    goto/16 :goto_2e

    :cond_69
    :goto_2b
    :try_start_34
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/pm/PackageSetting;->isUpdatedSystem()Z

    move-result v0
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_20

    if-eqz v0, :cond_6b

    :cond_6a
    move-object/from16 v11, v28

    const/4 v0, 0x1

    :try_start_35
    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->setInstallPermissionsFixed(Z)V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_1c

    goto :goto_2c

    :catchall_1c
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move/from16 v4, v16

    move/from16 v7, v19

    move-object/from16 v3, v22

    goto/16 :goto_2e

    :cond_6b
    move-object/from16 v11, v28

    :goto_2c
    move-object/from16 v14, p0

    move-object/from16 v3, v22

    :try_start_36
    invoke-direct {v14, v13, v8, v3}, Lcom/android/server/pm/permission/PermissionManagerService;->revokePermissionsNoLongerImplicitLocked(Lcom/android/server/pm/permission/PermissionsState;Landroid/content/pm/PackageParser$Package;[I)[I

    move-result-object v6
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_1f

    move/from16 v0, v20

    move-object/from16 v15, v24

    move-object/from16 v1, p0

    move-object/from16 v17, v2

    move-object v2, v9

    move-object v3, v13

    move-object/from16 v4, p1

    move/from16 v7, v19

    move-object v5, v15

    :try_start_37
    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->setInitialGrantForNewImplicitPermissionsLocked(Lcom/android/server/pm/permission/PermissionsState;Lcom/android/server/pm/permission/PermissionsState;Landroid/content/pm/PackageParser$Package;Landroid/util/ArraySet;[I)[I

    move-result-object v1
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_1e

    move-object v3, v1

    :try_start_38
    invoke-direct {v14, v8, v10, v3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkIfLegacyStorageOpsNeedToBeUpdated(Landroid/content/pm/PackageParser$Package;Z[I)[I

    move-result-object v1

    move-object v3, v1

    monitor-exit v17
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_1d

    move-object/from16 v1, p4

    if-eqz v1, :cond_6c

    invoke-virtual {v1, v3, v7}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionUpdated([IZ)V

    :cond_6c
    array-length v0, v3

    const/4 v2, 0x0

    :goto_2d
    if-ge v2, v0, :cond_6d

    aget v4, v3, v2

    iget-object v5, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-direct {v14, v5, v4}, Lcom/android/server/pm/permission/PermissionManagerService;->notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_6d
    return-void

    :catchall_1d
    move-exception v0

    move-object/from16 v1, p4

    move/from16 v4, v16

    goto :goto_2e

    :catchall_1e
    move-exception v0

    move-object/from16 v1, p4

    move-object v3, v6

    move/from16 v4, v16

    goto :goto_2e

    :catchall_1f
    move-exception v0

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move/from16 v7, v19

    move/from16 v4, v16

    goto :goto_2e

    :catchall_20
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move/from16 v7, v19

    move-object/from16 v3, v22

    move-object/from16 v11, v28

    move/from16 v4, v16

    goto :goto_2e

    :catchall_21
    move-exception v0

    move-object/from16 v17, v2

    move-object v1, v11

    move-object v11, v12

    move-object/from16 v32, v14

    move-object v14, v7

    move-object v12, v10

    move v7, v5

    move v10, v9

    move-object v9, v15

    :goto_2e
    :try_start_39
    monitor-exit v17
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_22

    throw v0

    :catchall_22
    move-exception v0

    goto :goto_2e
.end method

.method private restoreRuntimePermissions([BLandroid/os/UserHandle;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    invoke-virtual {v1, p1, p2}, Landroid/permission/PermissionControllerManager;->restoreRuntimePermissionBackup([BLandroid/os/UserHandle;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private revokePermissionsNoLongerImplicitLocked(Lcom/android/server/pm/permission/PermissionsState;Landroid/content/pm/PackageParser$Package;[I)[I
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x17

    if-lt v3, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    move-object/from16 v8, p3

    :goto_1
    if-ge v7, v6, :cond_8

    aget v9, v5, v7

    invoke-virtual {v0, v9}, Lcom/android/server/pm/permission/PermissionsState;->getPermissions(I)Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iget-object v12, v1, Landroid/content/pm/PackageParser$Package;->implicitPermissions:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    invoke-virtual {v0, v11}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-virtual {v0, v11, v9}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v12

    and-int/lit16 v13, v12, 0x80

    if-eqz v13, :cond_4

    move-object/from16 v13, p0

    iget-object v14, v13, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v14, v11}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v14

    const/16 v15, 0x80

    and-int/lit8 v16, v12, 0x34

    if-nez v16, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v14, v9}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v4

    const/4 v1, -0x1

    if-eq v4, v1, :cond_2

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v3

    const-string v3, "Revoking runtime permission "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " as it is now requested"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PackageManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_1
    move/from16 v17, v3

    goto :goto_3

    :cond_2
    move/from16 v17, v3

    :goto_3
    or-int/lit8 v15, v15, 0x3

    goto :goto_4

    :cond_3
    move/from16 v17, v3

    :goto_4
    const/4 v1, 0x0

    invoke-virtual {v0, v14, v9, v15, v1}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    invoke-static {v8, v9}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v8

    goto :goto_5

    :cond_4
    const/4 v1, 0x0

    move-object/from16 v13, p0

    move/from16 v17, v3

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    move-object/from16 v13, p0

    move/from16 v17, v3

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    move-object/from16 v13, p0

    move/from16 v17, v3

    :goto_5
    move-object/from16 v1, p2

    move/from16 v3, v17

    goto/16 :goto_2

    :cond_7
    const/4 v1, 0x0

    move-object/from16 v13, p0

    move/from16 v17, v3

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p2

    goto/16 :goto_1

    :cond_8
    return-object v8
.end method

.method private revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, p4}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No such user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    const-string/jumbo v2, "revokeRuntimePermission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string/jumbo v9, "revokeRuntimePermission"

    move-object v3, p0

    move v5, p4

    invoke-direct/range {v3 .. v9}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    const-string v1, "Unknown package: "

    if-eqz v0, :cond_f

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v0, v3, p4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Landroid/content/pm/PackageParser$Package;II)Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1, v0}, Lcom/android/server/pm/permission/BasePermission;->enforceDeclaredUsedAndRuntimeOrDevelopment(Landroid/content/pm/PackageParser$Package;)V

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v3

    invoke-virtual {v3, p1, p4}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v4

    and-int/lit8 v5, v4, 0x10

    const-string v6, " for package "

    if-eqz v5, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v5

    const/16 v7, 0x3e8

    if-ne v5, v7, :cond_2

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Non-System UID cannot revoke system fixed permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    :goto_0
    if-nez p3, :cond_5

    and-int/lit8 v5, v4, 0x4

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot revoke policy fixed permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    :goto_1
    invoke-virtual {v1}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_7

    invoke-virtual {v3, v1}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v5

    if-eq v5, v6, :cond_6

    if-eqz p5, :cond_6

    invoke-virtual {p5}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onInstallPermissionRevoked()V

    :cond_6
    return-void

    :cond_7
    invoke-virtual {v3, p1, p4}, Lcom/android/server/pm/permission/PermissionsState;->hasRuntimePermission(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_8

    return-void

    :cond_8
    invoke-virtual {v3, v1, p4}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v5

    if-ne v5, v6, :cond_9

    return-void

    :cond_9
    invoke-virtual {v1}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v5

    if-eqz v5, :cond_a

    const/16 v5, 0x4dd

    invoke-direct {p0, v5, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->logPermission(ILjava/lang/String;Ljava/lang/String;)V

    :cond_a
    if-eqz p5, :cond_b

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p5, v5, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionRevoked(II)V

    :cond_b
    invoke-virtual {v1}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-direct {p0, p2, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    :cond_c
    return-void

    :cond_d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown permission: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private revokeRuntimePermissionsIfGroupChanged(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;Ljava/util/ArrayList;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;",
            ")V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    iget-object v0, v9, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v10}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v11, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v10, :cond_1

    iget-object v1, v9, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Permission;

    iget-object v2, v1, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    iget-object v3, v3, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v0, 0x0

    move v13, v0

    :goto_1
    if-ge v13, v12, :cond_9

    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/content/pm/PackageParser$Permission;

    iget-object v0, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v15

    and-int/lit8 v0, v15, 0x1

    if-eqz v0, :cond_8

    iget-object v0, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v0, v14, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    iget-object v0, v14, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    iget-object v0, v0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    :goto_2
    move-object v5, v0

    invoke-virtual {v11, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    if-eqz v5, :cond_7

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v3

    array-length v2, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_5

    aget v9, v3, v1

    move/from16 v16, v10

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v0, 0x0

    move-object/from16 v17, v11

    move v11, v0

    :goto_4
    if-ge v11, v10, :cond_4

    move/from16 v18, v10

    move-object/from16 v10, p3

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {v7, v6, v10, v0, v9}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v19

    if-nez v19, :cond_3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v21, "72710897"

    const/16 v19, 0x0

    aput-object v21, v0, v19

    move/from16 v19, v1

    iget-object v1, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v21, 0x1

    aput-object v1, v0, v21

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v2

    const-string v2, "Revoking permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " as the group changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0x534e4554

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move/from16 v20, v22

    move-object v2, v6

    move-object/from16 v21, v3

    move-object v3, v10

    move-object/from16 v22, v4

    move v4, v0

    move-object/from16 v23, v5

    move v5, v9

    move-object v7, v6

    move-object/from16 v6, p4

    :try_start_0
    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not revoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :cond_3
    move/from16 v19, v1

    move/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object v7, v6

    :goto_5
    add-int/lit8 v11, v11, 0x1

    move-object v6, v7

    move/from16 v10, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    move-object/from16 v5, v23

    move-object/from16 v7, p0

    goto/16 :goto_4

    :cond_4
    move/from16 v19, v1

    move/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object v7, v6

    move/from16 v18, v10

    add-int/lit8 v1, v19, 0x1

    move-object/from16 v9, p2

    move/from16 v10, v16

    move-object/from16 v11, v17

    move-object/from16 v7, p0

    goto/16 :goto_3

    :cond_5
    move/from16 v19, v1

    move/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object v7, v6

    move/from16 v16, v10

    move-object/from16 v17, v11

    goto :goto_6

    :cond_6
    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object v7, v6

    move/from16 v16, v10

    move-object/from16 v17, v11

    goto :goto_6

    :cond_7
    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object v7, v6

    move/from16 v16, v10

    move-object/from16 v17, v11

    goto :goto_6

    :cond_8
    move/from16 v16, v10

    move-object/from16 v17, v11

    :goto_6
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v7, p0

    move-object/from16 v9, p2

    move/from16 v10, v16

    move-object/from16 v11, v17

    goto/16 :goto_1

    :cond_9
    return-void
.end method

.method private revokeUnusedSharedUserPermissionsLocked(Lcom/android/server/pm/SharedUserSetting;[I)[I
    .locals 17
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/SharedUserSetting;->getPackages()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Package;

    iget-object v6, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    iget-object v6, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_3

    iget-object v8, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v9, v8}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    goto :goto_0

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v7, v6, -0x1

    :goto_2
    const v8, 0xfbff

    const/4 v9, 0x0

    if-ltz v7, :cond_6

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    invoke-virtual {v10}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    iget-object v11, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v10}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-virtual {v4, v11}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    const/4 v12, -0x1

    invoke-virtual {v4, v11, v12, v8, v9}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    :cond_5
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_6
    sget-object v7, Llibcore/util/EmptyArray;->INT:[I

    array-length v10, v1

    move-object v11, v7

    move v7, v9

    :goto_3
    if-ge v7, v10, :cond_a

    aget v12, v1, v7

    nop

    invoke-virtual {v4, v12}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v15, v14, -0x1

    :goto_4
    if-ltz v15, :cond_9

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {v4, v8, v12}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    const/4 v0, 0x0

    const v9, 0xfbff

    invoke-virtual {v4, v8, v12, v9, v0}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    invoke-static {v11, v12}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v11

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    const v9, 0xfbff

    goto :goto_5

    :cond_8
    move v0, v9

    const v9, 0xfbff

    :goto_5
    add-int/lit8 v15, v15, -0x1

    move v8, v9

    move v9, v0

    move-object/from16 v0, p0

    goto :goto_4

    :cond_9
    move v0, v9

    move v9, v8

    add-int/lit8 v7, v7, 0x1

    move v9, v0

    move-object/from16 v0, p0

    goto :goto_3

    :cond_a
    return-object v11

    :cond_b
    :goto_6
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    return-object v0
.end method

.method private setInitialGrantForNewImplicitPermissionsLocked(Lcom/android/server/pm/permission/PermissionsState;Lcom/android/server/pm/permission/PermissionsState;Landroid/content/pm/PackageParser$Package;Landroid/util/ArraySet;[I)[I
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/PermissionsState;",
            "Lcom/android/server/pm/permission/PermissionsState;",
            "Landroid/content/pm/PackageParser$Package;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;[I)[I"
        }
    .end annotation

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    iget-object v8, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v9, v0

    sget-object v0, Landroid/permission/PermissionManager;->SPLIT_PERMISSIONS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v10, :cond_2

    sget-object v1, Landroid/permission/PermissionManager;->SPLIT_PERMISSIONS:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/permission/PermissionManager$SplitPermissionInfo;

    invoke-virtual {v1}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v9, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArraySet;

    if-nez v11, :cond_0

    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    move-object v11, v12

    invoke-virtual {v9, v5, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual/range {p4 .. p4}, Landroid/util/ArraySet;->size()I

    move-result v11

    const/4 v0, 0x0

    move v12, v0

    move-object/from16 v0, p5

    :goto_2
    if-ge v12, v11, :cond_a

    move-object/from16 v13, p4

    invoke-virtual {v13, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v9, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/util/ArraySet;

    if-eqz v15, :cond_9

    invoke-virtual {v6, v14}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    move-object/from16 v5, p0

    iget-object v1, v5, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v1, v14}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v3

    array-length v2, v3

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_8

    aget v7, v3, v1

    move/from16 p5, v1

    const-string v1, "android.permission.ACTIVITY_RECOGNITION"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x80

    invoke-virtual {v6, v4, v7, v1, v1}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    :cond_3
    invoke-static {v0, v7}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v16

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_4
    move/from16 v17, v0

    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    invoke-virtual {v15, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    move/from16 v17, v0

    goto :goto_5

    :cond_4
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v17

    goto :goto_4

    :cond_5
    :goto_5
    move-object/from16 v1, p1

    invoke-virtual {v1, v15}, Lcom/android/server/pm/permission/PermissionsState;->hasRequestedPermission(Landroid/util/ArraySet;)Z

    move-result v0

    if-nez v0, :cond_7

    if-nez v17, :cond_7

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not inherit from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " as split permission is also new"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object/from16 v0, v16

    goto :goto_6

    :cond_7
    move-object/from16 v0, p0

    move/from16 v18, p5

    move-object v1, v15

    move/from16 v19, v2

    move-object v2, v14

    move-object/from16 v20, v3

    move-object/from16 v3, p2

    move-object/from16 v21, v4

    move-object/from16 v4, p3

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService;->inheritPermissionStateToNewImplicitPermissionLocked(Landroid/util/ArraySet;Ljava/lang/String;Lcom/android/server/pm/permission/PermissionsState;Landroid/content/pm/PackageParser$Package;I)V

    add-int/lit8 v1, v18, 0x1

    move-object/from16 v5, p0

    move-object/from16 v7, p3

    move-object/from16 v0, v16

    move/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    goto/16 :goto_3

    :cond_8
    move/from16 v18, v1

    move/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    :cond_9
    :goto_6
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v7, p3

    goto/16 :goto_2

    :cond_a
    move-object/from16 v13, p4

    return-object v0
.end method

.method private setWhitelistedRestrictedPermissions(Landroid/content/pm/PackageParser$Package;[ILjava/util/List;IILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "[I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;",
            ")V"
        }
    .end annotation

    move-object v0, p2

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v10, v0, v2

    move-object v3, p0

    move-object v4, p1

    move v5, v10

    move-object v6, p3

    move v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v3 .. v9}, Lcom/android/server/pm/permission/PermissionManagerService;->setWhitelistedRestrictedPermissionsForUser(Landroid/content/pm/PackageParser$Package;ILjava/util/List;IILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setWhitelistedRestrictedPermissionsForUser(Landroid/content/pm/PackageParser$Package;ILjava/util/List;IILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;",
            ")V"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p6

    iget-object v0, v10, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Lcom/android/server/pm/PackageSetting;

    if-nez v14, :cond_0

    return-void

    :cond_0
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v15

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, v10, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v2, 0x0

    move v7, v2

    :goto_0
    if-ge v7, v8, :cond_11

    iget-object v3, v10, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    iget-object v3, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v3, v6}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v16

    if-nez v16, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot whitelist unknown permission: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/permission/BasePermission;->isHardOrSoftRestricted()Z

    move-result v3

    if-nez v3, :cond_2

    nop

    :goto_1
    move/from16 v28, v7

    move/from16 v24, v8

    goto/16 :goto_8

    :cond_2
    invoke-virtual {v15, v6, v11}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v0, :cond_3

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v3

    :cond_3
    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v0

    goto :goto_2

    :cond_4
    move-object/from16 v17, v0

    :goto_2
    invoke-virtual {v15, v6, v11}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v5

    move v0, v5

    const/4 v3, 0x0

    move/from16 v4, p5

    move/from16 v18, v4

    :goto_3
    const/4 v4, 0x1

    if-eqz v18, :cond_b

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v19

    shl-int v2, v4, v19

    not-int v4, v2

    and-int v18, v18, v4

    const/4 v4, 0x1

    if-eq v2, v4, :cond_9

    const/4 v4, 0x2

    if-eq v2, v4, :cond_7

    const/4 v4, 0x4

    if-eq v2, v4, :cond_5

    goto :goto_4

    :cond_5
    or-int/lit16 v3, v3, 0x2000

    if-eqz v12, :cond_6

    invoke-interface {v12, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    or-int/lit16 v0, v0, 0x2000

    goto :goto_4

    :cond_6
    and-int/lit16 v0, v0, -0x2001

    goto :goto_4

    :cond_7
    or-int/lit16 v3, v3, 0x800

    if-eqz v12, :cond_8

    invoke-interface {v12, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    or-int/lit16 v0, v0, 0x800

    goto :goto_4

    :cond_8
    and-int/lit16 v0, v0, -0x801

    goto :goto_4

    :cond_9
    or-int/lit16 v3, v3, 0x1000

    if-eqz v12, :cond_a

    invoke-interface {v12, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    or-int/lit16 v0, v0, 0x1000

    goto :goto_4

    :cond_a
    and-int/lit16 v0, v0, -0x1001

    nop

    :goto_4
    goto :goto_3

    :cond_b
    if-ne v5, v0, :cond_c

    move/from16 v28, v7

    move/from16 v24, v8

    move-object/from16 v0, v17

    goto/16 :goto_8

    :cond_c
    const/16 v19, 0x1

    and-int/lit16 v1, v5, 0x3800

    if-eqz v1, :cond_d

    move v1, v4

    goto :goto_5

    :cond_d
    const/4 v1, 0x0

    :goto_5
    move/from16 v21, v1

    and-int/lit16 v1, v0, 0x3800

    if-eqz v1, :cond_e

    move/from16 v20, v4

    goto :goto_6

    :cond_e
    const/16 v20, 0x0

    :goto_6
    and-int/lit8 v1, v5, 0x4

    if-eqz v1, :cond_f

    invoke-virtual {v15, v6, v11}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v1

    if-nez v20, :cond_f

    if-eqz v1, :cond_f

    or-int/lit8 v3, v3, 0x4

    and-int/lit8 v0, v0, -0x5

    :cond_f
    iget-object v1, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_10

    if-nez v21, :cond_10

    if-eqz v20, :cond_10

    or-int/lit8 v1, v3, 0x40

    or-int/lit8 v0, v0, 0x40

    move/from16 v23, v0

    move/from16 v22, v1

    goto :goto_7

    :cond_10
    move/from16 v23, v0

    move/from16 v22, v3

    :goto_7
    iget-object v2, v10, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v3, v22

    move/from16 v4, v23

    move/from16 v26, v5

    move/from16 v5, p4

    move-object/from16 v27, v6

    move/from16 v6, p2

    move/from16 v28, v7

    move/from16 v7, v24

    move/from16 v24, v8

    move-object/from16 v8, v25

    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    move-object/from16 v0, v17

    move/from16 v1, v19

    :goto_8
    add-int/lit8 v7, v28, 0x1

    move/from16 v8, v24

    goto/16 :goto_0

    :cond_11
    move/from16 v28, v7

    move/from16 v24, v8

    if-eqz v1, :cond_13

    iget-object v2, v10, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v9, v10, v3, v2, v13}, Lcom/android/server/pm/permission/PermissionManagerService;->restorePermissionState(Landroid/content/pm/PackageParser$Package;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_13

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v5

    invoke-virtual {v5, v4, v11}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_12

    iget-object v5, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v13, v5, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionRevoked(II)V

    goto :goto_a

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_13
    :goto_a
    return-void
.end method

.method private systemReady()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemReady:Z

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/permission/PermissionControllerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionControllerManager;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    const-class v0, Lcom/android/server/policy/PermissionPolicyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/PermissionPolicyInternal;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signature|privileged permissions not in privapp-permissions whitelist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateAllPermissions(Ljava/lang/String;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Collection<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;",
            ")V"
        }
    .end annotation

    nop

    if-eqz p2, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    or-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p1

    move v5, v0

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Ljava/lang/String;ILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method private updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p8

    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, v12}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "updatePermissionFlags"

    invoke-direct {v8, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string/jumbo v7, "updatePermissionFlags"

    move-object/from16 v1, p0

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_2

    if-eqz p7, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "updatePermissionFlags requires android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/16 v0, 0x3e8

    if-eq v11, v0, :cond_3

    and-int/lit8 v0, p3, -0x11

    and-int/lit8 v1, p4, -0x11

    and-int/lit8 v0, v0, -0x21

    and-int/lit8 v1, v1, -0x21

    and-int/lit8 v1, v1, -0x41

    and-int/lit16 v1, v1, -0x1001

    and-int/lit16 v1, v1, -0x801

    and-int/lit16 v1, v1, -0x2001

    and-int/lit16 v1, v1, -0x4001

    move/from16 v17, v1

    move v1, v0

    move/from16 v0, v17

    goto :goto_1

    :cond_3
    move/from16 v1, p3

    move/from16 v0, p4

    :goto_1
    iget-object v2, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, v10}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    if-eqz v2, :cond_c

    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-nez v3, :cond_4

    goto/16 :goto_4

    :cond_4
    iget-object v3, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, v2, v11, v12}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Landroid/content/pm/PackageParser$Package;II)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "UPDATE"

    invoke-static {v2, v9, v0, v3}, Lcom/android/server/pm/PermissionPmInjector;->mayClearFlagsForLegacyApp(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    iget-object v4, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_a

    iget-object v4, v2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v5

    nop

    invoke-virtual {v5, v9, v12}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v14, 0x0

    if-eqz v6, :cond_5

    move v6, v7

    goto :goto_2

    :cond_5
    move v6, v14

    :goto_2
    nop

    invoke-virtual {v5, v0, v12, v1, v3}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-direct {v8, v10, v12}, Lcom/android/server/pm/permission/PermissionManagerService;->notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    :cond_6
    if-eqz v15, :cond_9

    if-eqz v13, :cond_9

    invoke-virtual {v5, v9}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v16

    if-eqz v16, :cond_7

    invoke-virtual/range {p8 .. p8}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onInstallPermissionUpdated()V

    goto :goto_3

    :cond_7
    invoke-virtual {v5, v9, v12}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v16

    if-nez v16, :cond_8

    if-eqz v6, :cond_9

    :cond_8
    new-array v7, v7, [I

    aput v12, v7, v14

    invoke-virtual {v13, v7, v14}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionUpdated([IZ)V

    :cond_9
    :goto_3
    return-void

    :cond_a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown permission: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_c
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageManager"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updatePermissionFlagsForAllApps(IIIILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/Collection<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, p4}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string/jumbo v0, "updatePermissionFlagsForAllApps"

    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string/jumbo v7, "updatePermissionFlagsForAllApps"

    move-object v1, p0

    move v2, p3

    move v3, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    const/16 v0, 0x3e8

    if-eq p3, v0, :cond_1

    and-int/lit8 p1, p1, -0x11

    and-int/lit8 p2, p2, -0x11

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v4

    invoke-virtual {v4, p4, p1, p2}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlagsForAllPermissions(III)Z

    move-result v5

    or-int/2addr v0, v5

    goto :goto_0

    :cond_3
    return v0
.end method

.method private updatePermissionTrees(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;I)I
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/BasePermission;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v4

    if-eqz v4, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_1
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing old permission tree: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 p3, p3, 0x1

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    new-instance v4, Landroid/util/ArraySet;

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v5, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(I)V

    move-object v0, v4

    :cond_3
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    nop

    goto :goto_0

    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/BasePermission;

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    if-eqz v3, :cond_6

    :try_start_1
    iget-object v5, v3, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v5, :cond_6

    iget-object v5, v3, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v6

    if-nez v6, :cond_5

    invoke-virtual {v2, v5}, Lcom/android/server/pm/permission/BasePermission;->setSourcePackageSetting(Lcom/android/server/pm/PackageSettingBase;)V

    :cond_5
    monitor-exit v4

    goto :goto_1

    :cond_6
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing dangling permission tree: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " from package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/PermissionSettings;->removePermissionLocked(Ljava/lang/String;)V

    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_7
    return p3

    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method private updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)I
    .locals 10

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/BasePermission;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isDynamic()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/pm/permission/BasePermission;->updateDynamicPermission(Ljava/util/Collection;)V

    :cond_1
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v4

    if-eqz v4, :cond_4

    if-eqz p1, :cond_0

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p2, :cond_2

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing old permission tree: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v4}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_3

    aget v7, v4, v6

    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v9, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$w2aPgVKY5ZkiKKZQUVsj6t4Bn4c;

    invoke-direct {v9, p0, v3, v7, p4}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$w2aPgVKY5ZkiKKZQUVsj6t4Bn4c;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/BasePermission;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    or-int/lit8 p3, p3, 0x1

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    :cond_4
    if-nez v0, :cond_5

    new-instance v4, Landroid/util/ArraySet;

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v5, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(I)V

    move-object v0, v4

    :cond_5
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    nop

    goto/16 :goto_0

    :cond_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/BasePermission;

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    if-eqz v3, :cond_8

    :try_start_1
    iget-object v5, v3, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v5, :cond_8

    iget-object v5, v3, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v6

    if-nez v6, :cond_7

    invoke-virtual {v2, v5}, Lcom/android/server/pm/permission/BasePermission;->setSourcePackageSetting(Lcom/android/server/pm/PackageSettingBase;)V

    :cond_7
    monitor-exit v4

    goto :goto_2

    :cond_8
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing dangling permission: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " from package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/PermissionSettings;->removePermissionLocked(Ljava/lang/String;)V

    monitor-exit v4

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_9
    return p3

    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method private updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Ljava/lang/String;ILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Collection<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionTrees(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;I)I

    move-result p4

    invoke-direct {p0, p1, p2, p4, p6}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)I

    move-result p4

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mBackgroundPermissions:Landroid/util/ArrayMap;

    if-nez v1, :cond_2

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mBackgroundPermissions:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionSettings;->getAllPermissionsLocked()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/BasePermission;

    iget-object v3, v2, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mBackgroundPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v6

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mBackgroundPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/32 v0, 0x40000

    const-string/jumbo v2, "restorePermissionState"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    and-int/lit8 v2, p4, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    invoke-interface {p5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Package;

    if-eq v5, p2, :cond_4

    invoke-static {v5}, Lcom/android/server/pm/permission/PermissionManagerService;->getVolumeUuidForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;

    move-result-object v6

    and-int/lit8 v7, p4, 0x4

    if-eqz v7, :cond_3

    invoke-static {p3, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v4

    goto :goto_2

    :cond_3
    move v7, v3

    :goto_2
    invoke-direct {p0, v5, v7, p1, p6}, Lcom/android/server/pm/permission/PermissionManagerService;->restorePermissionState(Landroid/content/pm/PackageParser$Package;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    :cond_4
    goto :goto_1

    :cond_5
    if-eqz p2, :cond_7

    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getVolumeUuidForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;

    move-result-object v2

    and-int/lit8 v5, p4, 0x2

    if-eqz v5, :cond_6

    invoke-static {p3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v3, v4

    goto :goto_3

    :cond_6
    nop

    :goto_3
    invoke-direct {p0, p2, v3, p1, p6}, Lcom/android/server/pm/permission/PermissionManagerService;->restorePermissionState(Landroid/content/pm/PackageParser$Package;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    :cond_7
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            "Z",
            "Ljava/util/Collection<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz p3, :cond_1

    const/4 v0, 0x2

    :cond_1
    or-int/2addr v0, v1

    nop

    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getVolumeUuidForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;

    move-result-object v5

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v6, v0

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Ljava/lang/String;ILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    if-eqz p2, :cond_2

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/content/pm/PackageParser$Package;

    iget-object v3, v9, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/server/pm/permission/PermissionManagerService;->getVolumeUuidForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;

    move-result-object v5

    move-object v2, p0

    move-object v4, v9

    move v6, v0

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Ljava/lang/String;ILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public getBackgroundPermissions()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mBackgroundPermissions:Landroid/util/ArrayMap;

    return-object v0
.end method

.method getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$restoreDelayedRuntimePermissions$0$PermissionManagerService(Landroid/os/UserHandle;Ljava/lang/Boolean;)V
    .locals 4

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$updatePermissions$1$PermissionManagerService(Lcom/android/server/pm/permission/BasePermission;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;Landroid/content/pm/PackageParser$Package;)V
    .locals 9

    iget-object v6, p4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    invoke-virtual {v0, v6, v2, v1, v2}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    if-eqz v7, :cond_0

    iget v0, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v6, v1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, v8

    move-object v2, v6

    move v4, p2

    move-object v5, p3

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to revoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
