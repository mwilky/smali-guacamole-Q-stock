.class public Lcom/oneplus/android/server/power/StandbyDetectInjector;
.super Ljava/lang/Object;
.source "StandbyDetectInjector.java"


# static fields
.field private static final DEBUG_ONEPLUS:Z

.field private static final ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "StandbyDetectInjector"

.field private static standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->DEBUG_ONEPLUS:Z

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

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkIfHitBatteryLowLocked(Landroid/content/Intent;)V
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_standbydetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/power/IStandbyDetect;

    sput-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    :cond_1
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/power/IStandbyDetect;->checkIfHitBatteryLowLocked(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public static dumpStandbyStats(Ljava/io/PrintWriter;)V
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_standbydetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/power/IStandbyDetect;

    sput-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    :cond_1
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/power/IStandbyDetect;->dumpStandbyStats(Ljava/io/PrintWriter;)V

    :cond_2
    return-void
.end method

.method public static enteringDeepIdleLocked()V
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_standbydetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/power/IStandbyDetect;

    sput-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    :cond_1
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/oneplus/android/server/power/IStandbyDetect;->enteringDeepIdleLocked()V

    :cond_2
    return-void
.end method

.method public static initInstance(Lcom/android/server/DeviceIdleController;)V
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_standbydetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/power/IStandbyDetect;

    sput-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    :cond_1
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/power/IStandbyDetect;->initInstance(Lcom/android/server/DeviceIdleController;)V

    :cond_2
    return-void
.end method

.method public static leavingDeepIdleLocked(Z)V
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_standbydetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/power/IStandbyDetect;

    sput-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    :cond_1
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/power/IStandbyDetect;->leavingDeepIdleLocked(Z)V

    :cond_2
    return-void
.end method

.method public static notifyEnterDeepIdle()V
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_standbydetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/power/IStandbyDetect;

    sput-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    :cond_1
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/oneplus/android/server/power/IStandbyDetect;->notifyEnterDeepIdle()V

    :cond_2
    return-void
.end method

.method public static resetTimeofDeepIdleStart()V
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_standbydetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/power/IStandbyDetect;

    sput-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    :cond_1
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/oneplus/android/server/power/IStandbyDetect;->resetTimeofDeepIdleStart()V

    :cond_2
    return-void
.end method

.method public static setInBatteryStatsService(Lcom/android/server/am/BatteryStatsService;)V
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_standbydetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/power/IStandbyDetect;

    sput-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    :cond_1
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/power/IStandbyDetect;->setInBatteryStatsService(Lcom/android/server/am/BatteryStatsService;)V

    :cond_2
    return-void
.end method

.method public static shellCommand(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/os/ShellCommand;)Z
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_standbydetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/power/IStandbyDetect;

    sput-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    :cond_1
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0, p1, p2}, Lcom/oneplus/android/server/power/IStandbyDetect;->shellCommand(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/os/ShellCommand;)Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public static update1stLightIdleStatus(Z)V
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_standbydetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/power/IStandbyDetect;

    sput-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    :cond_1
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/power/IStandbyDetect;->update1stLightIdleStatus(Z)V

    :cond_2
    return-void
.end method

.method public static updateScreenStatus(Z)V
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_standbydetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/power/IStandbyDetect;

    sput-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    :cond_1
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/power/IStandbyDetect;->updateScreenStatus(Z)V

    :cond_2
    return-void
.end method
