.class Lcom/oneplus/battery/OpWarpChargingView$3;
.super Ljava/lang/Object;
.source "OpWarpChargingView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    iput-object p1, p0, Lcom/oneplus/battery/OpWarpChargingView$3;->this$0:Lcom/oneplus/battery/OpWarpChargingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/oneplus/battery/OpWarpChargingView$3;->this$0:Lcom/oneplus/battery/OpWarpChargingView;

    invoke-static {v0}, Lcom/oneplus/battery/OpWarpChargingView;->access$100(Lcom/oneplus/battery/OpWarpChargingView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object p0, p0, Lcom/oneplus/battery/OpWarpChargingView$3;->this$0:Lcom/oneplus/battery/OpWarpChargingView;

    invoke-static {p0}, Lcom/oneplus/battery/OpWarpChargingView;->access$100(Lcom/oneplus/battery/OpWarpChargingView;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method
