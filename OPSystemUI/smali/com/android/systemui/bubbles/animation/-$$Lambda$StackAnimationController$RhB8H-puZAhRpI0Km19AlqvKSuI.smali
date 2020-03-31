.class public final synthetic Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$RhB8H-puZAhRpI0Km19AlqvKSuI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/bubbles/animation/StackAnimationController;

.field private final synthetic f$1:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field private final synthetic f$2:Landroidx/dynamicanimation/animation/SpringForce;

.field private final synthetic f$3:Ljava/lang/Float;

.field private final synthetic f$4:F

.field private final synthetic f$5:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/animation/StackAnimationController;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroidx/dynamicanimation/animation/SpringForce;Ljava/lang/Float;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$RhB8H-puZAhRpI0Km19AlqvKSuI;->f$0:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    iput-object p2, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$RhB8H-puZAhRpI0Km19AlqvKSuI;->f$1:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    iput-object p3, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$RhB8H-puZAhRpI0Km19AlqvKSuI;->f$2:Landroidx/dynamicanimation/animation/SpringForce;

    iput-object p4, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$RhB8H-puZAhRpI0Km19AlqvKSuI;->f$3:Ljava/lang/Float;

    iput p5, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$RhB8H-puZAhRpI0Km19AlqvKSuI;->f$4:F

    iput p6, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$RhB8H-puZAhRpI0Km19AlqvKSuI;->f$5:F

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$RhB8H-puZAhRpI0Km19AlqvKSuI;->f$0:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$RhB8H-puZAhRpI0Km19AlqvKSuI;->f$1:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    iget-object v2, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$RhB8H-puZAhRpI0Km19AlqvKSuI;->f$2:Landroidx/dynamicanimation/animation/SpringForce;

    iget-object v3, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$RhB8H-puZAhRpI0Km19AlqvKSuI;->f$3:Ljava/lang/Float;

    iget v4, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$RhB8H-puZAhRpI0Km19AlqvKSuI;->f$4:F

    iget v5, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$RhB8H-puZAhRpI0Km19AlqvKSuI;->f$5:F

    move-object v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->lambda$flingThenSpringFirstBubbleWithStackFollowing$1$StackAnimationController(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroidx/dynamicanimation/animation/SpringForce;Ljava/lang/Float;FFLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method
