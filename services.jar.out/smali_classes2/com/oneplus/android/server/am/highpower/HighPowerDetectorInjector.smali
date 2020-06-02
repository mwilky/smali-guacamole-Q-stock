.class public Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;
.super Ljava/lang/Object;
.source "HighPowerDetectorInjector.java"


# static fields
.field private static final DEBUG_ONEPLUS:Z

.field private static final ENABLED:Z

.field public static final NUM_CPU_MONITOR_LEVELS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "HighPowerDetectorInjector"

.field private static highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->DEBUG_ONEPLUS:Z

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xa0

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-array v1, v0, [I

    const/16 v3, 0x64

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginCpuStatistics()V
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_highpowerdetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    sput-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    :cond_1
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;->beginCpuStatistics()V

    :cond_2
    return-void
.end method

.method public static cancelBgDetectNotificationIfNeeded()V
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_highpowerdetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    sput-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    :cond_1
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;->cancelBgDetectNotificationIfNeeded()V

    :cond_2
    return-void
.end method

.method public static doCpuStatistics(Lcom/android/internal/os/ProcessCpuTracker$Stats;)V
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_highpowerdetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    sput-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    :cond_1
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;->doCpuStatistics(Lcom/android/internal/os/ProcessCpuTracker$Stats;)V

    :cond_2
    return-void
.end method

.method public static dumpBGCStats(Ljava/io/PrintWriter;)V
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_highpowerdetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    sput-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    :cond_1
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;->dumpBGCStats(Ljava/io/PrintWriter;)V

    :cond_2
    return-void
.end method

.method public static enableAggressive(ZLcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;)V
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_highpowerdetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    sput-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    :cond_1
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0, p1}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;->enableAggressive(ZLcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;)V

    :cond_2
    return-void
.end method

.method public static finishCpuStatistics()V
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_highpowerdetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    sput-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    :cond_1
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;->finishCpuStatistics()V

    :cond_2
    return-void
.end method

.method public static forceUpdateOnlineConfig()V
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_highpowerdetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    sput-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    :cond_1
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;->forceUpdateOnlineConfig()V

    :cond_2
    return-void
.end method

.method public static getBgPowerHungryList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_highpowerdetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    sput-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    :cond_1
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;->getBgPowerHungryList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
.end method

.method public static getDeviceTemp()I
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_highpowerdetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    sput-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    :cond_1
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;->getDeviceTemp()I

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public static informPkgRemoved(Ljava/lang/String;I)V
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_highpowerdetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    sput-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    :cond_1
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0, p1}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;->informPkgRemoved(Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public static initInstance(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/BatteryStatsService;)V
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_highpowerdetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    sput-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    :cond_1
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0, p1, p2}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;->initInstance(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/BatteryStatsService;)V

    :cond_2
    return-void
.end method

.method public static postProcessOfForceStop(Ljava/lang/String;I)V
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_highpowerdetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    sput-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    :cond_1
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0, p1}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;->postProcessOfForceStop(Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public static shellCommand(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_highpowerdetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    sput-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    :cond_1
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0, p1, p2}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;->shellCommand(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public static startMonitor()V
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_highpowerdetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    sput-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    :cond_1
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;->startMonitor()V

    :cond_2
    return-void
.end method

.method public static stopBgPowerHungryApp(Ljava/lang/String;I)V
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_highpowerdetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    sput-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    :cond_1
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0, p1}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;->stopBgPowerHungryApp(Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public static updateWidgetPackage(Ljava/lang/String;Z)V
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_highpowerdetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    sput-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    :cond_1
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0, p1}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;->updateWidgetPackage(Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public static updateWidgetPackages(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_highpowerdetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    sput-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    :cond_1
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;->updateWidgetPackages(Ljava/util/HashSet;)V

    :cond_2
    return-void
.end method
