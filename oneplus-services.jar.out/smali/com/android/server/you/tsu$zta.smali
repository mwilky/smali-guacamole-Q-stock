.class final Lcom/android/server/you/tsu$zta;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/you/tsu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "zta"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/you/tsu;


# direct methods
.method constructor <init>(Lcom/android/server/you/tsu;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/you/tsu$zta;->this$0:Lcom/android/server/you/tsu;

    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/UiThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "OpVCAction"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/android/server/you/tsu$zta;->this$0:Lcom/android/server/you/tsu;

    invoke-static {p1}, Lcom/android/server/you/tsu;->you(Lcom/android/server/you/tsu;)Lcom/android/server/you/wtn;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/you/tsu$zta;->this$0:Lcom/android/server/you/tsu;

    invoke-static {p1}, Lcom/android/server/you/tsu;->you(Lcom/android/server/you/tsu;)Lcom/android/server/you/wtn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/you/wtn;->dismiss()V

    :cond_0
    iget-object p0, p0, Lcom/android/server/you/tsu$zta;->this$0:Lcom/android/server/you/tsu;

    new-instance p1, Lcom/android/server/you/wtn;

    invoke-static {p0}, Lcom/android/server/you/tsu;->sis(Lcom/android/server/you/tsu;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/server/you/wtn;-><init>(Landroid/content/Context;)V

    invoke-static {p0, p1}, Lcom/android/server/you/tsu;->zta(Lcom/android/server/you/tsu;Lcom/android/server/you/wtn;)Lcom/android/server/you/wtn;

    goto/16 :goto_1

    :pswitch_1
    iget-object p1, p0, Lcom/android/server/you/tsu$zta;->this$0:Lcom/android/server/you/tsu;

    invoke-static {p1}, Lcom/android/server/you/tsu;->ssp(Lcom/android/server/you/tsu;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :pswitch_2
    invoke-static {}, Lcom/android/server/you/tsu;->access$300()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "User Close Window"

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :pswitch_3
    invoke-static {}, Lcom/android/server/you/tsu;->access$300()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Paste Code!"

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object p1, p0, Lcom/android/server/you/tsu$zta;->this$0:Lcom/android/server/you/tsu;

    invoke-static {p1}, Lcom/android/server/you/tsu;->tsu(Lcom/android/server/you/tsu;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/you/tsu;->you(Lcom/android/server/you/tsu;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/you/tsu$zta;->this$0:Lcom/android/server/you/tsu;

    invoke-static {p1}, Lcom/android/server/you/tsu;->rtg(Lcom/android/server/you/tsu;)Lcom/android/server/you/you;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/you/tsu$zta;->this$0:Lcom/android/server/you/tsu;

    invoke-static {v0}, Lcom/android/server/you/tsu;->tsu(Lcom/android/server/you/tsu;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/server/you/you;->zta(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/android/server/you/tsu;->access$300()Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Hide Window. W ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/you/tsu$zta;->this$0:Lcom/android/server/you/tsu;

    invoke-static {v0}, Lcom/android/server/you/tsu;->you(Lcom/android/server/you/tsu;)Lcom/android/server/you/wtn;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object p1, p0, Lcom/android/server/you/tsu$zta;->this$0:Lcom/android/server/you/tsu;

    invoke-static {p1}, Lcom/android/server/you/tsu;->you(Lcom/android/server/you/tsu;)Lcom/android/server/you/wtn;

    move-result-object p1

    if-nez p1, :cond_5

    return-void

    :cond_5
    iget-object p1, p0, Lcom/android/server/you/tsu$zta;->this$0:Lcom/android/server/you/tsu;

    invoke-static {p1}, Lcom/android/server/you/tsu;->you(Lcom/android/server/you/tsu;)Lcom/android/server/you/wtn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/you/wtn;->hide()V

    iget-object p0, p0, Lcom/android/server/you/tsu$zta;->this$0:Lcom/android/server/you/tsu;

    invoke-static {p0}, Lcom/android/server/you/tsu;->you(Lcom/android/server/you/tsu;)Lcom/android/server/you/wtn;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/you/wtn;->zta(Lcom/android/server/you/wtn$zta;)V

    goto/16 :goto_1

    :pswitch_5
    invoke-static {}, Lcom/android/server/you/tsu;->access$300()Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cur Code Expired. W ="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/you/tsu$zta;->this$0:Lcom/android/server/you/tsu;

    invoke-static {v1}, Lcom/android/server/you/tsu;->you(Lcom/android/server/you/tsu;)Lcom/android/server/you/wtn;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object p1, p0, Lcom/android/server/you/tsu$zta;->this$0:Lcom/android/server/you/tsu;

    invoke-static {p1, v0}, Lcom/android/server/you/tsu;->zta(Lcom/android/server/you/tsu;Z)Z

    iget-object p1, p0, Lcom/android/server/you/tsu$zta;->this$0:Lcom/android/server/you/tsu;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/android/server/you/tsu;->zta(Lcom/android/server/you/tsu;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/android/server/you/tsu$zta;->this$0:Lcom/android/server/you/tsu;

    invoke-static {p1}, Lcom/android/server/you/tsu;->you(Lcom/android/server/you/tsu;)Lcom/android/server/you/wtn;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    iget-object p0, p0, Lcom/android/server/you/tsu$zta;->this$0:Lcom/android/server/you/tsu;

    invoke-static {p0}, Lcom/android/server/you/tsu;->you(Lcom/android/server/you/tsu;)Lcom/android/server/you/wtn;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/you/wtn;->dismiss()V

    goto :goto_1

    :pswitch_6
    invoke-static {}, Lcom/android/server/you/tsu;->access$300()Z

    move-result p1

    if-eqz p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Show If Allow. W ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/you/tsu$zta;->this$0:Lcom/android/server/you/tsu;

    invoke-static {v0}, Lcom/android/server/you/tsu;->you(Lcom/android/server/you/tsu;)Lcom/android/server/you/wtn;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object p1, p0, Lcom/android/server/you/tsu$zta;->this$0:Lcom/android/server/you/tsu;

    invoke-static {p1}, Lcom/android/server/you/tsu;->ssp(Lcom/android/server/you/tsu;)Z

    move-result p1

    if-nez p1, :cond_a

    invoke-static {}, Lcom/android/server/you/tsu;->access$300()Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "Not Allow To Show."

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void

    :cond_a
    iget-object p1, p0, Lcom/android/server/you/tsu$zta;->this$0:Lcom/android/server/you/tsu;

    invoke-static {p1}, Lcom/android/server/you/tsu;->you(Lcom/android/server/you/tsu;)Lcom/android/server/you/wtn;

    move-result-object p1

    if-nez p1, :cond_b

    return-void

    :cond_b
    iget-object p1, p0, Lcom/android/server/you/tsu$zta;->this$0:Lcom/android/server/you/tsu;

    invoke-static {p1}, Lcom/android/server/you/tsu;->you(Lcom/android/server/you/tsu;)Lcom/android/server/you/wtn;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/you/tsu$zta;->this$0:Lcom/android/server/you/tsu;

    invoke-static {v0}, Lcom/android/server/you/tsu;->cno(Lcom/android/server/you/tsu;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/you/tsu$zta;->this$0:Lcom/android/server/you/tsu;

    invoke-static {v1}, Lcom/android/server/you/tsu;->rtg(Lcom/android/server/you/tsu;)Lcom/android/server/you/you;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/you/you;->irq()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/you/wtn;->zta(Ljava/lang/String;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/server/you/tsu$zta;->this$0:Lcom/android/server/you/tsu;

    invoke-static {p1}, Lcom/android/server/you/tsu;->you(Lcom/android/server/you/tsu;)Lcom/android/server/you/wtn;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/you/tsu$zta;->this$0:Lcom/android/server/you/tsu;

    invoke-static {p0}, Lcom/android/server/you/tsu;->kth(Lcom/android/server/you/tsu;)Lcom/android/server/you/wtn$zta;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/you/wtn;->zta(Lcom/android/server/you/wtn$zta;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
