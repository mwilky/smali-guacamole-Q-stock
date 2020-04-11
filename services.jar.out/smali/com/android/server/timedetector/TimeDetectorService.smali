.class public final Lcom/android/server/timedetector/TimeDetectorService;
.super Landroid/app/timedetector/ITimeDetectorService$Stub;
.source "TimeDetectorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timedetector/TimeDetectorService$Lifecycle;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "timedetector.TimeDetectorService"


# instance fields
.field private final mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mStrategyLock:Ljava/lang/Object;

.field private final mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStrategyLock"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;Lcom/android/server/timedetector/TimeDetectorStrategy;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Landroid/app/timedetector/ITimeDetectorService$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mStrategyLock:Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timedetector/TimeDetectorStrategy;

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Lcom/android/server/timedetector/TimeDetectorService;
    .locals 1

    invoke-static {p0}, Lcom/android/server/timedetector/TimeDetectorService;->create(Landroid/content/Context;)Lcom/android/server/timedetector/TimeDetectorService;

    move-result-object v0

    return-object v0
.end method

.method private static create(Landroid/content/Context;)Lcom/android/server/timedetector/TimeDetectorService;
    .locals 7

    new-instance v0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;

    invoke-direct {v0}, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;-><init>()V

    new-instance v1, Lcom/android/server/timedetector/TimeDetectorStrategyCallbackImpl;

    invoke-direct {v1, p0}, Lcom/android/server/timedetector/TimeDetectorStrategyCallbackImpl;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->initialize(Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;)V

    new-instance v2, Lcom/android/server/timedetector/TimeDetectorService;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/server/timedetector/TimeDetectorService;-><init>(Landroid/content/Context;Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;Lcom/android/server/timedetector/TimeDetectorStrategy;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    nop

    const-string v4, "auto_time"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Lcom/android/server/timedetector/TimeDetectorService$1;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lcom/android/server/timedetector/TimeDetectorService$1;-><init>(Landroid/os/Handler;Lcom/android/server/timedetector/TimeDetectorService;)V

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-object v2
.end method

.method private enforceSetTimePermission()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SET_TIME"

    const-string/jumbo v2, "set time"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "timedetector.TimeDetectorService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mStrategyLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    invoke-interface {v1, p2, p3}, Lcom/android/server/timedetector/TimeDetectorStrategy;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleAutoTimeDetectionToggle()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mStrategyLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v1}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->isTimeDetectionEnabled()Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    invoke-interface {v2, v1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->handleAutoTimeDetectionToggle(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public suggestTime(Landroid/app/timedetector/TimeSignal;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/timedetector/TimeDetectorService;->enforceSetTimePermission()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorService;->mStrategyLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    invoke-interface {v3, p1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->suggestTime(Landroid/app/timedetector/TimeSignal;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
