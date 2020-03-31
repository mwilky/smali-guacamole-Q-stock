.class Lcom/oneplus/phone/OpSideGestureNavView$2;
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

    iput-object p1, p0, Lcom/oneplus/phone/OpSideGestureNavView$2;->this$0:Lcom/oneplus/phone/OpSideGestureNavView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/oneplus/phone/OpSideGestureNavView$2;->this$0:Lcom/oneplus/phone/OpSideGestureNavView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oneplus/phone/OpSideGestureNavView;->access$302(Lcom/oneplus/phone/OpSideGestureNavView;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/oneplus/phone/OpSideGestureNavView$2;->this$0:Lcom/oneplus/phone/OpSideGestureNavView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oneplus/phone/OpSideGestureNavView;->access$302(Lcom/oneplus/phone/OpSideGestureNavView;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/oneplus/phone/OpSideGestureNavView$2;->this$0:Lcom/oneplus/phone/OpSideGestureNavView;

    invoke-static {p1}, Lcom/oneplus/phone/OpSideGestureNavView;->access$400(Lcom/oneplus/phone/OpSideGestureNavView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/phone/OpSideGestureNavView$2;->this$0:Lcom/oneplus/phone/OpSideGestureNavView;

    invoke-static {p1}, Lcom/oneplus/phone/OpSideGestureNavView;->access$500(Lcom/oneplus/phone/OpSideGestureNavView;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    iget-object p0, p0, Lcom/oneplus/phone/OpSideGestureNavView$2;->this$0:Lcom/oneplus/phone/OpSideGestureNavView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/oneplus/phone/OpSideGestureNavView;->access$302(Lcom/oneplus/phone/OpSideGestureNavView;Z)Z

    return-void
.end method
