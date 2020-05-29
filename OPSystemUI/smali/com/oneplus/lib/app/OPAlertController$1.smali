.class Lcom/oneplus/lib/app/OPAlertController$1;
.super Ljava/lang/Object;
.source "OPAlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/OPAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/app/OPAlertController;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/OPAlertController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController$1;->this$0:Lcom/oneplus/lib/app/OPAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController$1;->this$0:Lcom/oneplus/lib/app/OPAlertController;

    invoke-static {v0}, Lcom/oneplus/lib/app/OPAlertController;->access$000(Lcom/oneplus/lib/app/OPAlertController;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController$1;->this$0:Lcom/oneplus/lib/app/OPAlertController;

    invoke-static {v0}, Lcom/oneplus/lib/app/OPAlertController;->access$100(Lcom/oneplus/lib/app/OPAlertController;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/oneplus/lib/app/OPAlertController$1;->this$0:Lcom/oneplus/lib/app/OPAlertController;

    invoke-static {p1}, Lcom/oneplus/lib/app/OPAlertController;->access$100(Lcom/oneplus/lib/app/OPAlertController;)Landroid/os/Message;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController$1;->this$0:Lcom/oneplus/lib/app/OPAlertController;

    invoke-static {v0}, Lcom/oneplus/lib/app/OPAlertController;->access$200(Lcom/oneplus/lib/app/OPAlertController;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController$1;->this$0:Lcom/oneplus/lib/app/OPAlertController;

    invoke-static {v0}, Lcom/oneplus/lib/app/OPAlertController;->access$300(Lcom/oneplus/lib/app/OPAlertController;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/oneplus/lib/app/OPAlertController$1;->this$0:Lcom/oneplus/lib/app/OPAlertController;

    invoke-static {p1}, Lcom/oneplus/lib/app/OPAlertController;->access$300(Lcom/oneplus/lib/app/OPAlertController;)Landroid/os/Message;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController$1;->this$0:Lcom/oneplus/lib/app/OPAlertController;

    invoke-static {v0}, Lcom/oneplus/lib/app/OPAlertController;->access$400(Lcom/oneplus/lib/app/OPAlertController;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/oneplus/lib/app/OPAlertController$1;->this$0:Lcom/oneplus/lib/app/OPAlertController;

    invoke-static {p1}, Lcom/oneplus/lib/app/OPAlertController;->access$500(Lcom/oneplus/lib/app/OPAlertController;)Landroid/os/Message;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/lib/app/OPAlertController$1;->this$0:Lcom/oneplus/lib/app/OPAlertController;

    invoke-static {p1}, Lcom/oneplus/lib/app/OPAlertController;->access$500(Lcom/oneplus/lib/app/OPAlertController;)Landroid/os/Message;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    iget-object p1, p0, Lcom/oneplus/lib/app/OPAlertController$1;->this$0:Lcom/oneplus/lib/app/OPAlertController;

    invoke-static {p1}, Lcom/oneplus/lib/app/OPAlertController;->access$700(Lcom/oneplus/lib/app/OPAlertController;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/oneplus/lib/app/OPAlertController$1;->this$0:Lcom/oneplus/lib/app/OPAlertController;

    invoke-static {p0}, Lcom/oneplus/lib/app/OPAlertController;->access$600(Lcom/oneplus/lib/app/OPAlertController;)Landroid/content/DialogInterface;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
