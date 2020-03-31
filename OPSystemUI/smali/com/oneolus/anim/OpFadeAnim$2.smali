.class Lcom/oneolus/anim/OpFadeAnim$2;
.super Ljava/lang/Object;
.source "OpFadeAnim.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneolus/anim/OpFadeAnim;->getFadeInOutVisibilityAnimation(Landroid/view/View;ILjava/lang/Float;Z)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$endValue:F

.field final synthetic val$initValue:F

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;FF)V
    .locals 0

    iput-object p1, p0, Lcom/oneolus/anim/OpFadeAnim$2;->val$view:Landroid/view/View;

    iput p2, p0, Lcom/oneolus/anim/OpFadeAnim$2;->val$initValue:F

    iput p3, p0, Lcom/oneolus/anim/OpFadeAnim$2;->val$endValue:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    sget-boolean p1, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_0

    const-string p1, "OpFadeAnim"

    const-string v0, "onAnimationCancel"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/oneolus/anim/OpFadeAnim$2;->val$view:Landroid/view/View;

    iget p0, p0, Lcom/oneolus/anim/OpFadeAnim$2;->val$endValue:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    sget-boolean p1, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_0

    const-string p1, "OpFadeAnim"

    const-string v0, "onAnimationEnd"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/oneolus/anim/OpFadeAnim$2;->val$view:Landroid/view/View;

    iget p0, p0, Lcom/oneolus/anim/OpFadeAnim$2;->val$endValue:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/oneolus/anim/OpFadeAnim$2;->val$view:Landroid/view/View;

    iget p0, p0, Lcom/oneolus/anim/OpFadeAnim$2;->val$initValue:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
