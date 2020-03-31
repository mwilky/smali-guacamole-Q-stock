.class Lcom/android/keyguard/KeyguardClockSwitch$2;
.super Landroid/transition/TransitionListenerAdapter;
.source "KeyguardClockSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardClockSwitch;->setKeyguardShowingHeader(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardClockSwitch;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardClockSwitch;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch$2;->this$0:Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/transition/TransitionListenerAdapter;->onTransitionEnd(Landroid/transition/Transition;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch$2;->this$0:Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardClockSwitch;->access$200(Lcom/android/keyguard/KeyguardClockSwitch;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch$2;->this$0:Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardClockSwitch;->access$300(Lcom/android/keyguard/KeyguardClockSwitch;)Landroid/widget/TextClock;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setVisibility(I)V

    :cond_0
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    return-void
.end method
