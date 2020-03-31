.class public final synthetic Lcom/android/systemui/assist/ui/-$$Lambda$DefaultUiController$DsyFMixn8vpgo7pkqARg9d_ZEVw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/assist/ui/DefaultUiController;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/assist/ui/DefaultUiController;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/assist/ui/-$$Lambda$DefaultUiController$DsyFMixn8vpgo7pkqARg9d_ZEVw;->f$0:Lcom/android/systemui/assist/ui/DefaultUiController;

    iput p2, p0, Lcom/android/systemui/assist/ui/-$$Lambda$DefaultUiController$DsyFMixn8vpgo7pkqARg9d_ZEVw;->f$1:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/assist/ui/-$$Lambda$DefaultUiController$DsyFMixn8vpgo7pkqARg9d_ZEVw;->f$0:Lcom/android/systemui/assist/ui/DefaultUiController;

    iget p0, p0, Lcom/android/systemui/assist/ui/-$$Lambda$DefaultUiController$DsyFMixn8vpgo7pkqARg9d_ZEVw;->f$1:I

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/assist/ui/DefaultUiController;->lambda$animateInvocationCompletion$0$DefaultUiController(ILandroid/animation/ValueAnimator;)V

    return-void
.end method
