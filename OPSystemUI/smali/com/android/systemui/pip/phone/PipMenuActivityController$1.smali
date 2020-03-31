.class Lcom/android/systemui/pip/phone/PipMenuActivityController$1;
.super Landroid/os/Handler;
.source "PipMenuActivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/phone/PipMenuActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/phone/PipMenuActivityController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic lambda$handleMessage$0(Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;)V
    .locals 0

    invoke-interface {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;->onPipExpand()V

    return-void
.end method

.method static synthetic lambda$handleMessage$1(Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;)V
    .locals 0

    invoke-interface {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;->onPipMinimize()V

    return-void
.end method

.method static synthetic lambda$handleMessage$2(Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;)V
    .locals 0

    invoke-interface {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;->onPipDismiss()V

    return-void
.end method

.method static synthetic lambda$handleMessage$3(Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;)V
    .locals 0

    invoke-interface {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;->onPipShowMenu()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$100(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Ljava/util/ArrayList;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$1$nEDJFK5X-9H1WAx_9S8qUwV6KLY;->INSTANCE:Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$1$nEDJFK5X-9H1WAx_9S8qUwV6KLY;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$200(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Lcom/android/systemui/shared/system/InputConsumerController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shared/system/InputConsumerController;->unregisterInputConsumer()V

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$200(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Lcom/android/systemui/shared/system/InputConsumerController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shared/system/InputConsumerController;->registerInputConsumer()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-static {v0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$302(Lcom/android/systemui/pip/phone/PipMenuActivityController;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$400(Lcom/android/systemui/pip/phone/PipMenuActivityController;Z)V

    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$500(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$500(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$502(Lcom/android/systemui/pip/phone/PipMenuActivityController;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$300(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Landroid/os/Messenger;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {p0, v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$000(Lcom/android/systemui/pip/phone/PipMenuActivityController;IZ)V

    goto :goto_0

    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$100(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Ljava/util/ArrayList;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$1$rDXDKqpw1CLC0fwevwYEng68Bps;->INSTANCE:Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$1$rDXDKqpw1CLC0fwevwYEng68Bps;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$100(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Ljava/util/ArrayList;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$1$o9fLqvuiKIYwdsSexRT0X4Ty0V4;->INSTANCE:Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$1$o9fLqvuiKIYwdsSexRT0X4Ty0V4;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :pswitch_6
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$100(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Ljava/util/ArrayList;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$1$8btqC3E6FFjbjLWUhiNmbnKUlfI;->INSTANCE:Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$1$8btqC3E6FFjbjLWUhiNmbnKUlfI;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :pswitch_7
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {p0, p1, v1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$000(Lcom/android/systemui/pip/phone/PipMenuActivityController;IZ)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
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
