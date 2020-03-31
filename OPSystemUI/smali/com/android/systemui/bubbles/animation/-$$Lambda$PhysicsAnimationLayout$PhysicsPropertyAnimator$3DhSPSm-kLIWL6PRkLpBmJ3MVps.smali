.class public final synthetic Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$PhysicsPropertyAnimator$3DhSPSm-kLIWL6PRkLpBmJ3MVps;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

.field private final synthetic f$1:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private final synthetic f$2:Landroidx/dynamicanimation/animation/SpringAnimation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$PhysicsPropertyAnimator$3DhSPSm-kLIWL6PRkLpBmJ3MVps;->f$0:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    iput-object p2, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$PhysicsPropertyAnimator$3DhSPSm-kLIWL6PRkLpBmJ3MVps;->f$1:Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object p3, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$PhysicsPropertyAnimator$3DhSPSm-kLIWL6PRkLpBmJ3MVps;->f$2:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$PhysicsPropertyAnimator$3DhSPSm-kLIWL6PRkLpBmJ3MVps;->f$0:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$PhysicsPropertyAnimator$3DhSPSm-kLIWL6PRkLpBmJ3MVps;->f$1:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$PhysicsPropertyAnimator$3DhSPSm-kLIWL6PRkLpBmJ3MVps;->f$2:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->lambda$start$1$PhysicsAnimationLayout$PhysicsPropertyAnimator(Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;)V

    return-void
.end method
