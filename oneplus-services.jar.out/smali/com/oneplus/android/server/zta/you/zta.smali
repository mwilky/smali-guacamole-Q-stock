.class public Lcom/oneplus/android/server/zta/you/zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;


# static fields
.field private static final DEBUG:Z = true

.field private static final ENABLE:Z

.field private static final PROP_ENABLE:Ljava/lang/String; = "persist.sys.ohpd.enable"

.field private static final TAG:Ljava/lang/String; = "HighPowerDetector"


# instance fields
.field private QZ:Lcom/android/server/am/OnePlusHighPowerDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.sys.ohpd.enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/android/server/zta/you/zta;->ENABLE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/android/server/zta/you/zta;->QZ:Lcom/android/server/am/OnePlusHighPowerDetector;

    return-void
.end method

.method private Gr()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/zta/you/zta;->QZ:Lcom/android/server/am/OnePlusHighPowerDetector;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public beginCpuStatistics()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/android/server/zta/you/zta;->Gr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/zta/you/zta;->QZ:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->beginCpuStatistics()V

    :cond_0
    return-void
.end method

.method public cancelBgDetectNotificationIfNeeded()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/android/server/zta/you/zta;->Gr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/zta/you/zta;->QZ:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->cancelBgDetectNotificationIfNeeded()V

    :cond_0
    return-void
.end method

.method public doCpuStatistics(Lcom/android/internal/os/ProcessCpuTracker$Stats;)V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/android/server/zta/you/zta;->Gr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/zta/you/zta;->QZ:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->doCpuStatistics(Lcom/android/internal/os/ProcessCpuTracker$Stats;)V

    :cond_0
    return-void
.end method

.method public dumpBGCStats(Ljava/io/PrintWriter;)V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/android/server/zta/you/zta;->Gr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/zta/you/zta;->QZ:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->dumpBGCStats(Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method public enableAggressive(ZLcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;)V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/android/server/zta/you/zta;->Gr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/zta/you/zta;->QZ:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OnePlusHighPowerDetector;->enableAggressive(ZLcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;)V

    :cond_0
    return-void
.end method

.method public finishCpuStatistics()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/android/server/zta/you/zta;->Gr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/zta/you/zta;->QZ:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->finishCpuStatistics()V

    :cond_0
    return-void
.end method

.method public forceUpdateOnlineConfig()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/android/server/zta/you/zta;->Gr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/zta/you/zta;->QZ:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->forceUpdateOnlineConfig()V

    :cond_0
    return-void
.end method

.method public getBgPowerHungryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/oneplus/android/server/zta/you/zta;->Gr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/zta/you/zta;->QZ:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->getBgPowerHungryList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getDeviceTemp()I
    .locals 0

    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->getDeviceTemp()I

    move-result p0

    return p0
.end method

.method public informPkgRemoved(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/android/server/zta/you/zta;->Gr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/zta/you/zta;->QZ:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OnePlusHighPowerDetector;->informPkgRemoved(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public initInstance(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/BatteryStatsService;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x64

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/oneplus/android/server/zta/you/zta;->ENABLE:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/android/server/zta/you/zta;->Gr()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/BatteryStatsService;)Lcom/android/server/am/OnePlusHighPowerDetector;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/android/server/zta/you/zta;->QZ:Lcom/android/server/am/OnePlusHighPowerDetector;

    :cond_0
    return-void
.end method

.method public postProcessOfForceStop(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/android/server/zta/you/zta;->Gr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/zta/you/zta;->QZ:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OnePlusHighPowerDetector;->postProcessOfForceStop(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public shellCommand(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/android/server/zta/you/zta;->Gr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/zta/you/zta;->QZ:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/OnePlusHighPowerDetector;->shellCommand(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public startMonitor()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/android/server/zta/you/zta;->Gr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/zta/you/zta;->QZ:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->startMonitor()V

    :cond_0
    return-void
.end method

.method public stopBgPowerHungryApp(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/android/server/zta/you/zta;->Gr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/zta/you/zta;->QZ:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OnePlusHighPowerDetector;->stopBgPowerHungryApp(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public updateWidgetPackage(Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/android/server/zta/you/zta;->Gr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/zta/you/zta;->QZ:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateWidgetPackage(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public updateWidgetPackages(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/oneplus/android/server/zta/you/zta;->Gr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/zta/you/zta;->QZ:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateWidgetPackages(Ljava/util/HashSet;)V

    :cond_0
    return-void
.end method
