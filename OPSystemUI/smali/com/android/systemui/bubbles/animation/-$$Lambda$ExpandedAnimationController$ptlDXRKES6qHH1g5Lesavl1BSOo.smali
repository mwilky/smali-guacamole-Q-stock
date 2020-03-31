.class public final synthetic Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$ptlDXRKES6qHH1g5Lesavl1BSOo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$ChildAnimationConfigurator;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

.field private final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$ptlDXRKES6qHH1g5Lesavl1BSOo;->f$0:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    iput p2, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$ptlDXRKES6qHH1g5Lesavl1BSOo;->f$1:F

    return-void
.end method


# virtual methods
.method public final configureAnimationForChildAtIndex(ILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$ptlDXRKES6qHH1g5Lesavl1BSOo;->f$0:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    iget p0, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$ptlDXRKES6qHH1g5Lesavl1BSOo;->f$1:F

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->lambda$startOrUpdateCollapseAnimation$2$ExpandedAnimationController(FILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V

    return-void
.end method
