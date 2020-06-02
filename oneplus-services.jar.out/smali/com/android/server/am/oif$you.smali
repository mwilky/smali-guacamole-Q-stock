.class final Lcom/android/server/am/oif$you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/am/IEmbryoManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/oif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "you"
.end annotation


# instance fields
.field private target:Lcom/android/server/am/IEmbryoManager;

.field private final xi:Lcom/android/server/am/IEmbryoManager;

.field private yi:Lcom/android/server/am/oif;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/am/oif$sis;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/oif$sis;-><init>(Lcom/android/server/am/ywr;)V

    iput-object v0, p0, Lcom/android/server/am/oif$you;->xi:Lcom/android/server/am/IEmbryoManager;

    invoke-static {}, Lcom/android/server/am/oif;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/oif;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/am/oif;

    invoke-direct {v0, v1}, Lcom/android/server/am/oif;-><init>(Lcom/android/server/am/ywr;)V

    iput-object v0, p0, Lcom/android/server/am/oif$you;->yi:Lcom/android/server/am/oif;

    iget-object v0, p0, Lcom/android/server/am/oif$you;->yi:Lcom/android/server/am/oif;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/oif$you;->xi:Lcom/android/server/am/IEmbryoManager;

    :goto_0
    iput-object v0, p0, Lcom/android/server/am/oif$you;->target:Lcom/android/server/am/IEmbryoManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ywr;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/oif$you;-><init>()V

    return-void
.end method

.method private declared-synchronized getImpl()Lcom/android/server/am/IEmbryoManager;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/oif$you;->target:Lcom/android/server/am/IEmbryoManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public activityTransition(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/oif$you;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/am/IEmbryoManager;->activityTransition(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public attach(Landroid/app/IApplicationThread;I)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/oif$you;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/am/IEmbryoManager;->attach(Landroid/app/IApplicationThread;I)Z

    move-result p0

    return p0
.end method

.method public checkBackgroundLevel(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/am/oif$you;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/am/IEmbryoManager;->checkBackgroundLevel(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public dumpsys(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/oif$you;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/am/IEmbryoManager;->dumpsys(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public findEmbryoLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/oif$you;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/am/IEmbryoManager;->findEmbryoLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public forceUpdateOnlineConfig()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/oif$you;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/am/IEmbryoManager;->forceUpdateOnlineConfig()V

    return-void
.end method

.method public goingToSleep()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/oif$you;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/am/IEmbryoManager;->goingToSleep()V

    return-void
.end method

.method public initInstance(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/internal/os/ProcessCpuTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/oif$you;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/am/IEmbryoManager;->initInstance(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/internal/os/ProcessCpuTracker;)V

    return-void
.end method

.method public initiate(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/oif$you;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/am/IEmbryoManager;->initiate(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method public killEmbryoProcesses(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/oif$you;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/am/IEmbryoManager;->killEmbryoProcesses(Z)V

    return-void
.end method

.method public notifyApplicationCrash(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/oif$you;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/am/IEmbryoManager;->notifyApplicationCrash(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public obtain(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Landroid/app/IApplicationThread;
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/oif$you;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/am/IEmbryoManager;->obtain(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Landroid/app/IApplicationThread;

    move-result-object p0

    return-object p0
.end method

.method public packageChanged(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/oif$you;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/am/IEmbryoManager;->packageChanged(Ljava/lang/String;I)V

    return-void
.end method

.method public packageInstalled(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/am/oif$you;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/am/IEmbryoManager;->packageInstalled(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    return-void
.end method

.method public prepare(Lcom/android/server/am/ProcessRecord;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/am/oif$you;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/am/IEmbryoManager;->prepare(Lcom/android/server/am/ProcessRecord;Ljava/util/List;)V

    return-void
.end method

.method public processStarted(Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/oif$you;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/am/IEmbryoManager;->processStarted(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public resolveConfig(Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/oif$you;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/am/IEmbryoManager;->resolveConfig(Lorg/json/JSONArray;)V

    return-void
.end method

.method public setBlackList(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/oif$you;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/am/IEmbryoManager;->setBlackList(Ljava/util/List;)V

    return-void
.end method

.method public shutdown()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/oif$you;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/am/IEmbryoManager;->shutdown()V

    return-void
.end method

.method public updateConfig()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/oif$you;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/am/IEmbryoManager;->updateConfig()V

    return-void
.end method

.method public wakingUp()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/oif$you;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/am/IEmbryoManager;->wakingUp()V

    return-void
.end method

.method public declared-synchronized zta(ZZ)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/android/server/am/oif$you;->xi:Lcom/android/server/am/IEmbryoManager;

    :goto_0
    iput-object p1, p0, Lcom/android/server/am/oif$you;->target:Lcom/android/server/am/IEmbryoManager;

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/server/am/oif$you;->yi:Lcom/android/server/am/oif;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/am/oif$you;->yi:Lcom/android/server/am/oif;

    invoke-virtual {p1}, Lcom/android/server/am/oif;->shutdown()V

    iget-object p1, p0, Lcom/android/server/am/oif$you;->yi:Lcom/android/server/am/oif;

    invoke-virtual {p1}, Lcom/android/server/am/oif;->cleanup()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/am/oif$you;->yi:Lcom/android/server/am/oif;

    :cond_1
    iget-object p1, p0, Lcom/android/server/am/oif$you;->xi:Lcom/android/server/am/IEmbryoManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
