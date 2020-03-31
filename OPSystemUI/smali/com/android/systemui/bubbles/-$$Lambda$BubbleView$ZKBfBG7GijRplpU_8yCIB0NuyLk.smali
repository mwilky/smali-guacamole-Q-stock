.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$BubbleView$ZKBfBG7GijRplpU_8yCIB0NuyLk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/bubbles/BubbleView;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/BubbleView;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleView$ZKBfBG7GijRplpU_8yCIB0NuyLk;->f$0:Lcom/android/systemui/bubbles/BubbleView;

    iput-boolean p2, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleView$ZKBfBG7GijRplpU_8yCIB0NuyLk;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleView$ZKBfBG7GijRplpU_8yCIB0NuyLk;->f$0:Lcom/android/systemui/bubbles/BubbleView;

    iget-boolean p0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleView$ZKBfBG7GijRplpU_8yCIB0NuyLk;->f$1:Z

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/bubbles/BubbleView;->lambda$animateDot$1$BubbleView(ZLandroid/animation/ValueAnimator;)V

    return-void
.end method
