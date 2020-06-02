.class public final Lcom/android/server/am/OnePlusBGController$ssp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ssp"
.end annotation


# instance fields
.field private rm:Lcom/android/server/am/OnePlusBGController$SnapshotType;

.field private sm:I

.field final synthetic this$0:Lcom/android/server/am/OnePlusBGController;

.field private tm:F


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusBGController;Lcom/android/server/am/OnePlusBGController$SnapshotType;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController$ssp;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/OnePlusBGController$ssp;->rm:Lcom/android/server/am/OnePlusBGController$SnapshotType;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/OnePlusBGController;Lcom/android/server/am/OnePlusBGController$SnapshotType;IF)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController$ssp;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/OnePlusBGController$ssp;->rm:Lcom/android/server/am/OnePlusBGController$SnapshotType;

    iput p3, p0, Lcom/android/server/am/OnePlusBGController$ssp;->sm:I

    iput p4, p0, Lcom/android/server/am/OnePlusBGController$ssp;->tm:F

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$ssp;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->zta(Lcom/android/server/am/OnePlusBGController;)Lcom/android/server/am/BatteryStatsService;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/android/server/am/veq;->om:[I

    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController$ssp;->rm:Lcom/android/server/am/OnePlusBGController$SnapshotType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_6

    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v2, "======CALCULATE======"

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$ssp;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->ugm(Lcom/android/server/am/OnePlusBGController;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$ssp;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->vdb(Lcom/android/server/am/OnePlusBGController;)V

    goto :goto_0

    :cond_1
    const-string v2, "No round-flush, so skip calculating..."

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController$ssp;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {p0, v4}, Lcom/android/server/am/OnePlusBGController;->you(Lcom/android/server/am/OnePlusBGController;Z)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@@@[End] Calculate & Judge in "

    goto/16 :goto_3

    :cond_2
    const-string v2, "======ONESHOT======"

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$ssp;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->gwm(Lcom/android/server/am/OnePlusBGController;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->access$1000()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v0, "Exceed the reset period, just budget reset..."

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController$ssp;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {p0}, Lcom/android/server/am/OnePlusBGController;->ear(Lcom/android/server/am/OnePlusBGController;)V

    return-void

    :cond_3
    invoke-static {}, Lcom/android/server/am/BatteryStatsServiceInjector;->flushExternal()V

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$ssp;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->zta(Lcom/android/server/am/OnePlusBGController;)Lcom/android/server/am/BatteryStatsService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/OnePlusBGController$ssp;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v5}, Lcom/android/server/am/OnePlusBGController;->tsu(Lcom/android/server/am/OnePlusBGController;)Lcom/android/internal/os/MyBatteryStatsHelper;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/internal/os/MyBatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    iget-object v5, p0, Lcom/android/server/am/OnePlusBGController$ssp;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v5}, Lcom/android/server/am/OnePlusBGController;->tsu(Lcom/android/server/am/OnePlusBGController;)Lcom/android/internal/os/MyBatteryStatsHelper;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v4, v6}, Lcom/android/internal/os/MyBatteryStatsHelper;->refreshStats(II)V

    if-eqz v2, :cond_4

    iget-object v5, p0, Lcom/android/server/am/OnePlusBGController$ssp;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v5}, Lcom/android/server/am/OnePlusBGController;->tsu(Lcom/android/server/am/OnePlusBGController;)Lcom/android/internal/os/MyBatteryStatsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/os/MyBatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/OnePlusBGController$ssp;->this$0:Lcom/android/server/am/OnePlusBGController;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, v6, Lcom/android/server/am/OnePlusBGController;->nn:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSippersOfOneShot size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/OnePlusBGController$ssp;->this$0:Lcom/android/server/am/OnePlusBGController;

    iget-object v6, v6, Lcom/android/server/am/OnePlusBGController;->nn:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-static {v5}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v5, "stats == null"

    goto :goto_1

    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$ssp;->this$0:Lcom/android/server/am/OnePlusBGController;

    iget-object v5, v2, Lcom/android/server/am/OnePlusBGController;->nn:Ljava/util/List;

    iget-object v2, v2, Lcom/android/server/am/OnePlusBGController;->sn:Ljava/util/Comparator;

    invoke-static {v5, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$ssp;->this$0:Lcom/android/server/am/OnePlusBGController;

    iget-object v5, v2, Lcom/android/server/am/OnePlusBGController;->nn:Ljava/util/List;

    invoke-static {v2, v5}, Lcom/android/server/am/OnePlusBGController;->you(Lcom/android/server/am/OnePlusBGController;Ljava/util/List;)V

    sget-boolean v2, Lcom/android/server/am/OnePlusBGController;->yn:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$ssp;->this$0:Lcom/android/server/am/OnePlusBGController;

    iget-object v5, v2, Lcom/android/server/am/OnePlusBGController;->nn:Ljava/util/List;

    const-string v6, "ONESHOT"

    invoke-static {v2, v6, v5, v4}, Lcom/android/server/am/OnePlusBGController;->zta(Lcom/android/server/am/OnePlusBGController;Ljava/lang/String;Ljava/util/List;Z)V

    :cond_5
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$ssp;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusBGController;->you(Lcom/android/server/am/OnePlusBGController;Z)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@@@[START] SnapShot in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController$ssp;->this$0:Lcom/android/server/am/OnePlusBGController;

    sget-object v0, Lcom/android/server/am/OnePlusBGController$SnapshotType;->hla:Lcom/android/server/am/OnePlusBGController$SnapshotType;

    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusBGController;->you(Lcom/android/server/am/OnePlusBGController$SnapshotType;)V

    goto :goto_5

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_6
    const-string v2, "======INIT_OBSERVE======"

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    new-array v2, v3, [I

    const/16 v3, 0x8e

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$ssp;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->oif(Lcom/android/server/am/OnePlusBGController;)V

    :cond_7
    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController$ssp;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {p0}, Lcom/android/server/am/OnePlusBGController;->ibl(Lcom/android/server/am/OnePlusBGController;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@@@[START] Init-Observing in "

    :goto_3
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_8
    const-string p0, "mBatteryStatsService == null"

    :goto_4
    invoke-static {p0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    :goto_5
    return-void
.end method
