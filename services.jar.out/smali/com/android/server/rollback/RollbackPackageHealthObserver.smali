.class public final Lcom/android/server/rollback/RollbackPackageHealthObserver;
.super Ljava/lang/Object;
.source "RollbackPackageHealthObserver.java"

# interfaces
.implements Lcom/android/server/PackageWatchdog$PackageHealthObserver;


# static fields
.field private static final INVALID_ROLLBACK_ID:I = -0x1

.field private static final NAME:Ljava/lang/String; = "rollback-observer"

.field private static final NATIVE_CRASH_POLLING_INTERVAL_MILLIS:J

.field private static final NUMBER_OF_NATIVE_CRASH_POLLS:J = 0xaL

.field private static final TAG:Ljava/lang/String; = "RollbackPackageHealthObserver"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mLastStagedRollbackIdFile:Ljava/io/File;

.field private mNumberOfNativeCrashPollsRemaining:J

.field private final mPendingStagedRollbackIds:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPendingStagedRollbackIds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->NATIVE_CRASH_POLLING_INTERVAL_MILLIS:J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mPendingStagedRollbackIds:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mNumberOfNativeCrashPollsRemaining:J

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RollbackPackageHealthObserver"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mHandler:Landroid/os/Handler;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "rollback-observer"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "last-staged-rollback-id"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mLastStagedRollbackIdFile:Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/server/PackageWatchdog;->registerHealthObserver(Lcom/android/server/PackageWatchdog$PackageHealthObserver;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/rollback/RollbackPackageHealthObserver;Landroid/content/rollback/RollbackManager;ILandroid/content/BroadcastReceiver;Landroid/content/pm/VersionedPackage;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->handleStagedSessionChange(Landroid/content/rollback/RollbackManager;ILandroid/content/BroadcastReceiver;Landroid/content/pm/VersionedPackage;)V

    return-void
.end method

.method private checkAndMitigateNativeCrashes()V
    .locals 4

    iget-wide v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mNumberOfNativeCrashPollsRemaining:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mNumberOfNativeCrashPollsRemaining:J

    const-string/jumbo v0, "ro.init.updatable_crashing"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->getModuleMetadataPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->execute(Landroid/content/pm/VersionedPackage;)Z

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mNumberOfNativeCrashPollsRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$qxl9oIFwPlFs_BOCz2kdHqQtB0U;

    invoke-direct {v1, p0}, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$qxl9oIFwPlFs_BOCz2kdHqQtB0U;-><init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;)V

    sget-wide v2, Lcom/android/server/rollback/RollbackPackageHealthObserver;->NATIVE_CRASH_POLLING_INTERVAL_MILLIS:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private getAvailableRollback(Landroid/content/rollback/RollbackManager;Landroid/content/pm/VersionedPackage;)Landroid/content/rollback/RollbackInfo;
    .locals 6

    invoke-virtual {p1}, Landroid/content/rollback/RollbackManager;->getAvailableRollbacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/rollback/PackageRollbackInfo;

    invoke-virtual {v3}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/VersionedPackage;->getVersionCode()I

    move-result v4

    invoke-virtual {p2}, Landroid/content/pm/VersionedPackage;->getVersionCode()I

    move-result v5

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_1

    return-object v1

    :cond_1
    goto :goto_1

    :cond_2
    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private getModuleMetadataPackage()Landroid/content/pm/VersionedPackage;
    .locals 5

    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->getModuleMetadataPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v2, Landroid/content/pm/VersionedPackage;

    iget-object v3, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v3

    invoke-direct {v2, v0, v3, v4}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    const-string v3, "RollbackPackageHealthObserver"

    const-string v4, "Module metadata provider not found"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private getModuleMetadataPackageName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040164

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    return-object v0
.end method

.method private handleStagedSessionChange(Landroid/content/rollback/RollbackManager;ILandroid/content/BroadcastReceiver;Landroid/content/pm/VersionedPackage;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    nop

    invoke-virtual {p1}, Landroid/content/rollback/RollbackManager;->getRecentlyCommittedRollbacks()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v3}, Landroid/content/rollback/RollbackInfo;->getCommittedSessionId()I

    move-result v4

    invoke-virtual {v3}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v5

    if-ne p2, v5, :cond_1

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    nop

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionReady()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->markStagedSessionHandled(I)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v6, p3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0, p2}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->saveLastStagedRollbackId(I)V

    const/4 v6, 0x4

    invoke-static {p4, v6}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->logEvent(Landroid/content/pm/VersionedPackage;I)V

    iget-object v6, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    const-class v7, Landroid/os/PowerManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    const-string v7, "Rollback staged install"

    invoke-virtual {v6, v7}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionFailed()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->markStagedSessionHandled(I)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x3

    invoke-static {p4, v6}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->logEvent(Landroid/content/pm/VersionedPackage;I)V

    iget-object v6, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v6, p3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic lambda$execute$1(Landroid/content/rollback/RollbackManager;Landroid/content/rollback/RollbackInfo;Landroid/content/pm/VersionedPackage;Lcom/android/server/rollback/LocalIntentReceiver;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v0

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p3}, Lcom/android/server/rollback/LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/rollback/RollbackManager;->commitRollback(ILjava/util/List;Landroid/content/IntentSender;)V

    return-void
.end method

.method private listenForStagedSessionReady(Landroid/content/rollback/RollbackManager;ILandroid/content/pm/VersionedPackage;)Landroid/content/BroadcastReceiver;
    .locals 3

    new-instance v0, Lcom/android/server/rollback/RollbackPackageHealthObserver$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/rollback/RollbackPackageHealthObserver$1;-><init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;Landroid/content/rollback/RollbackManager;ILandroid/content/pm/VersionedPackage;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.content.pm.action.SESSION_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-object v0
.end method

.method private static logEvent(Landroid/content/pm/VersionedPackage;I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Watchdog event occurred of type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RollbackPackageHealthObserver"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/VersionedPackage;->getVersionCode()I

    move-result v1

    int-to-long v1, v1

    invoke-static {p1, v0, v1, v2}, Landroid/util/StatsLog;->logWatchdogRollbackOccurred(ILjava/lang/String;J)Z

    :cond_0
    return-void
.end method

.method private markStagedSessionHandled(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mPendingStagedRollbackIds:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mPendingStagedRollbackIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onBootCompleted()V
    .locals 12

    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/rollback/RollbackManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/rollback/RollbackManager;

    iget-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->getModuleMetadataPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->getModuleMetadataPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->getAvailableRollback(Landroid/content/rollback/RollbackManager;Landroid/content/pm/VersionedPackage;)Landroid/content/rollback/RollbackInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->scheduleCheckAndMitigateNativeCrashes()V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->popLastStagedRollbackId()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    return-void

    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/content/rollback/RollbackManager;->getRecentlyCommittedRollbacks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v7}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v8

    if-ne v4, v8, :cond_2

    move-object v5, v7

    goto :goto_1

    :cond_2
    goto :goto_0

    :cond_3
    :goto_1
    const-string v6, "RollbackPackageHealthObserver"

    if-nez v5, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "rollback info not found for last staged rollback: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const/4 v7, 0x0

    invoke-virtual {v5}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/rollback/PackageRollbackInfo;

    invoke-virtual {v9}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v9}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v7

    goto :goto_3

    :cond_5
    goto :goto_2

    :cond_6
    :goto_3
    invoke-virtual {v5}, Landroid/content/rollback/RollbackInfo;->getCommittedSessionId()I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v9

    if-nez v9, :cond_7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "On boot completed, could not load session id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    invoke-virtual {v9}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionApplied()Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x2

    invoke-static {v7, v6}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->logEvent(Landroid/content/pm/VersionedPackage;I)V

    goto :goto_4

    :cond_8
    invoke-virtual {v9}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionReady()Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_4

    :cond_9
    const/4 v6, 0x3

    invoke-static {v7, v6}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->logEvent(Landroid/content/pm/VersionedPackage;I)V

    :goto_4
    return-void
.end method

.method private popLastStagedRollbackId()I
    .locals 4

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mLastStagedRollbackIdFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mLastStagedRollbackIdFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "RollbackPackageHealthObserver"

    const-string v3, "Failed to retrieve last staged rollback id"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mLastStagedRollbackIdFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    return v0
.end method

.method private saveLastStagedRollbackId(I)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mLastStagedRollbackIdFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    invoke-static {v0}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RollbackPackageHealthObserver"

    const-string v2, "Failed to save last staged rollback id"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mLastStagedRollbackIdFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :goto_0
    return-void
.end method

.method private scheduleCheckAndMitigateNativeCrashes()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scheduling "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mNumberOfNativeCrashPollsRemaining:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " polls to check and mitigate native crashes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RollbackPackageHealthObserver"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$0IN9novFyWgQaB1z9Q2H7ZQ6gqY;

    invoke-direct {v1, p0}, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$0IN9novFyWgQaB1z9Q2H7ZQ6gqY;-><init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public execute(Landroid/content/pm/VersionedPackage;)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/rollback/RollbackManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/rollback/RollbackManager;

    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->getModuleMetadataPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v1

    invoke-direct {p0, v0, p1}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->getAvailableRollback(Landroid/content/rollback/RollbackManager;Landroid/content/pm/VersionedPackage;)Landroid/content/rollback/RollbackInfo;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected rollback but no valid rollback found for package: [ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] with versionCode: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getVersionCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RollbackPackageHealthObserver"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3

    :cond_0
    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->logEvent(Landroid/content/pm/VersionedPackage;I)V

    new-instance v4, Lcom/android/server/rollback/LocalIntentReceiver;

    new-instance v5, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$rzS754kbcJ1EWTdkahNgJUZSdjI;

    invoke-direct {v5, p0, v2, v0, v1}, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$rzS754kbcJ1EWTdkahNgJUZSdjI;-><init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;Landroid/content/rollback/RollbackInfo;Landroid/content/rollback/RollbackManager;Landroid/content/pm/VersionedPackage;)V

    invoke-direct {v4, v5}, Lcom/android/server/rollback/LocalIntentReceiver;-><init>(Ljava/util/function/Consumer;)V

    iget-object v5, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$oOra6LB_hHJjBK__eXmSDqgCWsk;

    invoke-direct {v6, v0, v2, p1, v4}, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$oOra6LB_hHJjBK__eXmSDqgCWsk;-><init>(Landroid/content/rollback/RollbackManager;Landroid/content/rollback/RollbackInfo;Landroid/content/pm/VersionedPackage;Lcom/android/server/rollback/LocalIntentReceiver;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v3
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "rollback-observer"

    return-object v0
.end method

.method public synthetic lambda$checkAndMitigateNativeCrashes$3$RollbackPackageHealthObserver()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->checkAndMitigateNativeCrashes()V

    return-void
.end method

.method public synthetic lambda$execute$0$RollbackPackageHealthObserver(Landroid/content/rollback/RollbackInfo;Landroid/content/rollback/RollbackManager;Landroid/content/pm/VersionedPackage;Landroid/content/Intent;)V
    .locals 5

    const-string v0, "android.content.rollback.extra.STATUS"

    const/4 v1, 0x1

    invoke-virtual {p4, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mPendingStagedRollbackIds:Ljava/util/Set;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mPendingStagedRollbackIds:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    invoke-direct {p0, p2, v1, p3}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->listenForStagedSessionReady(Landroid/content/rollback/RollbackManager;ILandroid/content/pm/VersionedPackage;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-direct {p0, p2, v1, v2, p3}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->handleStagedSessionChange(Landroid/content/rollback/RollbackManager;ILandroid/content/BroadcastReceiver;Landroid/content/pm/VersionedPackage;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_0
    const/4 v1, 0x2

    invoke-static {p3, v1}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->logEvent(Landroid/content/pm/VersionedPackage;I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    invoke-static {p3, v1}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->logEvent(Landroid/content/pm/VersionedPackage;I)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$onBootCompletedAsync$2$RollbackPackageHealthObserver()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->onBootCompleted()V

    return-void
.end method

.method public synthetic lambda$scheduleCheckAndMitigateNativeCrashes$4$RollbackPackageHealthObserver()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->checkAndMitigateNativeCrashes()V

    return-void
.end method

.method public onBootCompletedAsync()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$AIuzQKXcl9vSW9YzEpmdp7QJz1M;

    invoke-direct {v1, p0}, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$AIuzQKXcl9vSW9YzEpmdp7QJz1M;-><init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onHealthCheckFailed(Landroid/content/pm/VersionedPackage;)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/rollback/RollbackManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/rollback/RollbackManager;

    invoke-direct {p0, v0, p1}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->getAvailableRollback(Landroid/content/rollback/RollbackManager;Landroid/content/pm/VersionedPackage;)Landroid/content/rollback/RollbackInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public startObservingHealth(Ljava/util/List;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/server/PackageWatchdog;->startObservingHealth(Lcom/android/server/PackageWatchdog$PackageHealthObserver;Ljava/util/List;J)V

    return-void
.end method
