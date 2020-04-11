.class public Lcom/android/server/power/OpPowerManagerInjector;
.super Ljava/lang/Object;
.source "OpPowerManagerInjector.java"


# static fields
.field private static final DEBUG:Z

.field private static final ENABLED:Z = true

.field private static final TAG:Ljava/lang/String; = "OpPowerManagerInjector"

.field private static opPowerManager:Lcom/android/server/power/IOpPowerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "OpPowerManagerInjector"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/OpPowerManagerInjector;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CheckWakeUpOrDoze(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/power/OpPowerManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpPowerManagerInjector"

    const-string v1, "call OpPowerManagerInjector.CheckWakeUpOrDoze()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/power/OpPowerManagerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/android/server/power/IOpPowerManager;->CheckWakeUpOrDoze(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static addExclusiveWakeLock(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    sget-object v0, Lcom/android/server/power/OpPowerManagerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/power/IOpPowerManager;->addExclusiveWakeLock(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static checkForKeepWakeLocks(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/power/OpPowerManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpPowerManagerInjector"

    const-string v1, "call OpPowerManagerInjector.checkForKeepWakeLocks()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/power/OpPowerManagerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/android/server/power/IOpPowerManager;->checkForKeepWakeLocks(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static checkWakeLock(Lcom/android/server/power/PowerManagerService$WakeLock;ZZ)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/power/OpPowerManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpPowerManagerInjector"

    const-string v1, "call OpPowerManagerInjector.CheckWakeLock()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/power/OpPowerManagerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/power/IOpPowerManager;->checkWakeLock(Lcom/android/server/power/PowerManagerService$WakeLock;ZZ)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static clearExclusiveWakeLock(Z)V
    .locals 1

    sget-object v0, Lcom/android/server/power/OpPowerManagerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/power/IOpPowerManager;->clearExclusiveWakeLock(Z)V

    :cond_0
    return-void
.end method

.method public static disableExclusiveWakeLocks(Z)V
    .locals 1

    sget-object v0, Lcom/android/server/power/OpPowerManagerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/power/IOpPowerManager;->disableExclusiveWakeLocks(Z)V

    :cond_0
    return-void
.end method

.method public static enableExclusiveWakeLocks(Z)V
    .locals 1

    sget-object v0, Lcom/android/server/power/OpPowerManagerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/power/IOpPowerManager;->enableExclusiveWakeLocks(Z)V

    :cond_0
    return-void
.end method

.method public static flushExclusiveWakeLock()V
    .locals 1

    sget-object v0, Lcom/android/server/power/OpPowerManagerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/power/IOpPowerManager;->flushExclusiveWakeLock()V

    :cond_0
    return-void
.end method

.method public static getExclusiveWakeLock(Z)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/android/server/power/OpPowerManagerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/power/IOpPowerManager;->getExclusiveWakeLock(Z)Ljava/util/HashMap;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public static handleForceStop(Landroid/os/Message;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/power/OpPowerManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpPowerManagerInjector"

    const-string v1, "call OpPowerManagerInjector.handleForceStop()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/power/OpPowerManagerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/android/server/power/IOpPowerManager;->handleForceStop(Landroid/os/Message;)V

    :cond_1
    return-void
.end method

.method public static handleLightIdleBlackList()V
    .locals 2

    sget-boolean v0, Lcom/android/server/power/OpPowerManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpPowerManagerInjector"

    const-string v1, "call OpPowerManagerInjector.handleLightIdleBlackList()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/power/OpPowerManagerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/server/power/IOpPowerManager;->handleLightIdleBlackList()V

    :cond_1
    return-void
.end method

.method public static handleOnlineConfig()V
    .locals 2

    sget-boolean v0, Lcom/android/server/power/OpPowerManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpPowerManagerInjector"

    const-string v1, "call OpPowerManagerInjector.handleOnlineConfig()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/power/OpPowerManagerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/server/power/IOpPowerManager;->handleOnlineConfig()V

    :cond_1
    return-void
.end method

.method public static ifEnableLogDump()Z
    .locals 2

    sget-boolean v0, Lcom/android/server/power/OpPowerManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpPowerManagerInjector"

    const-string v1, "call OpPowerManagerInjector.ifEnableLogDump()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/power/OpPowerManagerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/server/power/IOpPowerManager;->ifEnableLogDump()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static ifHandleCommand(Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/power/OpPowerManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpPowerManagerInjector"

    const-string v1, "call OpPowerManagerInjector.ifHandleCommand()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/power/OpPowerManagerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/android/server/power/IOpPowerManager;->ifHandleCommand(Ljava/io/PrintWriter;[Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static init(Landroid/content/res/Resources;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/power/OpPowerManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpPowerManagerInjector"

    const-string v1, "call OpPowerManagerInjector.init()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/power/OpPowerManagerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/android/server/power/IOpPowerManager;->init(Landroid/content/res/Resources;)V

    :cond_1
    return-void
.end method

.method public static initInstance(Lcom/android/server/power/PowerManagerService$PmsInner;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/power/OpPowerManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpPowerManagerInjector"

    const-string v1, "call OpPowerManagerInjector.initInstance()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/power/OpPowerManagerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_power_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/IOpPowerManager;

    sput-object v0, Lcom/android/server/power/OpPowerManagerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    :cond_1
    sget-object v0, Lcom/android/server/power/OpPowerManagerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/android/server/power/IOpPowerManager;->initInstance(Lcom/android/server/power/PowerManagerService$PmsInner;)V

    :cond_2
    return-void
.end method

.method public static sendOemShutDownBroadcast(Landroid/content/BroadcastReceiver;)V
    .locals 1

    sget-object v0, Lcom/android/server/power/OpPowerManagerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/power/IOpPowerManager;->sendOemShutDownBroadcast(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public static setDeviceIdleAggressive(Z)V
    .locals 1

    sget-object v0, Lcom/android/server/power/OpPowerManagerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/power/IOpPowerManager;->setDeviceIdleAggressive(Z)V

    :cond_0
    return-void
.end method

.method public static setWakelockDisabled(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/power/OpPowerManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpPowerManagerInjector"

    const-string v1, "call OpPowerManagerInjector.setWakelockDisabled()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/power/OpPowerManagerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/android/server/power/IOpPowerManager;->setWakelockDisabled(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static updateBlockedUids(IZ)V
    .locals 1

    sget-object v0, Lcom/android/server/power/OpPowerManagerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/power/IOpPowerManager;->updateBlockedUids(IZ)V

    :cond_0
    return-void
.end method
