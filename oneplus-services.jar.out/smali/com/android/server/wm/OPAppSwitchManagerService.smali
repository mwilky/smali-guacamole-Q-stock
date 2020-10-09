.class public Lcom/android/server/wm/OPAppSwitchManagerService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/wm/OPAppSwitchSettings$you;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/OPAppSwitchManagerService$you;,
        Lcom/android/server/wm/OPAppSwitchManagerService$sis;,
        Lcom/android/server/wm/OPAppSwitchManagerService$tsu;,
        Lcom/android/server/wm/OPAppSwitchManagerService$zta;
    }
.end annotation


# static fields
.field private static final API:Ljava/lang/String; = "status"

.field public static final APPID:Ljava/lang/String; = "7554P2RV0X"

.field private static final DEBUG:Z

.field private static final KEY_OEM_SPLASH_ADS_ENABLE:Ljava/lang/String; = "oem_splash_ads_enable"

.field public static final MDM_NATIVE_EVENT:Ljava/lang/String; = "splash_switch"

.field private static final MSG_GET_ONLINECONFIG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OPAppSwitchManagerService"

.field private static final URI_OEM_SPLASH_ADS_ENABLE:Landroid/net/Uri;

.field private static mOpAdsEnable:Z

.field private static mOpAdsOn:Ljava/lang/String;

.field private static mOpAdsPermEnable:Z

.field private static mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

.field private static sInstance:Lcom/android/server/wm/OPAppSwitchManagerService;


# instance fields
.field private dangerousPerms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAm:Landroid/app/ActivityManager;

.field private mAms:Lcom/android/server/am/ActivityManagerService;

.field private mCleanUpReceiver:Landroid/content/BroadcastReceiver;

.field private mConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIntercepters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OPAppSwitchStateDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mIsKeyBlocked:Z

.field private mLastActivity:Lcom/android/server/wm/ActivityRecord;

.field private mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

.field private mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field private mNotifyHandler:Landroid/os/Handler;

.field private mNotifyThread:Lcom/android/server/ServiceThread;

.field private mOpAdsSettingsOn:Z

.field private mPackageSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSettings:Lcom/android/server/wm/OPAppSwitchSettings;

.field private mSettingsObserver:Lcom/android/server/wm/OPAppSwitchManagerService$tsu;

.field private nowTopr:Lcom/android/server/wm/ActivityRecord;

.field private permManagerInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    const-string v0, "oem_splash_ads_enable"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/OPAppSwitchManagerService;->URI_OEM_SPLASH_ADS_ENABLE:Landroid/net/Uri;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wm/OPAppSwitchManagerService;->mOpAdsEnable:Z

    sput-boolean v0, Lcom/android/server/wm/OPAppSwitchManagerService;->mOpAdsPermEnable:Z

    const-string v0, "OpAdsOn"

    sput-object v0, Lcom/android/server/wm/OPAppSwitchManagerService;->mOpAdsOn:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mIntercepters:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mPackageSet:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mIsKeyBlocked:Z

    iput-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->permManagerInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iput-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->dangerousPerms:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/wm/tsu;

    invoke-direct {v0, p0}, Lcom/android/server/wm/tsu;-><init>(Lcom/android/server/wm/OPAppSwitchManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mCleanUpReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/wm/OPAppSwitchManagerService$zta;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/OPAppSwitchManagerService$zta;-><init>(Lcom/android/server/wm/OPAppSwitchManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/OPAppSwitchManagerService;->mOpAdsEnable:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/wm/OPAppSwitchManagerService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/OPAppSwitchManagerService;->mOpAdsPermEnable:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/OPAppSwitchManagerService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/server/wm/OPAppSwitchManagerService;->URI_OEM_SPLASH_ADS_ENABLE:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/OPAppSwitchManagerService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mOpAdsSettingsOn:Z

    return p0
.end method

.method static synthetic access$502(Lcom/android/server/wm/OPAppSwitchManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mOpAdsSettingsOn:Z

    return p1
.end method

.method static synthetic access$600()Lnet/oneplus/odm/OpDeviceManagerInjector;
    .locals 1

    sget-object v0, Lcom/android/server/wm/OPAppSwitchManagerService;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    return-object v0
.end method

.method static synthetic access$602(Lnet/oneplus/odm/OpDeviceManagerInjector;)Lnet/oneplus/odm/OpDeviceManagerInjector;
    .locals 0

    sput-object p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/server/wm/OPAppSwitchManagerService;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/OPAppSwitchManagerService;->onActivityPaused(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wm/OPAppSwitchManagerService;Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/OPAppSwitchManagerService;->onActivityResumed(Lcom/android/server/wm/ActivityRecord;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/wm/OPAppSwitchManagerService;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OPAppSwitchManagerService;->resolveOnlineConfig(Lorg/json/JSONArray;)V

    return-void
.end method

.method private getGrantedAppPermissionsCount(Landroid/content/Context;Ljava/lang/String;)I
    .locals 13

    sget-boolean v0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    const-string v1, "OPAppSwitchManagerService"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGrantedAppPermissionsCount : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x1000

    invoke-virtual {v4, p2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v0, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v4, v0

    move v0, v2

    :goto_0
    const/4 v5, 0x1

    if-eq v0, v2, :cond_e

    if-nez v4, :cond_1

    goto/16 :goto_2

    :cond_1
    array-length v6, v4

    move v8, v0

    move v0, v3

    move v7, v0

    :goto_1
    if-ge v0, v6, :cond_5

    aget-object v9, v4, v0

    invoke-direct {p0, v9}, Lcom/android/server/wm/OPAppSwitchManagerService;->isInDangerousPermsList(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    add-int/lit8 v7, v7, 0x1

    invoke-direct {p0, p1, v9, p2}, Lcom/android/server/wm/OPAppSwitchManagerService;->hasPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    sget-boolean v11, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v11, :cond_2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " -> "

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-ne v10, v5, :cond_3

    add-int/lit8 v8, v8, 0x1

    :cond_3
    const/4 v9, -0x2

    if-ne v10, v9, :cond_4

    sget-boolean v9, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v9, :cond_4

    const-string v9, "getGrantedAppPermissionsCount -2, I don\'t know how to define this error !"

    invoke-static {v1, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    sget-boolean p0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "dPermCout : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "res : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-nez v7, :cond_8

    sget-boolean p0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz p0, :cond_7

    const-string p0, "there is no runtime permission request : ignore"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v2

    :cond_8
    sget-boolean p0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-ne v7, v8, :cond_a

    if-eqz p0, :cond_9

    const-string p0, "we have granted all the runtime permission request : we don\'t care"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return v2

    :cond_a
    if-nez v8, :cond_c

    if-eqz p0, :cond_b

    const-string p0, "this is the first time request"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return v3

    :cond_c
    if-eqz p0, :cond_d

    const-string p0, "this is not the first time request"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return v5

    :cond_e
    :goto_2
    sget-boolean p0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz p0, :cond_11

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getting perm error : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v0, v2, :cond_f

    move p1, v5

    goto :goto_3

    :cond_f
    move p1, v3

    :goto_3
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_10

    move v3, v5

    :cond_10
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ":gcsdk"

    invoke-virtual {p2, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    const-string p0, "gcsdk request permission, ignore it"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    return v2
.end method

.method public static getInstance()Lcom/android/server/wm/OPAppSwitchManagerService;
    .locals 2

    sget-object v0, Lcom/android/server/wm/OPAppSwitchManagerService;->sInstance:Lcom/android/server/wm/OPAppSwitchManagerService;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/server/wm/OPAppSwitchManagerService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/wm/OPAppSwitchManagerService;->sInstance:Lcom/android/server/wm/OPAppSwitchManagerService;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/wm/OPAppSwitchManagerService;

    invoke-direct {v1}, Lcom/android/server/wm/OPAppSwitchManagerService;-><init>()V

    sput-object v1, Lcom/android/server/wm/OPAppSwitchManagerService;->sInstance:Lcom/android/server/wm/OPAppSwitchManagerService;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/wm/OPAppSwitchManagerService;->sInstance:Lcom/android/server/wm/OPAppSwitchManagerService;

    return-object v0
.end method

.method private hasPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 p0, -0x2

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "OPAppSwitchManagerService"

    if-eqz p1, :cond_3

    invoke-virtual {p1, p2, p3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "grant this perm"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    sget-boolean p0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "not grant this perm"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    sget-boolean p1, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz p1, :cond_4

    const-string p1, "hasPermission -2, I don\'t know how to define this error !"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return p0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return p0
.end method

.method private isInDangerousPermsList(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->dangerousPerms:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->dangerousPerms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PermissionInfo;

    invoke-virtual {v3}, Landroid/content/pm/PermissionInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sget-boolean p0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is on Dangerous list: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPAppSwitchManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1
.end method

.method private matchConfig(Lcom/android/server/wm/OPAppSwitchStateDispatcher;)V
    .locals 6

    new-instance v2, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mSettings:Lcom/android/server/wm/OPAppSwitchSettings;

    invoke-virtual {v0}, Lcom/android/server/wm/OPAppSwitchSettings;->getBlackList()Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v3, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mSettings:Lcom/android/server/wm/OPAppSwitchSettings;

    invoke-virtual {v0}, Lcom/android/server/wm/OPAppSwitchSettings;->getMatchAppDefaultList()Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mSettings:Lcom/android/server/wm/OPAppSwitchSettings;

    invoke-virtual {v0}, Lcom/android/server/wm/OPAppSwitchSettings;->getMatchActivityDefaultList()Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mSettings:Lcom/android/server/wm/OPAppSwitchSettings;

    invoke-virtual {v0}, Lcom/android/server/wm/OPAppSwitchSettings;->getConfigRuleInfos()Ljava/util/Map;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/OPAppSwitchManagerService;->matchConfig(Lcom/android/server/wm/OPAppSwitchStateDispatcher;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;)V

    return-void
.end method

.method private matchConfig(Lcom/android/server/wm/OPAppSwitchStateDispatcher;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/OPAppSwitchStateDispatcher;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OPAppSwitchRuleInfo;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p1, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->pkgName:Ljava/lang/String;

    invoke-interface {p2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->setBlackItem(Z)V

    iget-object p0, p1, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->pkgName:Ljava/lang/String;

    invoke-interface {p5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/OPAppSwitchRuleInfo;

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {p1, p0}, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->setStaticRule(Lcom/android/server/wm/OPAppSwitchRuleInfo;)V

    iget-object p0, p1, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->pkgName:Ljava/lang/String;

    invoke-interface {p3, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    iget-object p2, p1, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->pkgName:Ljava/lang/String;

    invoke-interface {p4, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->setDefaultMatchConfig(ZZ)V

    return-void
.end method

.method private notifyActivityEnter(Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyActivityEnter package =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPAppSwitchManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mIntercepters:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/OPAppSwitchStateDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->notifyActivityEnter(Lcom/android/server/wm/ActivityRecord;Z)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyActivityExit(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 3

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyActivityExit info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ,className = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OPAppSwitchManagerService"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mIntercepters:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/OPAppSwitchStateDispatcher;

    invoke-virtual {p1, v0, p2, p3}, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->notifyActivityExit(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;Z)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyAppEnter(Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyAppEnter package = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,first = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPAppSwitchManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mIntercepters:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/OPAppSwitchStateDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->notifyAppEnter(Lcom/android/server/wm/ActivityRecord;Z)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method private notifyAppExit(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 6

    sget-boolean v0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    const-string v1, "OPAppSwitchManagerService"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyAppExit package = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mIntercepters:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/OPAppSwitchStateDispatcher;

    iget-object v3, p2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    const-string v4, "com.android.permissioncontroller"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-boolean v3, Lcom/android/server/wm/OPAppSwitchManagerService;->mOpAdsPermEnable:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/server/wm/OPAppSwitchManagerService;->getGrantedAppPermissionsCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    sget-boolean v4, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "perm count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-ltz v3, :cond_5

    sget-boolean v4, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v4, :cond_4

    if-lez v3, :cond_3

    const-string v3, "app exit leave : get permission via com.android.permissioncontroller successfully, not the first time start"

    goto :goto_1

    :cond_3
    const-string v3, "app exit leave : get permission via com.android.permissioncontroller successfully, first time start"

    :goto_1
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, p2, p3}, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->notifyAppExit(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;Z)Z

    goto :goto_0

    :cond_5
    sget-boolean v2, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "app exit leave : get permission via com.android.permissioncontroller error ->return."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    sget-boolean v3, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "app exit leave normally"

    goto :goto_1

    :cond_7
    return-void
.end method

.method private onActivityPaused(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 3

    sget-boolean v0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appswitch onActivityPaused, pre = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " nextResuming ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPAppSwitchManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/OPAppSwitchManagerService;->notifyActivityExit(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Z)V

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/OPAppSwitchManagerService;->notifyAppExit(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Z)V

    :cond_3
    return-void
.end method

.method private onActivityResumed(Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 5

    sget-boolean v0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appswitch onActivityResumed, r = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "     mLastResumingActivity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "     mLastPausedActivity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPAppSwitchManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_2
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_4

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    :cond_4
    iput-object p1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/wm/OPAppSwitchManagerService;->notifyAppExit(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Z)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    :cond_5
    if-eqz v0, :cond_6

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/OPAppSwitchManagerService;->notifyAppEnter(Lcom/android/server/wm/ActivityRecord;Z)V

    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/OPAppSwitchManagerService;->notifyActivityEnter(Lcom/android/server/wm/ActivityRecord;Z)V

    :cond_7
    return-void
.end method

.method private resolveOnlineConfig(Lorg/json/JSONArray;)V
    .locals 6

    const-string p0, "name"

    const-string v0, "OPAppSwitchManagerService"

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_enable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "value"

    if-eqz v3, :cond_1

    :try_start_1
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/wm/OPAppSwitchManagerService;->mOpAdsEnable:Z

    :cond_1
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "perm_enable"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/wm/OPAppSwitchManagerService;->mOpAdsPermEnable:Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    sget-boolean p0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "online config : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/android/server/wm/OPAppSwitchManagerService;->mOpAdsEnable:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "perm control : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/android/server/wm/OPAppSwitchManagerService;->mOpAdsPermEnable:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnlineConfig resolve error:"

    goto :goto_1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnlineConfig JSONException error:"

    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-void
.end method

.method private updateAppSwitchConfig()V
    .locals 11

    new-instance v6, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mSettings:Lcom/android/server/wm/OPAppSwitchSettings;

    invoke-virtual {v0}, Lcom/android/server/wm/OPAppSwitchSettings;->getBlackList()Ljava/util/List;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v7, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mSettings:Lcom/android/server/wm/OPAppSwitchSettings;

    invoke-virtual {v0}, Lcom/android/server/wm/OPAppSwitchSettings;->getMatchAppDefaultList()Ljava/util/List;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v8, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mSettings:Lcom/android/server/wm/OPAppSwitchSettings;

    invoke-virtual {v0}, Lcom/android/server/wm/OPAppSwitchSettings;->getMatchActivityDefaultList()Ljava/util/List;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mSettings:Lcom/android/server/wm/OPAppSwitchSettings;

    invoke-virtual {v0}, Lcom/android/server/wm/OPAppSwitchSettings;->getConfigRuleInfos()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mIntercepters:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/server/wm/OPAppSwitchStateDispatcher;

    invoke-direct {v2, v1}, Lcom/android/server/wm/OPAppSwitchStateDispatcher;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/OPAppSwitchRuleInfo;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->setStaticRule(Lcom/android/server/wm/OPAppSwitchRuleInfo;)V

    iget-object v3, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mIntercepters:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mIntercepters:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/wm/OPAppSwitchStateDispatcher;

    move-object v0, p0

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/OPAppSwitchManagerService;->matchConfig(Lcom/android/server/wm/OPAppSwitchStateDispatcher;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public getAdsSettings()Z
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ads settings : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mOpAdsSettingsOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/wm/OPAppSwitchManagerService;->mOpAdsEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPAppSwitchManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean p0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mOpAdsSettingsOn:Z

    if-eqz p0, :cond_1

    sget-boolean p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mOpAdsEnable:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public handleActivityPaused(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 6

    const-string v0, "OPAppSwitchManagerService"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    :try_start_0
    iget-object v3, p2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/am/ActivityManagerService;->getOposProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    if-eqz v3, :cond_1

    :cond_0
    move v3, v2

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    move v3, v1

    :goto_0
    sget-boolean v4, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_2

    iget-object v5, p2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v5, "NULL"

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  handleActivityPaused , nextFirstStart = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mNotifyHandler:Landroid/os/Handler;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mNotifyHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/wm/rtg;

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/android/server/wm/rtg;-><init>(Lcom/android/server/wm/OPAppSwitchManagerService;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, " handleActivityPaused error."

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    return-void
.end method

.method public handleActivityResumed(Lcom/android/server/wm/ActivityRecord;)V
    .locals 5

    const-string v0, "OPAppSwitchManagerService"

    iput-object p1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->nowTopr:Lcom/android/server/wm/ActivityRecord;

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->getOposProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    sget-boolean v1, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " handleActivityResumed , firstStart = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mNotifyHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mNotifyHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/wm/ssp;

    invoke-direct {v2, p0, p1, v4}, Lcom/android/server/wm/ssp;-><init>(Lcom/android/server/wm/OPAppSwitchManagerService;Lcom/android/server/wm/ActivityRecord;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, " handleActivityResumed error."

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 4

    const-string v0, "OPAppSwitchManagerService"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    const-string p2, "activity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManager;

    iput-object p2, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mAm:Landroid/app/ActivityManager;

    iget-object p2, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mNotifyHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    if-nez p2, :cond_0

    new-instance p2, Lcom/android/server/ServiceThread;

    const/16 v1, 0xa

    const-string v2, "OPAppSwitchManagerService: dispatcher"

    invoke-direct {p2, v2, v1, v0}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object p2, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mNotifyThread:Lcom/android/server/ServiceThread;

    iget-object p2, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mNotifyThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p2}, Lcom/android/server/ServiceThread;->start()V

    new-instance p2, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mNotifyThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mNotifyHandler:Landroid/os/Handler;

    :cond_0
    new-instance p2, Lcom/android/server/wm/OPAppSwitchSettings;

    iget-object v1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, v1}, Lcom/android/server/wm/OPAppSwitchSettings;-><init>(Lcom/android/server/wm/OPAppSwitchSettings$you;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mSettings:Lcom/android/server/wm/OPAppSwitchSettings;

    iget-object p2, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mSettings:Lcom/android/server/wm/OPAppSwitchSettings;

    iget-object v1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mNotifyHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/wm/sis;

    invoke-direct {v2, p0, p2}, Lcom/android/server/wm/sis;-><init>(Lcom/android/server/wm/OPAppSwitchManagerService;Lcom/android/server/wm/OPAppSwitchSettings;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p2, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mCleanUpReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.opos.intent.action.KEY_LOCK_MODE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p2, Lcom/android/server/wm/OPAppSwitchManagerService$tsu;

    iget-object v1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {p2, p0, v1}, Lcom/android/server/wm/OPAppSwitchManagerService$tsu;-><init>(Lcom/android/server/wm/OPAppSwitchManagerService;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mSettingsObserver:Lcom/android/server/wm/OPAppSwitchManagerService$tsu;

    iget-object p2, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mSettingsObserver:Lcom/android/server/wm/OPAppSwitchManagerService$tsu;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/android/server/wm/OPAppSwitchManagerService$tsu;->update(Landroid/net/Uri;)V

    iget-object p2, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mSettingsObserver:Lcom/android/server/wm/OPAppSwitchManagerService$tsu;

    invoke-virtual {p2}, Lcom/android/server/wm/OPAppSwitchManagerService$tsu;->observe()V

    new-instance p2, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/wm/OPAppSwitchManagerService$you;

    invoke-direct {v2, p0}, Lcom/android/server/wm/OPAppSwitchManagerService$you;-><init>(Lcom/android/server/wm/OPAppSwitchManagerService;)V

    sget-object v3, Lcom/android/server/wm/OPAppSwitchManagerService;->mOpAdsOn:Ljava/lang/String;

    invoke-direct {p2, p1, v1, v2, v3}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    iget-object p2, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {p2}, Lcom/oneplus/config/ConfigObserver;->register()V

    new-instance p2, Lcom/oneplus/config/ConfigGrabber;

    sget-object v1, Lcom/android/server/wm/OPAppSwitchManagerService;->mOpAdsOn:Ljava/lang/String;

    invoke-direct {p2, p1, v1}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/wm/OPAppSwitchManagerService;->resolveOnlineConfig(Lorg/json/JSONArray;)V

    iget-object p1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-class p1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iput-object p1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->permManagerInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iget-object p1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->permManagerInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-virtual {p1, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getAllPermissionWithProtectionLevel(I)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->dangerousPerms:Ljava/util/ArrayList;

    return-void
.end method

.method public isOposHotApp(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mPackageSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    sget-boolean v1, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const-string p1, " is "

    goto :goto_0

    :cond_0
    const-string p1, " is not "

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "hot ! "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mPackageSet:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPAppSwitchManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method public onConfigChanged()V
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPAppSwitchManagerService"

    const-string v1, "onConfigChanged"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/OPAppSwitchManagerService;->updateAppSwitchConfig()V

    return-void
.end method

.method public registerAppSwitchObserver(Ljava/lang/String;Lcom/android/server/wm/IOPAppSwitchObserver;Lcom/color/app/ColorAppSwitchConfig;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "opos.permission.OPOS_COMPONENT_SAFE"

    const-string v2, "registerAppSwitchObserver"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->getEnforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    const-string v1, "OPAppSwitchManagerService"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appswitch registerAppSwitchObserver  pkgName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " observer = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " config = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "com.opos.ads"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/color/app/ColorAppSwitchConfig;->getPackageSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mPackageSet:Ljava/util/HashSet;

    sget-boolean v0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get hot opos ads : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mPackageSet:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    if-eqz p2, :cond_5

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mIntercepters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/OPAppSwitchStateDispatcher;

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/server/wm/OPAppSwitchStateDispatcher;

    invoke-direct {v0, p1}, Lcom/android/server/wm/OPAppSwitchStateDispatcher;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mIntercepters:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2, p3}, Lcom/android/server/wm/OPAppSwitchRuleInfo;->buildDynamicRuleInfo(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/wm/IOPAppSwitchObserver;Lcom/color/app/ColorAppSwitchConfig;)Lcom/android/server/wm/OPAppSwitchRuleInfo;

    move-result-object v2

    new-instance v3, Lcom/android/server/wm/OPAppSwitchManagerService$sis;

    invoke-direct {v3, p0, p1, p3}, Lcom/android/server/wm/OPAppSwitchManagerService$sis;-><init>(Lcom/android/server/wm/OPAppSwitchManagerService;Ljava/lang/String;Lcom/color/app/ColorAppSwitchConfig;)V

    iput-object v3, v2, Lcom/android/server/wm/OPAppSwitchRuleInfo;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {p2}, Lcom/android/server/wm/IOPAppSwitchObserver;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    :try_start_0
    invoke-interface {p1, v3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->addDynamicListener(Lcom/android/server/wm/OPAppSwitchRuleInfo;)Z

    invoke-direct {p0, v0}, Lcom/android/server/wm/OPAppSwitchManagerService;->matchConfig(Lcom/android/server/wm/OPAppSwitchStateDispatcher;)V

    iget-boolean p0, v0, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->inBlackList:Z

    if-eqz p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_1
    return v1
.end method

.method public unregisterAppSwitchObserver(Ljava/lang/String;Lcom/color/app/ColorAppSwitchConfig;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "opos.permission.OPOS_COMPONENT_SAFE"

    const-string v2, "unregisterAppSwitchObserver"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->getEnforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    const-string v1, " config = "

    const-string v2, "OPAppSwitchManagerService"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appswitch unregisterAppSwitchObserver pkgName = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_3

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mIntercepters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/OPAppSwitchStateDispatcher;

    if-nez v0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "unregisterAppSwitchObserver failed, unknown package = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p2}, Lcom/android/server/wm/OPAppSwitchRuleInfo;->buildDynamicRuleInfo(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/wm/IOPAppSwitchObserver;Lcom/color/app/ColorAppSwitchConfig;)Lcom/android/server/wm/OPAppSwitchRuleInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->removeDynamicListener(Lcom/android/server/wm/OPAppSwitchRuleInfo;)Z

    move-result p0

    return p0

    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unregisterAppSwitchObserver error, pkgName = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
