.class Lcom/oneplus/volume/OpOutputChooserLayout$H;
.super Landroid/os/Handler;
.source "OpOutputChooserLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/volume/OpOutputChooserLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/volume/OpOutputChooserLayout;


# direct methods
.method public constructor <init>(Lcom/oneplus/volume/OpOutputChooserLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/volume/OpOutputChooserLayout$H;->this$0:Lcom/oneplus/volume/OpOutputChooserLayout;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserLayout$H;->this$0:Lcom/oneplus/volume/OpOutputChooserLayout;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Lcom/oneplus/volume/OpOutputChooserLayout$Item;

    invoke-static {p0, p1}, Lcom/oneplus/volume/OpOutputChooserLayout;->access$500(Lcom/oneplus/volume/OpOutputChooserLayout;[Lcom/oneplus/volume/OpOutputChooserLayout$Item;)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserLayout$H;->this$0:Lcom/oneplus/volume/OpOutputChooserLayout;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/oneplus/volume/OpOutputChooserLayout$Callback;

    invoke-static {p0, p1}, Lcom/oneplus/volume/OpOutputChooserLayout;->access$600(Lcom/oneplus/volume/OpOutputChooserLayout;Lcom/oneplus/volume/OpOutputChooserLayout$Callback;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserLayout$H;->this$0:Lcom/oneplus/volume/OpOutputChooserLayout;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-static {p0, v1}, Lcom/oneplus/volume/OpOutputChooserLayout;->access$700(Lcom/oneplus/volume/OpOutputChooserLayout;Z)V

    :cond_3
    :goto_1
    return-void
.end method
