.class final Lcom/android/server/am/AppCompactor$MemCompactionHandler;
.super Landroid/os/Handler;
.source "AppCompactor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppCompactor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MemCompactionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppCompactor;


# direct methods
.method private constructor <init>(Lcom/android/server/am/AppCompactor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-object p1, p1, Lcom/android/server/am/AppCompactor;->mCompactionThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/AppCompactor;Lcom/android/server/am/AppCompactor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/AppCompactor$MemCompactionHandler;-><init>(Lcom/android/server/am/AppCompactor;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 61

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const-wide/16 v3, 0x40

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_0

    goto/16 :goto_10

    :cond_0
    const-string v0, "compactSystem"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v0}, Lcom/android/server/am/AppCompactor;->access$1800(Lcom/android/server/am/AppCompactor;)V

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_10

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget v15, v2, Landroid/os/Message;->arg1:I

    iget v13, v2, Landroid/os/Message;->arg2:I

    iget-object v0, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v0}, Lcom/android/server/am/AppCompactor;->access$1000(Lcom/android/server/am/AppCompactor;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v9

    monitor-enter v9

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v0}, Lcom/android/server/am/AppCompactor;->access$1100(Lcom/android/server/am/AppCompactor;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move-object v14, v0

    iget v0, v14, Lcom/android/server/am/ProcessRecord;->reqCompactAction:I

    move v12, v0

    iget v0, v14, Lcom/android/server/am/ProcessRecord;->pid:I

    move v11, v0

    iget-object v0, v14, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v40, v0

    if-eq v12, v6, :cond_3

    if-ne v12, v5, :cond_2

    goto :goto_0

    :cond_2
    move-object/from16 v4, v40

    goto :goto_2

    :cond_3
    :goto_0
    iget v0, v14, Lcom/android/server/am/ProcessRecord;->setAdj:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    const/16 v3, 0xc8

    if-gt v0, v3, :cond_5

    :try_start_1
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_4

    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping compaction as process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v40

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is now perceptible."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    move-object/from16 v4, v40

    :goto_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v0

    move-wide/from16 v52, v7

    move/from16 v55, v13

    move/from16 v59, v15

    goto/16 :goto_11

    :cond_5
    move-object/from16 v4, v40

    :goto_2
    :try_start_2
    iget v0, v14, Lcom/android/server/am/ProcessRecord;->lastCompactAction:I

    move v3, v0

    iget-wide v5, v14, Lcom/android/server/am/ProcessRecord;->lastCompactTime:J

    iget-object v0, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v0}, Lcom/android/server/am/AppCompactor;->access$1200(Lcom/android/server/am/AppCompactor;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppCompactor$LastCompactionStats;

    move-object/from16 v40, v0

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-nez v11, :cond_6

    return-void

    :cond_6
    const-wide/16 v9, 0x0

    cmp-long v0, v5, v9

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    if-ne v12, v0, :cond_b

    if-ne v3, v0, :cond_8

    sub-long v21, v7, v5

    iget-object v0, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v9, v0, Lcom/android/server/am/AppCompactor;->mCompactThrottleSomeSome:J

    cmp-long v0, v21, v9

    if-ltz v0, :cond_7

    goto :goto_3

    :cond_7
    move-object/from16 v22, v14

    move/from16 v21, v15

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v0, 0x2

    if-ne v3, v0, :cond_a

    sub-long v9, v7, v5

    iget-object v0, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    move-object/from16 v22, v14

    move/from16 v21, v15

    iget-wide v14, v0, Lcom/android/server/am/AppCompactor;->mCompactThrottleSomeFull:J

    cmp-long v0, v9, v14

    if-gez v0, :cond_14

    :goto_4
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping some compaction for "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": too soon. throttle="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v9, v9, Lcom/android/server/am/AppCompactor;->mCompactThrottleSomeSome:J

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v9, v9, Lcom/android/server/am/AppCompactor;->mCompactThrottleSomeFull:J

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " last="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v9, v7, v5

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "ms ago"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "ActivityManager"

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void

    :cond_a
    move-object/from16 v22, v14

    move/from16 v21, v15

    goto/16 :goto_5

    :cond_b
    move-object/from16 v22, v14

    move/from16 v21, v15

    const/4 v0, 0x2

    if-ne v12, v0, :cond_f

    const/4 v9, 0x1

    if-ne v3, v9, :cond_c

    sub-long v9, v7, v5

    iget-object v14, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v14, v14, Lcom/android/server/am/AppCompactor;->mCompactThrottleFullSome:J

    cmp-long v9, v9, v14

    if-ltz v9, :cond_d

    :cond_c
    const/4 v0, 0x2

    if-ne v3, v0, :cond_14

    sub-long v9, v7, v5

    iget-object v14, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v14, v14, Lcom/android/server/am/AppCompactor;->mCompactThrottleFullFull:J

    cmp-long v9, v9, v14

    if-gez v9, :cond_14

    :cond_d
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping full compaction for "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": too soon. throttle="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v9, v9, Lcom/android/server/am/AppCompactor;->mCompactThrottleFullSome:J

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v9, v9, Lcom/android/server/am/AppCompactor;->mCompactThrottleFullFull:J

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " last="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v9, v7, v5

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "ms ago"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "ActivityManager"

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void

    :cond_f
    const/4 v9, 0x3

    if-ne v12, v9, :cond_11

    sub-long v9, v7, v5

    iget-object v14, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v14, v14, Lcom/android/server/am/AppCompactor;->mCompactThrottlePersistent:J

    cmp-long v9, v9, v14

    if-gez v9, :cond_14

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping persistent compaction for "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": too soon. throttle="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v9, v9, Lcom/android/server/am/AppCompactor;->mCompactThrottlePersistent:J

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " last="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v9, v7, v5

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "ms ago"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "ActivityManager"

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return-void

    :cond_11
    const/4 v9, 0x4

    if-ne v12, v9, :cond_14

    sub-long v9, v7, v5

    iget-object v14, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v14, v14, Lcom/android/server/am/AppCompactor;->mCompactThrottleBFGS:J

    cmp-long v9, v9, v14

    if-gez v9, :cond_14

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping bfgs compaction for "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": too soon. throttle="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v9, v9, Lcom/android/server/am/AppCompactor;->mCompactThrottleBFGS:J

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " last="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v9, v7, v5

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "ms ago"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "ActivityManager"

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return-void

    :cond_13
    move-object/from16 v22, v14

    move/from16 v21, v15

    :cond_14
    :goto_5
    const/4 v9, 0x1

    if-eq v12, v9, :cond_16

    const/4 v0, 0x2

    if-eq v12, v0, :cond_15

    const/4 v9, 0x3

    if-eq v12, v9, :cond_15

    const/4 v9, 0x4

    if-eq v12, v9, :cond_15

    const-string v9, ""

    move-object v15, v9

    goto :goto_6

    :cond_15
    iget-object v9, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-object v9, v9, Lcom/android/server/am/AppCompactor;->mCompactActionFull:Ljava/lang/String;

    move-object v15, v9

    goto :goto_6

    :cond_16
    iget-object v9, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-object v9, v9, Lcom/android/server/am/AppCompactor;->mCompactActionSome:Ljava/lang/String;

    move-object v15, v9

    :goto_6
    const-string v9, ""

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    return-void

    :cond_17
    iget-object v9, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-object v9, v9, Lcom/android/server/am/AppCompactor;->mProcStateThrottle:Ljava/util/Set;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping full compaction for process "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "; proc state is "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "ActivityManager"

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    return-void

    :cond_19
    invoke-static {v11}, Landroid/os/Process;->getRss(I)[J

    move-result-object v41

    const/4 v0, 0x2

    aget-wide v9, v41, v0

    const/4 v14, 0x0

    aget-wide v25, v41, v14

    const-wide/16 v19, 0x0

    cmp-long v14, v25, v19

    if-nez v14, :cond_1b

    const/4 v14, 0x1

    aget-wide v25, v41, v14

    cmp-long v14, v25, v19

    if-nez v14, :cond_1b

    aget-wide v25, v41, v0

    cmp-long v14, v25, v19

    if-nez v14, :cond_1b

    const/4 v14, 0x3

    aget-wide v25, v41, v14

    cmp-long v14, v25, v19

    if-nez v14, :cond_1b

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Skipping compaction forprocess "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " with no memory usage. Dead?"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v14, "ActivityManager"

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    return-void

    :cond_1b
    const-string v14, "all"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1d

    const-string v14, "anon"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1c

    goto :goto_7

    :cond_1c
    move-wide/from16 v28, v9

    move/from16 v25, v13

    goto/16 :goto_8

    :cond_1d
    :goto_7
    iget-object v14, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v0, v14, Lcom/android/server/am/AppCompactor;->mFullAnonRssThrottleKb:J

    const-wide/16 v19, 0x0

    cmp-long v0, v0, v19

    if-lez v0, :cond_1f

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    move/from16 v25, v13

    iget-wide v13, v0, Lcom/android/server/am/AppCompactor;->mFullAnonRssThrottleKb:J

    cmp-long v0, v9, v13

    if-gez v0, :cond_20

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Skipping full compaction for process "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "; anon RSS is too small: "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, "KB."

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "ActivityManager"

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    return-void

    :cond_1f
    move-object/from16 v1, p0

    move/from16 v25, v13

    :cond_20
    if-eqz v40, :cond_22

    iget-object v0, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v13, v0, Lcom/android/server/am/AppCompactor;->mFullDeltaRssThrottleKb:J

    const-wide/16 v19, 0x0

    cmp-long v0, v13, v19

    if-lez v0, :cond_22

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/am/AppCompactor$LastCompactionStats;->getRssAfterCompaction()[J

    move-result-object v13

    const/4 v0, 0x1

    aget-wide v19, v41, v0

    aget-wide v26, v13, v0

    sub-long v19, v19, v26

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(J)J

    move-result-wide v19

    const/4 v0, 0x2

    aget-wide v26, v41, v0

    aget-wide v28, v13, v0

    sub-long v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(J)J

    move-result-wide v26

    add-long v19, v19, v26

    const/4 v14, 0x3

    aget-wide v26, v41, v14

    aget-wide v28, v13, v14

    sub-long v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(J)J

    move-result-wide v26

    move-wide/from16 v28, v9

    add-long v9, v19, v26

    iget-object v14, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v0, v14, Lcom/android/server/am/AppCompactor;->mFullDeltaRssThrottleKb:J

    cmp-long v0, v9, v0

    if-gtz v0, :cond_23

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping full compaction for process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; abs delta is too small: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "KB."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    return-void

    :cond_22
    move-wide/from16 v28, v9

    :cond_23
    :goto_8
    const/4 v0, 0x1

    if-eq v12, v0, :cond_27

    const/4 v0, 0x2

    if-eq v12, v0, :cond_26

    const/4 v1, 0x3

    if-eq v12, v1, :cond_25

    const/4 v1, 0x4

    if-eq v12, v1, :cond_24

    move-object/from16 v1, p0

    goto :goto_9

    :cond_24
    move-object/from16 v1, p0

    iget-object v9, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v9}, Lcom/android/server/am/AppCompactor;->access$1608(Lcom/android/server/am/AppCompactor;)I

    goto :goto_9

    :cond_25
    move-object/from16 v1, p0

    iget-object v9, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v9}, Lcom/android/server/am/AppCompactor;->access$1508(Lcom/android/server/am/AppCompactor;)I

    goto :goto_9

    :cond_26
    move-object/from16 v1, p0

    iget-object v9, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v9}, Lcom/android/server/am/AppCompactor;->access$1408(Lcom/android/server/am/AppCompactor;)I

    goto :goto_9

    :cond_27
    move-object/from16 v1, p0

    iget-object v9, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v9}, Lcom/android/server/am/AppCompactor;->access$1308(Lcom/android/server/am/AppCompactor;)I

    nop

    :goto_9
    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Compact "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_b

    const/4 v10, 0x1

    if-ne v12, v10, :cond_28

    :try_start_4
    const-string/jumbo v10, "some"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_a

    :catchall_1
    move-exception v0

    move-wide/from16 v52, v7

    move v2, v11

    move v11, v12

    move-object v12, v15

    move/from16 v59, v21

    move-object/from16 v10, v22

    move/from16 v55, v25

    move-wide/from16 v50, v28

    goto/16 :goto_d

    :catch_0
    move-exception v0

    move-wide/from16 v52, v7

    move v2, v11

    move v11, v12

    move-object v12, v15

    move/from16 v59, v21

    move-object/from16 v10, v22

    move/from16 v55, v25

    move-wide/from16 v50, v28

    const-wide/16 v7, 0x40

    goto/16 :goto_e

    :cond_28
    :try_start_5
    const-string v10, "full"

    :goto_a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_b

    const-wide/16 v13, 0x40

    :try_start_6
    invoke-static {v13, v14, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_b

    :try_start_7
    invoke-static {}, Landroid/os/Debug;->getZramFreeKb()J

    move-result-wide v9

    move-wide/from16 v42, v9

    new-instance v9, Ljava/io/FileOutputStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "/proc/"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "/reclaim"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v13, v9

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    invoke-static {v11}, Landroid/os/Process;->getRss(I)[J

    move-result-object v9

    move-object v14, v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    sub-long v44, v9, v7

    invoke-static {}, Landroid/os/Debug;->getZramFreeKb()J

    move-result-wide v19

    move-wide/from16 v46, v19

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v18, 0x0

    aput-object v20, v0, v18

    const/16 v16, 0x1

    aput-object v4, v0, v16

    const/16 v17, 0x2

    aput-object v15, v0, v17

    aget-wide v26, v41, v18

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const/16 v24, 0x3

    aput-object v20, v0, v24

    const/16 v16, 0x1

    aget-wide v26, v41, v16

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const/16 v23, 0x4

    aput-object v20, v0, v23

    const/16 v20, 0x5

    const/16 v17, 0x2

    aget-wide v26, v41, v17

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v0, v20

    const/16 v20, 0x6

    const/16 v23, 0x3

    aget-wide v26, v41, v23

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v0, v20

    const/16 v20, 0x7

    const/16 v18, 0x0

    aget-wide v26, v14, v18

    aget-wide v30, v41, v18

    sub-long v26, v26, v30

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v0, v20

    const/16 v20, 0x8

    const/16 v16, 0x1

    aget-wide v26, v14, v16

    aget-wide v30, v41, v16

    sub-long v26, v26, v30

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v0, v20

    const/16 v20, 0x9

    const/16 v17, 0x2

    aget-wide v26, v14, v17

    aget-wide v30, v41, v17

    sub-long v26, v26, v30

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v0, v20

    const/16 v20, 0xa

    const/16 v23, 0x3

    aget-wide v26, v14, v23

    aget-wide v30, v41, v23

    sub-long v26, v26, v30

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v0, v20

    const/16 v20, 0xb

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v0, v20

    const/16 v20, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v0, v20

    const/16 v20, 0xd

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v0, v20

    const/16 v20, 0xe

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v0, v20

    const/16 v20, 0xf

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v0, v20

    const/16 v20, 0x10

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v0, v20

    const/16 v20, 0x11

    sub-long v26, v46, v42

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v0, v20

    const/16 v2, 0x756f

    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v0, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v0}, Lcom/android/server/am/AppCompactor;->access$1700(Lcom/android/server/am/AppCompactor;)Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget-object v2, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget v2, v2, Lcom/android/server/am/AppCompactor;->mStatsdSampleRate:F
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_b

    cmpg-float v0, v0, v2

    if-gez v0, :cond_29

    const/16 v2, 0x73

    const/4 v0, 0x0

    :try_start_8
    aget-wide v19, v41, v0

    const/4 v0, 0x1

    aget-wide v26, v41, v0

    const/4 v0, 0x2

    aget-wide v30, v41, v0

    const/16 v17, 0x3

    aget-wide v32, v41, v17

    const/16 v17, 0x0

    aget-wide v34, v14, v17

    const/16 v16, 0x1

    aget-wide v36, v14, v16

    const/4 v0, 0x2

    aget-wide v38, v14, v0

    const/4 v0, 0x3

    aget-wide v48, v14, v0

    invoke-static/range {v25 .. v25}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-wide/from16 v52, v7

    move-wide v7, v9

    move-wide/from16 v50, v28

    move v9, v2

    move v10, v11

    move v2, v11

    move-object v11, v4

    move/from16 v54, v12

    move-object/from16 v57, v13

    move-object/from16 v58, v14

    move-object/from16 v56, v22

    move/from16 v55, v25

    move-wide/from16 v13, v19

    move-object/from16 v60, v15

    move/from16 v59, v21

    move-wide/from16 v15, v26

    move-wide/from16 v17, v30

    move-wide/from16 v19, v32

    move-wide/from16 v21, v34

    move-wide/from16 v23, v36

    move-wide/from16 v25, v38

    move-wide/from16 v27, v48

    move-wide/from16 v29, v44

    move/from16 v31, v3

    move-wide/from16 v32, v5

    move/from16 v34, v59

    move/from16 v35, v0

    move-wide/from16 v36, v42

    move-wide/from16 v38, v46

    :try_start_9
    invoke-static/range {v9 .. v39}, Landroid/util/StatsLog;->write(IILjava/lang/String;IJJJJJJJJJIJIIJJ)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_b

    :catchall_2
    move-exception v0

    move/from16 v11, v54

    move-object/from16 v10, v56

    move-object/from16 v12, v60

    goto/16 :goto_d

    :catch_1
    move-exception v0

    move/from16 v11, v54

    move-object/from16 v10, v56

    move-object/from16 v12, v60

    const-wide/16 v7, 0x40

    goto/16 :goto_e

    :catchall_3
    move-exception v0

    move-wide/from16 v52, v7

    move v2, v11

    move/from16 v59, v21

    move/from16 v55, v25

    move-wide/from16 v50, v28

    move v11, v12

    move-object v12, v15

    move-object/from16 v10, v22

    goto/16 :goto_d

    :catch_2
    move-exception v0

    move-wide/from16 v52, v7

    move v2, v11

    move/from16 v59, v21

    move/from16 v55, v25

    move-wide/from16 v50, v28

    move v11, v12

    move-object v12, v15

    move-object/from16 v10, v22

    const-wide/16 v7, 0x40

    goto/16 :goto_e

    :cond_29
    move-wide/from16 v52, v7

    move-wide v7, v9

    move v2, v11

    move/from16 v54, v12

    move-object/from16 v57, v13

    move-object/from16 v58, v14

    move-object/from16 v60, v15

    move/from16 v59, v21

    move-object/from16 v56, v22

    move/from16 v55, v25

    move-wide/from16 v50, v28

    :goto_b
    :try_start_a
    iget-object v0, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v0}, Lcom/android/server/am/AppCompactor;->access$1000(Lcom/android/server/am/AppCompactor;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v9

    monitor-enter v9
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    :try_start_b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    move-object/from16 v10, v56

    :try_start_c
    iput-wide v7, v10, Lcom/android/server/am/ProcessRecord;->lastCompactTime:J
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    move/from16 v11, v54

    :try_start_d
    iput v11, v10, Lcom/android/server/am/ProcessRecord;->lastCompactAction:I

    monitor-exit v9
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :try_start_e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const-string v0, "all"
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    move-object/from16 v12, v60

    :try_start_f
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "anon"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_2a
    iget-object v0, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v0}, Lcom/android/server/am/AppCompactor;->access$1200(Lcom/android/server/am/AppCompactor;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v13, Lcom/android/server/am/AppCompactor$LastCompactionStats;

    move-object/from16 v14, v58

    invoke-direct {v13, v14}, Lcom/android/server/am/AppCompactor$LastCompactionStats;-><init>([J)V

    invoke-interface {v0, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    :cond_2b
    const-wide/16 v7, 0x40

    goto/16 :goto_f

    :catchall_4
    move-exception v0

    move-object/from16 v12, v60

    goto/16 :goto_d

    :catch_3
    move-exception v0

    move-object/from16 v12, v60

    const-wide/16 v7, 0x40

    goto/16 :goto_e

    :catchall_5
    move-exception v0

    move-object/from16 v14, v58

    move-object/from16 v12, v60

    goto :goto_c

    :catchall_6
    move-exception v0

    move/from16 v11, v54

    move-object/from16 v14, v58

    move-object/from16 v12, v60

    goto :goto_c

    :catchall_7
    move-exception v0

    move/from16 v11, v54

    move-object/from16 v10, v56

    move-object/from16 v14, v58

    move-object/from16 v12, v60

    :goto_c
    :try_start_10
    monitor-exit v9
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    :try_start_11
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    :catchall_8
    move-exception v0

    goto :goto_d

    :catch_4
    move-exception v0

    const-wide/16 v7, 0x40

    goto :goto_e

    :catchall_9
    move-exception v0

    goto :goto_c

    :catchall_a
    move-exception v0

    move/from16 v11, v54

    move-object/from16 v10, v56

    move-object/from16 v12, v60

    goto :goto_d

    :catch_5
    move-exception v0

    move/from16 v11, v54

    move-object/from16 v10, v56

    move-object/from16 v12, v60

    const-wide/16 v7, 0x40

    goto :goto_e

    :catch_6
    move-exception v0

    move-wide/from16 v52, v7

    move v2, v11

    move v11, v12

    move-object v12, v15

    move/from16 v59, v21

    move-object/from16 v10, v22

    move/from16 v55, v25

    move-wide/from16 v50, v28

    move-wide v7, v13

    goto :goto_e

    :catchall_b
    move-exception v0

    move-wide/from16 v52, v7

    move v2, v11

    move v11, v12

    move-object v12, v15

    move/from16 v59, v21

    move-object/from16 v10, v22

    move/from16 v55, v25

    move-wide/from16 v50, v28

    :goto_d
    const-wide/16 v7, 0x40

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :catch_7
    move-exception v0

    move-wide/from16 v52, v7

    move v2, v11

    move v11, v12

    move-object v12, v15

    move/from16 v59, v21

    move-object/from16 v10, v22

    move/from16 v55, v25

    move-wide/from16 v50, v28

    const-wide/16 v7, 0x40

    :goto_e
    nop

    :goto_f
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    nop

    nop

    :goto_10
    return-void

    :catchall_c
    move-exception v0

    move-wide/from16 v52, v7

    move/from16 v55, v13

    move/from16 v59, v15

    :goto_11
    :try_start_12
    monitor-exit v9
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_d
    move-exception v0

    goto :goto_11
.end method
