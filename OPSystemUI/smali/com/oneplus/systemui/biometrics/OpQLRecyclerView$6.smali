.class Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OpQLRecyclerView.java"


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

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$6;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_0

    const-string p1, "QuickLaunch.QLRecyclerView"

    const-string v0, "mLeaveAnimator end"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$6;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->access$1502(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;Z)Z

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$6;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v1, v0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->access$1300(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;FZ)V

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$6;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->access$1602(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$6;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->access$800(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)V

    return-void
.end method
