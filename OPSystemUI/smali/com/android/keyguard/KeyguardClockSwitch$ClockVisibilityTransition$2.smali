.class Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition$2;
.super Landroid/transition/TransitionListenerAdapter;
.source "KeyguardClockSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;->createAnimator(Landroid/view/View;FIIFF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

.field final synthetic val$endVisibility:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition$2;->this$1:Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition$2;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition$2;->val$endVisibility:I

    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition$2;->val$view:Landroid/view/View;

    iget v1, p0, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition$2;->val$endVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition$2;->val$view:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition$2;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    return-void
.end method
