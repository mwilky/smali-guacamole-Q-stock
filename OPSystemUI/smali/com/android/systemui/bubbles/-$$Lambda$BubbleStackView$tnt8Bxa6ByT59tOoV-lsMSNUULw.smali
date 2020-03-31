.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$tnt8Bxa6ByT59tOoV-lsMSNUULw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/bubbles/BubbleStackView;

.field private final synthetic f$1:Landroid/graphics/ColorMatrix;

.field private final synthetic f$2:Landroid/graphics/ColorMatrix;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/BubbleStackView;Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$tnt8Bxa6ByT59tOoV-lsMSNUULw;->f$0:Lcom/android/systemui/bubbles/BubbleStackView;

    iput-object p2, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$tnt8Bxa6ByT59tOoV-lsMSNUULw;->f$1:Landroid/graphics/ColorMatrix;

    iput-object p3, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$tnt8Bxa6ByT59tOoV-lsMSNUULw;->f$2:Landroid/graphics/ColorMatrix;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$tnt8Bxa6ByT59tOoV-lsMSNUULw;->f$0:Lcom/android/systemui/bubbles/BubbleStackView;

    iget-object v1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$tnt8Bxa6ByT59tOoV-lsMSNUULw;->f$1:Landroid/graphics/ColorMatrix;

    iget-object p0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$tnt8Bxa6ByT59tOoV-lsMSNUULw;->f$2:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$new$6$BubbleStackView(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;Landroid/animation/ValueAnimator;)V

    return-void
.end method
