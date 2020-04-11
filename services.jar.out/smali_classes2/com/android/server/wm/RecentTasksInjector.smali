.class public Lcom/android/server/wm/RecentTasksInjector;
.super Ljava/lang/Object;
.source "RecentTasksInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/RecentTasksInjector$LockedTasksContentObserver;
    }
.end annotation


# static fields
.field public static final DEBUG_ONEPLUS:Z

.field private static final RECENT_TASK_LOCKED_LIST:Ljava/lang/String; = "com_oneplus_systemui_recent_task_lockd_list"

.field private static final RECENT_WITH_INVISIBLE:I = -0x80000000

.field private static final TAG:Ljava/lang/String; = "RecentTasksInjector"

.field private static final URI_RECENT_TASK_LOCKED_LISTL:Landroid/net/Uri;


# instance fields
.field private mATMService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mLockedTasksContentObserver:Lcom/android/server/wm/RecentTasksInjector$LockedTasksContentObserver;

.field private mLockedTasksList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNumObservedLockedTasks:I

.field private mStartToMonitorUserSwitching:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com_oneplus_systemui_recent_task_lockd_list"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/RecentTasksInjector;->URI_RECENT_TASK_LOCKED_LISTL:Landroid/net/Uri;

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/wm/RecentTasksInjector;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/RecentTasksInjector;->mNumObservedLockedTasks:I

    iput-boolean v0, p0, Lcom/android/server/wm/RecentTasksInjector;->mStartToMonitorUserSwitching:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RecentTasksInjector;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/RecentTasksInjector;->mLockedTasksList:Ljava/util/List;

    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/server/wm/RecentTasksInjector;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/wm/RecentTasksInjector$LockedTasksContentObserver;

    iget-object v2, p0, Lcom/android/server/wm/RecentTasksInjector;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/wm/RecentTasksInjector$LockedTasksContentObserver;-><init>(Lcom/android/server/wm/RecentTasksInjector;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/wm/RecentTasksInjector;->mLockedTasksContentObserver:Lcom/android/server/wm/RecentTasksInjector$LockedTasksContentObserver;

    iput-object p1, p0, Lcom/android/server/wm/RecentTasksInjector;->mATMService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/RecentTasksInjector;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/RecentTasksInjector;->updateLockedTaskInfoLocked()V

    return-void
.end method

.method public static isRecentWithInvisible(II)Z
    .locals 2

    const/high16 v0, -0x80000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRecentTasks for invisible task from callingUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentTasksInjector"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private parseLockedStr(Ljava/lang/String;)Ljava/util/List;
    .locals 6
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    const-string v1, "\\}"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    aget-object v3, v1, v2

    const-string v4, "{"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v2

    const-string v3, "RecentTasksInjector"

    const-string v4, "Exception while parsing recent task locked info"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v0

    :cond_2
    :goto_2
    return-object v0
.end method

.method private updateLockedTaskInfoLocked()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/RecentTasksInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com_oneplus_systemui_recent_task_lockd_list"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/RecentTasksInjector;->mLockedTasksList:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wm/RecentTasksInjector;->parseLockedStr(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/RecentTasksInjector;->mLockedTasksList:Ljava/util/List;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method dumpLockedTasks(Ljava/io/PrintWriter;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/RecentTasksInjector;->mLockedTasksList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "  Locked recent tasks:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/RecentTasksInjector;->mLockedTasksList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const-string v1, "  * Recent #"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/RecentTasksInjector;->mLockedTasksList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method ensureAndUpdateLockedTasksInfoObserver()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/RecentTasksInjector;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/RecentTasksInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/RecentTasksInjector;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/android/server/wm/RecentTasksInjector;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wm/RecentTasksInjector;->URI_RECENT_TASK_LOCKED_LISTL:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/wm/RecentTasksInjector;->mLockedTasksContentObserver:Lcom/android/server/wm/RecentTasksInjector$LockedTasksContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-direct {p0}, Lcom/android/server/wm/RecentTasksInjector;->updateLockedTaskInfoLocked()V

    :cond_0
    return-void
.end method

.method ensureUserSwitchingObserved()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/RecentTasksInjector;->mATMService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/RecentTasksInjector;->mStartToMonitorUserSwitching:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/RecentTasksInjector;->mATMService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v1, Lcom/android/server/wm/RecentTasksInjector$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/RecentTasksInjector$1;-><init>(Lcom/android/server/wm/RecentTasksInjector;)V

    const-class v2, Lcom/android/server/wm/RecentTasksInjector;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v1

    const-string v2, "RecentTasksInjector"

    const-string v3, "Exception while registering user changing"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RecentTasksInjector;->mStartToMonitorUserSwitching:Z

    :cond_0
    return-void
.end method

.method getLockedRecentsCount()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/RecentTasksInjector;->mLockedTasksList:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/RecentTasksInjector;->mLockedTasksList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

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

.method getObservedLockedTasksCount()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/RecentTasksInjector;->mNumObservedLockedTasks:I

    return v0
.end method

.method isInVisibleRange(Lcom/android/server/wm/TaskRecord;)Z
    .locals 4

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasksInjector;->isRecentTaskLocked(Lcom/android/server/wm/TaskRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/RecentTasksInjector;->mNumObservedLockedTasks:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/RecentTasksInjector;->mNumObservedLockedTasks:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v1

    const-string v2, "RecentTasksInjector"

    const-string v3, "Exception while checking recent task locked state"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method isRecentTaskLocked(Lcom/android/server/wm/TaskRecord;)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "task_user = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecentTasksInjector"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/RecentTasksInjector;->mLockedTasksList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method resetObservedLockedTasksCount()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/RecentTasksInjector;->mNumObservedLockedTasks:I

    return-void
.end method
