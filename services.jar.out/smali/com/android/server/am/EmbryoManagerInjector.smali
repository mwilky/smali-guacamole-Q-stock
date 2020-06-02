.class public Lcom/android/server/am/EmbryoManagerInjector;
.super Ljava/lang/Object;
.source "EmbryoManagerInjector.java"


# static fields
.field private static final ENABLED:Z

.field private static sEmbryoManager:Lcom/android/server/am/IEmbryoManager;

.field private static sEmbryoManagerInjector:Lcom/android/server/am/EmbryoManagerInjector;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xc6

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/EmbryoManagerInjector;->ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activityTransition(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/EmbryoManagerInjector;->makeSureInstanceInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/am/EmbryoManagerInjector;->sEmbryoManager:Lcom/android/server/am/IEmbryoManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IEmbryoManager;->activityTransition(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static attach(Landroid/app/IApplicationThread;I)Z
    .locals 1

    invoke-static {}, Lcom/android/server/am/EmbryoManagerInjector;->makeSureInstanceInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v0, Lcom/android/server/am/EmbryoManagerInjector;->sEmbryoManager:Lcom/android/server/am/IEmbryoManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IEmbryoManager;->attach(Landroid/app/IApplicationThread;I)Z

    move-result v0

    return v0
.end method

.method public static checkBackgroundLevel(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/am/EmbryoManagerInjector;->makeSureInstanceInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v0, Lcom/android/server/am/EmbryoManagerInjector;->sEmbryoManager:Lcom/android/server/am/IEmbryoManager;

    invoke-interface {v0, p0}, Lcom/android/server/am/IEmbryoManager;->checkBackgroundLevel(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public static dumpsys(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/EmbryoManagerInjector;->makeSureInstanceInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/am/EmbryoManagerInjector;->sEmbryoManager:Lcom/android/server/am/IEmbryoManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IEmbryoManager;->dumpsys(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public static findEmbryoLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/android/server/am/EmbryoManagerInjector;->makeSureInstanceInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v0, Lcom/android/server/am/EmbryoManagerInjector;->sEmbryoManager:Lcom/android/server/am/IEmbryoManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IEmbryoManager;->findEmbryoLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static forceUpdateOnlineConfig()V
    .locals 1

    invoke-static {}, Lcom/android/server/am/EmbryoManagerInjector;->makeSureInstanceInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/am/EmbryoManagerInjector;->sEmbryoManager:Lcom/android/server/am/IEmbryoManager;

    invoke-interface {v0}, Lcom/android/server/am/IEmbryoManager;->forceUpdateOnlineConfig()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/EmbryoManagerInjector;
    .locals 1

    sget-object v0, Lcom/android/server/am/EmbryoManagerInjector;->sEmbryoManagerInjector:Lcom/android/server/am/EmbryoManagerInjector;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/EmbryoManagerInjector;

    invoke-direct {v0}, Lcom/android/server/am/EmbryoManagerInjector;-><init>()V

    sput-object v0, Lcom/android/server/am/EmbryoManagerInjector;->sEmbryoManagerInjector:Lcom/android/server/am/EmbryoManagerInjector;

    :cond_0
    sget-object v0, Lcom/android/server/am/EmbryoManagerInjector;->sEmbryoManagerInjector:Lcom/android/server/am/EmbryoManagerInjector;

    return-object v0
.end method

.method public static goingToSleep()V
    .locals 1

    invoke-static {}, Lcom/android/server/am/EmbryoManagerInjector;->makeSureInstanceInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/am/EmbryoManagerInjector;->sEmbryoManager:Lcom/android/server/am/IEmbryoManager;

    invoke-interface {v0}, Lcom/android/server/am/IEmbryoManager;->goingToSleep()V

    return-void
.end method

.method public static initInstance(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/internal/os/ProcessCpuTracker;)V
    .locals 2

    invoke-static {}, Lcom/android/server/am/EmbryoManagerInjector;->makeSureInstanceInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Embryo"

    const-string v1, "EmbryoManagerInjector ... not null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/am/EmbryoManagerInjector;->sEmbryoManager:Lcom/android/server/am/IEmbryoManager;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/am/IEmbryoManager;->initInstance(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/internal/os/ProcessCpuTracker;)V

    return-void
.end method

.method public static initiate(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/EmbryoManagerInjector;->makeSureInstanceInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/am/EmbryoManagerInjector;->sEmbryoManager:Lcom/android/server/am/IEmbryoManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IEmbryoManager;->initiate(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method public static killEmbryoProcesses(Z)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/EmbryoManagerInjector;->makeSureInstanceInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/am/EmbryoManagerInjector;->sEmbryoManager:Lcom/android/server/am/IEmbryoManager;

    invoke-interface {v0, p0}, Lcom/android/server/am/IEmbryoManager;->killEmbryoProcesses(Z)V

    return-void
.end method

.method private static makeSureInstanceInitialized()Z
    .locals 1

    sget-object v0, Lcom/android/server/am/EmbryoManagerInjector;->sEmbryoManager:Lcom/android/server/am/IEmbryoManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_embryo_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IEmbryoManager;

    sput-object v0, Lcom/android/server/am/EmbryoManagerInjector;->sEmbryoManager:Lcom/android/server/am/IEmbryoManager;

    :cond_0
    sget-object v0, Lcom/android/server/am/EmbryoManagerInjector;->sEmbryoManager:Lcom/android/server/am/IEmbryoManager;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static notifyApplicationCrash(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/EmbryoManagerInjector;->makeSureInstanceInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/am/EmbryoManagerInjector;->sEmbryoManager:Lcom/android/server/am/IEmbryoManager;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/am/IEmbryoManager;->notifyApplicationCrash(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public static obtain(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Landroid/app/IApplicationThread;
    .locals 1

    invoke-static {}, Lcom/android/server/am/EmbryoManagerInjector;->makeSureInstanceInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/server/am/EmbryoManagerInjector;->sEmbryoManager:Lcom/android/server/am/IEmbryoManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IEmbryoManager;->obtain(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Landroid/app/IApplicationThread;

    move-result-object v0

    return-object v0
.end method

.method public static packageChanged(Ljava/lang/String;I)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/EmbryoManagerInjector;->makeSureInstanceInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/am/EmbryoManagerInjector;->sEmbryoManager:Lcom/android/server/am/IEmbryoManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IEmbryoManager;->packageChanged(Ljava/lang/String;I)V

    return-void
.end method

.method public static packageInstalled(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/am/EmbryoManagerInjector;->makeSureInstanceInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/am/EmbryoManagerInjector;->sEmbryoManager:Lcom/android/server/am/IEmbryoManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IEmbryoManager;->packageInstalled(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    return-void
.end method

.method public static prepare(Lcom/android/server/am/ProcessRecord;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/am/EmbryoManagerInjector;->makeSureInstanceInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/am/EmbryoManagerInjector;->sEmbryoManager:Lcom/android/server/am/IEmbryoManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IEmbryoManager;->prepare(Lcom/android/server/am/ProcessRecord;Ljava/util/List;)V

    return-void
.end method

.method public static processStarted(Lcom/android/server/am/ProcessRecord;)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/EmbryoManagerInjector;->makeSureInstanceInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/am/EmbryoManagerInjector;->sEmbryoManager:Lcom/android/server/am/IEmbryoManager;

    invoke-interface {v0, p0}, Lcom/android/server/am/IEmbryoManager;->processStarted(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static resolveConfig(Lorg/json/JSONArray;)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/EmbryoManagerInjector;->makeSureInstanceInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/am/EmbryoManagerInjector;->sEmbryoManager:Lcom/android/server/am/IEmbryoManager;

    invoke-interface {v0, p0}, Lcom/android/server/am/IEmbryoManager;->resolveConfig(Lorg/json/JSONArray;)V

    return-void
.end method

.method public static setBlackList(Ljava/util/List;)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/EmbryoManagerInjector;->makeSureInstanceInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/am/EmbryoManagerInjector;->sEmbryoManager:Lcom/android/server/am/IEmbryoManager;

    invoke-interface {v0, p0}, Lcom/android/server/am/IEmbryoManager;->setBlackList(Ljava/util/List;)V

    return-void
.end method

.method public static shutdown()V
    .locals 1

    invoke-static {}, Lcom/android/server/am/EmbryoManagerInjector;->makeSureInstanceInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/am/EmbryoManagerInjector;->sEmbryoManager:Lcom/android/server/am/IEmbryoManager;

    invoke-interface {v0}, Lcom/android/server/am/IEmbryoManager;->shutdown()V

    return-void
.end method

.method public static updateConfig()V
    .locals 1

    invoke-static {}, Lcom/android/server/am/EmbryoManagerInjector;->makeSureInstanceInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/am/EmbryoManagerInjector;->sEmbryoManager:Lcom/android/server/am/IEmbryoManager;

    invoke-interface {v0}, Lcom/android/server/am/IEmbryoManager;->updateConfig()V

    return-void
.end method

.method public static wakingUp()V
    .locals 1

    invoke-static {}, Lcom/android/server/am/EmbryoManagerInjector;->makeSureInstanceInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/am/EmbryoManagerInjector;->sEmbryoManager:Lcom/android/server/am/IEmbryoManager;

    invoke-interface {v0}, Lcom/android/server/am/IEmbryoManager;->wakingUp()V

    return-void
.end method
