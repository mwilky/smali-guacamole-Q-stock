.class Lcom/oneplus/battery/OpWarpChargingView$6;
.super Ljava/lang/Object;
.source "OpWarpChargingView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/battery/OpWarpChargingView;->getWarpFastChargeAnimation()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/battery/OpWarpChargingView;


# direct methods
.method constructor <init>(Lcom/oneplus/battery/OpWarpChargingView;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/battery/OpWarpChargingView$6;->this$0:Lcom/oneplus/battery/OpWarpChargingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    sget-boolean p1, Lcom/oneplus/battery/OpWarpChargingView;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "OpWarpChargingView"

    const-string v0, "onAnimationEnd()"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/oneplus/battery/OpWarpChargingView$6;->this$0:Lcom/oneplus/battery/OpWarpChargingView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/oneplus/battery/OpWarpChargingView$6;->this$0:Lcom/oneplus/battery/OpWarpChargingView;

    invoke-static {v0}, Lcom/oneplus/battery/OpWarpChargingView;->access$100(Lcom/oneplus/battery/OpWarpChargingView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/oneplus/battery/OpWarpChargingView$6;->this$0:Lcom/oneplus/battery/OpWarpChargingView;

    invoke-static {v0}, Lcom/oneplus/battery/OpWarpChargingView;->access$100(Lcom/oneplus/battery/OpWarpChargingView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lcom/oneplus/battery/OpWarpChargingView$6;->this$0:Lcom/oneplus/battery/OpWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpWarpChargingView;->access$000(Lcom/oneplus/battery/OpWarpChargingView;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/oneplus/battery/OpWarpChargingView$6;->this$0:Lcom/oneplus/battery/OpWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpWarpChargingView;->access$200(Lcom/oneplus/battery/OpWarpChargingView;)Lcom/oneplus/battery/OpChargingAnimationController;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/battery/OpWarpChargingView$6;->this$0:Lcom/oneplus/battery/OpWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpWarpChargingView;->access$200(Lcom/oneplus/battery/OpWarpChargingView;)Lcom/oneplus/battery/OpChargingAnimationController;

    move-result-object p1

    const/16 v0, 0x67

    invoke-interface {p1, v0}, Lcom/oneplus/battery/OpChargingAnimationController;->animationEnd(I)V

    :cond_1
    iget-object p1, p0, Lcom/oneplus/battery/OpWarpChargingView$6;->this$0:Lcom/oneplus/battery/OpWarpChargingView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oneplus/battery/OpWarpChargingView;->access$302(Lcom/oneplus/battery/OpWarpChargingView;Z)Z

    iget-object p0, p0, Lcom/oneplus/battery/OpWarpChargingView$6;->this$0:Lcom/oneplus/battery/OpWarpChargingView;

    invoke-virtual {p0}, Lcom/oneplus/battery/OpWarpChargingView;->releaseAsset()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    sget-boolean p1, Lcom/oneplus/battery/OpWarpChargingView;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "OpWarpChargingView"

    const-string v0, "onAnimationStart()"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    iget-object v0, p0, Lcom/oneplus/battery/OpWarpChargingView$6;->this$0:Lcom/oneplus/battery/OpWarpChargingView;

    invoke-static {v0}, Lcom/oneplus/battery/OpWarpChargingView;->access$100(Lcom/oneplus/battery/OpWarpChargingView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/oneplus/battery/OpWarpChargingView$6;->this$0:Lcom/oneplus/battery/OpWarpChargingView;

    invoke-static {v0}, Lcom/oneplus/battery/OpWarpChargingView;->access$100(Lcom/oneplus/battery/OpWarpChargingView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lcom/oneplus/battery/OpWarpChargingView$6;->this$0:Lcom/oneplus/battery/OpWarpChargingView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/oneplus/battery/OpWarpChargingView$6;->this$0:Lcom/oneplus/battery/OpWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpWarpChargingView;->access$200(Lcom/oneplus/battery/OpWarpChargingView;)Lcom/oneplus/battery/OpChargingAnimationController;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/oneplus/battery/OpWarpChargingView$6;->this$0:Lcom/oneplus/battery/OpWarpChargingView;

    invoke-static {p0}, Lcom/oneplus/battery/OpWarpChargingView;->access$200(Lcom/oneplus/battery/OpWarpChargingView;)Lcom/oneplus/battery/OpChargingAnimationController;

    move-result-object p0

    const/16 p1, 0x67

    invoke-interface {p0, p1}, Lcom/oneplus/battery/OpChargingAnimationController;->animationStart(I)V

    :cond_1
    return-void
.end method
