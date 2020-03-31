.class Lcom/oneplus/phone/OpSideGestureNavView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OpSideGestureNavView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/phone/OpSideGestureNavView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/phone/OpSideGestureNavView;


# direct methods
.method constructor <init>(Lcom/oneplus/phone/OpSideGestureNavView;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/phone/OpSideGestureNavView$4;->this$0:Lcom/oneplus/phone/OpSideGestureNavView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/oneplus/phone/OpSideGestureNavView$4;->this$0:Lcom/oneplus/phone/OpSideGestureNavView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oneplus/phone/OpSideGestureNavView;->access$402(Lcom/oneplus/phone/OpSideGestureNavView;Z)Z

    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "opSideGestureNavView : mExitAnimListener onAnimationCancel mFinished "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/phone/OpSideGestureNavView$4;->this$0:Lcom/oneplus/phone/OpSideGestureNavView;

    invoke-static {v0}, Lcom/oneplus/phone/OpSideGestureNavView;->access$600(Lcom/oneplus/phone/OpSideGestureNavView;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpSideGesture"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/oneplus/phone/OpSideGestureNavView$4;->this$0:Lcom/oneplus/phone/OpSideGestureNavView;

    invoke-static {p1}, Lcom/oneplus/phone/OpSideGestureNavView;->access$600(Lcom/oneplus/phone/OpSideGestureNavView;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/oneplus/phone/OpSideGestureNavView$4;->this$0:Lcom/oneplus/phone/OpSideGestureNavView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/oneplus/phone/OpSideGestureNavView$4;->this$0:Lcom/oneplus/phone/OpSideGestureNavView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oneplus/phone/OpSideGestureNavView;->access$402(Lcom/oneplus/phone/OpSideGestureNavView;Z)Z

    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "opSideGestureNavView : mExitAnimListener onAnimationEnd mFinished "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/phone/OpSideGestureNavView$4;->this$0:Lcom/oneplus/phone/OpSideGestureNavView;

    invoke-static {v0}, Lcom/oneplus/phone/OpSideGestureNavView;->access$600(Lcom/oneplus/phone/OpSideGestureNavView;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpSideGesture"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/oneplus/phone/OpSideGestureNavView$4;->this$0:Lcom/oneplus/phone/OpSideGestureNavView;

    invoke-static {p1}, Lcom/oneplus/phone/OpSideGestureNavView;->access$600(Lcom/oneplus/phone/OpSideGestureNavView;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/oneplus/phone/OpSideGestureNavView$4;->this$0:Lcom/oneplus/phone/OpSideGestureNavView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/oneplus/phone/OpSideGestureNavView$4;->this$0:Lcom/oneplus/phone/OpSideGestureNavView;

    invoke-static {p1}, Lcom/oneplus/phone/OpSideGestureNavView;->access$300(Lcom/oneplus/phone/OpSideGestureNavView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/phone/OpSideGestureNavView$4;->this$0:Lcom/oneplus/phone/OpSideGestureNavView;

    invoke-static {p1}, Lcom/oneplus/phone/OpSideGestureNavView;->access$700(Lcom/oneplus/phone/OpSideGestureNavView;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    iget-object p1, p0, Lcom/oneplus/phone/OpSideGestureNavView$4;->this$0:Lcom/oneplus/phone/OpSideGestureNavView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/oneplus/phone/OpSideGestureNavView;->access$402(Lcom/oneplus/phone/OpSideGestureNavView;Z)Z

    iget-object p1, p0, Lcom/oneplus/phone/OpSideGestureNavView$4;->this$0:Lcom/oneplus/phone/OpSideGestureNavView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lcom/oneplus/phone/OpSideGestureNavView;->access$802(Lcom/oneplus/phone/OpSideGestureNavView;F)F

    iget-object p0, p0, Lcom/oneplus/phone/OpSideGestureNavView$4;->this$0:Lcom/oneplus/phone/OpSideGestureNavView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oneplus/phone/OpSideGestureNavView;->access$902(Lcom/oneplus/phone/OpSideGestureNavView;F)F

    return-void
.end method
