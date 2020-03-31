.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardClockSwitch$ClockVisibilityTransition$0YYk1dKss121y1dzD6OuOcSJduA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:F

.field private final synthetic f$1:Landroid/view/View;

.field private final synthetic f$2:I

.field private final synthetic f$3:F

.field private final synthetic f$4:F


# direct methods
.method public synthetic constructor <init>(FLandroid/view/View;IFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardClockSwitch$ClockVisibilityTransition$0YYk1dKss121y1dzD6OuOcSJduA;->f$0:F

    iput-object p2, p0, Lcom/android/keyguard/-$$Lambda$KeyguardClockSwitch$ClockVisibilityTransition$0YYk1dKss121y1dzD6OuOcSJduA;->f$1:Landroid/view/View;

    iput p3, p0, Lcom/android/keyguard/-$$Lambda$KeyguardClockSwitch$ClockVisibilityTransition$0YYk1dKss121y1dzD6OuOcSJduA;->f$2:I

    iput p4, p0, Lcom/android/keyguard/-$$Lambda$KeyguardClockSwitch$ClockVisibilityTransition$0YYk1dKss121y1dzD6OuOcSJduA;->f$3:F

    iput p5, p0, Lcom/android/keyguard/-$$Lambda$KeyguardClockSwitch$ClockVisibilityTransition$0YYk1dKss121y1dzD6OuOcSJduA;->f$4:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget v0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardClockSwitch$ClockVisibilityTransition$0YYk1dKss121y1dzD6OuOcSJduA;->f$0:F

    iget-object v1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardClockSwitch$ClockVisibilityTransition$0YYk1dKss121y1dzD6OuOcSJduA;->f$1:Landroid/view/View;

    iget v2, p0, Lcom/android/keyguard/-$$Lambda$KeyguardClockSwitch$ClockVisibilityTransition$0YYk1dKss121y1dzD6OuOcSJduA;->f$2:I

    iget v3, p0, Lcom/android/keyguard/-$$Lambda$KeyguardClockSwitch$ClockVisibilityTransition$0YYk1dKss121y1dzD6OuOcSJduA;->f$3:F

    iget v4, p0, Lcom/android/keyguard/-$$Lambda$KeyguardClockSwitch$ClockVisibilityTransition$0YYk1dKss121y1dzD6OuOcSJduA;->f$4:F

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;->lambda$createAnimator$0(FLandroid/view/View;IFFLandroid/animation/ValueAnimator;)V

    return-void
.end method
