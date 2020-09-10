.class public Lcom/android/server/wm/ActivityStackSupervisor;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"

# interfaces
.implements Lcom/android/server/wm/RecentTasks$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityStackSupervisor$PreferredAppsTask;,
        Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;,
        Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;,
        Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;
    }
.end annotation


# static fields
.field private static final ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ACTIVITY_RESTRICTION_APPOP:I = 0x2

.field private static final ACTIVITY_RESTRICTION_NONE:I = 0x0

.field private static final ACTIVITY_RESTRICTION_PERMISSION:I = 0x1

.field static final DEFER_RESUME:Z = true

.field static final IDLE_NOW_MSG:I = 0xc9

.field static final IDLE_TIMEOUT:I = 0x2710

.field static final IDLE_TIMEOUT_MSG:I = 0xc8

.field static final LAUNCH_TASK_BEHIND_COMPLETE:I = 0xd4

.field static final LAUNCH_TIMEOUT:I = 0x2710

.field static final LAUNCH_TIMEOUT_MSG:I = 0xcc

.field private static final MAX_TASK_IDS_PER_USER:I = 0x186a0

.field static final ON_TOP:Z = true

.field static final PAUSE_IMMEDIATELY:Z = true

.field static final PRESERVE_WINDOWS:Z = true

.field static final REMOVE_FROM_RECENTS:Z = true

.field static final REPORT_HOME_CHANGED_MSG:I = 0xd8

.field static final REPORT_MULTI_WINDOW_MODE_CHANGED_MSG:I = 0xd6

.field static final REPORT_PIP_MODE_CHANGED_MSG:I = 0xd7

.field static final RESTART_ACTIVITY_PROCESS_TIMEOUT_MSG:I = 0xd5

.field static final RESUME_TOP_ACTIVITY_MSG:I = 0xca

.field static final SLEEP_TIMEOUT:I = 0x1388

.field static final SLEEP_TIMEOUT_MSG:I = 0xcb

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_IDLE:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_PAUSE:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_RECENTS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_STACK:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_SWITCH:Ljava/lang/String; = "ActivityTaskManager"

.field static final TAG_TASKS:Ljava/lang/String; = "ActivityTaskManager"

.field static final TOP_RESUMED_STATE_LOSS_TIMEOUT:I = 0x1f4

.field static final TOP_RESUMED_STATE_LOSS_TIMEOUT_MSG:I = 0xd9

.field static final VALIDATE_WAKE_LOCK_CALLER:Z = false

.field public static mIsPerfBoostAcquired:Z

.field public static mPerfHandle:I

.field public static mPerfSendTapHint:Z


# instance fields
.field private mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

.field private mAllowDockedStackResize:Z

.field mAppVisibilitiesChangedSinceLastPause:Z

.field private final mCurTaskIdForUser:Landroid/util/SparseIntArray;

.field private mDeferResumeCount:I

.field private mDockedStackResizing:Z

.field final mFinishingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mGoingToSleepActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

.field final mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

.field private mHasPendingDockedBounds:Z

.field private mInitialized:Z

.field private mKeyguardController:Lcom/android/server/wm/KeyguardController;

.field private mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

.field mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

.field mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

.field final mLooper:Landroid/os/Looper;

.field final mMultiWindowModeChangedActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mNoAnimActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingDockedBounds:Landroid/graphics/Rect;

.field private mPendingTempDockedTaskBounds:Landroid/graphics/Rect;

.field private mPendingTempDockedTaskInsetBounds:Landroid/graphics/Rect;

.field private mPendingTempOtherTaskBounds:Landroid/graphics/Rect;

.field private mPendingTempOtherTaskInsetBounds:Landroid/graphics/Rect;

.field public mPerfBoost:Landroid/util/BoostFramework;

.field mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

.field final mPipModeChangedActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mPipModeChangedTargetStackBounds:Landroid/graphics/Rect;

.field private mPowerManager:Landroid/os/PowerManager;

.field mRecentTasks:Lcom/android/server/wm/RecentTasks;

.field private final mResizingTasksDuringAnimation:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

.field mRunningTasks:Lcom/android/server/wm/RunningTasks;

.field final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field final mStartingUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/UserState;",
            ">;"
        }
    .end annotation
.end field

.field final mStoppingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpOptions:Landroid/app/ActivityOptions;

.field private mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field private mTopResumedActivityWaitingForPrev:Z

.field mUserLeaving:Z

.field public mUxPerf:Landroid/util/BoostFramework;

.field final mWaitingActivityLaunched:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/WaitResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mWaitingForActivityVisible:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;",
            ">;"
        }
    .end annotation
.end field

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;

.field private final tempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfSendTapHint:Z

    sput-boolean v0, Lcom/android/server/wm/ActivityStackSupervisor;->mIsPerfBoostAcquired:Z

    const/4 v0, -0x1

    sput v0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfHandle:I

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/wm/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    sget-object v0, Lcom/android/server/wm/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string v1, "android.permission.CAMERA"

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wm/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string v2, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wm/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string v1, "android.intent.action.CALL"

    const-string v2, "android.permission.CALL_PHONE"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mUxPerf:Landroid/util/BoostFramework;

    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPipModeChangedActivities:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mUserLeaving:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->tempRect:Landroid/graphics/Rect;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTmpOptions:Landroid/app/ActivityOptions;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    iput-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLooper:Landroid/os/Looper;

    new-instance v0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;-><init>(Lcom/android/server/wm/ActivityStackSupervisor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->handleLaunchTaskBehindCompleteLocked(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method private checkFinishBootingLocked()Z
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooting()Z

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->setBooting(Z)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooted()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->setBooted(Z)V

    const/4 v1, 0x1

    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->postFinishBooting(ZZ)V

    :cond_2
    return v0
.end method

.method private continueUpdateRecentsHomeStackBounds()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootActivityContainer;->continueUpdateBounds(I)V

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootActivityContainer;->continueUpdateBounds(I)V

    return-void
.end method

.method private deferUpdateRecentsHomeStackBounds()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootActivityContainer;->deferUpdateBounds(I)V

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootActivityContainer;->deferUpdateBounds(I)V

    return-void
.end method

.method static dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Lcom/android/server/wm/TaskRecord;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/TaskRecord;",
            ")Z"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p8

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    move/from16 v10, p9

    move-object v8, v0

    move-object v9, v4

    move-object/from16 v0, p10

    move-object/from16 v4, p11

    :goto_0
    if-ltz v6, :cond_d

    move-object/from16 v11, p2

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_0

    iget-object v13, v12, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    move-object/from16 v7, p0

    move-object/from16 v15, p4

    goto/16 :goto_b

    :cond_0
    const/4 v13, 0x0

    if-nez v8, :cond_1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "      "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v13, [Ljava/lang/String;

    :cond_1
    const/4 v5, 0x1

    if-nez p6, :cond_3

    if-nez p5, :cond_2

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->isInHistory()Z

    move-result v14

    if-nez v14, :cond_3

    :cond_2
    move v13, v7

    :cond_3
    if-eqz v10, :cond_4

    const-string v14, ""

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v10, 0x0

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move-object v14, v0

    goto :goto_1

    :cond_5
    move-object v14, v0

    :goto_1
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    if-eq v4, v0, :cond_8

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v4

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  "

    if-eqz v13, :cond_6

    const-string v15, "* "

    goto :goto_2

    :cond_6
    move-object v15, v0

    :goto_2
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz v13, :cond_7

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lcom/android/server/wm/TaskRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    if-eqz p5, :cond_8

    iget-object v15, v4, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v15, :cond_8

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v4, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->toInsecureStringWithClip()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_8
    :goto_3
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v13, :cond_9

    const-string v0, "  * "

    goto :goto_4

    :cond_9
    const-string v0, "    "

    :goto_4
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v15, p4

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " #"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz v13, :cond_a

    invoke-virtual {v12, v1, v8}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    if-eqz p5, :cond_b

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v12, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v12, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_b

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v12, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_b
    :goto_5
    if-eqz p7, :cond_c

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    :try_start_0
    new-instance v0, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v0}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 p9, v0

    :try_start_1
    iget-object v0, v12, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    invoke-virtual/range {p9 .. p9}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    iget-object v2, v12, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v0, v7, v2, v8, v9}, Landroid/app/IApplicationThread;->dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-wide/16 v2, 0x7d0

    move-object/from16 v7, p0

    move-object/from16 v16, v4

    move-object/from16 v4, p9

    move-object/from16 p9, v16

    :try_start_2
    invoke-virtual {v4, v7, v2, v3}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v4}, Lcom/android/internal/os/TransferPipe;->kill()V

    goto :goto_9

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v7, p0

    move-object/from16 v16, v4

    move-object/from16 v4, p9

    move-object/from16 p9, v16

    :goto_6
    invoke-virtual {v4}, Lcom/android/internal/os/TransferPipe;->kill()V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    move-object/from16 v7, p0

    move-object/from16 p9, v4

    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Got a RemoteException while dumping the activity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a

    :catch_3
    move-exception v0

    move-object/from16 v7, p0

    move-object/from16 p9, v4

    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Failure while dumping the activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_9
    nop

    :goto_a
    const/4 v0, 0x1

    move-object/from16 v4, p9

    move v10, v0

    move-object v0, v14

    goto :goto_b

    :cond_c
    move-object/from16 v7, p0

    move-object/from16 p9, v4

    move-object/from16 v4, p9

    move-object v0, v14

    :goto_b
    add-int/lit8 v6, v6, -0x1

    move-object/from16 v2, p3

    move-object/from16 v3, p8

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_d
    move-object/from16 v7, p0

    move-object/from16 v11, p2

    move-object/from16 v15, p4

    return v5
.end method

.method private getActionRestrictionForCallingPackage(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/android/server/wm/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    return v0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v0

    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v1, p3, p4}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_4

    return v0

    :cond_4
    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppOpsService()Lcom/android/server/appop/AppOpsService;

    move-result-object v4

    invoke-virtual {v4, v3, p4, p2}, Lcom/android/server/appop/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_5

    const/4 v0, 0x2

    return v0

    :cond_5
    return v0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find package info for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private getComponentRestrictionForCallingPackage(Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIZ)I
    .locals 4

    const/4 v0, -0x1

    if-nez p5, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v3, p1, Landroid/content/pm/ActivityInfo;->exported:Z

    invoke-static {v1, p3, p4, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppOpsService()Lcom/android/server/appop/AppOpsService;

    move-result-object v0

    invoke-virtual {v0, v1, p4, p2}, Lcom/android/server/appop/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    if-nez p5, :cond_3

    const/4 v0, 0x2

    return v0

    :cond_3
    return v2
.end method

.method private handleForcedResizableTaskIfNeeded(Lcom/android/server/wm/TaskRecord;I)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isNonResizableOrForcedResizable()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    iget v2, p1, Lcom/android/server/wm/TaskRecord;->taskId:I

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, p2, v3}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityForcedResizable(IILjava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private handleLaunchTaskBehindCompleteLocked(Lcom/android/server/wm/ActivityRecord;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/TaskRecord;)V

    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskRecord;->touchActiveTime()V

    :cond_0
    return-void
.end method

.method private logIfTransactionTooLarge(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/Bundle;->getSize()I

    move-result v0

    :cond_0
    if-nez p2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/os/Bundle;->getSize()I

    move-result v1

    :goto_0
    add-int v2, v0, v1

    const v3, 0x30d40

    if-le v2, v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transaction too large, intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", extras size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", icicle size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private moveHomeStackToFrontIfNeeded(ILcom/android/server/wm/ActivityDisplay;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityDisplay;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeRecents()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p2, p3}, Lcom/android/server/wm/ActivityDisplay;->moveHomeStackToFront(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private moveTasksToFullscreenStackInSurfaceTransaction(Lcom/android/server/wm/ActivityStack;IZ)V
    .locals 27

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v0, v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iget-object v5, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v13, p2

    :try_start_1
    invoke-virtual {v5, v13}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v5

    move-object v12, v5

    const/4 v5, 0x3

    if-ne v0, v5, :cond_4

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityDisplay;->onExitingSplitScreenMode()V

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_1
    if-ltz v5, :cond_3

    invoke-virtual {v12, v5}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_2

    :cond_1
    iget-object v7, v6, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v7}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "ActivityTaskManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resetAdjustedForIme for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v6, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v7, v2}, Lcom/android/server/wm/TaskStack;->resetAdjustedForIme(Z)V

    :cond_2
    invoke-virtual {v6, v4}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_3
    iput-boolean v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    :cond_4
    move v11, v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v5

    move-object v10, v5

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mTmpOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v5, v2}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v8, v5

    const/4 v5, 0x0

    move v7, v5

    :goto_3
    if-ge v7, v8, :cond_7

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/TaskRecord;

    const/4 v15, 0x0

    iget-object v6, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mTmpOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v5}, Lcom/android/server/wm/TaskRecord;->getActivityType()I

    move-result v18

    move-object v14, v12

    move-object/from16 v16, v6

    move-object/from16 v17, v5

    move/from16 v19, p3

    invoke-virtual/range {v14 .. v19}, Lcom/android/server/wm/ActivityDisplay;->getOrCreateStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;IZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    if-eqz p3, :cond_6

    add-int/lit8 v9, v8, -0x1

    if-ne v7, v9, :cond_5

    move v9, v2

    goto :goto_4

    :cond_5
    move v9, v4

    :goto_4
    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    const-string v17, "moveTasksToFullscreenStack - onTop"

    move-object/from16 v22, v5

    move/from16 v23, v7

    move v7, v14

    move/from16 v24, v8

    move v8, v15

    move-object/from16 v25, v10

    move/from16 v10, v16

    move-object/from16 v26, v12

    move-object/from16 v12, v17

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZZLjava/lang/String;)Z

    iget-object v5, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v7, v22

    iget v8, v7, Lcom/android/server/wm/TaskRecord;->effectiveUid:I

    iget-object v10, v7, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v8, v10}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logPictureInPictureFullScreen(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_5

    :cond_6
    move/from16 v23, v7

    move/from16 v24, v8

    move-object/from16 v25, v10

    move-object/from16 v26, v12

    move-object v7, v5

    const/16 v16, 0x1

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/16 v19, 0x1

    const-string v21, "moveTasksToFullscreenStack - NOT_onTop"

    move-object v14, v7

    move-object v15, v6

    move/from16 v20, v11

    invoke-virtual/range {v14 .. v21}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZZLjava/lang/String;)Z

    :goto_5
    add-int/lit8 v7, v23, 0x1

    move/from16 v8, v24

    move-object/from16 v10, v25

    move-object/from16 v12, v26

    goto :goto_3

    :cond_7
    move/from16 v23, v7

    move/from16 v24, v8

    move-object/from16 v25, v10

    move-object/from16 v26, v12

    goto :goto_6

    :cond_8
    move-object/from16 v25, v10

    move-object/from16 v26, v12

    :goto_6
    iget-object v5, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4, v2}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    iget-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    iput-boolean v2, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    nop

    return-void

    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move/from16 v13, p2

    :goto_7
    iput-boolean v2, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    iget-object v2, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method static nextTaskIdForUser(II)I
    .locals 3

    add-int/lit8 v0, p0, 0x1

    add-int/lit8 v1, p1, 0x1

    const v2, 0x186a0

    mul-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    sub-int/2addr v0, v2

    :cond_0
    return v0
.end method

.method static printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    :cond_1
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private removeStackInSurfaceTransaction(Lcom/android/server/wm/ActivityStack;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    iput-boolean v2, p1, Lcom/android/server/wm/ActivityStack;->mForceHidden:Z

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/wm/ActivityRecord;IZ)V

    iput-boolean v3, p1, Lcom/android/server/wm/ActivityStack;->mForceHidden:Z

    invoke-virtual {p0, v1, v3, v2, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->activityIdleInternalLocked(Landroid/os/IBinder;ZZLandroid/content/res/Configuration;)Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/wm/ActivityStack;Z)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskRecord;

    iget v3, v3, Lcom/android/server/wm/TaskRecord;->taskId:I

    const-string v4, "remove-stack"

    invoke-virtual {p0, v3, v2, v2, v4}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private scheduleTopResumedActivityStateIfNeeded()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivityWaitingForPrev:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->scheduleTopResumedActivityChanged(Z)Z

    :cond_0
    return-void
.end method

.method private scheduleTopResumedStateLossTimeout(Lcom/android/server/wm/ActivityRecord;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xd9

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/server/wm/ActivityRecord;->topResumedStateLossTime:J

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waiting for top state to be released by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method acquireAppLaunchPerfLock(Lcom/android/server/wm/ActivityRecord;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v0, :cond_3

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v2, 0x1

    const/16 v3, 0x1081

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    sput-boolean v2, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfSendTapHint:Z

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    const/16 v1, 0x1601

    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Landroid/util/BoostFramework;->perfGetFeedback(ILjava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v6, 0x4

    invoke-virtual {v1, v3, v5, v4, v6}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v1

    sput v1, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfHandle:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-virtual {v1, v3, v5, v4, v6}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v1

    sput v1, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfHandle:I

    :goto_0
    sget v1, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfHandle:I

    if-lez v1, :cond_2

    sput-boolean v2, Lcom/android/server/wm/ActivityStackSupervisor;->mIsPerfBoostAcquired:Z

    :cond_2
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/16 v7, 0x2f

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v2, v3}, Landroid/util/BoostFramework;->perfIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method acquireLaunchWakelock()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method final activityIdleInternalLocked(Landroid/os/IBinder;ZZLandroid/content/res/Configuration;)Lcom/android/server/wm/ActivityRecord;
    .locals 17
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v14

    const/4 v5, 0x1

    if-eqz v14, :cond_6

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IDLE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activityIdleInternalLocked: Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1, v14}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {v14}, Lcom/android/server/wm/ActivityRecord;->finishLaunchTickingLocked()V

    if-eqz p2, :cond_1

    const-wide/16 v3, -0x1

    const/16 v16, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object v2, v14

    move v15, v5

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStackSupervisor;->reportActivityLaunchedLocked(ZLcom/android/server/wm/ActivityRecord;JI)V

    goto :goto_0

    :cond_1
    move v15, v5

    :goto_0
    if-eqz v7, :cond_2

    invoke-virtual {v14, v7}, Lcom/android/server/wm/ActivityRecord;->setLastReportedGlobalConfiguration(Landroid/content/res/Configuration;)V

    :cond_2
    iput-boolean v15, v14, Lcom/android/server/wm/ActivityRecord;->idle:Z

    iget-object v0, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooting()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->allResumedActivitiesIdle()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    if-eqz p2, :cond_5

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStackSupervisor;->checkFinishBootingLocked()Z

    move-result v12

    :cond_5
    const/4 v0, 0x0

    iput v0, v14, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    goto :goto_1

    :cond_6
    move v15, v5

    :goto_1
    iget-object v0, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->allResumedActivitiesIdle()Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v14, :cond_7

    iget-object v0, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->scheduleAppGcsLocked()V

    :cond_7
    iget-object v0, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    iget-object v0, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_8
    iget-object v0, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    :cond_9
    move/from16 v0, p3

    invoke-virtual {v6, v14, v15, v0}, Lcom/android/server/wm/ActivityStackSupervisor;->processStoppingActivitiesLocked(Lcom/android/server/wm/ActivityRecord;ZZ)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_2

    :cond_a
    const/4 v2, 0x0

    :goto_2
    iget-object v3, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v3

    if-lez v3, :cond_b

    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v8, v3

    iget-object v3, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_b
    iget-object v3, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_c

    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v9, v3

    iget-object v3, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_c
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_f

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v14}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    if-eqz v5, :cond_e

    iget-boolean v10, v14, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v10, :cond_d

    const-string v10, "activityIdleInternalLocked"

    const/4 v11, 0x0

    invoke-virtual {v5, v14, v11, v11, v10}, Lcom/android/server/wm/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/wm/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    goto :goto_4

    :cond_d
    const/4 v11, 0x0

    invoke-virtual {v5, v14}, Lcom/android/server/wm/ActivityStack;->stopActivityLocked(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_4

    :cond_e
    const/4 v11, 0x0

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_f
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v4, :cond_11

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v14}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    if-eqz v5, :cond_10

    const-string v10, "finish-idle"

    invoke-virtual {v5, v14, v15, v10}, Lcom/android/server/wm/ActivityStack;->destroyActivityLocked(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)Z

    move-result v10

    or-int/2addr v10, v13

    move v13, v10

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_11
    if-nez v12, :cond_12

    if-eqz v9, :cond_12

    const/4 v3, 0x0

    :goto_6
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_12

    iget-object v5, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/app/ActivityManagerInternal;->finishUserSwitch(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_12
    iget-object v3, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v5, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$28Zuzbi6usdgbDcOi8hrJg6nZO0;

    invoke-direct {v5, v6}, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$28Zuzbi6usdgbDcOi8hrJg6nZO0;-><init>(Lcom/android/server/wm/ActivityStackSupervisor;)V

    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    if-eqz v13, :cond_13

    iget-object v3, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    :cond_13
    return-object v14
.end method

.method activityRelaunchedLocked(Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->notifyAppRelaunchingFinished(Landroid/os/IBinder;)V

    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/ActivityRecord;->setSleeping(ZZ)V

    :cond_0
    return-void
.end method

.method activityRelaunchingLocked(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->notifyAppRelaunching(Landroid/os/IBinder;)V

    return-void
.end method

.method activitySleptLocked(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->checkReadyForSleep()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->checkReadyForSleepLocked(Z)V

    :goto_0
    return-void
.end method

.method public attachAppLaunchLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;II)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne p3, v2, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/16 v7, 0x2f

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/android/server/am/SmartBoostInjector;->notifyIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->mayLockPidToCpu(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method beginDeferResume()V
    .locals 1

    iget v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mDeferResumeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mDeferResumeCount:I

    return-void
.end method

.method canPlaceEntityOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0, p2, p3, p1, p4}, Lcom/android/server/wm/ActivityStackSupervisor;->isCallerAllowedToLaunchOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v0
.end method

.method checkReadyForSleepLocked(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/RootActivityContainer;->putStacksToSleep(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->sendPowerHintForLaunchEndIfNeeded()V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->removeSleepTimeouts()V

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_3
    return-void
.end method

.method checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;ZZLcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStack;)Z
    .locals 23

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p10

    iget-object v0, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v0

    const/4 v12, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v12

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v13, v0

    iget-object v0, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string v0, "android.permission.START_ANY_ACTIVITY"

    invoke-static {v0, v8, v9}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v14

    if-eqz v14, :cond_9

    if-eqz v13, :cond_1

    if-eqz p9, :cond_1

    goto/16 :goto_3

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p7

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/ActivityStackSupervisor;->getComponentRestrictionForCallingPackage(Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIZ)I

    move-result v0

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1, v2, v8, v9}, Lcom/android/server/wm/ActivityStackSupervisor;->getActionRestrictionForCallingPackage(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    const-string v3, ") requires "

    const-string v4, "ActivityTaskManager"

    const-string v5, ", uid="

    const-string v15, " (pid="

    const-string v11, " from "

    if-eq v0, v12, :cond_5

    if-ne v1, v12, :cond_2

    goto/16 :goto_1

    :cond_2
    const-string v12, "Appop Denial: starting "

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/wm/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3

    :cond_3
    if-ne v0, v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") requires appop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {v3}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3

    :cond_4
    const/4 v2, 0x1

    return v2

    :cond_5
    :goto_1
    if-eqz p11, :cond_6

    const/16 v17, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, p12

    move-object/from16 v18, p11

    move-object/from16 v19, p3

    move/from16 v20, p4

    invoke-virtual/range {v16 .. v22}, Lcom/android/server/wm/ActivityStack;->sendActivityResultLocked(ILcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    :cond_6
    const-string v2, "Permission Denial: starting "

    const/4 v12, 0x1

    if-eq v1, v12, :cond_8

    iget-boolean v12, v7, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v12, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") not exported from uid "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") with revoked permission "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/wm/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_9
    :goto_3
    const/4 v0, 0x1

    return v0
.end method

.method cleanUpRemovedTaskLocked(Lcom/android/server/wm/TaskRecord;ZZ)V
    .locals 15

    move-object v1, p0

    move-object/from16 v2, p1

    if-eqz p3, :cond_0

    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/TaskRecord;)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    if-nez v3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No component for base intent of task: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-object v0, Lcom/android/server/wm/-$$Lambda$z5j5fiv3cZuY5AODkt3H3rhKimk;->INSTANCE:Lcom/android/server/wm/-$$Lambda$z5j5fiv3cZuY5AODkt3H3rhKimk;

    iget-object v5, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v6, v2, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-static {v0, v5, v6, v3, v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v0, v5}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    if-nez p2, :cond_2

    return-void

    :cond_2
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v8

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v9

    const/4 v10, 0x0

    if-ge v0, v9, :cond_a

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    const/4 v11, 0x0

    :goto_1
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-ge v11, v12, :cond_9

    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/WindowProcessController;

    iget v13, v12, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    iget v14, v2, Lcom/android/server/wm/TaskRecord;->userId:I

    if-eq v13, v14, :cond_3

    goto :goto_2

    :cond_3
    iget-object v13, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v13, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-ne v12, v13, :cond_4

    goto :goto_2

    :cond_4
    iget-object v13, v12, Lcom/android/server/wm/WindowProcessController;->mPkgList:Landroid/util/ArraySet;

    invoke-virtual {v13, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v12, v2}, Lcom/android/server/wm/WindowProcessController;->shouldKillProcessForRemovedTask(Lcom/android/server/wm/TaskRecord;)Z

    move-result v13

    if-nez v13, :cond_6

    return-void

    :cond_6
    invoke-virtual {v12}, Lcom/android/server/wm/WindowProcessController;->hasForegroundServices()Z

    move-result v13

    if-eqz v13, :cond_7

    return-void

    :cond_7
    iget-object v13, v12, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v14, v12, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-static {v13, v14, v10}, Lcom/android/server/am/OpAppBootManagerInjector;->canKillProcessService(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_a
    sget-object v0, Lcom/android/server/wm/-$$Lambda$j9nJq2XXOKyN4f0dfDaTjqmQRvg;->INSTANCE:Lcom/android/server/wm/-$$Lambda$j9nJq2XXOKyN4f0dfDaTjqmQRvg;

    iget-object v9, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {v0, v9, v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v0, v9}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    if-eqz p3, :cond_b

    :try_start_0
    new-instance v0, Lcom/android/server/wm/ActivityStackSupervisor$PreferredAppsTask;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ActivityStackSupervisor$PreferredAppsTask;-><init>(Lcom/android/server/wm/ActivityStackSupervisor;)V

    new-array v10, v10, [Ljava/lang/Void;

    invoke-virtual {v0, v10}, Lcom/android/server/wm/ActivityStackSupervisor$PreferredAppsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_3
    return-void
.end method

.method cleanupActivity(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->stopWaitingForActivityVisible(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method comeOutOfSleepIfNeededLocked()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->removeSleepTimeouts()V

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method createRunningTasks()Lcom/android/server/wm/RunningTasks;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/android/server/wm/RunningTasks;

    invoke-direct {v0}, Lcom/android/server/wm/RunningTasks;-><init>()V

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "ActivityStackSupervisor state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/RootActivityContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurTaskIdForUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mUserStackInFront="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootActivityContainer;->mUserStackInFront:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mWaitingForActivityVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "isHomeRecentsComponent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget v1, v1, Lcom/android/server/wm/RootActivityContainer;->mCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RecentTasks;->isRecentsComponentHomeActivity(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/KeyguardController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/LockTaskController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method endDeferResume()V
    .locals 1

    iget v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mDeferResumeCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mDeferResumeCount:I

    return-void
.end method

.method findTaskToMoveToFront(Lcom/android/server/wm/TaskRecord;ILandroid/app/ActivityOptions;Ljava/lang/String;Z)V
    .locals 28

    move-object/from16 v6, p0

    move-object/from16 v14, p1

    move/from16 v15, p2

    move-object/from16 v5, p3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iget-object v1, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v16

    const/4 v1, 0x0

    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    move-object v4, v2

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v2

    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v2, v3, :cond_1

    invoke-virtual {v6, v4}, Lcom/android/server/wm/ActivityStackSupervisor;->acquireAppLaunchPerfLock(Lcom/android/server/wm/ActivityRecord;)V

    :cond_1
    const-string v3, "ActivityTaskManager"

    if-nez v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findTaskToMoveToFront: can\'t move task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to front. Stack is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    and-int/lit8 v2, v15, 0x2

    const/4 v7, 0x1

    if-nez v2, :cond_3

    iput-boolean v7, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mUserLeaving:Z

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v8, p4

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " findTaskToMoveToFront"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v17, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskRecord;->isResizeable()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v6, v5}, Lcom/android/server/wm/ActivityStackSupervisor;->canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual/range {p3 .. p3}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v14, v13}, Lcom/android/server/wm/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    iget-object v8, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v8, v1, v5, v14, v7}, Lcom/android/server/wm/RootActivityContainer;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v12

    if-eq v12, v0, :cond_4

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v7

    invoke-direct {v6, v15, v7, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->moveHomeStackToFrontIfNeeded(ILcom/android/server/wm/ActivityDisplay;Ljava/lang/String;)V

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v18, 0x1

    move-object/from16 v7, p1

    move-object v8, v12

    move-object/from16 v26, v12

    move/from16 v12, v18

    move-object/from16 v27, v13

    move-object v13, v2

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z

    move-object/from16 v0, v26

    const/16 v17, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v26, v12

    move-object/from16 v27, v13

    :goto_1
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/ActivityStack;->resizeStackWithLaunchBounds()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v18, v7

    move-object/from16 v19, v26

    move-object/from16 v20, v27

    invoke-virtual/range {v18 .. v25}, Lcom/android/server/wm/RootActivityContainer;->resizeStack(Lcom/android/server/wm/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V

    goto :goto_2

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskRecord;->resizeWindowContainer()V

    :cond_6
    :goto_2
    move-object v7, v0

    if-nez v17, :cond_7

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    invoke-direct {v6, v15, v0, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->moveHomeStackToFrontIfNeeded(ILcom/android/server/wm/ActivityDisplay;Ljava/lang/String;)V

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    const/4 v9, 0x0

    if-nez v8, :cond_8

    move-object v10, v1

    goto :goto_3

    :cond_8
    iget-object v0, v8, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    move-object v10, v0

    :goto_3
    move-object v0, v7

    move-object/from16 v1, p1

    move-object v11, v2

    move v2, v9

    move-object v9, v3

    move-object/from16 v3, p3

    move-object v12, v4

    move-object v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/wm/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/oneplus/android/server/am/connor/ConnorInjector;->feed(Lcom/android/server/wm/ActivityRecord;)V

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findTaskToMoveToFront: moved to front of stack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v4, v7

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/TaskRecord;IILcom/android/server/wm/ActivityStack;Z)V

    return-void
.end method

.method public getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    return-object v0
.end method

.method public getKeyguardController()Lcom/android/server/wm/KeyguardController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    return-object v0
.end method

.method getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

    return-object v0
.end method

.method getNextTaskIdForUserLocked(I)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    const v1, 0x186a0

    mul-int/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->nextTaskIdForUser(II)I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/wm/RecentTasks;->containsTaskId(II)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    return v1

    :cond_1
    :goto_1
    invoke-static {v1, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->nextTaskIdForUser(II)I

    move-result v1

    if-eq v1, v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot get an available task id. Reached limit of 100000 running tasks per user."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method getReparentTargetStack(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;
    .locals 6

    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iget v1, p2, Lcom/android/server/wm/ActivityStack;->mStackId:I

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->inMultiWindowMode()Z

    move-result v2

    const-string v3, "ActivityTaskManager"

    if-eqz v0, :cond_0

    iget v4, v0, Lcom/android/server/wm/ActivityStack;->mStackId:I

    if-ne v4, v1, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not reparent to same stack, task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " already in stackId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device doesn\'t support multi-window, can not reparent task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    :goto_0
    iget v4, p2, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device doesn\'t support multi-display, can not reparent task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to stackId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    :goto_1
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device doesn\'t support freeform, can not reparent task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6
    :goto_2
    if-eqz v2, :cond_8

    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->isResizeable()Z

    move-result v4

    if-nez v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not move unresizeable task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to multi-window stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " Moving to a fullscreen stack instead."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v5

    invoke-virtual {v3, v4, v5, p3}, Lcom/android/server/wm/ActivityDisplay;->createStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object p2

    :cond_8
    return-object p2
.end method

.method getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method goingToSleepLocked()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleSleepTimeout()V

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootActivityContainer;->applySleepTokens(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStackSupervisor;->checkReadyForSleepLocked(Z)V

    return-void
.end method

.method handleNonResizableTaskIfNeeded(Lcom/android/server/wm/TaskRecord;IILcom/android/server/wm/ActivityStack;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/TaskRecord;IILcom/android/server/wm/ActivityStack;Z)V

    return-void
.end method

.method handleNonResizableTaskIfNeeded(Lcom/android/server/wm/TaskRecord;IILcom/android/server/wm/ActivityStack;Z)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    const/4 v2, -0x1

    if-eq p3, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->hasSplitScreenPrimaryStack()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    if-nez v3, :cond_2

    const/4 v4, 0x3

    if-eq p2, v4, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->isActivityTypeStandardOrUndefined()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    return-void

    :cond_4
    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    invoke-virtual {p1, v4}, Lcom/android/server/wm/TaskRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v5, p3}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityDisplay;->isSingleTaskInstance()Z

    move-result v6

    if-eqz v6, :cond_5

    move v0, v1

    goto :goto_2

    :cond_5
    nop

    :goto_2
    if-eq p3, v4, :cond_7

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    invoke-virtual {v1, v6, p3}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityLaunchOnSecondaryDisplayRerouted(Landroid/app/TaskInfo;I)V

    return-void

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to put "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " on display "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "ActivityTaskManager"

    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    invoke-virtual {v1, v6, p3}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityLaunchOnSecondaryDisplayFailed(Landroid/app/TaskInfo;I)V

    goto :goto_3

    :cond_7
    if-nez p5, :cond_8

    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->handleForcedResizableTaskIfNeeded(Lcom/android/server/wm/TaskRecord;I)V

    :cond_8
    :goto_3
    return-void

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Task resolved to incompatible display"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->supportsSplitScreenWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_c

    if-eqz p5, :cond_b

    goto :goto_4

    :cond_b
    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->handleForcedResizableTaskIfNeeded(Lcom/android/server/wm/TaskRecord;I)V

    return-void

    :cond_c
    :goto_4
    nop

    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    if-eqz v4, :cond_e

    iget-object v5, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityDismissingDockedStack()V

    if-ne p4, v4, :cond_d

    move v0, v1

    :cond_d
    invoke-virtual {p0, v4, v0}, Lcom/android/server/wm/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/wm/ActivityStack;Z)V

    :cond_e
    return-void
.end method

.method handleTopResumedStateReleased(Z)V
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Top resumed state released "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, " (due to timeout)"

    goto :goto_0

    :cond_0
    const-string v1, " (transition complete)"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xd9

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivityWaitingForPrev:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivityWaitingForPrev:Z

    invoke-direct {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleTopResumedActivityStateIfNeeded()V

    return-void
.end method

.method initPowerManagement()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "ActivityManager-Sleep"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "*launch*"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method

.method public initialize()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mInitialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mInitialized:Z

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->createRunningTasks()Lcom/android/server/wm/RunningTasks;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRunningTasks:Lcom/android/server/wm/RunningTasks;

    new-instance v0, Lcom/android/server/wm/ActivityMetricsLogger;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/wm/ActivityMetricsLogger;-><init>(Lcom/android/server/wm/ActivityStackSupervisor;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    new-instance v0, Lcom/android/server/wm/KeyguardController;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, v1, p0}, Lcom/android/server/wm/KeyguardController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    new-instance v0, Lcom/android/server/wm/PersisterQueue;

    invoke-direct {v0}, Lcom/android/server/wm/PersisterQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v0, Lcom/android/server/wm/LaunchParamsPersister;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    invoke-direct {v0, v1, p0}, Lcom/android/server/wm/LaunchParamsPersister;-><init>(Lcom/android/server/wm/PersisterQueue;Lcom/android/server/wm/ActivityStackSupervisor;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    new-instance v0, Lcom/android/server/wm/LaunchParamsController;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/LaunchParamsController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/LaunchParamsPersister;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/LaunchParamsController;->registerDefaultModifiers(Lcom/android/server/wm/ActivityStackSupervisor;)V

    return-void
.end method

.method isCallerAllowedToLaunchOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z
    .locals 10

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launch on display check: displayId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callingPid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callingUid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x1

    const/4 v2, 0x1

    if-ne p1, v0, :cond_2

    if-ne p2, v0, :cond_2

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_1

    const-string v0, "Launch on display check: no caller info, skip check"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2

    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3, p3}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplayOrCreate(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->isRemoved()Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string v5, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-static {v5, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v5

    if-nez v5, :cond_5

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_4

    const-string v0, "Launch on display check: allow launch any on display"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v2

    :cond_5
    invoke-virtual {v3, p2}, Lcom/android/server/wm/ActivityDisplay;->isUidPresent(I)Z

    move-result v6

    iget-object v7, v3, Lcom/android/server/wm/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getOwnerUid()I

    move-result v7

    iget-object v8, v3, Lcom/android/server/wm/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getType()I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_9

    const/16 v8, 0x3e8

    if-eq v7, v8, :cond_9

    iget-object v8, p4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v7, v8, :cond_9

    iget v8, p4, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v9, -0x80000000

    and-int/2addr v8, v9

    if-nez v8, :cond_7

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_6

    const-string v0, "Launch on display check: disallow launch on virtual display for not-embedded activity."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v4

    :cond_7
    iget-object v8, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string v8, "android.permission.ACTIVITY_EMBEDDING"

    invoke-static {v8, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v8

    if-ne v8, v0, :cond_9

    if-nez v6, :cond_9

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_8

    const-string v0, "Launch on display check: disallow activity embedding without permission."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return v4

    :cond_9
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_b

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_a

    const-string v0, "Launch on display check: allow launch on public display"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return v2

    :cond_b
    if-ne v7, p2, :cond_d

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_c

    const-string v0, "Launch on display check: allow launch for owner of the display"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return v2

    :cond_d
    if-eqz v6, :cond_f

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_e

    const-string v0, "Launch on display check: allow launch for caller present on the display"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return v2

    :cond_f
    const-string v0, "Launch on display check: denied"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_10
    :goto_0
    const-string v0, "Launch on display check: display not found"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method isCurrentProfileLocked(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget v0, v0, Lcom/android/server/wm/RootActivityContainer;->mCurrentUser:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->isCurrentProfile(I)Z

    move-result v0

    return v0
.end method

.method isStoppingNoHistoryActivity()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isNoHistory()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$activityIdleInternalLocked$0$ActivityStackSupervisor()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->trimApplications()V

    return-void
.end method

.method public synthetic lambda$moveTasksToFullscreenStackLocked$1$ActivityStackSupervisor(Lcom/android/server/wm/ActivityStack;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityStackSupervisor;->moveTasksToFullscreenStackInSurfaceTransaction(Lcom/android/server/wm/ActivityStack;IZ)V

    return-void
.end method

.method public synthetic lambda$removeStack$2$ActivityStackSupervisor(Lcom/android/server/wm/ActivityStack;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->removeStackInSurfaceTransaction(Lcom/android/server/wm/ActivityStack;)V

    return-void
.end method

.method logStackState()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityMetricsLogger;->logWindowState()V

    return-void
.end method

.method moveRecentsStackToFront(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityDisplay;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method moveTasksToFullscreenStackLocked(Lcom/android/server/wm/ActivityStack;IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$PHIj4FpzoLIwUTmMRMOYA9us0rc;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$PHIj4FpzoLIwUTmMRMOYA9us0rc;-><init>(Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityStack;IZ)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    return-void
.end method

.method moveTasksToFullscreenStackLocked(Lcom/android/server/wm/ActivityStack;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wm/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/wm/ActivityStack;IZ)V

    return-void
.end method

.method notifyAppTransitionDone()V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->continueUpdateRecentsHomeStackBounds()V

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskRecord;->setTaskDockedResizing(Z)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method public onRecentTaskAdded(Lcom/android/server/wm/TaskRecord;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->touchActiveTime()V

    return-void
.end method

.method public onRecentTaskRemoved(Lcom/android/server/wm/TaskRecord;ZZ)V
    .locals 6

    if-eqz p2, :cond_0

    iget v1, p1, Lcom/android/server/wm/TaskRecord;->taskId:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "recent-task-trimmed"

    move-object v0, p0

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTaskByIdLocked(IZZZLjava/lang/String;)Z

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->removedFromRecents()V

    return-void
.end method

.method onSystemReady()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-virtual {v0}, Lcom/android/server/wm/LaunchParamsPersister;->onSystemReady()V

    return-void
.end method

.method onUserUnlocked(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    invoke-virtual {v0}, Lcom/android/server/wm/PersisterQueue;->startPersisting()V

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/LaunchParamsPersister;->onUnlockUser(I)V

    return-void
.end method

.method final processStoppingActivitiesLocked(Lcom/android/server/wm/ActivityRecord;ZZ)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/ActivityRecord;",
            "ZZ)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootActivityContainer;->allResumedActivitiesVisible()Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_9

    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v4

    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    const-string v6, "ActivityTaskManager"

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Stopping "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": nowVisible="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " animating="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " finishing="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v1, :cond_2

    iget-boolean v5, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_2

    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Before stopping, can hide: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    :cond_2
    if-eqz p2, :cond_8

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v7

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result v7

    :goto_1
    nop

    if-eqz v4, :cond_4

    if-eqz v7, :cond_8

    :cond_4
    if-nez p3, :cond_5

    sget-object v8, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v3, v8}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTimeoutsForActivityLocked(Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_2

    :cond_5
    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v8, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ready to stop: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-nez v0, :cond_7

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v6

    :cond_7
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_8
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    :cond_9
    return-object v0
.end method

.method readyToResume()Z
    .locals 1

    iget v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mDeferResumeCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method realStartActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;ZZ)Z
    .locals 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->allPausedActivitiesComplete()Z

    move-result v0

    const-string v4, "ActivityTaskManager"

    const/4 v5, 0x0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "realStartActivityLocked: Skipping start of r="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " some activities pausing..."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v5

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStackSupervisor;->beginDeferResume()V

    :try_start_0
    invoke-virtual {v2, v3, v5}, Lcom/android/server/wm/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/wm/WindowProcessController;I)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->startLaunchTickingLocked()V

    invoke-virtual/range {p1 .. p2}, Lcom/android/server/wm/ActivityRecord;->setProcess(Lcom/android/server/wm/WindowProcessController;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    if-eqz p3, :cond_3

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->canResumeByCompat()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    move v14, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move/from16 v14, p3

    move-object/from16 v34, v6

    move-object v4, v13

    goto/16 :goto_c

    :cond_3
    move/from16 v14, p3

    :goto_0
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    if-eqz v0, :cond_4

    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->notifyUnknownVisibilityLaunched()V

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v34, v6

    move-object v4, v13

    goto/16 :goto_c

    :cond_4
    :goto_1
    const/4 v7, 0x1

    if-eqz p4, :cond_5

    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v8

    invoke-virtual {v0, v2, v8, v5, v7}, Lcom/android/server/wm/RootActivityContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_5
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0, v2, v7, v7}, Lcom/android/server/wm/ActivityStack;->checkKeyguardVisibility(Lcom/android/server/wm/ActivityRecord;ZZ)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    if-eqz v0, :cond_6

    :try_start_5
    invoke-virtual {v2, v7}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_6
    :try_start_6
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    if-eqz v0, :cond_7

    :try_start_7
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :cond_7
    const/4 v0, -0x1

    :goto_2
    move v15, v0

    :try_start_8
    iget v0, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget v8, v3, Lcom/android/server/wm/WindowProcessController;->mUserId:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    if-ne v0, v8, :cond_8

    :try_start_9
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eq v0, v15, :cond_9

    :cond_8
    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "User ID for activity changing for "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " appInfo.uid="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " info.ai.uid="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " old="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " new="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget v0, v2, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    add-int/2addr v0, v7

    iput v0, v2, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/server/wm/ActivityRecord;->lastLaunchTime:J

    invoke-static {}, Lcom/oneplus/android/server/am/SmartBoostInjector;->isIopPreloadEnabled()Z

    move-result v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    if-eqz v0, :cond_a

    :try_start_b
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_a

    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v8, v2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    invoke-virtual {v0, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v8

    iget-object v9, v2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, v9, v0}, Lcom/oneplus/android/server/am/SmartBoostInjector;->notifyIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_a
    :try_start_c
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowProcessController;->addActivityIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    move-object v12, v0

    iget v0, v6, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    const/4 v8, 0x3

    const/4 v9, 0x4

    const/4 v10, 0x2

    if-eq v0, v10, :cond_b

    :try_start_d
    iget v0, v6, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    if-eq v0, v9, :cond_b

    iget v0, v6, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    if-ne v0, v8, :cond_c

    invoke-virtual {v12}, Lcom/android/server/wm/LockTaskController;->getLockTaskModeState()I

    move-result v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-ne v0, v7, :cond_c

    :cond_b
    :try_start_e
    invoke-virtual {v12, v6, v5, v5}, Lcom/android/server/wm/LockTaskController;->startLockTaskMode(Lcom/android/server/wm/TaskRecord;ZI)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :cond_c
    :try_start_f
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_b
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    const/4 v11, 0x0

    if-eqz v14, :cond_d

    :try_start_10
    iget-object v8, v2, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    move-object v0, v8

    iget-object v8, v2, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    move-object v11, v8

    move-object v8, v0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object/from16 v34, v6

    move-object/from16 v32, v12

    move/from16 v33, v15

    move-object v6, v4

    move-object v4, v13

    goto/16 :goto_b

    :cond_d
    move-object v8, v0

    :goto_3
    :try_start_11
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_b
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    if-eqz v0, :cond_e

    :try_start_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Launching: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " icicle="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Lcom/android/server/wm/ActivityRecord;->icicle:Landroid/os/Bundle;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " with results="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " newIntents="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " andResume="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    :cond_e
    :try_start_13
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    iget-object v7, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/16 v5, 0x400

    iget v9, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-interface {v10, v7, v5, v9}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    iput-object v5, v0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto :goto_4

    :catch_1
    move-exception v0

    :try_start_14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error to change launcher resourceDirs:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    const/16 v0, 0x7536

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget v7, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v5, v9

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v5, v9

    iget v7, v6, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x2

    aput-object v7, v5, v9

    iget-object v7, v2, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const/4 v9, 0x3

    aput-object v7, v5, v9

    invoke-static {v0, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_b
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    if-eqz v0, :cond_f

    :try_start_15
    iget-object v0, v6, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityStackSupervisor;->updateHomeProcess(Lcom/android/server/wm/WindowProcessController;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    :cond_f
    :try_start_16
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7}, Landroid/content/pm/PackageManagerInternal;->notifyPackageUse(Ljava/lang/String;I)V

    iput-boolean v7, v2, Lcom/android/server/wm/ActivityRecord;->sleeping:Z

    iput-boolean v7, v2, Lcom/android/server/wm/ActivityRecord;->forceNewConfig:Z

    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppWarningsLocked()Lcom/android/server/wm/AppWarnings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/AppWarnings;->onStartActivity(Lcom/android/server/wm/ActivityRecord;)V

    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    iput-object v0, v2, Lcom/android/server/wm/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    new-instance v0, Landroid/util/MergedConfiguration;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-direct {v0, v5, v7}, Landroid/util/MergedConfiguration;-><init>(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    invoke-virtual {v2, v0}, Lcom/android/server/wm/ActivityRecord;->setLastReportedConfiguration(Landroid/util/MergedConfiguration;)V

    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v7, v2, Lcom/android/server/wm/ActivityRecord;->icicle:Landroid/os/Bundle;

    invoke-direct {v1, v5, v7}, Lcom/android/server/wm/ActivityStackSupervisor;->logIfTransactionTooLarge(Landroid/content/Intent;Landroid/os/Bundle;)V

    nop

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v5

    iget-object v7, v2, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-static {v5, v7}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v9, Landroid/content/Intent;

    iget-object v10, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v17

    iget-object v10, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    invoke-virtual {v0}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v20

    move-object/from16 p3, v0

    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_b
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    move-object/from16 v32, v12

    :try_start_17
    iget-object v12, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_9
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    move/from16 v33, v15

    :try_start_18
    iget-object v15, v6, Lcom/android/server/wm/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->getReportedProcState()I

    move-result v24
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_8
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    move-object/from16 v34, v6

    :try_start_19
    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->icicle:Landroid/os/Bundle;
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_7
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    move-object/from16 v35, v13

    :try_start_1a
    iget-object v13, v2, Lcom/android/server/wm/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->isNextTransitionForward()Z

    move-result v29

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->createProfilerInfoIfNeeded()Landroid/app/ProfilerInfo;

    move-result-object v30
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_6
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    move-object/from16 v36, v4

    :try_start_1b
    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->assistToken:Landroid/os/Binder;

    move-object/from16 v16, v9

    move-object/from16 v18, v10

    move-object/from16 v21, v0

    move-object/from16 v22, v12

    move-object/from16 v23, v15

    move-object/from16 v25, v6

    move-object/from16 v26, v13

    move-object/from16 v27, v8

    move-object/from16 v28, v11

    move-object/from16 v31, v4

    invoke-static/range {v16 .. v31}, Landroid/app/servertransaction/LaunchActivityItem;->obtain(Landroid/content/Intent;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZLandroid/app/ProfilerInfo;Landroid/os/IBinder;)Landroid/app/servertransaction/LaunchActivityItem;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_5
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    if-eqz v14, :cond_10

    :try_start_1c
    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->isNextTransitionForward()Z

    move-result v0

    invoke-static {v0}, Landroid/app/servertransaction/ResumeActivityItem;->obtain(Z)Landroid/app/servertransaction/ResumeActivityItem;

    move-result-object v0
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_2
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object/from16 v4, v35

    goto/16 :goto_c

    :catch_2
    move-exception v0

    move-object/from16 v4, v35

    move-object/from16 v6, v36

    goto/16 :goto_b

    :cond_10
    :try_start_1d
    invoke-static {}, Landroid/app/servertransaction/PauseActivityItem;->obtain()Landroid/app/servertransaction/PauseActivityItem;

    move-result-object v0

    :goto_5
    invoke-virtual {v5, v0}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    iget-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    iget-object v4, v3, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_5
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    const/4 v6, 0x2

    and-int/2addr v4, v6

    if-eqz v4, :cond_13

    :try_start_1e
    iget-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mHasHeavyWeightFeature:Z

    if-eqz v4, :cond_13

    iget-object v4, v3, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v4, :cond_11

    iget-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    if-eq v4, v3, :cond_11

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting new heavy weight process "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " when already running "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_4
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    move-object/from16 v6, v36

    :try_start_1f
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_11
    move-object/from16 v6, v36

    :goto_6
    iget-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->setHeavyWeightProcess(Lcom/android/server/wm/ActivityRecord;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_3
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_7

    :cond_12
    move-object/from16 v6, v36

    goto :goto_8

    :catch_4
    move-exception v0

    move-object/from16 v6, v36

    :goto_7
    move-object/from16 v4, v35

    goto/16 :goto_b

    :cond_13
    move-object/from16 v6, v36

    :goto_8
    nop

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStackSupervisor;->endDeferResume()V

    nop

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/wm/ActivityRecord;->launchFailed:Z

    move-object/from16 v4, v35

    invoke-virtual {v4, v2}, Lcom/android/server/wm/ActivityStack;->updateLRUListLocked(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " being launched, but already in LRU list"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    if-eqz v14, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStackSupervisor;->readyToResume()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {v4, v2}, Lcom/android/server/wm/ActivityStack;->minimalResumeActivityLocked(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_9

    :cond_15
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Moving to PAUSED: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " (starting in paused state)"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v5, "realStartActivityLocked"

    invoke-virtual {v2, v0, v5}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    :goto_9
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v0, v5}, Lcom/android/server/wm/WindowProcessController;->onStartActivity(ILandroid/content/pm/ActivityInfo;)V

    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/RootActivityContainer;->isTopDisplayFocusedStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStartController;->startSetupActivity()V

    :cond_17
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_18

    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->updateServiceConnectionActivities()V

    :cond_18
    const/4 v5, 0x1

    return v5

    :catch_5
    move-exception v0

    move-object/from16 v4, v35

    move-object/from16 v6, v36

    goto :goto_a

    :catchall_3
    move-exception v0

    move-object/from16 v4, v35

    goto/16 :goto_c

    :catch_6
    move-exception v0

    move-object v6, v4

    move-object/from16 v4, v35

    :goto_a
    goto :goto_b

    :catchall_4
    move-exception v0

    move-object v4, v13

    goto/16 :goto_c

    :catch_7
    move-exception v0

    move-object v6, v4

    move-object v4, v13

    goto :goto_b

    :catch_8
    move-exception v0

    move-object/from16 v34, v6

    move-object v6, v4

    move-object v4, v13

    goto :goto_b

    :catch_9
    move-exception v0

    move-object/from16 v34, v6

    move/from16 v33, v15

    move-object v6, v4

    move-object v4, v13

    goto :goto_b

    :cond_19
    move-object/from16 v34, v6

    move-object/from16 v32, v12

    move/from16 v33, v15

    move-object v6, v4

    move-object v4, v13

    :try_start_20
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_20} :catch_a
    .catchall {:try_start_20 .. :try_end_20} :catchall_5

    :catch_a
    move-exception v0

    goto :goto_b

    :catch_b
    move-exception v0

    move-object/from16 v34, v6

    move-object/from16 v32, v12

    move/from16 v33, v15

    move-object v6, v4

    move-object v4, v13

    :goto_b
    :try_start_21
    iget-boolean v5, v2, Lcom/android/server/wm/ActivityRecord;->launchFailed:Z

    if-eqz v5, :cond_1a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Second failure launching "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", giving up"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->appDied()V

    iget-object v8, v2, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "2nd-crash"

    const/4 v12, 0x0

    move-object v7, v4

    move-object/from16 v5, v32

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/wm/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_5

    nop

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStackSupervisor;->endDeferResume()V

    const/4 v6, 0x0

    return v6

    :cond_1a
    move-object/from16 v5, v32

    const/4 v6, 0x1

    :try_start_22
    iput-boolean v6, v2, Lcom/android/server/wm/ActivityRecord;->launchFailed:Z

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowProcessController;->removeActivity(Lcom/android/server/wm/ActivityRecord;)V

    nop

    throw v0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_5

    :catchall_5
    move-exception v0

    goto :goto_c

    :catchall_6
    move-exception v0

    move-object/from16 v34, v6

    move-object v4, v13

    goto :goto_c

    :catchall_7
    move-exception v0

    move-object/from16 v34, v6

    move-object v4, v13

    move/from16 v14, p3

    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStackSupervisor;->endDeferResume()V

    throw v0
.end method

.method removeRestartTimeouts(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xd5

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method removeSleepTimeouts()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    return-void
.end method

.method removeStack(Lcom/android/server/wm/ActivityStack;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$0u1RcpeZ6m0BHDGGv8EXroS3KyE;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$0u1RcpeZ6m0BHDGGv8EXroS3KyE;-><init>(Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityStack;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    return-void
.end method

.method removeTaskByIdLocked(IZZLjava/lang/String;)Z
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTaskByIdLocked(IZZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method removeTaskByIdLocked(IZZZLjava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p4, p5}, Lcom/android/server/wm/TaskRecord;->removeTaskActivitiesLocked(ZLjava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/wm/ActivityStackSupervisor;->cleanUpRemovedTaskLocked(Lcom/android/server/wm/TaskRecord;ZZ)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/TaskRecord;)V

    iget-boolean v2, v0, Lcom/android/server/wm/TaskRecord;->isPersistable:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/TaskRecord;Z)V

    :cond_0
    return v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request to remove task ignored for non-existent task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method removeTimeoutsForActivityLocked(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IDLE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeTimeoutsForActivity: Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method reportActivityLaunchedLocked(ZLcom/android/server/wm/ActivityRecord;JI)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/WaitResult;

    iget-object v3, v2, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-nez v3, :cond_1

    const/4 v0, 0x1

    iput-boolean p1, v2, Landroid/app/WaitResult;->timeout:Z

    if-eqz p2, :cond_0

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v2, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    :cond_0
    iput-wide p3, v2, Landroid/app/WaitResult;->totalTime:J

    iput p5, v2, Landroid/app/WaitResult;->launchState:I

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :cond_3
    return-void
.end method

.method reportResumedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->allResumedActivitiesComplete()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v2}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootActivityContainer;->executeAppTransitionForAllDisplay()V

    const/4 v1, 0x1

    return v1

    :cond_0
    return v2
.end method

.method reportWaitingActivityLaunchedIfNeeded(Lcom/android/server/wm/ActivityRecord;I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/WaitResult;

    iget-object v4, v3, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-nez v4, :cond_2

    const/4 v1, 0x1

    iput p2, v3, Landroid/app/WaitResult;->result:I

    if-ne p2, v0, :cond_2

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iput-object v4, v3, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_4
    return-void
.end method

.method resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    return-void
.end method

.method resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-boolean v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v0, "ActivityTaskManager"

    const-string v4, "resizeDockedStackLocked: docked stack not found"

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-boolean v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mDockedStackResizing:Z

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    iput-boolean v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mHasPendingDockedBounds:Z

    invoke-static/range {p1 .. p1}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingDockedBounds:Landroid/graphics/Rect;

    invoke-static/range {p2 .. p2}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingTempDockedTaskBounds:Landroid/graphics/Rect;

    invoke-static/range {p3 .. p3}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingTempDockedTaskInsetBounds:Landroid/graphics/Rect;

    invoke-static/range {p4 .. p4}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingTempOtherTaskBounds:Landroid/graphics/Rect;

    invoke-static/range {p5 .. p5}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingTempOtherTaskInsetBounds:Landroid/graphics/Rect;

    :cond_2
    const-wide/16 v5, 0x40

    const-string v0, "am.resizeDockedStack"

    invoke-static {v5, v6, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    :try_start_1
    invoke-virtual {v3, v2, v7, v8}, Lcom/android/server/wm/ActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v9

    if-eq v9, v4, :cond_9

    if-nez v2, :cond_3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result v9

    if-nez v9, :cond_3

    goto/16 :goto_4

    :cond_3
    iget-object v9, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v9}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v9

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v11

    sub-int/2addr v11, v4

    :goto_0
    if-ltz v11, :cond_a

    invoke-virtual {v9, v11}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v13

    if-nez v13, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityStack;->affectedBySplitScreenResize()Z

    move-result v13

    if-nez v13, :cond_5

    goto :goto_3

    :cond_5
    iget-boolean v13, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mDockedStackResizing:Z

    if-eqz v13, :cond_6

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityStack;->isTopActivityVisible()Z

    move-result v13

    if-nez v13, :cond_6

    goto :goto_3

    :cond_6
    iget-object v13, v1, Lcom/android/server/wm/ActivityStackSupervisor;->tempRect:Landroid/graphics/Rect;

    move-object/from16 v15, p4

    invoke-virtual {v12, v2, v15, v13, v10}, Lcom/android/server/wm/ActivityStack;->getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v13, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v14, v1, Lcom/android/server/wm/ActivityStackSupervisor;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_7

    iget-object v14, v1, Lcom/android/server/wm/ActivityStackSupervisor;->tempRect:Landroid/graphics/Rect;

    goto :goto_1

    :cond_7
    const/4 v14, 0x0

    :goto_1
    move-object/from16 v16, v14

    invoke-virtual {v10}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_8

    move-object/from16 v17, v10

    goto :goto_2

    :cond_8
    move-object/from16 v17, v15

    :goto_2
    const/16 v19, 0x1

    move-object v14, v12

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, p5

    move/from16 v18, p6

    move/from16 v20, p7

    invoke-virtual/range {v13 .. v20}, Lcom/android/server/wm/RootActivityContainer;->resizeStack(Lcom/android/server/wm/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V

    :goto_3
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    :cond_9
    :goto_4
    invoke-virtual {v1, v3, v4}, Lcom/android/server/wm/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/wm/ActivityStack;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x0

    :cond_a
    if-nez p7, :cond_b

    move/from16 v9, p6

    :try_start_2
    invoke-virtual {v3, v0, v9}, Lcom/android/server/wm/ActivityStack;->ensureVisibleActivitiesConfigurationLocked(Lcom/android/server/wm/ActivityRecord;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_7

    :cond_b
    move/from16 v9, p6

    :goto_5
    iput-boolean v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    :goto_6
    move/from16 v9, p6

    :goto_7
    iput-boolean v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    iget-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method resizePinnedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getPinnedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "ActivityTaskManager"

    const-string v2, "resizePinnedStackLocked: pinned stack not found"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->pinnedStackResizeDisallowed()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    const-wide/16 v2, 0x40

    const-string v4, "am.resizePinnedStack"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isAnimatingBoundsToFullscreen()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/server/wm/ActivityStackSupervisor;->tempRect:Landroid/graphics/Rect;

    move-object v5, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    iput v6, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    iput v7, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    iput v7, v5, Landroid/graphics/Rect;->bottom:I

    :cond_2
    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->onPipAnimationEndResize()V

    :cond_3
    invoke-virtual {v0, p1, p2, v5}, Lcom/android/server/wm/ActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v4, v6}, Lcom/android/server/wm/ActivityStack;->ensureVisibleActivitiesConfigurationLocked(Lcom/android/server/wm/ActivityRecord;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v4
.end method

.method resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;
    .locals 8

    if-eqz p2, :cond_0

    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string v2, "system"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    and-int/lit8 v1, p3, 0xe

    if-nez v1, :cond_1

    if-eqz p4, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v7

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    sget-object v1, Lcom/android/server/wm/-$$Lambda$8ew6SY_v_7ex9pwFGDswbkGWuXc;->INSTANCE:Lcom/android/server/wm/-$$Lambda$8ew6SY_v_7ex9pwFGDswbkGWuXc;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    move-object v3, v0

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_2

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :cond_2
    :goto_2
    invoke-virtual {p1}, Landroid/content/Intent;->getLaunchToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    :cond_3
    return-object v0
.end method

.method public resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;II)Landroid/content/pm/ActivityInfo;
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    return-object v1
.end method

.method resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;
    .locals 14

    const-wide/16 v1, 0x40

    :try_start_0
    const-string v0, "resolveIntent"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/high16 v0, 0x10000

    or-int v0, p4, v0

    or-int/lit16 v0, v0, 0x400

    invoke-virtual {p1}, Landroid/content/Intent;->isWebIntent()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v10, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 v3, 0x800000

    or-int/2addr v0, v3

    move v10, v0

    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-wide v11, v3

    move-object v13, p0

    :try_start_1
    iget-object v0, v13, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v3

    const/4 v8, 0x1

    move-object v4, p1

    move-object/from16 v5, p2

    move v6, v10

    move/from16 v7, p3

    move/from16 v9, p5

    invoke-virtual/range {v3 .. v9}, Landroid/content/pm/PackageManagerInternal;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIZI)Landroid/content/pm/ResolveInfo;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v13, p0

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method restoreRecentTaskLocked(Lcom/android/server/wm/TaskRecord;Landroid/app/ActivityOptions;Z)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, p1, p3}, Lcom/android/server/wm/RootActivityContainer;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    return v2

    :cond_0
    const-string v3, "restoreRecentTaskLocked"

    invoke-virtual {v1, p1, v3, v2}, Lcom/android/server/wm/ActivityStack;->removeTask(Lcom/android/server/wm/TaskRecord;Ljava/lang/String;I)V

    :cond_1
    const-string v3, "restoreRecentTask"

    invoke-virtual {v0, p1, p3, v3}, Lcom/android/server/wm/ActivityStack;->addTask(Lcom/android/server/wm/TaskRecord;ZLjava/lang/String;)V

    invoke-virtual {p1, p3, v2}, Lcom/android/server/wm/TaskRecord;->createTask(ZZ)V

    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Added restored task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_0
    if-ltz v4, :cond_3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->createAppWindowToken()V

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method final scheduleIdleLocked()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method scheduleIdleTimeoutLocked(Lcom/android/server/wm/ActivityRecord;)V
    .locals 4

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IDLE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scheduleIdleTimeoutLocked: Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method scheduleLaunchTaskBehindComplete(Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xd4

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method final scheduleRestartTimeout(Lcom/android/server/wm/ActivityRecord;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->removeRestartTimeouts(Lcom/android/server/wm/ActivityRecord;)V

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xd5

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method final scheduleResumeTopActivities()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method final scheduleSleepTimeout()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->removeSleepTimeouts()V

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xcb

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method scheduleUpdateMultiWindowMode(Lcom/android/server/wm/TaskRecord;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->deferScheduleMultiWindowModeChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xd6

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    :cond_3
    return-void
.end method

.method scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/TaskRecord;Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPipModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPipModeChangedTargetStackBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xd7

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method

.method scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityStack;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz p2, :cond_1

    if-eq p2, v0, :cond_1

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/TaskRecord;Landroid/graphics/Rect;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method setLaunchSource(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    return-void
.end method

.method setNextTaskIdForUserLocked(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-le p1, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    return-void
.end method

.method setRecentTasks(Lcom/android/server/wm/RecentTasks;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/RecentTasks;->registerCallback(Lcom/android/server/wm/RecentTasks$Callbacks;)V

    return-void
.end method

.method setResizingDuringAnimation(Lcom/android/server/wm/TaskRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    iget v1, p1, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskRecord;->setTaskDockedResizing(Z)V

    return-void
.end method

.method setSplitScreenResizing(Z)V
    .locals 8

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mDockedStackResizing:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mDockedStackResizing:Z

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->setDockedStackResizing(Z)V

    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHasPendingDockedBounds:Z

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingDockedBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingTempDockedTaskBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingTempDockedTaskInsetBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingTempOtherTaskBounds:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingTempOtherTaskInsetBounds:Landroid/graphics/Rect;

    const/4 v7, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHasPendingDockedBounds:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingDockedBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingTempDockedTaskBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingTempDockedTaskInsetBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingTempOtherTaskBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingTempOtherTaskInsetBounds:Landroid/graphics/Rect;

    :cond_1
    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/KeyguardController;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    return-void
.end method

.method shutdownLocked(I)Z
    .locals 7

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->goingToSleepLocked()V

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    int-to-long v3, p1

    add-long/2addr v1, v3

    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v4}, Lcom/android/server/wm/RootActivityContainer;->putStacksToSleep(ZZ)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v1, v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v5, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    :goto_1
    nop

    goto :goto_0

    :cond_0
    const-string v5, "ActivityTaskManager"

    const-string v6, "Activity manager shutdown timed out"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->checkReadyForSleepLocked(Z)V

    return v0
.end method

.method startActivityFromRecents(IIILcom/android/server/wm/SafeActivityOptions;)I
    .locals 33

    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object/from16 v14, p4

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v14, :cond_0

    invoke-virtual {v14, v1}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Lcom/android/server/wm/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v5

    :goto_0
    move-object v13, v6

    if-eqz v13, :cond_3

    invoke-virtual {v13}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result v0

    invoke-virtual {v13}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v4

    invoke-virtual {v13}, Landroid/app/ActivityOptions;->freezeRecentTasksReordering()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    move/from16 v12, p2

    invoke-virtual {v6, v12}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v6}, Lcom/android/server/wm/RecentTasks;->setFreezeTaskListReordering()V

    goto :goto_1

    :cond_1
    move/from16 v12, p2

    :cond_2
    :goto_1
    move v11, v0

    move v10, v4

    goto :goto_2

    :cond_3
    move/from16 v12, p2

    move v11, v0

    move v10, v4

    :goto_2
    const-string v0, "startActivityFromRecents: Task "

    const/4 v15, 0x2

    if-eq v11, v15, :cond_10

    const/4 v9, 0x3

    if-eq v11, v9, :cond_10

    iget-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    if-nez v4, :cond_4

    new-instance v4, Landroid/util/BoostFramework;

    invoke-direct {v4}, Landroid/util/BoostFramework;-><init>()V

    iput-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    :cond_4
    iget-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    const/4 v6, 0x1

    if-eqz v4, :cond_5

    const/16 v7, 0x1081

    const/16 v8, 0x3e8

    const-string v15, ""

    invoke-virtual {v4, v7, v15, v8, v6}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    :cond_5
    iget-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    const-string v15, "startActivityFromRecents: homeVisibleInSplitScreen"

    const-string v8, "splitFromRecents"

    const/4 v4, 0x0

    if-ne v10, v9, :cond_6

    :try_start_0
    iget-object v7, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v13}, Landroid/app/ActivityOptions;->getSplitScreenCreateMode()I

    move-result v9

    invoke-virtual {v7, v9, v5}, Lcom/android/server/wm/WindowManagerService;->setDockedStackCreateState(ILandroid/graphics/Rect;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStackSupervisor;->deferUpdateRecentsHomeStackBounds()V

    iget-object v5, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v7, 0x13

    invoke-virtual {v5, v7, v4}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v6, v3

    move/from16 v23, v11

    move-object/from16 v21, v13

    move-object v9, v15

    const/4 v5, 0x3

    move v11, v4

    move v4, v10

    move-object v10, v8

    const/4 v8, 0x4

    goto/16 :goto_b

    :catchall_1
    move-exception v0

    move-object v6, v3

    move v5, v9

    move/from16 v23, v11

    move-object/from16 v21, v13

    move-object v9, v15

    move v11, v4

    move v4, v10

    move-object v10, v8

    const/4 v8, 0x4

    goto/16 :goto_b

    :cond_6
    :goto_3
    :try_start_2
    iget-object v5, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v7, 0x2

    invoke-virtual {v5, v2, v7, v13, v6}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/TaskRecord;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_e

    move-object v9, v5

    if-eqz v9, :cond_e

    const/4 v7, 0x3

    if-eq v10, v7, :cond_7

    :try_start_3
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    const-string v3, "startActivityFromRecents"

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityDisplay;->moveHomeStackToFront(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    move v5, v7

    move-object v6, v9

    move/from16 v23, v11

    move-object/from16 v21, v13

    move-object v9, v15

    move v11, v4

    move v4, v10

    move-object v10, v8

    const/4 v8, 0x4

    goto/16 :goto_b

    :cond_7
    :goto_4
    :try_start_4
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v3, v9, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-virtual {v0, v3}, Landroid/app/ActivityManagerInternal;->shouldConfirmCredentials(I)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_c

    if-nez v0, :cond_b

    :try_start_5
    invoke-virtual {v9}, Lcom/android/server/wm/TaskRecord;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v9}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    move-object v5, v0

    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0, v6, v5}, Lcom/android/server/wm/RootActivityContainer;->sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V

    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    iget-object v3, v9, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    :try_start_6
    iget-object v3, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    const/4 v0, 0x0

    const/4 v6, 0x0

    :try_start_7
    iget v7, v9, Lcom/android/server/wm/TaskRecord;->taskId:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v21, v13

    move v13, v4

    move-object v4, v0

    move-object/from16 v22, v5

    move-object v5, v6

    move v6, v7

    const/4 v12, 0x4

    const/16 v17, 0x3

    move/from16 v7, v19

    move/from16 v23, v11

    move-object v11, v8

    move-object/from16 v8, p4

    move-object/from16 v24, v9

    move/from16 v13, v17

    move/from16 v9, v20

    :try_start_8
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/ActivityTaskManagerService;->moveTaskToFrontLocked(Landroid/app/IApplicationThread;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;Z)V

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/ActivityRecord;->applyOptionsLocked()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    move-object/from16 v3, v22

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/wm/ActivityRecord;)V

    nop

    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v0, v4, v6, v5}, Lcom/android/server/wm/ActivityStartController;->postStartActivityProcessingForLastStarter(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityStack;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    nop

    if-ne v10, v13, :cond_8

    move-object/from16 v9, v24

    invoke-virtual {v1, v9}, Lcom/android/server/wm/ActivityStackSupervisor;->setResizingDuringAnimation(Lcom/android/server/wm/TaskRecord;)V

    invoke-virtual {v9}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    nop

    invoke-virtual {v0, v12}, Lcom/android/server/wm/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    invoke-virtual {v9}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    invoke-static {v5, v11}, Lcom/android/server/wm/OpAppLockerInjector;->lockTopApp(Lcom/android/server/wm/ActivityStack;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v0, v15}, Lcom/android/server/wm/ActivityDisplay;->moveHomeStackToFront(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/server/wm/WindowManagerService;->checkSplitScreenMinimizedChanged(Z)V

    goto :goto_5

    :cond_8
    move-object/from16 v9, v24

    :cond_9
    :goto_5
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    const/4 v4, 0x2

    return v4

    :catchall_3
    move-exception v0

    move-object/from16 v9, v24

    move-object v6, v9

    move v4, v10

    move-object v10, v11

    move v8, v12

    move v5, v13

    move-object v9, v15

    const/4 v11, 0x0

    goto/16 :goto_b

    :catchall_4
    move-exception v0

    move-object/from16 v3, v22

    move-object/from16 v9, v24

    const/4 v8, 0x0

    goto :goto_7

    :catchall_5
    move-exception v0

    move-object v3, v5

    move/from16 v23, v11

    move-object/from16 v21, v13

    const/4 v12, 0x4

    const/4 v13, 0x3

    goto :goto_6

    :catchall_6
    move-exception v0

    move-object v3, v5

    move/from16 v23, v11

    move-object/from16 v21, v13

    const/4 v12, 0x4

    move v13, v7

    :goto_6
    move-object v11, v8

    move v8, v4

    :goto_7
    :try_start_a
    iget-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v3}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/wm/ActivityRecord;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    :catchall_7
    move-exception v0

    move-object v6, v9

    move v4, v10

    move-object v10, v11

    move v5, v13

    move-object v9, v15

    move v11, v8

    move v8, v12

    goto/16 :goto_b

    :cond_a
    move/from16 v23, v11

    move-object/from16 v21, v13

    const/4 v12, 0x4

    move v13, v7

    move-object v11, v8

    move v8, v4

    goto :goto_8

    :catchall_8
    move-exception v0

    move/from16 v23, v11

    move-object/from16 v21, v13

    move-object v11, v8

    move v5, v7

    move-object v6, v9

    move-object v9, v15

    const/4 v8, 0x4

    move-object/from16 v32, v11

    move v11, v4

    move v4, v10

    move-object/from16 v10, v32

    goto/16 :goto_b

    :cond_b
    move/from16 v23, v11

    move-object/from16 v21, v13

    const/4 v12, 0x4

    move v13, v7

    move-object v11, v8

    move v8, v4

    :goto_8
    :try_start_b
    iget-object v7, v9, Lcom/android/server/wm/TaskRecord;->mCallingPackage:Ljava/lang/String;

    iget-object v0, v9, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    const/high16 v3, 0x100000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget v3, v9, Lcom/android/server/wm/TaskRecord;->userId:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    move-object v6, v15

    move v15, v3

    :try_start_c
    iget-object v3, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v3

    iget v4, v9, Lcom/android/server/wm/TaskRecord;->mCallingUid:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string v26, "startActivityFromRecents"
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v5, p1

    move-object/from16 v27, v6

    move/from16 v6, p2

    move/from16 v28, v8

    move-object v8, v0

    move-object/from16 v29, v9

    move-object/from16 v9, v16

    move/from16 v30, v10

    move-object/from16 v10, v17

    move-object/from16 v31, v11

    move-object/from16 v11, v22

    move/from16 v12, v24

    move/from16 v13, v25

    move-object/from16 v14, p4

    move-object/from16 v16, v29

    move-object/from16 v17, v26

    :try_start_d
    invoke-virtual/range {v3 .. v20}, Lcom/android/server/wm/ActivityStartController;->startActivityInPackage(IIILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;ILcom/android/server/wm/TaskRecord;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    move/from16 v4, v30

    const/4 v5, 0x3

    if-ne v4, v5, :cond_c

    move-object/from16 v6, v29

    invoke-virtual {v1, v6}, Lcom/android/server/wm/ActivityStackSupervisor;->setResizingDuringAnimation(Lcom/android/server/wm/TaskRecord;)V

    invoke-virtual {v6}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v5

    nop

    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Lcom/android/server/wm/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v9

    move-object/from16 v10, v31

    invoke-static {v9, v10}, Lcom/android/server/wm/OpAppLockerInjector;->lockTopApp(Lcom/android/server/wm/ActivityStack;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v9

    if-eqz v9, :cond_d

    move-object/from16 v9, v27

    invoke-virtual {v5, v9}, Lcom/android/server/wm/ActivityDisplay;->moveHomeStackToFront(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lcom/android/server/wm/WindowManagerService;->checkSplitScreenMinimizedChanged(Z)V

    goto :goto_9

    :cond_c
    move-object/from16 v6, v29

    :cond_d
    :goto_9
    iget-object v5, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    return v3

    :catchall_9
    move-exception v0

    move-object/from16 v9, v27

    move-object/from16 v6, v29

    move/from16 v4, v30

    move-object/from16 v10, v31

    const/4 v5, 0x3

    const/4 v8, 0x4

    const/4 v11, 0x0

    goto/16 :goto_b

    :catchall_a
    move-exception v0

    move v4, v10

    move-object v10, v11

    move v5, v13

    move v11, v8

    move v8, v12

    move-object/from16 v32, v9

    move-object v9, v6

    move-object/from16 v6, v32

    goto :goto_a

    :catchall_b
    move-exception v0

    move-object v6, v9

    move v4, v10

    move-object v10, v11

    move v5, v13

    move-object v9, v15

    move v11, v8

    move v8, v12

    :goto_a
    goto :goto_b

    :catchall_c
    move-exception v0

    move v5, v7

    move-object v6, v9

    move/from16 v23, v11

    move-object/from16 v21, v13

    move-object v9, v15

    move v11, v4

    move v4, v10

    move-object v10, v8

    const/4 v8, 0x4

    goto :goto_b

    :cond_e
    move-object v6, v9

    move/from16 v23, v11

    move-object/from16 v21, v13

    move-object v9, v15

    const/4 v5, 0x3

    move v11, v4

    move v4, v10

    move-object v10, v8

    const/4 v8, 0x4

    :try_start_e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStackSupervisor;->continueUpdateRecentsHomeStackBounds()V

    iget-object v3, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " not found."

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_d

    :catchall_d
    move-exception v0

    goto :goto_b

    :catchall_e
    move-exception v0

    move/from16 v23, v11

    move-object/from16 v21, v13

    move-object v9, v15

    const/4 v5, 0x3

    move v11, v4

    move v4, v10

    move-object v10, v8

    const/4 v8, 0x4

    move-object v6, v3

    :goto_b
    if-ne v4, v5, :cond_f

    if-eqz v6, :cond_f

    invoke-virtual {v1, v6}, Lcom/android/server/wm/ActivityStackSupervisor;->setResizingDuringAnimation(Lcom/android/server/wm/TaskRecord;)V

    invoke-virtual {v6}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v3

    nop

    invoke-virtual {v3, v8}, Lcom/android/server/wm/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    invoke-virtual {v6}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v7

    invoke-static {v7, v10}, Lcom/android/server/wm/OpAppLockerInjector;->lockTopApp(Lcom/android/server/wm/ActivityStack;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-virtual {v3, v9}, Lcom/android/server/wm/ActivityDisplay;->moveHomeStackToFront(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7, v11}, Lcom/android/server/wm/WindowManagerService;->checkSplitScreenMinimizedChanged(Z)V

    :cond_f
    iget-object v3, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0

    :cond_10
    move v4, v10

    move/from16 v23, v11

    move-object/from16 v21, v13

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " can\'t be launch in the home/recents stack."

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method startSpecificActivityLocked(Lcom/android/server/wm/ActivityRecord;ZZ)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/wm/ActivityStackSupervisor;->realStartActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;ZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when starting activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->notifyUnknownVisibilityLaunched()V

    :cond_1
    const-wide/16 v2, 0x40

    :try_start_1
    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchingStartProcess:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_2
    sget-object v5, Lcom/android/server/wm/-$$Lambda$3W4Y_XVQUddVKzLjibuHW7h0R1g;->INSTANCE:Lcom/android/server/wm/-$$Lambda$3W4Y_XVQUddVKzLjibuHW7h0R1g;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v7, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string v10, "activity"

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-static/range {v5 .. v11}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v4
.end method

.method stopWaitingForActivityVisible(Lcom/android/server/wm/ActivityRecord;)V
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;->matches(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;->getResult()Landroid/app/WaitResult;

    move-result-object v3

    const/4 v0, 0x1

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/app/WaitResult;->timeout:Z

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, v3, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;->getStartTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iput-wide v4, v3, Landroid/app/WaitResult;->totalTime:J

    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :cond_2
    return-void
.end method

.method updateHomeProcess(Lcom/android/server/wm/WindowProcessController;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xd8

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    :cond_1
    return-void
.end method

.method updatePictureInPictureMode(Lcom/android/server/wm/TaskRecord;Landroid/graphics/Rect;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xd7

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    iget-object v0, p1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p2, p3}, Lcom/android/server/wm/ActivityRecord;->updatePictureInPictureMode(Landroid/graphics/Rect;Z)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method updateTopResumedActivityIfNeeded()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v2, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-boolean v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivityWaitingForPrev:Z

    if-nez v4, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityRecord;->scheduleTopResumedActivityChanged(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleTopResumedStateLossTimeout(Lcom/android/server/wm/ActivityRecord;)V

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivityWaitingForPrev:Z

    :cond_2
    iget-object v2, v1, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityStack;->mOnePlusActivityStack:Lcom/android/server/am/OnePlusSceneUtil$OnePlusActivityStack;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v0, v3, v5}, Lcom/android/server/am/OnePlusSceneUtil$OnePlusActivityStack;->resumeTopActivityInnerLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)Z

    :cond_3
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleTopResumedActivityStateIfNeeded()V

    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method waitActivityVisible(Landroid/content/ComponentName;Landroid/app/WaitResult;J)V
    .locals 2

    new-instance v0, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;-><init>(Landroid/content/ComponentName;Landroid/app/WaitResult;J)V

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method wakeUp(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.server.am:TURN_ON:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    return-void
.end method
