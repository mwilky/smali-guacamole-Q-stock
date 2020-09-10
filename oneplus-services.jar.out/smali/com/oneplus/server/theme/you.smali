.class Lcom/oneplus/server/theme/you;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/server/theme/OnePlusFontController;->scheduleRestoreFontWhenBootComplete(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/server/theme/OnePlusFontController;


# direct methods
.method constructor <init>(Lcom/oneplus/server/theme/OnePlusFontController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/server/theme/you;->this$0:Lcom/oneplus/server/theme/OnePlusFontController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/oneplus/server/theme/you;->this$0:Lcom/oneplus/server/theme/OnePlusFontController;

    invoke-static {p1}, Lcom/oneplus/server/theme/OnePlusFontController;->access$300(Lcom/oneplus/server/theme/OnePlusFontController;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/server/theme/you;->this$0:Lcom/oneplus/server/theme/OnePlusFontController;

    invoke-static {p1}, Lcom/oneplus/server/theme/OnePlusFontController;->access$400(Lcom/oneplus/server/theme/OnePlusFontController;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/server/theme/you;->this$0:Lcom/oneplus/server/theme/OnePlusFontController;

    invoke-static {p1}, Lcom/oneplus/server/theme/OnePlusFontController;->access$400(Lcom/oneplus/server/theme/OnePlusFontController;)Landroid/os/Handler;

    move-result-object p1

    const p2, 0x932ef

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/oneplus/server/theme/you;->this$0:Lcom/oneplus/server/theme/OnePlusFontController;

    invoke-static {p1}, Lcom/oneplus/server/theme/OnePlusFontController;->access$400(Lcom/oneplus/server/theme/OnePlusFontController;)Landroid/os/Handler;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/server/theme/you;->this$0:Lcom/oneplus/server/theme/OnePlusFontController;

    invoke-static {p0}, Lcom/oneplus/server/theme/OnePlusFontController;->access$400(Lcom/oneplus/server/theme/OnePlusFontController;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
