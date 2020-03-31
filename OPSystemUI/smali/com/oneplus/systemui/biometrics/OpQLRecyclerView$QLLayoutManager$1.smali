.class Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager$1;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "OpQLRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager$1;->this$1:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager$1;->this$1:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$QLLayoutManager;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->access$900(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)F

    move-result p0

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    div-float/2addr p0, p1

    return p0
.end method
