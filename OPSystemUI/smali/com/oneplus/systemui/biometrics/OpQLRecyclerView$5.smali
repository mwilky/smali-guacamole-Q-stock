.class Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$5;
.super Ljava/lang/Object;
.source "OpQLRecyclerView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->onLeaveCancelView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$5;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$5;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    invoke-static {v1}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->access$1200(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$5;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    invoke-static {v1}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->access$1100(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v3, 0x28

    invoke-virtual {v1, v2, v3, p1, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$5;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->access$1300(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;FZ)V

    return-void
.end method
