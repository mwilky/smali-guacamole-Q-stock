.class public final synthetic Lcom/oneplus/util/-$$Lambda$OpLottieUtils$KLHs-jaR4W6vEh09AMB5gG5I_xY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/oneplus/util/OpLottieUtils;

.field private final synthetic f$1:Lcom/airbnb/lottie/LottieDrawable;


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/util/OpLottieUtils;Lcom/airbnb/lottie/LottieDrawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/util/-$$Lambda$OpLottieUtils$KLHs-jaR4W6vEh09AMB5gG5I_xY;->f$0:Lcom/oneplus/util/OpLottieUtils;

    iput-object p2, p0, Lcom/oneplus/util/-$$Lambda$OpLottieUtils$KLHs-jaR4W6vEh09AMB5gG5I_xY;->f$1:Lcom/airbnb/lottie/LottieDrawable;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/util/-$$Lambda$OpLottieUtils$KLHs-jaR4W6vEh09AMB5gG5I_xY;->f$0:Lcom/oneplus/util/OpLottieUtils;

    iget-object p0, p0, Lcom/oneplus/util/-$$Lambda$OpLottieUtils$KLHs-jaR4W6vEh09AMB5gG5I_xY;->f$1:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p0, p1}, Lcom/oneplus/util/OpLottieUtils;->lambda$createLottieDrawable$0$OpLottieUtils(Lcom/airbnb/lottie/LottieDrawable;Landroid/animation/ValueAnimator;)V

    return-void
.end method
