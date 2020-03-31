.class Lcom/oneplus/util/OpLottieUtils$2;
.super Ljava/lang/Object;
.source "OpLottieUtils.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/util/OpLottieUtils;->createLottieDrawable(Lcom/android/systemui/plugins/qs/QSTile$State;Z)Lcom/airbnb/lottie/LottieDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/util/OpLottieUtils;

.field final synthetic val$allowAnimations:Z

.field final synthetic val$state:Lcom/android/systemui/plugins/qs/QSTile$State;


# direct methods
.method constructor <init>(Lcom/oneplus/util/OpLottieUtils;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/util/OpLottieUtils$2;->this$0:Lcom/oneplus/util/OpLottieUtils;

    iput-object p2, p0, Lcom/oneplus/util/OpLottieUtils$2;->val$state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iput-boolean p3, p0, Lcom/oneplus/util/OpLottieUtils$2;->val$allowAnimations:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private hideLottieView()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/util/OpLottieUtils$2;->this$0:Lcom/oneplus/util/OpLottieUtils;

    invoke-static {v0}, Lcom/oneplus/util/OpLottieUtils;->access$100(Lcom/oneplus/util/OpLottieUtils;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/util/OpLottieUtils$2;->this$0:Lcom/oneplus/util/OpLottieUtils;

    invoke-static {v0}, Lcom/oneplus/util/OpLottieUtils;->access$400(Lcom/oneplus/util/OpLottieUtils;)Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/util/OpLottieUtils$2;->val$state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-boolean p0, p0, Lcom/oneplus/util/OpLottieUtils$2;->val$allowAnimations:Z

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/plugins/qs/QSIconView;->setIcon(Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/util/OpLottieUtils$2;->hideLottieView()V

    iget-object p1, p0, Lcom/oneplus/util/OpLottieUtils$2;->this$0:Lcom/oneplus/util/OpLottieUtils;

    iget-object p0, p0, Lcom/oneplus/util/OpLottieUtils$2;->val$state:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-static {p1, p0}, Lcom/oneplus/util/OpLottieUtils;->access$300(Lcom/oneplus/util/OpLottieUtils;Lcom/android/systemui/plugins/qs/QSTile$State;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/util/OpLottieUtils$2;->hideLottieView()V

    iget-object p1, p0, Lcom/oneplus/util/OpLottieUtils$2;->this$0:Lcom/oneplus/util/OpLottieUtils;

    iget-object p0, p0, Lcom/oneplus/util/OpLottieUtils$2;->val$state:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-static {p1, p0}, Lcom/oneplus/util/OpLottieUtils;->access$200(Lcom/oneplus/util/OpLottieUtils;Lcom/android/systemui/plugins/qs/QSTile$State;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/util/OpLottieUtils$2;->this$0:Lcom/oneplus/util/OpLottieUtils;

    invoke-static {p0}, Lcom/oneplus/util/OpLottieUtils;->access$100(Lcom/oneplus/util/OpLottieUtils;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
