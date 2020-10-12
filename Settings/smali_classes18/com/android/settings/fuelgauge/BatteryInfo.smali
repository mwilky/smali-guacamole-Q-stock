.class public Lcom/android/settings/fuelgauge/BatteryInfo;
.super Ljava/lang/Object;
.source "BatteryInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;,
        Lcom/android/settings/fuelgauge/BatteryInfo$Callback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BatteryInfo"


# instance fields
.field public averageTimeToDischarge:J

.field public batteryLevel:I

.field public batteryPercentString:Ljava/lang/String;

.field public chargeLabel:Ljava/lang/CharSequence;

.field public discharging:Z

.field private mCharging:Z

.field private mStats:Landroid/os/BatteryStats;

.field public remainingLabel:Ljava/lang/CharSequence;

.field public remainingTimeUs:J

.field public statusLabel:Ljava/lang/String;

.field public suggestionLabel:Ljava/lang/String;

.field private timePeriod:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->discharging:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->averageTimeToDischarge:J

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/BatteryInfo;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->timePeriod:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/settings/fuelgauge/BatteryInfo;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->timePeriod:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/settings/fuelgauge/BatteryInfo;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->mCharging:Z

    return v0
.end method

.method public static getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;Lcom/android/settingslib/fuelgauge/Estimate;JZ)Lcom/android/settings/fuelgauge/BatteryInfo;
    .locals 15
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v6, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    new-instance v0, Lcom/android/settings/fuelgauge/BatteryInfo;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/BatteryInfo;-><init>()V

    move-object v9, v0

    move-object/from16 v10, p2

    iput-object v10, v9, Lcom/android/settings/fuelgauge/BatteryInfo;->mStats:Landroid/os/BatteryStats;

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->getBatteryLevel(Landroid/content/Intent;)I

    move-result v0

    iput v0, v9, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryLevel:I

    iget v0, v9, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryLevel:I

    invoke-static {v0}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "plugged"

    invoke-virtual {v6, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, v9, Lcom/android/settings/fuelgauge/BatteryInfo;->mCharging:Z

    invoke-virtual/range {p3 .. p3}, Lcom/android/settingslib/fuelgauge/Estimate;->getAverageDischargeTime()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/android/settings/fuelgauge/BatteryInfo;->averageTimeToDischarge:J

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-static {v11, v6}, Lcom/android/settings/Utils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/settings/fuelgauge/BatteryInfo;->statusLabel:Ljava/lang/String;

    iget-boolean v0, v9, Lcom/android/settings/fuelgauge/BatteryInfo;->mCharging:Z

    if-nez v0, :cond_1

    move-object v12, p0

    move-object/from16 v13, p3

    move/from16 v14, p6

    invoke-static {p0, v14, v13, v9}, Lcom/android/settings/fuelgauge/BatteryInfo;->updateBatteryInfoDischarging(Landroid/content/Context;ZLcom/android/settingslib/fuelgauge/Estimate;Lcom/android/settings/fuelgauge/BatteryInfo;)V

    goto :goto_0

    :cond_1
    move-object v12, p0

    move-object/from16 v13, p3

    move/from16 v14, p6

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p4

    move-object v5, v9

    invoke-static/range {v0 .. v5}, Lcom/android/settings/fuelgauge/BatteryInfo;->updateBatteryInfoCharging(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;JLcom/android/settings/fuelgauge/BatteryInfo;)V

    :goto_0
    const-string v0, "BatteryInfo"

    const-string v1, "time for getBatteryInfo"

    invoke-static {v0, v1, v7, v8}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v9
.end method

.method public static getBatteryInfo(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsHelper;Z)Lcom/android/settings/fuelgauge/BatteryInfo;
    .locals 27

    move-object/from16 v7, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    new-instance v2, Lcom/android/internal/os/BatteryStatsHelper;

    invoke-direct {v2, v7, v1}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    move-object v3, v0

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v2

    move-object v10, v2

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v2

    move-object v10, v2

    :goto_0
    const-string v2, "BatteryInfo"

    const-string v3, "time for getStats"

    invoke-static {v2, v3, v8, v9}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    nop

    invoke-static/range {p0 .. p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object v13

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/settingslib/utils/PowerUtil;->convertMsToUs(J)J

    move-result-wide v14

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v6

    const/4 v0, -0x1

    const-string v3, "plugged"

    invoke-virtual {v6, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move/from16 v16, v1

    if-eqz v16, :cond_4

    if-eqz v13, :cond_4

    invoke-interface {v13, v7}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isEnhancedBatteryPredictionEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v13, v7}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getEnhancedBatteryPrediction(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/Estimate;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v7, v4}, Lcom/android/settingslib/fuelgauge/Estimate;->storeCachedEstimate(Landroid/content/Context;Lcom/android/settingslib/fuelgauge/Estimate;)V

    nop

    const-string v0, "time for enhanced BatteryInfo"

    invoke-static {v2, v0, v11, v12}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v10

    move-object v3, v4

    move-object/from16 v17, v4

    move-wide v4, v14

    move-object/from16 v18, v6

    move/from16 v6, p2

    invoke-static/range {v0 .. v6}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;Lcom/android/settingslib/fuelgauge/Estimate;JZ)Lcom/android/settings/fuelgauge/BatteryInfo;

    move-result-object v0

    return-object v0

    :cond_2
    move-object/from16 v17, v4

    move-object/from16 v18, v6

    goto :goto_2

    :cond_3
    move-object/from16 v18, v6

    goto :goto_2

    :cond_4
    move-object/from16 v18, v6

    :goto_2
    if-eqz v16, :cond_5

    invoke-virtual {v10, v14, v15}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v0

    goto :goto_3

    :cond_5
    const-wide/16 v0, 0x0

    :goto_3
    move-wide/from16 v19, v0

    new-instance v0, Lcom/android/settingslib/fuelgauge/Estimate;

    invoke-static/range {v19 .. v20}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v22

    const/16 v24, 0x0

    const-wide/16 v25, -0x1

    move-object/from16 v21, v0

    invoke-direct/range {v21 .. v26}, Lcom/android/settingslib/fuelgauge/Estimate;-><init>(JZJ)V

    move-object v3, v0

    const-string v0, "time for regular BatteryInfo"

    invoke-static {v2, v0, v11, v12}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object v2, v10

    move-wide v4, v14

    move/from16 v6, p2

    invoke-static/range {v0 .. v6}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;Lcom/android/settingslib/fuelgauge/Estimate;JZ)Lcom/android/settings/fuelgauge/BatteryInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getBatteryInfo(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo$Callback;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo$Callback;Lcom/android/internal/os/BatteryStatsHelper;Z)V

    return-void
.end method

.method public static getBatteryInfo(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo$Callback;Lcom/android/internal/os/BatteryStatsHelper;Z)V
    .locals 2

    new-instance v0, Lcom/android/settings/fuelgauge/BatteryInfo$2;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/settings/fuelgauge/BatteryInfo$2;-><init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsHelper;ZLcom/android/settings/fuelgauge/BatteryInfo$Callback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatteryInfo$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static getBatteryInfo(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo$Callback;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo$Callback;Lcom/android/internal/os/BatteryStatsHelper;Z)V

    return-void
.end method

.method public static getBatteryInfoOld(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;JZ)Lcom/android/settings/fuelgauge/BatteryInfo;
    .locals 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    new-instance v6, Lcom/android/settingslib/fuelgauge/Estimate;

    invoke-virtual {p2, p3, p4}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v1

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/fuelgauge/Estimate;-><init>(JZJ)V

    move-object v3, v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;Lcom/android/settingslib/fuelgauge/Estimate;JZ)Lcom/android/settings/fuelgauge/BatteryInfo;

    move-result-object v0

    return-object v0
.end method

.method public static varargs parse(Landroid/os/BatteryStats;[Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;)V
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-wide v10, v2

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v19

    const-wide/16 v20, 0x0

    move-wide/from16 v22, v2

    const/4 v3, 0x5

    if-eqz v19, :cond_7

    new-instance v19, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct/range {v19 .. v19}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    move-object/from16 v24, v19

    :goto_0
    move-object/from16 v2, v24

    invoke-virtual {v0, v2}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v24

    if-eqz v24, :cond_6

    add-int/lit8 v17, v17, 0x1

    if-eqz v18, :cond_0

    const/16 v18, 0x0

    iget-wide v6, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    :cond_0
    move-wide/from16 v24, v4

    iget-byte v4, v2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-eq v4, v3, :cond_1

    iget-byte v4, v2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v5, 0x7

    if-ne v4, v5, :cond_4

    :cond_1
    iget-wide v4, v2, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    const-wide v26, 0x39ef8b000L

    add-long v26, v12, v26

    cmp-long v4, v4, v26

    if-gtz v4, :cond_2

    iget-wide v4, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    const-wide/32 v26, 0x493e0

    add-long v26, v6, v26

    cmp-long v4, v4, v26

    if-gez v4, :cond_3

    :cond_2
    const-wide/16 v22, 0x0

    :cond_3
    iget-wide v12, v2, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    iget-wide v14, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    cmp-long v4, v22, v20

    if-nez v4, :cond_4

    sub-long v4, v14, v6

    sub-long v22, v12, v4

    :cond_4
    invoke-virtual {v2}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v4

    if-eqz v4, :cond_5

    move/from16 v16, v17

    iget-wide v8, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v4, v24

    move-object/from16 v24, v2

    goto :goto_0

    :cond_5
    move-wide/from16 v4, v24

    move-object/from16 v24, v2

    goto :goto_0

    :cond_6
    move-wide/from16 v24, v4

    move-wide/from16 v4, v22

    goto :goto_1

    :cond_7
    move-wide/from16 v24, v4

    move-wide/from16 v4, v22

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    add-long v22, v12, v8

    move-wide/from16 v26, v4

    sub-long v3, v22, v14

    const/4 v5, 0x0

    move/from16 v22, v16

    const/16 v23, 0x0

    move/from16 v2, v23

    :goto_2
    move/from16 v23, v5

    array-length v5, v1

    if-ge v2, v5, :cond_8

    aget-object v5, v1, v2

    move-wide/from16 v28, v8

    move-wide/from16 v8, v26

    invoke-interface {v5, v8, v9, v3, v4}, Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;->onParsingStarted(JJ)V

    add-int/lit8 v2, v2, 0x1

    move/from16 v5, v23

    move-wide/from16 v8, v28

    goto :goto_2

    :cond_8
    move-wide/from16 v28, v8

    move-wide/from16 v8, v26

    cmp-long v2, v3, v8

    if-lez v2, :cond_14

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v2

    if-eqz v2, :cond_14

    new-instance v2, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    move-object v5, v2

    move-wide/from16 v25, v10

    move/from16 v10, v23

    :goto_3
    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v2

    if-eqz v2, :cond_13

    move/from16 v11, v22

    if-ge v10, v11, :cond_12

    invoke-virtual {v5}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v2

    if-eqz v2, :cond_b

    move-wide/from16 v30, v3

    iget-wide v2, v5, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long/2addr v2, v14

    add-long v25, v25, v2

    iget-wide v2, v5, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v14, v25, v8

    cmp-long v4, v14, v20

    if-gez v4, :cond_9

    const-wide/16 v14, 0x0

    :cond_9
    const/4 v4, 0x0

    :goto_4
    array-length v0, v1

    if-ge v4, v0, :cond_a

    aget-object v0, v1, v4

    invoke-interface {v0, v14, v15, v5}, Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;->onDataPoint(JLandroid/os/BatteryStats$HistoryItem;)V

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    goto :goto_4

    :cond_a
    move-wide v14, v2

    const/4 v2, 0x5

    goto :goto_9

    :cond_b
    move-wide/from16 v30, v3

    move-wide/from16 v3, v25

    iget-byte v0, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v2, 0x5

    if-eq v0, v2, :cond_d

    iget-byte v0, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v2, 0x7

    if-ne v0, v2, :cond_c

    goto :goto_5

    :cond_c
    move-wide/from16 v22, v3

    goto :goto_7

    :cond_d
    const/4 v2, 0x7

    :goto_5
    move-wide/from16 v22, v3

    iget-wide v2, v5, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    cmp-long v0, v2, v8

    if-ltz v0, :cond_e

    iget-wide v2, v5, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v25, v2

    goto :goto_6

    :cond_e
    iget-wide v2, v5, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long/2addr v2, v6

    add-long/2addr v2, v8

    move-wide/from16 v25, v2

    :goto_6
    iget-wide v14, v5, Landroid/os/BatteryStats$HistoryItem;->time:J

    :goto_7
    iget-byte v0, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v2, 0x6

    if-eq v0, v2, :cond_10

    iget-byte v0, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v2, 0x5

    if-ne v0, v2, :cond_f

    sub-long v3, v22, v25

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/32 v32, 0x36ee80

    cmp-long v0, v3, v32

    if-lez v0, :cond_11

    :cond_f
    const/4 v0, 0x0

    :goto_8
    array-length v3, v1

    if-ge v0, v3, :cond_11

    aget-object v3, v1, v0

    invoke-interface {v3}, Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;->onDataGap()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_10
    const/4 v2, 0x5

    :cond_11
    :goto_9
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v22, v11

    move-wide/from16 v3, v30

    goto/16 :goto_3

    :cond_12
    move-wide/from16 v30, v3

    goto :goto_a

    :cond_13
    move-wide/from16 v30, v3

    move/from16 v11, v22

    :goto_a
    move/from16 v23, v10

    move v0, v11

    goto :goto_b

    :cond_14
    move-wide/from16 v30, v3

    move/from16 v0, v22

    move-wide/from16 v25, v10

    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    const/4 v2, 0x0

    :goto_c
    array-length v3, v1

    if-ge v2, v3, :cond_15

    aget-object v3, v1, v2

    invoke-interface {v3}, Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;->onParsingDone()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_15
    return-void
.end method

.method private static updateBatteryInfoCharging(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;JLcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual/range {p2 .. p4}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v3

    const/4 v5, 0x1

    const-string v6, "status"

    move-object v7, p1

    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/android/settings/fuelgauge/BatteryInfo;->discharging:Z

    const/4 v9, 0x0

    iput-object v9, v1, Lcom/android/settings/fuelgauge/BatteryInfo;->suggestionLabel:Ljava/lang/String;

    const-wide/16 v10, 0x0

    cmp-long v10, v3, v10

    const/4 v11, 0x2

    if-lez v10, :cond_0

    const/4 v10, 0x5

    if-eq v6, v10, :cond_0

    iput-wide v3, v1, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    iget-wide v9, v1, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    invoke-static {v9, v10}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v9

    long-to-double v9, v9

    invoke-static {p0, v9, v10, v8}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object v9

    const v10, 0x7f1211bd

    const v12, 0x7f1211cd

    new-array v13, v5, [Ljava/lang/Object;

    aput-object v9, v13, v8

    invoke-virtual {p0, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v1, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    new-array v11, v11, [Ljava/lang/Object;

    iget-object v12, v1, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    aput-object v12, v11, v8

    aput-object v9, v11, v5

    invoke-virtual {p0, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/settings/fuelgauge/BatteryInfo;->chargeLabel:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_0
    const v10, 0x7f120261

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v9, v1, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    iget v9, v1, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryLevel:I

    const/16 v12, 0x64

    if-ne v9, v12, :cond_1

    iget-object v5, v1, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const v9, 0x7f1211bc

    new-array v11, v11, [Ljava/lang/Object;

    iget-object v12, v1, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    aput-object v12, v11, v8

    aput-object v10, v11, v5

    invoke-virtual {v2, v9, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    iput-object v5, v1, Lcom/android/settings/fuelgauge/BatteryInfo;->chargeLabel:Ljava/lang/CharSequence;

    :goto_1
    return-void
.end method

.method private static updateBatteryInfoDischarging(Landroid/content/Context;ZLcom/android/settingslib/fuelgauge/Estimate;Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 8

    invoke-virtual {p2}, Lcom/android/settingslib/fuelgauge/Estimate;->getEstimateMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertMsToUs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-lez v2, :cond_2

    iput-wide v0, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    nop

    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/android/settingslib/fuelgauge/Estimate;->isBasedOnUsage()Z

    move-result v2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    move v2, v6

    goto :goto_0

    :cond_0
    move v2, v7

    :goto_0
    invoke-static {p0, v4, v5, v3, v2}, Lcom/android/settingslib/utils/PowerUtil;->getBatteryRemainingStringFormatted(Landroid/content/Context;JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    nop

    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v2

    iget-object v4, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/settingslib/fuelgauge/Estimate;->isBasedOnUsage()Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v6, v7

    :goto_1
    invoke-static {p0, v2, v3, v4, v6}, Lcom/android/settingslib/utils/PowerUtil;->getBatteryRemainingStringFormatted(Landroid/content/Context;JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->chargeLabel:Ljava/lang/CharSequence;

    nop

    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/android/settingslib/utils/PowerUtil;->getBatteryTipStringFormatted(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->suggestionLabel:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iput-object v3, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    iput-object v3, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->suggestionLabel:Ljava/lang/String;

    iget-object v2, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    iput-object v2, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->chargeLabel:Ljava/lang/CharSequence;

    :goto_2
    return-void
.end method


# virtual methods
.method public varargs bindHistory(Lcom/android/settings/widget/UsageView;[Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;)V
    .locals 13

    invoke-virtual {p1}, Lcom/android/settings/widget/UsageView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fuelgauge/BatteryInfo$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryInfo$1;-><init>(Lcom/android/settings/fuelgauge/BatteryInfo;Lcom/android/settings/widget/UsageView;Landroid/content/Context;)V

    array-length v2, p2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;

    const/4 v4, 0x0

    :goto_0
    array-length v5, p2

    if-ge v4, v5, :cond_0

    aget-object v5, p2, v4

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    array-length v4, p2

    aput-object v1, v2, v4

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->mStats:Landroid/os/BatteryStats;

    invoke-static {v4, v2}, Lcom/android/settings/fuelgauge/BatteryInfo;->parse(Landroid/os/BatteryStats;[Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;)V

    const v4, 0x7f12042f

    new-array v5, v3, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->timePeriod:J

    invoke-static {v0, v6, v7}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    iget-wide v8, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-eqz v6, :cond_1

    const v6, 0x7f1212d3

    new-array v10, v3, [Ljava/lang/Object;

    const-wide/16 v11, 0x3e8

    div-long/2addr v8, v11

    invoke-static {v0, v8, v9}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v10, v7

    invoke-virtual {v0, v6, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :cond_1
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/CharSequence;

    aput-object v4, v6, v7

    aput-object v5, v6, v3

    invoke-virtual {p1, v6}, Lcom/android/settings/widget/UsageView;->setBottomLabels([Ljava/lang/CharSequence;)V

    return-void
.end method
