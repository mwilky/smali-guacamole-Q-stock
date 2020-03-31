.class Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition$1;
.super Landroid/animation/AnimatorListenerAdapter;
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

.field final synthetic val$startVisibility:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition$1;->this$1:Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition$1;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition$1;->val$startVisibility:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition$1;->val$view:Landroid/view/View;

    iget v1, p0, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition$1;->val$startVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
