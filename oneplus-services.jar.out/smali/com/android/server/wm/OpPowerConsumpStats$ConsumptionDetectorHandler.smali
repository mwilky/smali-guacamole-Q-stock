.class Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OpPowerConsumpStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConsumptionDetectorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/OpPowerConsumpStats;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/OpPowerConsumpStats;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const-string v3, ""

    const-string v4, "OPCS"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, " |mIdleState:"

    const-string v8, " |mPlugState:"

    const-string v9, " |mPowerLevel:"

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_6

    :pswitch_1
    const-string v2, "------MSG_PKG_EVENT"

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->ka(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "none"

    :goto_0
    iget-object v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->ibl(Lcom/android/server/wm/OpPowerConsumpStats;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->ibl(Lcom/android/server/wm/OpPowerConsumpStats;)Ljava/lang/String;

    move-result-object v3

    if-eq v3, v0, :cond_1

    iget-object v3, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v3, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->tsu(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->gwm(Lcom/android/server/wm/OpPowerConsumpStats;)V

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "------MSG_PKG_EVENT mScreenState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v4}, Lcom/android/server/wm/OpPowerConsumpStats;->dma(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v4}, Lcom/android/server/wm/OpPowerConsumpStats;->gck(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v4}, Lcom/android/server/wm/OpPowerConsumpStats;->cjf(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats;->qbh(Lcom/android/server/wm/OpPowerConsumpStats;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |pkg:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " |oldPkg:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :pswitch_2
    const-string v0, "------MSG_RESET_LISTENER"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->ka(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->fto(Lcom/android/server/wm/OpPowerConsumpStats;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------MSG_RESET_LISTENER mScreenState:"

    goto/16 :goto_3

    :pswitch_3
    const-string v0, "------MSG_TRACKDATA"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->ka(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->ear(Lcom/android/server/wm/OpPowerConsumpStats;)Lcom/android/server/wm/OpPowerConsumpStats$gck;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->ire(Lcom/android/server/wm/OpPowerConsumpStats;)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------MSG_TRACKDATA mScreenState:"

    goto/16 :goto_3

    :pswitch_4
    const-string v0, "------MSG_TIME_SET"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->ka(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->bio(Lcom/android/server/wm/OpPowerConsumpStats;)Lcom/android/server/wm/OpPowerConsumpStats$gck;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->oxb(Lcom/android/server/wm/OpPowerConsumpStats;)V

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------MSG_TIME_SET mScreenState:"

    goto/16 :goto_3

    :pswitch_5
    const-string v0, "------MSG_REPORT"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->ka(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0, v5}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Lcom/android/server/wm/OpPowerConsumpStats;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------MSG_REPORT mScreenState:"

    goto/16 :goto_3

    :pswitch_6
    const-string v2, "------MSG_PLUG_INIT_EVENT"

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->ka(Ljava/lang/String;)V

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget v10, v0, Landroid/os/Message;->arg1:I

    iget v11, v0, Landroid/os/Message;->arg2:I

    iget-object v0, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->bio(Lcom/android/server/wm/OpPowerConsumpStats;)Lcom/android/server/wm/OpPowerConsumpStats$gck;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    new-instance v12, Lcom/android/server/wm/OpPowerConsumpStats$gck;

    invoke-direct {v12, v0}, Lcom/android/server/wm/OpPowerConsumpStats$gck;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    invoke-static {v0, v12}, Lcom/android/server/wm/OpPowerConsumpStats;->sis(Lcom/android/server/wm/OpPowerConsumpStats;Lcom/android/server/wm/OpPowerConsumpStats$gck;)Lcom/android/server/wm/OpPowerConsumpStats$gck;

    iget-object v0, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->bio(Lcom/android/server/wm/OpPowerConsumpStats;)Lcom/android/server/wm/OpPowerConsumpStats$gck;

    move-result-object v0

    iget-object v12, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v12}, Lcom/android/server/wm/OpPowerConsumpStats;->igw(Lcom/android/server/wm/OpPowerConsumpStats;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->rS:Ljava/lang/String;

    iget-object v0, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->bio(Lcom/android/server/wm/OpPowerConsumpStats;)Lcom/android/server/wm/OpPowerConsumpStats$gck;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->sS:J

    iget-object v0, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    new-instance v12, Lcom/android/server/wm/OpPowerConsumpStats$sis;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    move-object v14, v12

    move-object v15, v0

    invoke-direct/range {v14 .. v19}, Lcom/android/server/wm/OpPowerConsumpStats$sis;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;JJ)V

    goto :goto_1

    :cond_4
    iget-object v0, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    new-instance v12, Lcom/android/server/wm/OpPowerConsumpStats$sis;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    iget-object v13, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v13}, Lcom/android/server/wm/OpPowerConsumpStats;->bio(Lcom/android/server/wm/OpPowerConsumpStats;)Lcom/android/server/wm/OpPowerConsumpStats$gck;

    move-result-object v13

    iget-wide v13, v13, Lcom/android/server/wm/OpPowerConsumpStats$gck;->duration:J

    move-object/from16 v20, v12

    move-object/from16 v21, v0

    move-wide/from16 v24, v13

    invoke-direct/range {v20 .. v25}, Lcom/android/server/wm/OpPowerConsumpStats$sis;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;JJ)V

    :goto_1
    invoke-static {v0, v12}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Lcom/android/server/wm/OpPowerConsumpStats;Lcom/android/server/wm/OpPowerConsumpStats$sis;)Lcom/android/server/wm/OpPowerConsumpStats$sis;

    iget-object v0, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->wtn(Lcom/android/server/wm/OpPowerConsumpStats;)J

    move-result-wide v12

    invoke-static {v0, v12, v13}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Lcom/android/server/wm/OpPowerConsumpStats;J)J

    iget-object v0, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    if-ne v10, v6, :cond_5

    move v5, v6

    :cond_5
    invoke-static {v0, v5}, Lcom/android/server/wm/OpPowerConsumpStats;->you(Lcom/android/server/wm/OpPowerConsumpStats;Z)Z

    iget-object v0, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->ywr(Lcom/android/server/wm/OpPowerConsumpStats;)Landroid/os/PowerManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v5

    invoke-static {v0, v5}, Lcom/android/server/wm/OpPowerConsumpStats;->sis(Lcom/android/server/wm/OpPowerConsumpStats;Z)Z

    iget-object v0, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->oif(Lcom/android/server/wm/OpPowerConsumpStats;)Landroid/os/BatteryManager;

    move-result-object v5

    const/4 v12, 0x4

    invoke-virtual {v5, v12}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v5

    invoke-static {v0, v5}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Lcom/android/server/wm/OpPowerConsumpStats;I)I

    invoke-static {}, Lcom/android/server/wm/OpPowerConsumpStats;->access$3500()Z

    move-result v0

    if-eqz v0, :cond_7

    :try_start_0
    iget-object v0, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->bvj(Lcom/android/server/wm/OpPowerConsumpStats;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v5, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->tsu(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)Ljava/lang/String;

    :cond_6
    iget-object v0, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->gwm(Lcom/android/server/wm/OpPowerConsumpStats;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MSG_PLUG_INIT_EVENT Exception:"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_2
    iget-object v0, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0, v11}, Lcom/android/server/wm/OpPowerConsumpStats;->you(Lcom/android/server/wm/OpPowerConsumpStats;I)V

    if-eqz v2, :cond_8

    if-ne v10, v6, :cond_8

    iget-object v0, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->vdb(Lcom/android/server/wm/OpPowerConsumpStats;)V

    :cond_8
    iget-object v0, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->zgw(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iget-object v0, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0, v3}, Lcom/android/server/wm/OpPowerConsumpStats;->rtg(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/wm/OpPowerConsumpStats;->access$100()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->obl(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iget-object v0, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->oxb(Lcom/android/server/wm/OpPowerConsumpStats;)V

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------MSG_PLUG_INIT_EVENT mScreenState:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->dma(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->gck(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->cjf(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats;->qbh(Lcom/android/server/wm/OpPowerConsumpStats;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |plugTypeInit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |sENABLE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/wm/OpPowerConsumpStats;->access$100()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_4

    :pswitch_7
    const-string v0, "------MSG_PERSIST"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->ka(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0, v5}, Lcom/android/server/wm/OpPowerConsumpStats;->ssp(Lcom/android/server/wm/OpPowerConsumpStats;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------MSG_PERSIST mScreenState:"

    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->dma(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->gck(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->cjf(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats;->qbh(Lcom/android/server/wm/OpPowerConsumpStats;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :pswitch_8
    const-string v2, "------MSG_DOZE_EVENT"

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->ka(Ljava/lang/String;)V

    iget v2, v0, Landroid/os/Message;->arg1:I

    iget-object v4, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    if-ne v2, v2, :cond_a

    move v5, v6

    :cond_a
    invoke-static {v4, v5}, Lcom/android/server/wm/OpPowerConsumpStats;->tsu(Lcom/android/server/wm/OpPowerConsumpStats;Z)Z

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_b

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    :cond_b
    iget-object v0, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0, v3}, Lcom/android/server/wm/OpPowerConsumpStats;->rtg(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------MSG_DOZE_EVENT mScreenState:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->dma(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->gck(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->cjf(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats;->qbh(Lcom/android/server/wm/OpPowerConsumpStats;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :pswitch_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------MSG_POWERLEVEL_EVENT mLastPowerLevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->qbh(Lcom/android/server/wm/OpPowerConsumpStats;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->ka(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->qbh(Lcom/android/server/wm/OpPowerConsumpStats;)I

    move-result v2

    iget v0, v0, Landroid/os/Message;->arg1:I

    iget-object v3, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v3, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Lcom/android/server/wm/OpPowerConsumpStats;I)I

    iget-object v0, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->qbh(Lcom/android/server/wm/OpPowerConsumpStats;)I

    move-result v0

    sub-int/2addr v2, v0

    if-lez v2, :cond_c

    move v5, v6

    :cond_c
    iget-object v0, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0, v5}, Lcom/android/server/wm/OpPowerConsumpStats;->rtg(Lcom/android/server/wm/OpPowerConsumpStats;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------MSG_POWERLEVEL_EVENT mScreenState:"

    goto/16 :goto_3

    :pswitch_a
    const-string v2, "------MSG_SCREEN_EVENT"

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->ka(Ljava/lang/String;)V

    iget v0, v0, Landroid/os/Message;->arg1:I

    iget-object v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    if-ne v0, v6, :cond_d

    move v5, v6

    :cond_d
    invoke-static {v2, v5}, Lcom/android/server/wm/OpPowerConsumpStats;->sis(Lcom/android/server/wm/OpPowerConsumpStats;Z)Z

    iget-object v0, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->zgw(Lcom/android/server/wm/OpPowerConsumpStats;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------MSG_SCREEN_EVENT mScreenState:"

    goto/16 :goto_3

    :pswitch_b
    const-string v0, "------MSG_PLUGGED_FASTCHARGE_EVENT"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->ka(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->gck(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->vdb(Lcom/android/server/wm/OpPowerConsumpStats;)V

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------MSG_PLUGGED_FASTCHARGE_EVENT mScreenState:"

    goto/16 :goto_3

    :pswitch_c
    const-string v2, "------MSG_PLUG_EVENT"

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->ka(Ljava/lang/String;)V

    iget v2, v0, Landroid/os/Message;->arg1:I

    iget v0, v0, Landroid/os/Message;->arg2:I

    iget-object v3, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    if-ne v2, v2, :cond_f

    move v5, v6

    :cond_f
    invoke-static {v3, v5}, Lcom/android/server/wm/OpPowerConsumpStats;->you(Lcom/android/server/wm/OpPowerConsumpStats;Z)Z

    iget-object v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v2, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->sis(Lcom/android/server/wm/OpPowerConsumpStats;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------MSG_PLUG_EVENT mScreenState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->dma(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->gck(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->cjf(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats;->qbh(Lcom/android/server/wm/OpPowerConsumpStats;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |plugType:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :pswitch_d
    const-string v0, "------MSG_GET_ONLINECONFIG"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->ka(Ljava/lang/String;)V

    new-instance v2, Lcom/oneplus/config/ConfigGrabber;

    iget-object v3, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->cno(Lcom/android/server/wm/OpPowerConsumpStats;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-virtual {v2}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Lcom/android/server/wm/OpPowerConsumpStats;Lorg/json/JSONArray;)V

    iget-object v1, v1, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats;->kth(Lcom/android/server/wm/OpPowerConsumpStats;)V

    :goto_5
    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->ka(Ljava/lang/String;)V

    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
