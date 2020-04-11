.class Lcom/android/server/power/ibl;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->Pf()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;


# direct methods
.method constructor <init>(Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/ibl;->this$1:Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const-string v0, "OPSA"

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==MSG_STANDBY_MIDDLE_CHECK== "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/power/ibl;->this$1:Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->this$0:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-virtual {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->nd()V

    goto/16 :goto_1

    :pswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==MSG_GEN_BATTERT_OUTLIER== "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/power/ibl;->this$1:Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->this$0:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-virtual {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bd()V

    goto/16 :goto_1

    :pswitch_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==MSG_CHECK_QXDM_IF_READY_ON_SDCARD== "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/power/ibl;->this$1:Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->this$0:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-virtual {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ad()V

    goto/16 :goto_1

    :pswitch_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==MSG_COPY_QXDM_INTO_SDCARD== "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/power/ibl;->this$1:Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->this$0:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-virtual {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->qd()V

    goto/16 :goto_1

    :pswitch_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==MSG_CLEAN_QXDM_UNDER_SDCARD== "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/power/ibl;->this$1:Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->this$0:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-virtual {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->od()V

    goto/16 :goto_1

    :pswitch_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==MSG_CLEAN_QXDM_UNDER_VENDOR== "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/power/ibl;->this$1:Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->this$0:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-virtual {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->pd()V

    goto/16 :goto_1

    :pswitch_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==MSG_STOP_QXDM_RECORDING_AFTER_120S== "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/power/ibl;->this$1:Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->this$0:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    sget-object p1, Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->Dla:Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;->fla:Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta(ZLcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;Z)V

    goto :goto_1

    :pswitch_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "==MSG_BATT_SNAPSHOT_ON_END== "

    goto :goto_0

    :pswitch_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "==MSG_BATT_SNAPSHOT_ON_START== "

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_a
    invoke-static {}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "[OnlineConfig] Try to get OnLineConfig..."

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p1, Lcom/oneplus/config/ConfigGrabber;

    iget-object v0, p0, Lcom/android/server/power/ibl;->this$1:Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;

    iget-object v0, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->this$0:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/DeviceIdleController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/power/ibl;->this$1:Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->this$0:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta(Lcom/android/server/power/OnePlusStandbyAnalyzer;Lorg/json/JSONArray;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
