.class public Lcom/oneplus/settings/SettingsBaseApplication;
.super Lcom/oneplus/lib/app/OneplusApplication;
.source "SettingsBaseApplication.java"


# static fields
.field public static final ONEPLUS_DEBUG:Z

.field private static handler:Landroid/os/Handler;

.field private static handlerThread:Landroid/os/HandlerThread;

.field public static mApplication:Landroid/app/Application;

.field private static mLock:Ljava/lang/Object;


# instance fields
.field private mIsBeta:Z

.field private mTracker:Lcom/google/analytics/tracking/android/Tracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "persist.sys.assert.panic"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/oneplus/settings/SettingsBaseApplication;->ONEPLUS_DEBUG:Z

    new-array v0, v0, [B

    sput-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/app/OneplusApplication;-><init>()V

    return-void
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 3

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->handler:Landroid/os/Handler;

    if-nez v0, :cond_3

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->handler:Landroid/os/Handler;

    if-nez v1, :cond_2

    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->handlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/HandlerThread;

    const-class v2, Lcom/oneplus/settings/SettingsBaseApplication;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->handlerThread:Landroid/os/HandlerThread;

    :cond_0
    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    :cond_1
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/oneplus/settings/SettingsBaseApplication;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->handler:Landroid/os/Handler;

    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :goto_0
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public getDefaultTracker()Lcom/google/analytics/tracking/android/Tracker;
    .locals 4

    const-class v0, Lcom/oneplus/settings/SettingsBaseApplication;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/SettingsBaseApplication;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getLogger()Lcom/google/analytics/tracking/android/Logger;

    move-result-object v2

    sget-object v3, Lcom/google/analytics/tracking/android/Logger$LogLevel;->VERBOSE:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    invoke-interface {v2, v3}, Lcom/google/analytics/tracking/android/Logger;->setLogLevel(Lcom/google/analytics/tracking/android/Logger$LogLevel;)V

    const-string v2, "UA-92966593-3"

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/SettingsBaseApplication;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/oneplus/settings/SettingsBaseApplication;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isBetaRom()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/settings/SettingsBaseApplication;->mIsBeta:Z

    return v0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Lcom/oneplus/lib/app/OneplusApplication;->onCreate()V

    sput-object p0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isBetaRom()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/settings/SettingsBaseApplication;->mIsBeta:Z

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/oneplus/settings/OPOnlineConfigManager;->getInstence(Landroid/content/Context;)Lcom/oneplus/settings/OPOnlineConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/settings/OPOnlineConfigManager;->init()V

    return-void
.end method
