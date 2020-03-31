.class Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$3;
.super Ljava/lang/Object;
.source "OpQLRecyclerView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->onEnterCancelView()V
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

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$3;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$3;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->access$1100(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x28

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$3;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->access$1200(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$3;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->access$1300(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;FZ)V

    return-void
.end method
