.class public Lcom/android/server/am/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/am/IOpAppBootManager;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "OpAppBootManager"


# instance fields
.field private rx:Lcom/android/server/am/zgw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/o;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/o;->rx:Lcom/android/server/am/zgw;

    return-void
.end method

.method private Mn()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/o;->rx:Lcom/android/server/am/zgw;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private kth(Landroid/content/pm/ApplicationInfo;)Z
    .locals 0

    if-eqz p1, :cond_1

    iget-object p0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string p1, "com.baidu.input_yijia"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "com.oppo.market"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "com.nearme.atlas"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, -0x1

    const-string p1, "ro.product.first_api_level"

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/16 p1, 0x1c

    if-le p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addDependencyPackageFlag(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/o;->Mn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/o;->rx:Lcom/android/server/am/zgw;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/zgw;->addDependencyPackageFlag(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public canActivityGo(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/o;->Mn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/o;->rx:Lcom/android/server/am/zgw;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/zgw;->canActivityGo(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public canInstrumentationGo(Landroid/content/ComponentName;II)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/o;->Mn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/o;->rx:Lcom/android/server/am/zgw;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/zgw;->canInstrumentationGo(Landroid/content/ComponentName;II)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public canJobSchedulerServiceGo(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/o;->Mn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/o;->rx:Lcom/android/server/am/zgw;

    invoke-virtual {p0, p1}, Lcom/android/server/am/zgw;->canJobSchedulerServiceGo(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public canKillProcessService(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/o;->Mn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/o;->rx:Lcom/android/server/am/zgw;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/zgw;->canKillProcessService(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public canNotificationListenerServiceGo(Landroid/content/ComponentName;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/o;->Mn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/o;->rx:Lcom/android/server/am/zgw;

    invoke-virtual {p0, p1}, Lcom/android/server/am/zgw;->canNotificationListenerServiceGo(Landroid/content/ComponentName;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public canProcGo(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/o;->Mn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/o;->rx:Lcom/android/server/am/zgw;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/zgw;->canProcGo(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public canProviderGo(Lcom/android/server/am/ContentProviderRecord;Lcom/android/server/am/ProcessRecord;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/o;->Mn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/o;->rx:Lcom/android/server/am/zgw;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/zgw;->canProviderGo(Lcom/android/server/am/ContentProviderRecord;Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public canReceiverGo(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/o;->Mn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/o;->rx:Lcom/android/server/am/zgw;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/zgw;->canReceiverGo(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public canScheduleServiceRestart(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/o;->Mn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/o;->rx:Lcom/android/server/am/zgw;

    invoke-virtual {p0, p1}, Lcom/android/server/am/zgw;->canScheduleServiceRestart(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public canServiceGo(Lcom/android/server/am/ProcessRecord;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ILjava/lang/String;)Z
    .locals 7

    invoke-direct {p0}, Lcom/android/server/am/o;->Mn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/o;->rx:Lcom/android/server/am/zgw;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/zgw;->canServiceGo(Lcom/android/server/am/ProcessRecord;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public checkAppInfo(ILandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/o;->Mn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3c0000

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/am/o;->kth(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, -0x5

    iput p0, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_0
    return-object p2
.end method

.method public getScreenState()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/o;->Mn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/o;->rx:Lcom/android/server/am/zgw;

    invoke-virtual {p0}, Lcom/android/server/am/zgw;->getScreenState()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public handleAppKilledLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/o;->Mn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/o;->rx:Lcom/android/server/am/zgw;

    invoke-virtual {p0, p1}, Lcom/android/server/am/zgw;->handleAppKilledLocked(Lcom/android/server/am/ProcessRecord;)V

    :cond_0
    return-void
.end method

.method public initEnv(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/o;->Mn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/o;->rx:Lcom/android/server/am/zgw;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/zgw;->initEnv(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public initPackages(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/am/o;->Mn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/server/am/zgw;->zta(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/zgw;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/o;->rx:Lcom/android/server/am/zgw;

    iget-object p0, p0, Lcom/android/server/am/o;->rx:Lcom/android/server/am/zgw;

    invoke-virtual {p0, p2}, Lcom/android/server/am/zgw;->zta(Landroid/util/ArrayMap;)V

    :cond_0
    return-void
.end method

.method public isBlackJobClass(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/o;->Mn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/o;->rx:Lcom/android/server/am/zgw;

    invoke-virtual {p0, p1}, Lcom/android/server/am/zgw;->isBlackJobClass(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isDebug()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/o;->Mn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/o;->rx:Lcom/android/server/am/zgw;

    invoke-virtual {p0}, Lcom/android/server/am/zgw;->isDebug()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isNotAppUserSetted(Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/o;->Mn()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/android/server/am/zgw;->isNotAppUserSetted(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public myLog(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    return-void
.end method

.method public setCurrentIME(Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/o;->Mn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/o;->rx:Lcom/android/server/am/zgw;

    invoke-virtual {p0, p1}, Lcom/android/server/am/zgw;->setCurrentIME(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public setCurrentWallpaperPackage(Landroid/content/ComponentName;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/o;->Mn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/o;->rx:Lcom/android/server/am/zgw;

    invoke-virtual {p0, p1}, Lcom/android/server/am/zgw;->setCurrentWallpaperPackage(Landroid/content/ComponentName;)V

    :cond_0
    return-void
.end method

.method public skipBroadcast(Landroid/content/Intent;Ljava/lang/String;IILcom/android/server/am/ProcessRecord;)Z
    .locals 7

    invoke-direct {p0}, Lcom/android/server/am/o;->Mn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/o;->rx:Lcom/android/server/am/zgw;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/zgw;->skipBroadcast(Landroid/content/Intent;Ljava/lang/String;IILcom/android/server/am/ProcessRecord;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public trackProcess(ZLcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/o;->Mn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/o;->rx:Lcom/android/server/am/zgw;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/zgw;->trackProcess(ZLcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateAccesibilityServiceFlag(Landroid/content/Intent;Landroid/content/ComponentName;I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/o;->Mn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/o;->rx:Lcom/android/server/am/zgw;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/zgw;->updateAccesibilityServiceFlag(Landroid/content/Intent;Landroid/content/ComponentName;I)V

    :cond_0
    return-void
.end method

.method public updateAppStopInfo(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/o;->Mn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/o;->rx:Lcom/android/server/am/zgw;

    invoke-virtual {p0, p1}, Lcom/android/server/am/zgw;->updateAppStopInfo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateAppStopInfo(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/o;->Mn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/o;->rx:Lcom/android/server/am/zgw;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/zgw;->updateAppStopInfo(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public updatePowerFlag(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/o;->Mn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/o;->rx:Lcom/android/server/am/zgw;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/zgw;->updatePowerFlag(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public updateWidgetPackage(Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/o;->Mn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/o;->rx:Lcom/android/server/am/zgw;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/zgw;->updateWidgetPackage(Ljava/lang/String;Z)V

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

    invoke-direct {p0}, Lcom/android/server/am/o;->Mn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/o;->rx:Lcom/android/server/am/zgw;

    invoke-virtual {p0, p1}, Lcom/android/server/am/zgw;->updateWidgetPackages(Ljava/util/HashSet;)V

    :cond_0
    return-void
.end method
