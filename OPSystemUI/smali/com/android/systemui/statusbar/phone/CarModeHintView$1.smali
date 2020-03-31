.class Lcom/android/systemui/statusbar/phone/CarModeHintView$1;
.super Ljava/lang/Object;
.source "CarModeHintView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/CarModeHintView;->getShowAnimation()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/CarModeHintView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/CarModeHintView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarModeHintView$1;->this$0:Lcom/android/systemui/statusbar/phone/CarModeHintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CarModeHintView$1;->this$0:Lcom/android/systemui/statusbar/phone/CarModeHintView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method
