.class Lcom/android/server/wm/OpPowerConsumpStats$zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OpPowerConsumpStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zta"
.end annotation


# instance fields
.field SR:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field

.field TR:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field

.field UR:Z

.field lock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/server/wm/OpPowerConsumpStats;


# direct methods
.method constructor <init>(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$zta;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$zta;->SR:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$zta;->TR:Ljava/util/HashMap;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$zta;->lock:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$zta;->UR:Z

    return-void
.end method

.method static synthetic sis(Lcom/android/server/wm/OpPowerConsumpStats$zta;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats$zta;->xp()Z

    move-result p0

    return p0
.end method

.method static synthetic tsu(Lcom/android/server/wm/OpPowerConsumpStats$zta;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats$zta;->yp()V

    return-void
.end method

.method private wp()Ljava/util/HashMap;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/OpPowerConsumpStats$zta;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$zta;->UR:Z

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$zta;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->bud(Lcom/android/server/wm/OpPowerConsumpStats;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iget-object v6, v0, Lcom/android/server/wm/OpPowerConsumpStats$zta;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v6}, Lcom/android/server/wm/OpPowerConsumpStats;->vju(Lcom/android/server/wm/OpPowerConsumpStats;)Landroid/app/usage/UsageStatsManager;

    move-result-object v6

    const-wide/32 v7, 0x5265c00

    sub-long v7, v3, v7

    invoke-virtual {v6, v7, v8, v3, v4}, Landroid/app/usage/UsageStatsManager;->queryAndAggregateUsageStats(JJ)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/usage/UsageStats;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v6

    iget-object v8, v0, Lcom/android/server/wm/OpPowerConsumpStats$zta;->SR:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/usage/UsageStats;

    const-wide/16 v9, 0x0

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v11

    goto :goto_1

    :cond_1
    move-wide v11, v9

    :goto_1
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_2
    move-wide v13, v9

    :goto_2
    add-long v15, v13, v6

    move-object v8, v1

    sub-long v0, v15, v11

    cmp-long v9, v0, v9

    if-lez v9, :cond_3

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AppInForegroundDischargeDurationTimer getCumulativeTime pkg:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " |foregroundTime:"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " |foregroundTimeStart:"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " |foregroundTimeT:"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " |cumulativeTime:"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->ka(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move-object v8, v1

    :goto_3
    move-object/from16 v0, p0

    move-object v1, v8

    goto/16 :goto_0

    :cond_5
    move-object v8, v1

    const-string v0, "AppInForegroundDischargeDurationTimer getCumulativeTime isTiming: true"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->ka(Ljava/lang/String;)V

    monitor-exit v8

    return-object v2

    :cond_6
    move-object v8, v1

    iget-object v0, v0, Lcom/android/server/wm/OpPowerConsumpStats$zta;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->bud(Lcom/android/server/wm/OpPowerConsumpStats;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "AppInForegroundDischargeDurationTimer getCumulativeTime isTiming: false"

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats;->ka(Ljava/lang/String;)V

    monitor-exit v8

    return-object v0

    :catchall_0
    move-exception v0

    move-object v8, v1

    :goto_4
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4
.end method

.method private xp()Z
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/OpPowerConsumpStats$zta;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$zta;->UR:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v1

    return v3

    :cond_0
    iput-boolean v3, v0, Lcom/android/server/wm/OpPowerConsumpStats$zta;->UR:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v0, Lcom/android/server/wm/OpPowerConsumpStats$zta;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v4}, Lcom/android/server/wm/OpPowerConsumpStats;->vju(Lcom/android/server/wm/OpPowerConsumpStats;)Landroid/app/usage/UsageStatsManager;

    move-result-object v4

    const-wide/32 v5, 0x5265c00

    sub-long v5, v2, v5

    invoke-virtual {v4, v5, v6, v2, v3}, Landroid/app/usage/UsageStatsManager;->queryAndAggregateUsageStats(JJ)Ljava/util/Map;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/wm/OpPowerConsumpStats$zta;->TR:Ljava/util/HashMap;

    if-nez v5, :cond_1

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Lcom/android/server/wm/OpPowerConsumpStats$zta;->TR:Ljava/util/HashMap;

    :cond_1
    if-eqz v4, :cond_2

    iget-object v5, v0, Lcom/android/server/wm/OpPowerConsumpStats$zta;->TR:Ljava/util/HashMap;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/android/server/wm/OpPowerConsumpStats$zta;->TR:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_2
    iget-object v4, v0, Lcom/android/server/wm/OpPowerConsumpStats$zta;->TR:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/wm/OpPowerConsumpStats$zta;->TR:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/usage/UsageStats;

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v6

    iget-object v8, v0, Lcom/android/server/wm/OpPowerConsumpStats$zta;->SR:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/usage/UsageStats;

    const-wide/16 v9, 0x0

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v11

    goto :goto_1

    :cond_3
    move-wide v11, v9

    :goto_1
    iget-object v8, v0, Lcom/android/server/wm/OpPowerConsumpStats$zta;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v8}, Lcom/android/server/wm/OpPowerConsumpStats;->bud(Lcom/android/server/wm/OpPowerConsumpStats;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v8, v0, Lcom/android/server/wm/OpPowerConsumpStats$zta;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v8}, Lcom/android/server/wm/OpPowerConsumpStats;->bud(Lcom/android/server/wm/OpPowerConsumpStats;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    goto :goto_2

    :cond_4
    move-wide v13, v9

    :goto_2
    add-long v15, v13, v6

    move-wide/from16 v17, v2

    sub-long v2, v15, v11

    cmp-long v8, v2, v9

    if-lez v8, :cond_5

    iget-object v8, v0, Lcom/android/server/wm/OpPowerConsumpStats$zta;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v8}, Lcom/android/server/wm/OpPowerConsumpStats;->bud(Lcom/android/server/wm/OpPowerConsumpStats;)Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AppInForegroundDischargeDurationTimer pauseTiming pkg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " |foregroundTime:"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |foregroundTimeStart:"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |foregroundTimePause:"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |cumulativeTime:"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->ka(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    move-wide/from16 v17, v2

    :goto_3
    move-wide/from16 v2, v17

    goto/16 :goto_0

    :cond_7
    move-wide/from16 v17, v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppInForegroundDischargeDurationTimer pauseTiming currentTime:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v17

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->ka(Ljava/lang/String;)V

    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic you(Lcom/android/server/wm/OpPowerConsumpStats$zta;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats$zta;->zp()Z

    move-result p0

    return p0
.end method

.method private yp()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$zta;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$zta;->SR:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$zta;->TR:Ljava/util/HashMap;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$zta;->UR:Z

    const-string p0, "AppInForegroundDischargeDurationTimer resetTime"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->ka(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private zp()Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$zta;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$zta;->UR:Z

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$zta;->UR:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats$zta;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v4}, Lcom/android/server/wm/OpPowerConsumpStats;->vju(Lcom/android/server/wm/OpPowerConsumpStats;)Landroid/app/usage/UsageStatsManager;

    move-result-object v4

    const-wide/32 v5, 0x5265c00

    sub-long v5, v2, v5

    invoke-virtual {v4, v5, v6, v2, v3}, Landroid/app/usage/UsageStatsManager;->queryAndAggregateUsageStats(JJ)Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/OpPowerConsumpStats$zta;->SR:Ljava/util/HashMap;

    if-nez v5, :cond_1

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/OpPowerConsumpStats$zta;->SR:Ljava/util/HashMap;

    :cond_1
    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/android/server/wm/OpPowerConsumpStats$zta;->SR:Ljava/util/HashMap;

    if-eqz v5, :cond_2

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$zta;->SR:Ljava/util/HashMap;

    invoke-virtual {p0, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppInForegroundDischargeDurationTimer startTiming currentTime:"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->ka(Ljava/lang/String;)V

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats$zta;)Ljava/util/HashMap;
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats$zta;->wp()Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method
