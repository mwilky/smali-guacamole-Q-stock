.class Lcom/oneplus/plugin/OpRippleView$1;
.super Landroid/os/Handler;
.source "OpRippleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/plugin/OpRippleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/plugin/OpRippleView;


# direct methods
.method constructor <init>(Lcom/oneplus/plugin/OpRippleView;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/plugin/OpRippleView$1;->this$0:Lcom/oneplus/plugin/OpRippleView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object p1, p0, Lcom/oneplus/plugin/OpRippleView$1;->this$0:Lcom/oneplus/plugin/OpRippleView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lcom/oneplus/plugin/OpRippleView$1;->this$0:Lcom/oneplus/plugin/OpRippleView;

    invoke-static {p1}, Lcom/oneplus/plugin/OpRippleView;->access$000(Lcom/oneplus/plugin/OpRippleView;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/plugin/OpRippleView$1;->this$0:Lcom/oneplus/plugin/OpRippleView;

    invoke-static {p1}, Lcom/oneplus/plugin/OpRippleView;->access$108(Lcom/oneplus/plugin/OpRippleView;)I

    iget-object p1, p0, Lcom/oneplus/plugin/OpRippleView$1;->this$0:Lcom/oneplus/plugin/OpRippleView;

    invoke-static {p1}, Lcom/oneplus/plugin/OpRippleView;->access$100(Lcom/oneplus/plugin/OpRippleView;)I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/oneplus/plugin/OpRippleView$1;->this$0:Lcom/oneplus/plugin/OpRippleView;

    invoke-static {v0}, Lcom/oneplus/plugin/OpRippleView;->access$200(Lcom/oneplus/plugin/OpRippleView;)F

    move-result v0

    sget v1, Lcom/oneplus/plugin/OpRippleView;->MESSAGE_DELAY:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    cmpl-float p1, p1, v0

    const/4 v0, 0x0

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/plugin/OpRippleView$1;->this$0:Lcom/oneplus/plugin/OpRippleView;

    invoke-static {p1, v0}, Lcom/oneplus/plugin/OpRippleView;->access$102(Lcom/oneplus/plugin/OpRippleView;I)I

    :cond_0
    iget-object p1, p0, Lcom/oneplus/plugin/OpRippleView$1;->this$0:Lcom/oneplus/plugin/OpRippleView;

    invoke-static {p1}, Lcom/oneplus/plugin/OpRippleView;->access$308(Lcom/oneplus/plugin/OpRippleView;)I

    iget-object p1, p0, Lcom/oneplus/plugin/OpRippleView$1;->this$0:Lcom/oneplus/plugin/OpRippleView;

    invoke-static {p1}, Lcom/oneplus/plugin/OpRippleView;->access$300(Lcom/oneplus/plugin/OpRippleView;)I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/oneplus/plugin/OpRippleView$1;->this$0:Lcom/oneplus/plugin/OpRippleView;

    invoke-static {v1}, Lcom/oneplus/plugin/OpRippleView;->access$200(Lcom/oneplus/plugin/OpRippleView;)F

    move-result v1

    sget v2, Lcom/oneplus/plugin/OpRippleView;->MESSAGE_DELAY:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/plugin/OpRippleView$1;->this$0:Lcom/oneplus/plugin/OpRippleView;

    invoke-static {p1, v0}, Lcom/oneplus/plugin/OpRippleView;->access$302(Lcom/oneplus/plugin/OpRippleView;I)I

    :cond_1
    sget p1, Lcom/oneplus/plugin/OpRippleView;->MESSAGE_DELAY:I

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method
