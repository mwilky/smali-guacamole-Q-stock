.class final Lcom/oneplus/android/server/display/dma$zta;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/display/dma;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "zta"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/display/dma;


# direct methods
.method private constructor <init>(Lcom/oneplus/android/server/display/dma;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/android/server/display/dma$zta;->this$0:Lcom/oneplus/android/server/display/dma;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/android/server/display/dma;Landroid/os/Looper;Lcom/oneplus/android/server/display/wtn;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/android/server/display/dma$zta;-><init>(Lcom/oneplus/android/server/display/dma;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/server/display/dma$zta;->this$0:Lcom/oneplus/android/server/display/dma;

    invoke-static {v0}, Lcom/oneplus/android/server/display/dma;->rtg(Lcom/oneplus/android/server/display/dma;)Lcom/oneplus/android/server/display/gwm;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/oneplus/android/server/display/dma;->access$800()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "OpColorGamutManager"

    const-string p1, "mOpGamutMappingStrategy is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/oneplus/android/server/display/dma$zta;->this$0:Lcom/oneplus/android/server/display/dma;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/oneplus/android/server/display/dma;->ssp(Lcom/oneplus/android/server/display/dma;Z)V

    goto/16 :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/oneplus/android/server/display/dma$zta;->this$0:Lcom/oneplus/android/server/display/dma;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/oneplus/android/server/display/dma;->rtg(Lcom/oneplus/android/server/display/dma;Z)V

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, Lcom/oneplus/android/server/display/dma$zta;->this$0:Lcom/oneplus/android/server/display/dma;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/oneplus/android/server/display/dma;->tsu(Lcom/oneplus/android/server/display/dma;Z)V

    goto :goto_0

    :pswitch_3
    iget-object p0, p0, Lcom/oneplus/android/server/display/dma$zta;->this$0:Lcom/oneplus/android/server/display/dma;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/oneplus/android/server/display/dma;->sis(Lcom/oneplus/android/server/display/dma;Z)V

    goto :goto_0

    :pswitch_4
    iget-object p0, p0, Lcom/oneplus/android/server/display/dma$zta;->this$0:Lcom/oneplus/android/server/display/dma;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/oneplus/android/server/display/dma;->rtg(Lcom/oneplus/android/server/display/dma;I)V

    goto :goto_0

    :pswitch_5
    iget-object p0, p0, Lcom/oneplus/android/server/display/dma$zta;->this$0:Lcom/oneplus/android/server/display/dma;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/oneplus/android/server/display/dma;->tsu(Lcom/oneplus/android/server/display/dma;I)V

    goto :goto_0

    :pswitch_6
    iget-object p0, p0, Lcom/oneplus/android/server/display/dma$zta;->this$0:Lcom/oneplus/android/server/display/dma;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/oneplus/android/server/display/dma;->sis(Lcom/oneplus/android/server/display/dma;I)V

    goto :goto_0

    :pswitch_7
    iget-object p0, p0, Lcom/oneplus/android/server/display/dma$zta;->this$0:Lcom/oneplus/android/server/display/dma;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/oneplus/android/server/display/dma;->you(Lcom/oneplus/android/server/display/dma;Z)V

    goto :goto_0

    :pswitch_8
    iget-object p0, p0, Lcom/oneplus/android/server/display/dma$zta;->this$0:Lcom/oneplus/android/server/display/dma;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/oneplus/android/server/display/dma;->zta(Lcom/oneplus/android/server/display/dma;Z)V

    goto :goto_0

    :pswitch_9
    iget-object p0, p0, Lcom/oneplus/android/server/display/dma$zta;->this$0:Lcom/oneplus/android/server/display/dma;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/oneplus/android/server/display/dma;->zta(Lcom/oneplus/android/server/display/dma;I)V

    goto :goto_0

    :pswitch_a
    iget-object p0, p0, Lcom/oneplus/android/server/display/dma$zta;->this$0:Lcom/oneplus/android/server/display/dma;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/oneplus/android/server/display/dma;->zta(Lcom/oneplus/android/server/display/dma;IZ)V

    :goto_0
    :pswitch_b
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_b
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
