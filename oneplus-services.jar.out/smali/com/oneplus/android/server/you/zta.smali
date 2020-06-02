.class public Lcom/oneplus/android/server/you/zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/android/server/power/IStandbyDetect;


# static fields
.field private static DEBUG_ONEPLUS:Z = false

.field private static final TAG:Ljava/lang/String; = "StandbyDetect"

.field private static bga:Lcom/android/server/power/OnePlusStandbyAnalyzer;


# instance fields
.field private QI:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/you/zta;->DEBUG_ONEPLUS:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/android/server/you/zta;->bga:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/you/zta;->QI:Z

    return-void
.end method


# virtual methods
.method public checkIfHitBatteryLowLocked(Landroid/content/Intent;)V
    .locals 0

    sget-object p0, Lcom/oneplus/android/server/you/zta;->bga:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->checkIfHitBatteryLowLocked(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public dumpStandbyStats(Ljava/io/PrintWriter;)V
    .locals 0

    sget-object p0, Lcom/oneplus/android/server/you/zta;->bga:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->dumpStandbyStats(Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method public enteringDeepIdleLocked()V
    .locals 0

    sget-object p0, Lcom/oneplus/android/server/you/zta;->bga:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->enteringDeepIdleLocked()V

    :cond_0
    return-void
.end method

.method public initInstance(Lcom/android/server/DeviceIdleController;)V
    .locals 1

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-boolean p0, p0, Lcom/oneplus/android/server/you/zta;->QI:Z

    invoke-direct {v0, p1, p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;-><init>(Lcom/android/server/DeviceIdleController;Z)V

    sput-object v0, Lcom/oneplus/android/server/you/zta;->bga:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    return-void
.end method

.method public leavingDeepIdleLocked(Z)V
    .locals 0

    sget-object p0, Lcom/oneplus/android/server/you/zta;->bga:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->leavingDeepIdleLocked(Z)V

    :cond_0
    return-void
.end method

.method public notifyEnterDeepIdle()V
    .locals 0

    sget-object p0, Lcom/oneplus/android/server/you/zta;->bga:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->notifyEnterDeepIdle()V

    :cond_0
    return-void
.end method

.method public resetTimeofDeepIdleStart()V
    .locals 0

    sget-object p0, Lcom/oneplus/android/server/you/zta;->bga:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->resetTimeofDeepIdleStart()V

    :cond_0
    return-void
.end method

.method public setInBatteryStatsService(Lcom/android/server/am/BatteryStatsService;)V
    .locals 0

    sget-object p0, Lcom/oneplus/android/server/you/zta;->bga:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-virtual {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->setInBatteryStatsService(Lcom/android/server/am/BatteryStatsService;)V

    return-void
.end method

.method public shellCommand(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/os/ShellCommand;)Z
    .locals 0

    sget-object p0, Lcom/oneplus/android/server/you/zta;->bga:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->shellCommand(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/os/ShellCommand;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public update1stLightIdleStatus(Z)V
    .locals 0

    sget-object p0, Lcom/oneplus/android/server/you/zta;->bga:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->g(Z)V

    :cond_0
    return-void
.end method

.method public updateScreenStatus(Z)V
    .locals 0

    sget-object p0, Lcom/oneplus/android/server/you/zta;->bga:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->updateScreenStatus(Z)V

    :cond_0
    return-void
.end method
