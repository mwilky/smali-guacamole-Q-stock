.class Lcom/android/server/wm/ActivityMetricsLogger;
.super Ljava/lang/Object;
.source "ActivityMetricsLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;,
        Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;,
        Lcom/android/server/wm/ActivityMetricsLogger$H;
    }
.end annotation


# static fields
.field private static final INVALID_DELAY:I = -0x1

.field private static final INVALID_START_TIME:J = -0x1L

.field private static final INVALID_TRANSITION_TYPE:I = -0x1

.field static final LAUNCH_OBSERVER_ACTIVITY_RECORD_PROTO_CHUNK_SIZE:I = 0x200
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final MSG_CHECK_VISIBILITY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;

.field private static final WINDOW_STATE_ASSISTANT:I = 0x3

.field private static final WINDOW_STATE_FREEFORM:I = 0x2

.field private static final WINDOW_STATE_INVALID:I = -0x1

.field private static final WINDOW_STATE_SIDE_BY_SIDE:I = 0x1

.field private static final WINDOW_STATE_STANDARD:I

.field private static mLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

.field public static mPerfFirstDraw:Landroid/util/BoostFramework;

.field public static mUxPerf:Landroid/util/BoostFramework;


# instance fields
.field private mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

.field private final mContext:Landroid/content/Context;

.field private mCurrentTransitionDelayMs:I

.field private mCurrentTransitionDeviceUptime:I

.field private mCurrentTransitionStartTime:J

.field private final mHandler:Lcom/android/server/wm/ActivityMetricsLogger$H;

.field private mLastLogTimeSecs:J

.field private mLastTransitionStartTime:J

.field private final mLastWindowingModeTransitionInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

.field private mLoggedTransitionStarting:Z

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field private final mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

.field private mWindowState:I

.field private final mWindowingModeTransitionInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "window_time_0"

    const-string v1, "window_time_1"

    const-string v2, "window_time_2"

    const-string v3, "window_time_3"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ActivityMetricsLogger;->TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wm/ActivityMetricsLogger;->mPerfFirstDraw:Landroid/util/BoostFramework;

    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    sput-object v0, Lcom/android/server/wm/ActivityMetricsLogger;->mUxPerf:Landroid/util/BoostFramework;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityStackSupervisor;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    iput-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastTransitionStartTime:J

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastWindowingModeTransitionInfo:Landroid/util/SparseArray;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastLogTimeSecs:J

    iput-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iput-object p2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/wm/ActivityMetricsLogger$H;

    invoke-direct {v0, p0, p3}, Lcom/android/server/wm/ActivityMetricsLogger$H;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mHandler:Lcom/android/server/wm/ActivityMetricsLogger$H;

    new-instance v0, Lcom/android/server/wm/LaunchObserverRegistryImpl;

    invoke-direct {v0, p3}, Lcom/android/server/wm/LaunchObserverRegistryImpl;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->checkVisibility(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->getTransitionType(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/WindowProcessController;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->findProcessForActivity(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    return-object v0
.end method

.method private allWindowsDrawn()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    invoke-static {v2}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private calculateCurrentDelay()I
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private calculateDelay(J)I
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    return v0
.end method

.method private checkVisibility(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 4

    if-eqz p2, :cond_5

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    if-nez v1, :cond_1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_1
    :try_start_1
    invoke-static {v1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eq v2, p2, :cond_2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_2
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->hasVisibleNonFinishingActivity(Lcom/android/server/wm/TaskRecord;)Z

    move-result v2

    if-eqz v2, :cond_3

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_3
    :try_start_3
    invoke-direct {p0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppTransitionCancel(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    const-string v3, "notifyVisibilityChanged to invisible"

    invoke-direct {p0, v2, v1, v3}, Lcom/android/server/wm/ActivityMetricsLogger;->reset(ZLcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Ljava/lang/String;)V

    :cond_4
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkVisibility skip for t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static convertActivityRecordToProto(Lcom/android/server/wm/ActivityRecord;)[B
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-wide/16 v0, 0x40

    const-string v2, "MetricsLogger:convertActivityRecordToProto"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    const/16 v3, 0x200

    invoke-direct {v2, v3}, Landroid/util/proto/ProtoOutputStream;-><init>(I)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v3

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3
.end method

.method private convertAppStartTransitionType(I)I
    .locals 1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static convertTransitionTypeToLaunchObserverTemperature(I)I
    .locals 1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_2

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0

    :cond_1
    const/4 v0, 0x2

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private findProcessForActivity(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/WindowProcessController;
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowProcessController;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getArtManagerInternal()Landroid/content/pm/dex/ArtManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

    if-nez v0, :cond_0

    const-class v0, Landroid/content/pm/dex/ArtManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/dex/ArtManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

    return-object v0
.end method

.method private getTransitionType(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I
    .locals 2

    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$900(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1000(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    return v0

    :cond_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1000(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    if-ne v0, v1, :cond_2

    const/16 v0, 0x9

    return v0

    :cond_1
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1000(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1000(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    return v0

    :cond_3
    :goto_0
    const/4 v0, 0x7

    return v0
.end method

.method private hasVisibleNonFinishingActivity(Lcom/android/server/wm/TaskRecord;)Z
    .locals 4

    iget-object v0, p1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isAnyTransitionActive()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isLoggableResultCode(I)Z
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private launchObserverNotifyActivityLaunchCancelled(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V
    .locals 4

    const-wide/16 v0, 0x40

    const-string v2, "MetricsLogger:launchObserverNotifyActivityLaunchCancelled"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/ActivityMetricsLogger;->convertActivityRecordToProto(Lcom/android/server/wm/ActivityRecord;)[B

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onActivityLaunchCancelled([B)V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method private launchObserverNotifyActivityLaunchFinished(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V
    .locals 4

    const-wide/16 v0, 0x40

    const-string v2, "MetricsLogger:launchObserverNotifyActivityLaunchFinished"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/ActivityMetricsLogger;->convertActivityRecordToProto(Lcom/android/server/wm/ActivityRecord;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onActivityLaunchFinished([B)V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method private launchObserverNotifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V
    .locals 5

    const-wide/16 v0, 0x40

    const-string v2, "MetricsLogger:launchObserverNotifyActivityLaunched"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    nop

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->getTransitionType(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v2

    invoke-static {v2}, Lcom/android/server/wm/ActivityMetricsLogger;->convertTransitionTypeToLaunchObserverTemperature(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wm/ActivityMetricsLogger;->convertActivityRecordToProto(Lcom/android/server/wm/ActivityRecord;)[B

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onActivityLaunched([BI)V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method private launchObserverNotifyIntentFailed()V
    .locals 3

    const-wide/16 v0, 0x40

    const-string v2, "MetricsLogger:launchObserverNotifyIntentFailed"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    invoke-virtual {v2}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onIntentFailed()V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method private launchObserverNotifyIntentStarted(Landroid/content/Intent;)V
    .locals 3

    const-wide/16 v0, 0x40

    const-string v2, "MetricsLogger:launchObserverNotifyIntentStarted"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onIntentStarted(Landroid/content/Intent;)V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method private logAppDisplayed(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .locals 9

    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->type:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->type:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x7539

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->userId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->activityRecordIdHashCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v5, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityShortComponentName:Ljava/lang/String;

    aput-object v5, v1, v2

    iget v2, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsDrawnDelayMs:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v1, "Displayed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityShortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsDrawnDelayMs:I

    int-to-long v1, v1

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    iget-object v1, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->processName:Ljava/lang/String;

    iget v6, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->bindApplicationDelayMs:I

    iget v7, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsDrawnDelayMs:I

    iget-object v8, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityShortComponentName:Ljava/lang/String;

    invoke-static {v1, v2, v6, v7, v8}, Lcom/oneplus/houston/apkserver/bridge/HoustonInjector;->reportActivityDisplayed(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    sget-object v1, Lcom/android/server/wm/ActivityMetricsLogger;->mUxPerf:Landroid/util/BoostFramework;

    if-eqz v1, :cond_1

    iget-object v2, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->packageName:Ljava/lang/String;

    iget v6, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsDrawnDelayMs:I

    invoke-virtual {v1, v5, v3, v2, v6}, Landroid/util/BoostFramework;->perfUXEngine_events(IILjava/lang/String;I)I

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isAppInfoGame()I

    move-result v1

    sget-object v2, Lcom/android/server/wm/ActivityMetricsLogger;->mUxPerf:Landroid/util/BoostFramework;

    if-eqz v2, :cond_2

    const/4 v5, 0x5

    iget-object v6, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5, v3, v6, v1}, Landroid/util/BoostFramework;->perfUXEngine_events(IILjava/lang/String;I)I

    :cond_2
    sget-object v2, Lcom/android/server/wm/ActivityMetricsLogger;->mPerfFirstDraw:Landroid/util/BoostFramework;

    if-nez v2, :cond_3

    new-instance v2, Landroid/util/BoostFramework;

    invoke-direct {v2}, Landroid/util/BoostFramework;-><init>()V

    sput-object v2, Lcom/android/server/wm/ActivityMetricsLogger;->mPerfFirstDraw:Landroid/util/BoostFramework;

    :cond_3
    sget-object v2, Lcom/android/server/wm/ActivityMetricsLogger;->mPerfFirstDraw:Landroid/util/BoostFramework;

    if-eqz v2, :cond_4

    const/16 v3, 0x1042

    iget-object v5, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->packageName:Ljava/lang/String;

    iget v6, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsDrawnDelayMs:I

    invoke-virtual {v2, v3, v5, v6, v4}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    :cond_4
    sget-object v2, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mPerf:Landroid/util/BoostFramework;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget v2, v2, Lcom/android/server/wm/ActivityRecord;->perfActivityBoostHandler:I

    if-lez v2, :cond_5

    sget-object v2, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mPerf:Landroid/util/BoostFramework;

    sget-object v3, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget v3, v3, Lcom/android/server/wm/ActivityRecord;->perfActivityBoostHandler:I

    invoke-virtual {v2, v3}, Landroid/util/BoostFramework;->perfLockReleaseHandler(I)I

    sget-object v2, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v3, -0x1

    iput v3, v2, Lcom/android/server/wm/ActivityRecord;->perfActivityBoostHandler:I

    :cond_5
    return-void
.end method

.method private logAppFullyDrawn(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .locals 3

    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->type:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->type:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v1, "Fully drawn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityShortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsFullyDrawnDelayMs:I

    int-to-long v1, v1

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logAppStartMemoryStateCapture(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .locals 19

    move-object/from16 v0, p1

    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$2100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$2100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v1

    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1400(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2, v1}, Lcom/android/server/am/MemoryStatUtil;->readMemoryStatFromFilesystem(II)Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    move-result-object v15

    if-nez v15, :cond_1

    return-void

    :cond_1
    const/16 v3, 0x37

    iget-object v5, v0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->processName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    iget-wide v7, v15, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgfault:J

    iget-wide v9, v15, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgmajfault:J

    iget-wide v11, v15, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->rssInBytes:J

    iget-wide v13, v15, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->cacheInBytes:J

    move/from16 v17, v1

    iget-wide v0, v15, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->swapInBytes:J

    move v4, v2

    move-object/from16 v18, v15

    move-wide v15, v0

    invoke-static/range {v3 .. v16}, Landroid/util/StatsLog;->write(IILjava/lang/String;Ljava/lang/String;JJJJJ)I

    return-void
.end method

.method private logAppTransition(IILcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    new-instance v2, Landroid/metrics/LogMaker;

    const/16 v3, 0x2f9

    invoke-direct {v2, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    iget-object v3, v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    iget v3, v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->type:I

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    iget-object v3, v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    const/16 v4, 0x367

    invoke-virtual {v2, v4, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1400(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v3

    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1500(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const/16 v4, 0x388

    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1500(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_0
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1600(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1

    const/16 v4, 0x387

    invoke-virtual {v2, v4, v14}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_1
    const/16 v4, 0x389

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v4, 0x145

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v4, 0x13f

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1700(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1800(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    const/16 v4, 0x141

    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1800(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_2
    iget v4, v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->bindApplicationDelayMs:I

    if-eq v4, v5, :cond_3

    const/16 v4, 0x3b1

    iget v5, v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->bindApplicationDelayMs:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_3
    const/16 v4, 0x142

    iget v5, v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsDrawnDelayMs:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityMetricsLogger;->getArtManagerInternal()Landroid/content/pm/dex/ArtManagerInternal;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1900(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    nop

    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1400(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1900(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Landroid/content/pm/dex/ArtManagerInternal;->getPackageOptimizationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/content/pm/dex/PackageOptimizationInfo;

    move-result-object v4

    goto :goto_1

    :cond_5
    :goto_0
    invoke-static {}, Landroid/content/pm/dex/PackageOptimizationInfo;->createWithNoInfo()Landroid/content/pm/dex/PackageOptimizationInfo;

    move-result-object v4

    :goto_1
    move-object/from16 v21, v4

    const/16 v4, 0x529

    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationReason()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v4, 0x528

    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationFilter()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    iget-object v4, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v4, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    const/16 v4, 0x30

    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1400(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->packageName:Ljava/lang/String;

    iget v7, v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->type:I

    invoke-direct {v0, v7}, Lcom/android/server/wm/ActivityMetricsLogger;->convertAppStartTransitionType(I)I

    move-result v7

    iget-object v8, v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1500(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v9

    move/from16 v15, p1

    mul-int/lit16 v11, v15, 0x3e8

    int-to-long v11, v11

    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1700(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v13

    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1800(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v16

    move/from16 v15, v16

    iget v4, v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->bindApplicationDelayMs:I

    move/from16 v16, v4

    iget v4, v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsDrawnDelayMs:I

    move/from16 v17, v4

    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationReason()I

    move-result v19

    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationFilter()I

    move-result v20

    move-object/from16 v22, v10

    move v10, v3

    move-object/from16 v23, v14

    move/from16 v14, p2

    move-object/from16 v18, v23

    const/16 v4, 0x30

    invoke-static/range {v4 .. v20}, Landroid/util/StatsLog;->write(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZJIIIIILjava/lang/String;II)I

    invoke-direct {v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppStartMemoryStateCapture(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    return-void
.end method

.method private logAppTransitionCancel(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->getTransitionType(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x478

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    invoke-virtual {v1, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    const/16 v2, 0x367

    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    const/16 v2, 0x31

    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityMetricsLogger;->convertAppStartTransitionType(I)I

    move-result v5

    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5, v6}, Landroid/util/StatsLog;->write(IILjava/lang/String;ILjava/lang/String;)I

    return-void
.end method

.method private logAppTransitionMultiEvents()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    invoke-direct {p0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->getTransitionType(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    return-void

    :cond_0
    invoke-static {v1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    sput-object v3, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    new-instance v3, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v1, v4}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/wm/ActivityMetricsLogger$1;)V

    iget v5, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionDeviceUptime:I

    iget v6, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionDelayMs:I

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$0lYHhsj1ibZMP6eUAxlwT_URn-4;

    invoke-direct {v8, p0, v5, v6, v3}, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$0lYHhsj1ibZMP6eUAxlwT_URn-4;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;IILcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$DGh4oiUM74EvEwFf0Up59dk2u_I;

    invoke-direct {v8, p0, v3}, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$DGh4oiUM74EvEwFf0Up59dk2u_I;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {v1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iput-object v4, v7, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyActivityLaunched(ILcom/android/server/wm/ActivityRecord;ZZ)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    nop

    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    iget-wide v3, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x1

    if-eqz p2, :cond_2

    iget-boolean v4, p2, Lcom/android/server/wm/ActivityRecord;->mDrawn:Z

    if-eqz v4, :cond_2

    const-string v0, "launched activity already visible"

    invoke-direct {p0, v3, v2, v0}, Lcom/android/server/wm/ActivityMetricsLogger;->reset(ZLcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Ljava/lang/String;)V

    return-void

    :cond_2
    if-eqz p2, :cond_3

    if-eqz v2, :cond_3

    invoke-static {v2, p2}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$102(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lez v4, :cond_4

    if-nez v2, :cond_4

    move v0, v3

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->isLoggableResultCode(I)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz p2, :cond_5

    if-nez v1, :cond_6

    :cond_5
    if-nez v0, :cond_6

    const-string v4, "failed to launch or not a process switch"

    invoke-direct {p0, v3, v2, v4}, Lcom/android/server/wm/ActivityMetricsLogger;->reset(ZLcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Ljava/lang/String;)V

    return-void

    :cond_6
    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v3, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$1;)V

    invoke-static {v3, p2}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$102(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    invoke-static {v3, p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$902(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Z)Z

    invoke-static {v3, p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1002(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;I)I

    iget-object v4, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionDeviceUptime:I

    invoke-direct {p0, v3}, Lcom/android/server/wm/ActivityMetricsLogger;->startTraces(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V

    invoke-direct {p0, v3}, Lcom/android/server/wm/ActivityMetricsLogger;->launchObserverNotifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V

    return-void
.end method

.method private reset(ZLcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLogger;->isAnyTransitionActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppTransitionMultiEvents()V

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->stopLaunchTrace(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V

    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLogger;->isAnyTransitionActive()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->launchObserverNotifyActivityLaunchCancelled(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->launchObserverNotifyActivityLaunchFinished(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLogger;->launchObserverNotifyIntentFailed()V

    :goto_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionDelayMs:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLoggedTransitionStarting:Z

    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method private startTraces(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V
    .locals 4

    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$2200(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launching: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$2202(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Z)Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private stopLaunchTrace(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$2200(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x40

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launching: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    invoke-static {p1, v3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$2202(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Z)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public getLaunchObserverRegistry()Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    return-object v0
.end method

.method public synthetic lambda$logAppTransitionMultiEvents$0$ActivityMetricsLogger(IILcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppTransition(IILcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    return-void
.end method

.method public synthetic lambda$logAppTransitionMultiEvents$1$ActivityMetricsLogger(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppDisplayed(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    return-void
.end method

.method public synthetic lambda$logAppTransitionReportedDrawn$2$ActivityMetricsLogger(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppFullyDrawn(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    return-void
.end method

.method logAbortedBgActivityStart(Landroid/content/Intent;Lcom/android/server/wm/WindowProcessController;ILjava/lang/String;IZIIZZ)V
    .locals 12

    move-object v0, p2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    new-instance v5, Landroid/metrics/LogMaker;

    const/16 v6, 0x5e9

    invoke-direct {v5, v6}, Landroid/metrics/LogMaker;-><init>(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->setTimestamp(J)Landroid/metrics/LogMaker;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x5ea

    invoke-virtual {v5, v7, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v6, 0x5eb

    move-object/from16 v7, p4

    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    nop

    invoke-static/range {p5 .. p5}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v8, 0x5ec

    invoke-virtual {v5, v8, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    nop

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v8, 0x5ed

    invoke-virtual {v5, v8, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v6, 0x5ee

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v6, 0x5ef

    invoke-static/range {p8 .. p8}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v6, 0x5f0

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v6, 0x5f7

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    if-eqz p1, :cond_0

    const/16 v6, 0x5f8

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_0

    const/16 v8, 0x5f6

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_0
    if-eqz v0, :cond_3

    const/16 v6, 0x5f9

    iget-object v8, v0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v6, 0x5fa

    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getCurrentProcState()I

    move-result v8

    invoke-static {v8}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v6, 0x5fb

    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasClientActivities()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v6, 0x5fc

    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasForegroundServices()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v6, 0x5fd

    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasForegroundActivities()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v6, 0x5fe

    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasTopUi()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v6, 0x5ff

    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasOverlayUi()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v6, 0x600

    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasPendingUiClean()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getInteractionEventTime()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-eqz v6, :cond_1

    const/16 v6, 0x601

    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getInteractionEventTime()J

    move-result-wide v8

    sub-long v8, v1, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_1
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getFgInteractionTime()J

    move-result-wide v8

    cmp-long v6, v8, v10

    if-eqz v6, :cond_2

    const/16 v6, 0x602

    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getFgInteractionTime()J

    move-result-wide v8

    sub-long v8, v1, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_2
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getWhenUnimportant()J

    move-result-wide v8

    cmp-long v6, v8, v10

    if-eqz v6, :cond_3

    const/16 v6, 0x603

    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getWhenUnimportant()J

    move-result-wide v8

    sub-long v8, v3, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_3
    move-object v6, p0

    iget-object v8, v6, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v8, v5}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method logAppTransitionReportedDrawn(Lcom/android/server/wm/ActivityRecord;Z)Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;
    .locals 20

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v6, Lcom/android/server/wm/ActivityMetricsLogger;->mLastWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    if-nez v8, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityManager:ReportingFullyDrawn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v3, 0x442

    invoke-direct {v0, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    move-object v9, v0

    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    const/16 v0, 0x367

    iget-object v3, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v0, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v10, v6, Lcom/android/server/wm/ActivityMetricsLogger;->mLastTransitionStartTime:J

    sub-long v10, v3, v10

    const/16 v0, 0x443

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v9, v0, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    if-eqz p2, :cond_1

    const/16 v0, 0xd

    goto :goto_0

    :cond_1
    const/16 v0, 0xc

    :goto_0
    invoke-virtual {v9, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    const/16 v0, 0x144

    invoke-static {v8}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$900(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v0, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    iget-object v0, v6, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v0, v9}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    const/16 v12, 0x32

    invoke-static {v8}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    iget-object v14, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    move v15, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    move v15, v0

    :goto_1
    invoke-static {v8}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$900(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v17

    move-object/from16 v16, v0

    move-wide/from16 v18, v10

    invoke-static/range {v12 .. v19}, Landroid/util/StatsLog;->write(IILjava/lang/String;ILjava/lang/String;ZJ)I

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    new-instance v12, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    long-to-int v4, v10

    const/4 v5, 0x0

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v8

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityMetricsLogger$1;)V

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$xxgDrxthXaC_M25gC-YvHOsQ6yE;

    invoke-direct {v2, v6, v0}, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$xxgDrxthXaC_M25gC-YvHOsQ6yE;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method logWindowState()V
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/server/wm/ActivityMetricsLogger;->TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;

    aget-object v2, v5, v2

    iget-wide v5, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastLogTimeSecs:J

    sub-long v5, v0, v5

    long-to-int v5, v5

    invoke-static {v4, v2, v5}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    iput-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastLogTimeSecs:J

    iput v3, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->isActivityTypeAssistant()Z

    move-result v3

    const/4 v4, 0x3

    if-eqz v3, :cond_2

    iput v4, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    return-void

    :cond_2
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    iget-object v6, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v6, v2}, Lcom/android/server/wm/RootActivityContainer;->findStackBehind(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v3

    :cond_3
    const/4 v6, 0x1

    if-eq v3, v6, :cond_7

    if-eq v3, v4, :cond_6

    const/4 v4, 0x4

    if-eq v3, v4, :cond_6

    const/4 v4, 0x5

    if-eq v3, v4, :cond_5

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown windowing mode for stack="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " windowingMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    iput v5, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    goto :goto_0

    :cond_6
    iput v6, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    goto :goto_0

    :cond_7
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    nop

    :goto_0
    return-void
.end method

.method notifyActivityLaunched(ILcom/android/server/wm/ActivityRecord;)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->findProcessForActivity(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowProcessController;->hasStartedActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_2

    :cond_2
    :goto_1
    nop

    :goto_2
    invoke-direct {p0, p1, p2, v3, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/wm/ActivityRecord;ZZ)V

    return-void
.end method

.method notifyActivityLaunching(Landroid/content/Intent;)V
    .locals 4

    iget-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    iget-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    iput-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastTransitionStartTime:J

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->launchObserverNotifyIntentStarted(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method notifyBindApplication(Landroid/content/pm/ApplicationInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    invoke-static {v1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-ne v2, p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLogger;->calculateCurrentDelay()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$402(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;I)I

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method notifyStartingWindowDrawn(IJ)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1300(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1302(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Z)Z

    invoke-direct {p0, p2, p3}, Lcom/android/server/wm/ActivityMetricsLogger;->calculateDelay(J)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$302(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;I)I

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method notifyTransitionStarting(Landroid/util/SparseIntArray;J)V
    .locals 6

    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLogger;->isAnyTransitionActive()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLoggedTransitionStarting:Z

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/wm/ActivityMetricsLogger;->calculateDelay(J)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionDelayMs:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLoggedTransitionStarting:Z

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    sub-int/2addr v2, v0

    :goto_0
    if-ltz v2, :cond_2

    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$202(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;I)I

    move-object v1, v4

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLogger;->allWindowsDrawn()Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    const-string v2, "notifyTransitionStarting - all windows drawn"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/ActivityMetricsLogger;->reset(ZLcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    :goto_3
    return-void
.end method

.method notifyVisibilityChanged(Lcom/android/server/wm/ActivityRecord;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eq v1, p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    iput-object v1, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p1, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mHandler:Lcom/android/server/wm/ActivityMetricsLogger$H;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/ActivityMetricsLogger$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method notifyWindowsDrawn(IJ)Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;
    .locals 4
    .param p1    # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/wm/ActivityMetricsLogger;->calculateDelay(J)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$502(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;I)I

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1102(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Z)Z

    new-instance v2, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/wm/ActivityMetricsLogger$1;)V

    move-object v1, v2

    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLogger;->allWindowsDrawn()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLoggedTransitionStarting:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    const-string v3, "notifyWindowsDrawn - all windows drawn"

    invoke-direct {p0, v2, v0, v3}, Lcom/android/server/wm/ActivityMetricsLogger;->reset(ZLcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Ljava/lang/String;)V

    :cond_1
    return-object v1

    :cond_2
    :goto_0
    return-object v1
.end method
