.class Lcom/android/server/am/irq$sis;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/irq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "sis"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/irq;


# direct methods
.method public constructor <init>(Lcom/android/server/am/irq;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/irq$sis;->this$0:Lcom/android/server/am/irq;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/irq$sis;->this$0:Lcom/android/server/am/irq;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lcom/android/server/am/irq;->kth(Lcom/android/server/am/irq;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/irq$sis;->this$0:Lcom/android/server/am/irq;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v2}, Lcom/android/server/am/irq;->bio(Lcom/android/server/am/irq;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/irq$sis;->this$0:Lcom/android/server/am/irq;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/server/am/irq;->zta(Lcom/android/server/am/irq;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x11

    if-eq v1, v3, :cond_7

    const/4 v3, 0x0

    const-wide/16 v4, 0x8

    const/4 v6, 0x4

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/irq$sis;->this$0:Lcom/android/server/am/irq;

    invoke-static {p0}, Lcom/android/server/am/irq;->vdb(Lcom/android/server/am/irq;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MSG_GT_OPT_APPLIST_CHANGE e:"

    goto/16 :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/android/server/am/irq$sis;->this$0:Lcom/android/server/am/irq;

    invoke-static {p1, v0}, Lcom/android/server/am/irq;->igw(Lcom/android/server/am/irq;I)Z

    move-result p1

    const/16 v1, 0xd

    if-nez p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "GeneralThread------MSG_GT_FOREGROUND_SWITCH_PROTECT end, uid:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not exist, return"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lcom/android/server/am/irq;->tsu(ILjava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/irq;->Ib()Landroid/os/Handler;

    move-result-object p0

    invoke-static {v0, v1}, Lcom/android/server/am/irq;->ywr(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/irq$sis;->this$0:Lcom/android/server/am/irq;

    invoke-static {p0, v0}, Lcom/android/server/am/irq;->you(Lcom/android/server/am/irq;I)Lcom/android/server/am/irq$bio;

    move-result-object p0

    if-eqz p0, :cond_9

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/android/server/am/irq;->Ib()Landroid/os/Handler;

    move-result-object p1

    invoke-static {v0, v1}, Lcom/android/server/am/irq;->ywr(II)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeneralThread------MSG_GT_FOREGROUND_SWITCH_PROTECT end uid:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " there is also the same uid message behind, return"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/android/server/am/irq;->tsu(ILjava/lang/String;)V

    monitor-exit p0

    return-void

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event removeForegroundSwitchProtect uid:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/android/server/am/irq;->tsu(ILjava/lang/String;)V

    invoke-static {p0}, Lcom/android/server/am/irq$bio;->rtg(Lcom/android/server/am/irq$bio;)V

    monitor-exit p0

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :pswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_2

    instance-of v2, p1, Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :cond_2
    const-string p1, "writePidToTasksFile"

    invoke-static {v4, v5, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/irq$sis;->this$0:Lcom/android/server/am/irq;

    invoke-static {p0, v0, v1, v3}, Lcom/android/server/am/irq;->zta(Lcom/android/server/am/irq;IIZ)V

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_1

    :pswitch_3
    iget-object p0, p0, Lcom/android/server/am/irq$sis;->this$0:Lcom/android/server/am/irq;

    invoke-static {p0, v0}, Lcom/android/server/am/irq;->dma(Lcom/android/server/am/irq;I)V

    goto/16 :goto_1

    :pswitch_4
    invoke-static {}, Lcom/android/server/am/irq;->Ib()Landroid/os/Handler;

    move-result-object p1

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/android/server/am/irq;->ywr(II)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/am/irq$sis;->this$0:Lcom/android/server/am/irq;

    invoke-static {p0, v0, v2}, Lcom/android/server/am/irq;->zta(Lcom/android/server/am/irq;ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    iget-object p0, p0, Lcom/android/server/am/irq$sis;->this$0:Lcom/android/server/am/irq;

    invoke-static {p0, v0, p1}, Lcom/android/server/am/irq;->you(Lcom/android/server/am/irq;II)V

    goto/16 :goto_1

    :pswitch_6
    iget-object p0, p0, Lcom/android/server/am/irq$sis;->this$0:Lcom/android/server/am/irq;

    invoke-static {p0, v0}, Lcom/android/server/am/irq;->gck(Lcom/android/server/am/irq;I)V

    goto/16 :goto_1

    :pswitch_7
    :try_start_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/util/HashSet;

    if-eqz v1, :cond_3

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/util/HashSet;

    :cond_3
    iget-object p0, p0, Lcom/android/server/am/irq$sis;->this$0:Lcom/android/server/am/irq;

    invoke-static {p0, v0}, Lcom/android/server/am/irq;->zta(Lcom/android/server/am/irq;Ljava/util/HashSet;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MSG_GT_IMPORTANT_CHANGE e:"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OPBF"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :pswitch_8
    iget-object p0, p0, Lcom/android/server/am/irq$sis;->this$0:Lcom/android/server/am/irq;

    invoke-static {p0}, Lcom/android/server/am/irq;->ibl(Lcom/android/server/am/irq;)V

    goto/16 :goto_1

    :pswitch_9
    iget-object p0, p0, Lcom/android/server/am/irq$sis;->this$0:Lcom/android/server/am/irq;

    invoke-static {p0, v0}, Lcom/android/server/am/irq;->wtn(Lcom/android/server/am/irq;I)V

    goto/16 :goto_1

    :pswitch_a
    iget-object p0, p0, Lcom/android/server/am/irq$sis;->this$0:Lcom/android/server/am/irq;

    invoke-static {p0}, Lcom/android/server/am/irq;->sis(Lcom/android/server/am/irq;)V

    goto/16 :goto_1

    :pswitch_b
    iget-object p0, p0, Lcom/android/server/am/irq$sis;->this$0:Lcom/android/server/am/irq;

    invoke-static {p0}, Lcom/android/server/am/irq;->tsu(Lcom/android/server/am/irq;)V

    goto/16 :goto_1

    :pswitch_c
    invoke-static {}, Lcom/android/server/am/irq;->access$3800()Z

    move-result p1

    if-nez p1, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "GeneralThread------MSG_GT_DELAY_FREEZE end, uid:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " |sEnable:false , return"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lcom/android/server/am/irq;->tsu(ILjava/lang/String;)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/android/server/am/irq$sis;->this$0:Lcom/android/server/am/irq;

    invoke-static {p1, v0}, Lcom/android/server/am/irq;->igw(Lcom/android/server/am/irq;I)Z

    move-result p1

    const/4 v1, 0x2

    if-nez p1, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "GeneralThread------MSG_GT_DELAY_FREEZE end, uid:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not exist, return"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lcom/android/server/am/irq;->tsu(ILjava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/irq;->Ib()Landroid/os/Handler;

    move-result-object p0

    invoke-static {v0, v1}, Lcom/android/server/am/irq;->ywr(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/android/server/am/irq$sis;->this$0:Lcom/android/server/am/irq;

    invoke-static {p1, v0}, Lcom/android/server/am/irq;->you(Lcom/android/server/am/irq;I)Lcom/android/server/am/irq$bio;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object v3, p0, Lcom/android/server/am/irq$sis;->this$0:Lcom/android/server/am/irq;

    const/4 v7, 0x1

    invoke-static {v3, v0, v7}, Lcom/android/server/am/irq;->sis(Lcom/android/server/am/irq;IZ)V

    iget-object v3, p0, Lcom/android/server/am/irq$sis;->this$0:Lcom/android/server/am/irq;

    invoke-static {v3, v0, v7}, Lcom/android/server/am/irq;->you(Lcom/android/server/am/irq;IZ)V

    monitor-enter p1

    :try_start_3
    invoke-static {}, Lcom/android/server/am/irq;->Ib()Landroid/os/Handler;

    move-result-object v3

    invoke-static {v0, v1}, Lcom/android/server/am/irq;->ywr(II)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeneralThread------MSG_GT_DELAY_FREEZE end uid:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " there is also the same uid message behind, return"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lcom/android/server/am/irq;->tsu(ILjava/lang/String;)V

    monitor-exit p1

    return-void

    :cond_6
    const-string v0, "handleDelayFreeze"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/irq$sis;->this$0:Lcom/android/server/am/irq;

    invoke-static {p0, p1, v2}, Lcom/android/server/am/irq;->zta(Lcom/android/server/am/irq;Lcom/android/server/am/irq$bio;Ljava/lang/String;)V

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit p1

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :pswitch_d
    iget-object p1, p0, Lcom/android/server/am/irq$sis;->this$0:Lcom/android/server/am/irq;

    invoke-static {p1}, Lcom/android/server/am/irq;->oif(Lcom/android/server/am/irq;)V

    new-instance p1, Lcom/oneplus/config/ConfigGrabber;

    iget-object v0, p0, Lcom/android/server/am/irq$sis;->this$0:Lcom/android/server/am/irq;

    invoke-static {v0}, Lcom/android/server/am/irq;->kth(Lcom/android/server/am/irq;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "ProcessFreezer"

    invoke-direct {p1, v0, v1}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/irq$sis;->this$0:Lcom/android/server/am/irq;

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/am/irq;->zta(Lcom/android/server/am/irq;Lorg/json/JSONArray;)V

    iget-object p1, p0, Lcom/android/server/am/irq$sis;->this$0:Lcom/android/server/am/irq;

    invoke-static {p1}, Lcom/android/server/am/irq;->ibl(Lcom/android/server/am/irq;)V

    iget-object p1, p0, Lcom/android/server/am/irq$sis;->this$0:Lcom/android/server/am/irq;

    invoke-static {p1}, Lcom/android/server/am/irq;->dma(Lcom/android/server/am/irq;)V

    iget-object p1, p0, Lcom/android/server/am/irq$sis;->this$0:Lcom/android/server/am/irq;

    invoke-static {p1}, Lcom/android/server/am/irq;->gck(Lcom/android/server/am/irq;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "oneplus_opbf_switch"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/irq$sis;->this$0:Lcom/android/server/am/irq;

    invoke-static {v1}, Lcom/android/server/am/irq;->gwm(Lcom/android/server/am/irq;)Lcom/android/server/am/irq$rtg;

    move-result-object v1

    invoke-virtual {p1, v0, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p0, p0, Lcom/android/server/am/irq$sis;->this$0:Lcom/android/server/am/irq;

    invoke-static {p0}, Lcom/android/server/am/irq;->ugm(Lcom/android/server/am/irq;)Lcom/oneplus/config/ConfigObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/config/ConfigObserver;->register()V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/server/am/irq$sis;->this$0:Lcom/android/server/am/irq;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/am/irq;->you(Lcom/android/server/am/irq;I)Lcom/android/server/am/irq$bio;

    move-result-object v0

    if-eqz v0, :cond_8

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1}, Lcom/android/server/am/irq$bio;->tsu(Lcom/android/server/am/irq$bio;I)V

    :cond_8
    iget-object p0, p0, Lcom/android/server/am/irq$sis;->this$0:Lcom/android/server/am/irq;

    iget v0, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0}, Lcom/android/server/am/irq;->you(Lcom/android/server/am/irq;I)Lcom/android/server/am/irq$bio;

    move-result-object p0

    if-eqz p0, :cond_9

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/am/irq$bio;->rtg(Lcom/android/server/am/irq$bio;I)V

    :cond_9
    :goto_1
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
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
