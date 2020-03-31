.class public final synthetic Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$MbG733TarKesaxvGoLpaNVamPkg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

.field private final synthetic f$1:Landroid/view/View;

.field private final synthetic f$2:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$MbG733TarKesaxvGoLpaNVamPkg;->f$0:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    iput-object p2, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$MbG733TarKesaxvGoLpaNVamPkg;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$MbG733TarKesaxvGoLpaNVamPkg;->f$2:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$MbG733TarKesaxvGoLpaNVamPkg;->f$0:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$MbG733TarKesaxvGoLpaNVamPkg;->f$1:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$PhysicsAnimationLayout$MbG733TarKesaxvGoLpaNVamPkg;->f$2:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->lambda$setUpAnimationForChild$2$PhysicsAnimationLayout(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method
