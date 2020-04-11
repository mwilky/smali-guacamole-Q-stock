.class public Lcom/android/server/am/BatteryStatsServiceInjector;
.super Ljava/lang/Object;
.source "BatteryStatsServiceInjector.java"


# static fields
.field private static final DEBUG:Z

.field private static final DEBUG_INJECTOR:Z

.field private static final ENABLED:Z

.field private static final POWER_CONTROL_ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "BatteryStatsServiceInjector"

.field private static extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

.field private static opPowerController:Lcom/oneplus/android/power/IOpPowerController$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/BatteryStatsServiceInjector;->DEBUG:Z

    const-string v0, "BatteryStatsServiceInjector"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/BatteryStatsServiceInjector;->DEBUG_INJECTOR:Z

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x9d

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-array v1, v0, [I

    const/16 v3, 0x9e

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/android/server/am/BatteryStatsServiceInjector;->ENABLED:Z

    new-array v0, v0, [I

    const/16 v1, 0x9a

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/BatteryStatsServiceInjector;->POWER_CONTROL_ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cloneKernelWakelockStats()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/am/BatteryStatsServiceInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_batterystatsservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IExtBatteryStatsService;

    sput-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    :cond_1
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/server/am/IExtBatteryStatsService;->cloneKernelWakelockStats()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
.end method

.method public static cloneWakeupReasonStats()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/am/BatteryStatsServiceInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_batterystatsservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IExtBatteryStatsService;

    sput-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    :cond_1
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/server/am/IExtBatteryStatsService;->cloneWakeupReasonStats()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
.end method

.method public static flushExternal()V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/BatteryStatsServiceInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_batterystatsservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IExtBatteryStatsService;

    sput-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    :cond_1
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/server/am/IExtBatteryStatsService;->flushExternal()V

    :cond_2
    return-void
.end method

.method public static initInstance(Lcom/android/server/am/BatteryStatsService;Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/server/am/BatteryExternalStatsWorker;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/BatteryStatsServiceInjector;->ENABLED:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_batterystatsservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IExtBatteryStatsService;

    sput-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    :cond_0
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IExtBatteryStatsService;->initInstance(Lcom/android/server/am/BatteryStatsService;Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/server/am/BatteryExternalStatsWorker;)V

    :cond_1
    sget-boolean v0, Lcom/android/server/am/BatteryStatsServiceInjector;->POWER_CONTROL_ENABLED:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->opPowerController:Lcom/oneplus/android/power/IOpPowerController$Stub;

    if-nez v0, :cond_2

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_power_controller:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/power/IOpPowerController$Stub;

    sput-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->opPowerController:Lcom/oneplus/android/power/IOpPowerController$Stub;

    :cond_2
    return-void
.end method

.method public static noteCameraOn(Z)V
    .locals 4

    sget-boolean v0, Lcom/android/server/am/BatteryStatsServiceInjector;->POWER_CONTROL_ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/am/BatteryStatsServiceInjector;->DEBUG_INJECTOR:Z

    const-string v1, "BatteryStatsServiceInjector"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "noteCameraOn: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->opPowerController:Lcom/oneplus/android/power/IOpPowerController$Stub;

    if-eqz v0, :cond_3

    :try_start_0
    sget-boolean v0, Lcom/android/server/am/BatteryStatsServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_2

    const-string v0, "before calling noteCameraOn"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->opPowerController:Lcom/oneplus/android/power/IOpPowerController$Stub;

    invoke-virtual {v0, p0}, Lcom/oneplus/android/power/IOpPowerController$Stub;->noteCameraOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    goto :goto_1

    :cond_3
    const-string v0, "Cannot get OpPowerControllerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static snapShotKernelWakelockStats(J)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/am/BatteryStatsServiceInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_batterystatsservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IExtBatteryStatsService;

    sput-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    :cond_1
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IExtBatteryStatsService;->snapShotKernelWakelockStats(J)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
.end method

.method public static snapShotWakeupReasonStats()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/am/BatteryStatsServiceInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_batterystatsservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IExtBatteryStatsService;

    sput-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    :cond_1
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/server/am/IExtBatteryStatsService;->snapShotWakeupReasonStats()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
.end method

.method public static updateKernelWakelocks()V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/BatteryStatsServiceInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_batterystatsservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IExtBatteryStatsService;

    sput-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    :cond_1
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/server/am/IExtBatteryStatsService;->updateKernelWakelocks()V

    :cond_2
    return-void
.end method
