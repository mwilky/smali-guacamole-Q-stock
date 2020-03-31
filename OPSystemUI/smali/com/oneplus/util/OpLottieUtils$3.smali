.class Lcom/oneplus/util/OpLottieUtils$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OpLottieUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/util/OpLottieUtils;->setBgAnimator(Lcom/android/systemui/plugins/qs/QSTile$State;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/util/OpLottieUtils;

.field final synthetic val$state:Lcom/android/systemui/plugins/qs/QSTile$State;


# direct methods
.method constructor <init>(Lcom/oneplus/util/OpLottieUtils;Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/util/OpLottieUtils$3;->this$0:Lcom/oneplus/util/OpLottieUtils;

    iput-object p2, p0, Lcom/oneplus/util/OpLottieUtils$3;->val$state:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/oneplus/util/OpLottieUtils$3;->this$0:Lcom/oneplus/util/OpLottieUtils;

    iget-object p0, p0, Lcom/oneplus/util/OpLottieUtils$3;->val$state:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-static {p1, p0}, Lcom/oneplus/util/OpLottieUtils;->access$300(Lcom/oneplus/util/OpLottieUtils;Lcom/android/systemui/plugins/qs/QSTile$State;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/oneplus/util/OpLottieUtils$3;->this$0:Lcom/oneplus/util/OpLottieUtils;

    iget-object p0, p0, Lcom/oneplus/util/OpLottieUtils$3;->val$state:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-static {p1, p0}, Lcom/oneplus/util/OpLottieUtils;->access$300(Lcom/oneplus/util/OpLottieUtils;Lcom/android/systemui/plugins/qs/QSTile$State;)V

    return-void
.end method
