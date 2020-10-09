.class Lcom/android/server/OpPowerControllerService$cno;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OpPowerControllerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "cno"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OpPowerControllerService;


# direct methods
.method constructor <init>(Lcom/android/server/OpPowerControllerService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$1500()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpPowerControllerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x15be

    const/4 v2, 0x0

    if-eq v0, v1, :cond_19

    const/16 v1, 0x1e6c

    if-eq v0, v1, :cond_18

    const/4 v1, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    invoke-static {}, Lcom/android/server/am/j;->getInstance()Lcom/android/server/am/j;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/j;->fc()V

    goto/16 :goto_7

    :pswitch_1
    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {p0}, Lcom/android/server/OpPowerControllerService;->access$600(Lcom/android/server/OpPowerControllerService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string p1, "latest_public_domain_reachable"

    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto/16 :goto_7

    :pswitch_2
    :try_start_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lorg/json/JSONObject;

    const-string v0, "packageName"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "tag"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "tag"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$1500()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "OpPowerControllerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_ADD_NET_RESTRICT_WAKELOCK: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "OpPowerControllerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_ADD_NET_RESTRICT_WAKELOCK: packageName = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", tag = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {v0, v1, v4}, Lcom/android/server/power/OpPowerManagerInjector;->addExclusiveWakeLock(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_7

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MSG_ADD_NET_RESTRICT_WAKELOCK error "

    goto/16 :goto_3

    :pswitch_3
    new-instance p1, Lcom/android/server/OpPowerControllerService$bio;

    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-direct {p1, p0}, Lcom/android/server/OpPowerControllerService$bio;-><init>(Lcom/android/server/OpPowerControllerService;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_7

    :pswitch_4
    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$1500()Z

    move-result p0

    if-eqz p0, :cond_1a

    const-string p0, "OpPowerControllerService"

    const-string p1, "MSG_FLUSH_EXCLUSIVE_WAKELOCK"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/power/OpPowerManagerInjector;->flushExclusiveWakeLock()V

    goto/16 :goto_7

    :pswitch_5
    iget-object p1, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {p1}, Lcom/android/server/OpPowerControllerService;->access$4300(Lcom/android/server/OpPowerControllerService;)Landroid/app/Notification;

    move-result-object p1

    if-eqz p1, :cond_1a

    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {p0}, Lcom/android/server/OpPowerControllerService;->access$4400(Lcom/android/server/OpPowerControllerService;)Landroid/app/NotificationManager;

    move-result-object p0

    const v0, 0x528877

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "powercontrol"

    invoke-virtual {p0, v2, v0, p1, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_7

    :pswitch_6
    iget-object p1, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {p1}, Lcom/android/server/OpPowerControllerService;->access$4100(Lcom/android/server/OpPowerControllerService;)Landroid/app/AlarmManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {v0}, Lcom/android/server/OpPowerControllerService;->access$4000(Lcom/android/server/OpPowerControllerService;)Landroid/app/AlarmManager$OnAlarmListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    iget-object p1, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {p1}, Lcom/android/server/OpPowerControllerService;->access$3400(Lcom/android/server/OpPowerControllerService;)Lcom/android/server/OpPowerControllerService$rtg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/OpPowerControllerService$rtg;->P()Ljava/time/LocalDateTime;

    move-result-object p1

    if-eqz p1, :cond_3

    const-wide/16 v0, 0x1e

    invoke-virtual {p1, v0, v1}, Ljava/time/LocalDateTime;->minusMinutes(J)Ljava/time/LocalDateTime;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {v0}, Lcom/android/server/OpPowerControllerService;->access$4100(Lcom/android/server/OpPowerControllerService;)Landroid/app/AlarmManager;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {v0, p1}, Lcom/android/server/OpPowerControllerService;->access$4200(Lcom/android/server/OpPowerControllerService;Ljava/time/LocalDateTime;)J

    move-result-wide v3

    iget-object p1, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {p1}, Lcom/android/server/OpPowerControllerService;->access$4000(Lcom/android/server/OpPowerControllerService;)Landroid/app/AlarmManager$OnAlarmListener;

    move-result-object v6

    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {p0}, Lcom/android/server/OpPowerControllerService;->access$900(Lcom/android/server/OpPowerControllerService;)Lcom/android/server/OpPowerControllerService$cno;

    move-result-object v7

    const-string v5, "PowerController.EarlyRestriction"

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto/16 :goto_7

    :cond_3
    const-string p0, "OpPowerControllerService"

    const-string p1, "No sleep start time, so pass the early restriction!"

    invoke-static {p0, p1}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :pswitch_7
    new-instance p1, Lcom/oneplus/config/ConfigGrabber;

    iget-object v0, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {v0}, Lcom/android/server/OpPowerControllerService;->access$600(Lcom/android/server/OpPowerControllerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "PowerControl"

    invoke-direct {p1, v0, v1}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/OpPowerControllerService;->access$3100(Lcom/android/server/OpPowerControllerService;Lorg/json/JSONArray;)V

    goto/16 :goto_7

    :pswitch_8
    iget-object p1, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {p1}, Lcom/android/server/OpPowerControllerService;->access$3200(Lcom/android/server/OpPowerControllerService;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_7

    :cond_4
    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$3900()Z

    move-result p1

    if-nez p1, :cond_1a

    iget-object p1, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {p1}, Lcom/android/server/OpPowerControllerService;->access$3400(Lcom/android/server/OpPowerControllerService;)Lcom/android/server/OpPowerControllerService$rtg;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/OpPowerControllerService$rtg;->mFile:Landroid/util/AtomicFile;

    monitor-enter p1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {v0}, Lcom/android/server/OpPowerControllerService;->access$3400(Lcom/android/server/OpPowerControllerService;)Lcom/android/server/OpPowerControllerService$rtg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/OpPowerControllerService$rtg;->S()V

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_2
    iget-object p1, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/OpPowerControllerService;->getSleepState(Ljava/time/LocalDateTime;)I

    move-result p1

    invoke-static {p1}, Lcom/android/server/OpPowerControllerService;->access$502(I)I

    new-array p1, v4, [I

    const/16 v1, 0x56

    aput v1, p1, v2

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-virtual {p0}, Lcom/android/server/OpPowerControllerService;->scheduleNextAlarmIfNeededLocked()V

    :cond_5
    monitor-exit v0

    goto/16 :goto_7

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :pswitch_9
    iget-object p1, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {p1}, Lcom/android/server/OpPowerControllerService;->access$3200(Lcom/android/server/OpPowerControllerService;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_7

    :cond_6
    iget-object p1, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {p1}, Lcom/android/server/OpPowerControllerService;->access$3400(Lcom/android/server/OpPowerControllerService;)Lcom/android/server/OpPowerControllerService$rtg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/OpPowerControllerService$rtg;->getSize()I

    move-result p1

    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$2600()I

    move-result v0

    if-lt p1, v0, :cond_e

    iget-object p1, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {p1}, Lcom/android/server/OpPowerControllerService;->access$3500(Lcom/android/server/OpPowerControllerService;)Lcom/android/server/OpPowerControllerService$ssp;

    move-result-object p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {p1}, Lcom/android/server/OpPowerControllerService;->access$3500(Lcom/android/server/OpPowerControllerService;)Lcom/android/server/OpPowerControllerService$ssp;

    move-result-object v5

    iget-object p1, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {p1}, Lcom/android/server/OpPowerControllerService;->access$3400(Lcom/android/server/OpPowerControllerService;)Lcom/android/server/OpPowerControllerService$rtg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/OpPowerControllerService$rtg;->K()[[D

    move-result-object v6

    iget-object p1, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {p1}, Lcom/android/server/OpPowerControllerService;->access$3400(Lcom/android/server/OpPowerControllerService;)Lcom/android/server/OpPowerControllerService$rtg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/OpPowerControllerService$rtg;->getSize()I

    move-result v7

    const/4 v8, 0x2

    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$2400()I

    move-result v9

    const/16 v10, 0x64

    invoke-static/range {v5 .. v10}, Lcom/android/server/OpPowerControllerService$ssp;->zta(Lcom/android/server/OpPowerControllerService$ssp;[[DIIII)V

    move p1, v2

    move v0, p1

    :goto_0
    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$2400()I

    move-result v1

    if-ge p1, v1, :cond_8

    iget-object v1, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {v1}, Lcom/android/server/OpPowerControllerService;->access$3500(Lcom/android/server/OpPowerControllerService;)Lcom/android/server/OpPowerControllerService$ssp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/OpPowerControllerService$ssp;->qbh(I)I

    move-result v1

    if-le v1, v0, :cond_7

    iget-object v0, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {v0}, Lcom/android/server/OpPowerControllerService;->access$3500(Lcom/android/server/OpPowerControllerService;)Lcom/android/server/OpPowerControllerService$ssp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/OpPowerControllerService$ssp;->qbh(I)I

    move-result v0

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_8
    const-wide/16 v5, 0x0

    move p1, v2

    move v1, p1

    :goto_1
    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$2400()I

    move-result v3

    if-ge p1, v3, :cond_a

    iget-object v3, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {v3}, Lcom/android/server/OpPowerControllerService;->access$3500(Lcom/android/server/OpPowerControllerService;)Lcom/android/server/OpPowerControllerService$ssp;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/OpPowerControllerService$ssp;->qbh(I)I

    move-result v3

    if-ne v3, v0, :cond_9

    iget-object v3, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {v3}, Lcom/android/server/OpPowerControllerService;->access$3500(Lcom/android/server/OpPowerControllerService;)Lcom/android/server/OpPowerControllerService$ssp;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/OpPowerControllerService$ssp;->ywr(I)J

    move-result-wide v7

    cmp-long v3, v7, v5

    if-lez v3, :cond_9

    iget-object v1, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {v1}, Lcom/android/server/OpPowerControllerService;->access$3500(Lcom/android/server/OpPowerControllerService;)Lcom/android/server/OpPowerControllerService$ssp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/OpPowerControllerService$ssp;->ywr(I)J

    move-result-wide v5

    move v1, p1

    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_a
    iget-object p1, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {p1}, Lcom/android/server/OpPowerControllerService;->access$3500(Lcom/android/server/OpPowerControllerService;)Lcom/android/server/OpPowerControllerService$ssp;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lcom/android/server/OpPowerControllerService$ssp;->igw(II)D

    move-result-wide v5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "coefVarStart="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v3, "%.3f"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", threshold="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$3700()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v3, "%.3f"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpPowerControllerService"

    invoke-static {v0, p1}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$3700()D

    move-result-wide v3

    cmpl-double p1, v5, v3

    if-lez p1, :cond_b

    const-string p0, "OpPowerControllerService"

    const-string p1, "The variation of start time is too large, so discard that result of computation."

    goto/16 :goto_4

    :cond_b
    iget-object p1, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {p1}, Lcom/android/server/OpPowerControllerService;->access$3400(Lcom/android/server/OpPowerControllerService;)Lcom/android/server/OpPowerControllerService$rtg;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {p1}, Lcom/android/server/OpPowerControllerService;->access$3500(Lcom/android/server/OpPowerControllerService;)Lcom/android/server/OpPowerControllerService$ssp;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/server/OpPowerControllerService$ssp;->dma(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {v0}, Lcom/android/server/OpPowerControllerService;->access$3500(Lcom/android/server/OpPowerControllerService;)Lcom/android/server/OpPowerControllerService$ssp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/OpPowerControllerService$ssp;->ywr(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {v3}, Lcom/android/server/OpPowerControllerService;->access$3400(Lcom/android/server/OpPowerControllerService;)Lcom/android/server/OpPowerControllerService$rtg;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/OpPowerControllerService$rtg;->zta(Ljava/time/LocalTime;)V

    iget-object p1, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {p1}, Lcom/android/server/OpPowerControllerService;->access$3400(Lcom/android/server/OpPowerControllerService;)Lcom/android/server/OpPowerControllerService$rtg;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/OpPowerControllerService$rtg;->you(Ljava/time/Duration;)V

    :cond_c
    iget-object p1, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-virtual {p1}, Lcom/android/server/OpPowerControllerService;->scheduleNextAlarmIfNeededLocked()V

    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$3800()Z

    move-result p1

    if-eqz p1, :cond_e

    :goto_2
    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$2400()I

    move-result p1

    if-ge v2, p1, :cond_d

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Size of Cluster "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {v0}, Lcom/android/server/OpPowerControllerService;->access$3500(Lcom/android/server/OpPowerControllerService;)Lcom/android/server/OpPowerControllerService$ssp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/OpPowerControllerService$ssp;->qbh(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpPowerControllerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Center of Cluster "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {v0}, Lcom/android/server/OpPowerControllerService;->access$3500(Lcom/android/server/OpPowerControllerService;)Lcom/android/server/OpPowerControllerService$ssp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/OpPowerControllerService$ssp;->dma(I)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {v0}, Lcom/android/server/OpPowerControllerService;->access$3500(Lcom/android/server/OpPowerControllerService;)Lcom/android/server/OpPowerControllerService$ssp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/OpPowerControllerService$ssp;->ywr(I)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpPowerControllerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ">>> Choose Cluster "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpPowerControllerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :pswitch_a
    iget-object p1, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {p1}, Lcom/android/server/OpPowerControllerService;->access$3200(Lcom/android/server/OpPowerControllerService;)Z

    move-result p1

    if-nez p1, :cond_f

    goto/16 :goto_7

    :cond_f
    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$3900()Z

    move-result p1

    if-nez p1, :cond_1a

    iget-object p1, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {p1}, Lcom/android/server/OpPowerControllerService;->access$3400(Lcom/android/server/OpPowerControllerService;)Lcom/android/server/OpPowerControllerService$rtg;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/OpPowerControllerService$rtg;->mFile:Landroid/util/AtomicFile;

    monitor-enter p1

    :try_start_4
    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {p0}, Lcom/android/server/OpPowerControllerService;->access$3400(Lcom/android/server/OpPowerControllerService;)Lcom/android/server/OpPowerControllerService$rtg;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/OpPowerControllerService$rtg;->Q()V

    monitor-exit p1

    goto/16 :goto_7

    :catchall_2
    move-exception p0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :pswitch_b
    :try_start_5
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lorg/json/JSONObject;

    const-string v0, "packageName"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "tag"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v1, "tag"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_10
    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$1500()Z

    move-result p0

    if-eqz p0, :cond_11

    const-string p0, "OpPowerControllerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_ADD_EXCLUSIVE_WAKELOCK: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "OpPowerControllerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_ADD_EXCLUSIVE_WAKELOCK: packageName = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", tag = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    invoke-static {v0, v1, v2}, Lcom/android/server/power/OpPowerManagerInjector;->addExclusiveWakeLock(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_7

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MSG_ADD_EXCLUSIVE_WAKELOCK error "

    :goto_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpPowerControllerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :pswitch_c
    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$1500()Z

    move-result p1

    if-eqz p1, :cond_12

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isChinaRegionInternal() = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-virtual {v0}, Lcom/android/server/OpPowerControllerService;->isChinaRegionInternal()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isIndiaRegionInternal() = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-virtual {v0}, Lcom/android/server/OpPowerControllerService;->isIndiaRegionInternal()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpPowerControllerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    iget-object p1, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-virtual {p1}, Lcom/android/server/OpPowerControllerService;->isChinaRegionInternal()Z

    move-result p1

    if-nez p1, :cond_13

    iget-object p1, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-virtual {p1}, Lcom/android/server/OpPowerControllerService;->isIndiaRegionInternal()Z

    move-result p1

    if-eqz p1, :cond_1a

    :cond_13
    iget-object p1, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {p1}, Lcom/android/server/OpPowerControllerService;->access$1400(Lcom/android/server/OpPowerControllerService;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "doze_mode_policy"

    invoke-static {p1, v0, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p1, "OpPowerControllerService"

    const-string v0, "put 1 to Settings.System.DOZE_MODE_POLICY"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {p0}, Lcom/android/server/OpPowerControllerService;->access$1400(Lcom/android/server/OpPowerControllerService;)Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "optimal_power_save_mode_enabled"

    invoke-static {p0, p1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p0, "OpPowerControllerService"

    const-string p1, "put 2 to Settings.System.OPTIMAL_POWER_SAVE_MODE_ENABLED"

    :goto_4
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :pswitch_d
    const-string p1, "persist.sys.op_power_first_boot"

    const-string v0, "0"

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "persist.sys.version.lastota"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {v1}, Lcom/android/server/OpPowerControllerService;->access$600(Lcom/android/server/OpPowerControllerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "doze_mode_policy"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_14

    move v1, v4

    goto :goto_5

    :cond_14
    move v1, v2

    :goto_5
    invoke-static {v1}, Lcom/android/server/OpPowerControllerService;->access$1302(Z)Z

    iget-object v1, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {v1}, Lcom/android/server/OpPowerControllerService;->access$600(Lcom/android/server/OpPowerControllerService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, -0x2

    const-string v7, "optimal_power_save_mode_enabled"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v1, v5}, Lcom/android/server/OpPowerControllerService;->access$702(Lcom/android/server/OpPowerControllerService;I)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFirstBoot: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isBrandNewQ: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "OpPowerControllerService"

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_16

    if-eqz v0, :cond_16

    new-array p1, v4, [I

    aput v2, p1, v2

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {p1}, Lcom/android/server/OpPowerControllerService;->access$1400(Lcom/android/server/OpPowerControllerService;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "doze_mode_policy"

    invoke-static {p1, v0, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {p1}, Lcom/android/server/OpPowerControllerService;->access$600(Lcom/android/server/OpPowerControllerService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "optimal_power_save_mode_enabled"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6

    :cond_15
    iget-object p1, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {p1}, Lcom/android/server/OpPowerControllerService;->access$1400(Lcom/android/server/OpPowerControllerService;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "doze_mode_policy"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {p1}, Lcom/android/server/OpPowerControllerService;->access$600(Lcom/android/server/OpPowerControllerService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, -0x1

    const-string v1, "optimal_power_save_mode_enabled"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_6
    const-string p1, "persist.sys.op_power_first_boot"

    const-string v0, "1"

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$1500()Z

    move-result p1

    if-eqz p1, :cond_17

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "INITIALIZE_STATE: mAggressive = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$1300()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mOPSMEnabled = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {v0}, Lcom/android/server/OpPowerControllerService;->access$700(Lcom/android/server/OpPowerControllerService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/OpPowerControllerService;->convertOPSMEnabledToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mUserSleep = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {v0}, Lcom/android/server/OpPowerControllerService;->access$3200(Lcom/android/server/OpPowerControllerService;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpPowerControllerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {p0}, Lcom/android/server/OpPowerControllerService;->access$3300(Lcom/android/server/OpPowerControllerService;)Landroid/telephony/SubscriptionManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    move-result-object p0

    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$1500()Z

    move-result p1

    if-eqz p1, :cond_1a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "subInfoList: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpPowerControllerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_18
    iget-object p1, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {p1}, Lcom/android/server/OpPowerControllerService;->access$4100(Lcom/android/server/OpPowerControllerService;)Landroid/app/AlarmManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-static {v0}, Lcom/android/server/OpPowerControllerService;->access$4000(Lcom/android/server/OpPowerControllerService;)Landroid/app/AlarmManager$OnAlarmListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-virtual {p0}, Lcom/android/server/OpPowerControllerService;->leaveOPSM()V

    goto :goto_7

    :cond_19
    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$cno;->this$0:Lcom/android/server/OpPowerControllerService;

    invoke-virtual {p0, v2}, Lcom/android/server/OpPowerControllerService;->enterOPSMIfAppropriated(Z)V

    :cond_1a
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
