.class public Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "OpQLRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QLLayoutManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;


# direct methods
.method public constructor <init>(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;Landroid/content/Context;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    invoke-direct {p0, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    invoke-static {p2}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->access$700(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)V

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->access$800(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)V

    return p1
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    invoke-static {p2}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->access$200(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager$1;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager$1;-><init>(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->access$1000(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)V

    return-void
.end method
