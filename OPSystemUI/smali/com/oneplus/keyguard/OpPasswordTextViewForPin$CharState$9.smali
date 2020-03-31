.class Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState$9;
.super Ljava/lang/Object;
.source "OpPasswordTextViewForPin.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;


# direct methods
.method constructor <init>(Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState$9;->this$1:Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState$9;->this$1:Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->currentWidthFactor:F

    iget-object p0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState$9;->this$1:Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;

    iget-object p0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/keyguard/OpPasswordTextViewForPin;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
