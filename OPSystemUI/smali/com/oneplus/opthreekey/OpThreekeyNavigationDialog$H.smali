.class final Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;
.super Landroid/os/Handler;
.source "OpThreekeyNavigationDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;


# direct methods
.method public constructor <init>(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;->this$0:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;->this$0:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    invoke-static {p0, p1}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->access$1900(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;Landroid/view/View;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;->this$0:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;

    invoke-static {p1}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->access$1500(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->access$900(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;Landroid/view/View;)V

    iget-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;->this$0:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;

    invoke-static {p1}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->access$1600(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->access$900(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;Landroid/view/View;)V

    iget-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;->this$0:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;

    invoke-static {p1}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->access$500(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->access$900(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;Landroid/view/View;)V

    iget-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;->this$0:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->access$1102(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;Z)Z

    iget-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;->this$0:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;

    invoke-static {p1}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->access$1700(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;)V

    iget-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;->this$0:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;

    invoke-static {p1}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->access$200(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;)I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;->this$0:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;

    invoke-static {p0}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->access$1800(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;)V

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;->this$0:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->access$1400(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;Z)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;->this$0:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;

    invoke-static {p1}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->access$1100(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;->this$0:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;

    invoke-static {p0}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->access$1300(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;)V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;->this$0:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;

    invoke-static {p1}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->access$1100(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;->this$0:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;

    invoke-static {p0}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->access$1200(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;)V

    goto :goto_0

    :pswitch_5
    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;->this$0:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->access$1000(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;I)V

    goto :goto_0

    :pswitch_6
    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;->this$0:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    invoke-static {p0, p1}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->access$900(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;Landroid/view/View;)V

    goto :goto_0

    :pswitch_7
    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;->this$0:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    invoke-static {p0, p1}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->access$800(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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
