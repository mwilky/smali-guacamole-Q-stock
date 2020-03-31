.class public Lcom/oneplus/util/OpLottieUtils;
.super Ljava/lang/Object;
.source "OpLottieUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OpLottieUtils"


# instance fields
.field private mBg:Landroid/widget/ImageView;

.field private mClickedForAnim:Z

.field private mContext:Landroid/content/Context;

.field private mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

.field private mIsAnimating:Z

.field private mLottieAnimView:Lcom/airbnb/lottie/LottieAnimationView;

.field private mLottieDrawable:Lcom/airbnb/lottie/LottieDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSIconView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/util/OpLottieUtils;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/util/OpLottieUtils;->mBg:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/oneplus/util/OpLottieUtils;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/util/OpLottieUtils;)Lcom/airbnb/lottie/LottieDrawable;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/util/OpLottieUtils;->mLottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/util/OpLottieUtils;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/util/OpLottieUtils;->mLottieAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/util/OpLottieUtils;Lcom/android/systemui/plugins/qs/QSTile$State;)Landroid/animation/ValueAnimator;
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/util/OpLottieUtils;->setBgAnimator(Lcom/android/systemui/plugins/qs/QSTile$State;)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/util/OpLottieUtils;Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/util/OpLottieUtils;->onFinish(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/util/OpLottieUtils;)Lcom/android/systemui/plugins/qs/QSIconView;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/util/OpLottieUtils;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    return-object p0
.end method

.method private createLottieDrawable(Lcom/android/systemui/plugins/qs/QSTile$State;Z)Lcom/airbnb/lottie/LottieDrawable;
    .locals 2

    new-instance v0, Lcom/airbnb/lottie/LottieDrawable;

    invoke-direct {v0}, Lcom/airbnb/lottie/LottieDrawable;-><init>()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->removeAllAnimatorListeners()V

    new-instance v1, Lcom/oneplus/util/-$$Lambda$OpLottieUtils$KLHs-jaR4W6vEh09AMB5gG5I_xY;

    invoke-direct {v1, p0, v0}, Lcom/oneplus/util/-$$Lambda$OpLottieUtils$KLHs-jaR4W6vEh09AMB5gG5I_xY;-><init>(Lcom/oneplus/util/OpLottieUtils;Lcom/airbnb/lottie/LottieDrawable;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieDrawable;->addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/oneplus/util/OpLottieUtils$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/oneplus/util/OpLottieUtils$2;-><init>(Lcom/oneplus/util/OpLottieUtils;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieDrawable;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private getCurrentBgColor()I
    .locals 2

    iget-object p0, p0, Lcom/oneplus/util/OpLottieUtils;->mBg:Landroid/widget/ImageView;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sget-object p0, Lcom/oneplus/util/OpLottieUtils;->TAG:Ljava/lang/String;

    const-string v1, "getCurrentBgColor: mBg is null."

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    :cond_1
    return v0
.end method

.method private static getCurrentShape(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "oneplus_shape"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static getCurrentShapeString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/oneplus/util/OpLottieUtils;->getCurrentShape(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, "circle"

    return-object p0

    :cond_0
    const-string p0, "squircle"

    return-object p0

    :cond_1
    const-string p0, "teardrop"

    return-object p0

    :cond_2
    const-string p0, "roundedrect"

    return-object p0
.end method

.method private getLottieAnimFile(Lcom/android/systemui/plugins/qs/QSTile$State;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/oneplus/util/OpLottieUtils;->isNeedLottie(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/oneplus/util/ThemeColorUtils;->getCurrentTheme()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->lottiePrefix:Ljava/lang/CharSequence;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/util/OpLottieUtils;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oneplus/util/OpLottieUtils;->getCurrentShapeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-eqz p0, :cond_3

    if-eq p0, v1, :cond_2

    const-string p0, "inactive"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string p0, "active"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string/jumbo p0, "unavailable"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "android"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string p0, ".json"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isCurShapeNeedLottie(Lcom/android/systemui/plugins/qs/QSTile$State;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/util/OpLottieUtils;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oneplus/util/OpLottieUtils;->getCurrentShape(Landroid/content/Context;)I

    move-result p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    const/4 v3, 0x4

    if-eq p0, v1, :cond_2

    if-eq p0, v3, :cond_1

    iget p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->lottieSupport:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_4

    return v2

    :cond_1
    iget p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->lottieSupport:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_4

    return v2

    :cond_2
    iget p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->lottieSupport:I

    and-int/2addr p0, v3

    if-eqz p0, :cond_4

    return v2

    :cond_3
    iget p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->lottieSupport:I

    and-int/2addr p0, v1

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method private isCurStateNeedLottie(Lcom/android/systemui/plugins/qs/QSTile$State;)Z
    .locals 3

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->lottieSupport:I

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_3

    return v1

    :cond_1
    iget p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->lottieSupport:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_3

    return v1

    :cond_2
    iget p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->lottieSupport:I

    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return p0
.end method

.method private onFinish(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/util/OpLottieUtils;->mBg:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-static {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getCircleColorForState(I)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/util/OpLottieUtils;->mClickedForAnim:Z

    iput-boolean p1, p0, Lcom/oneplus/util/OpLottieUtils;->mIsAnimating:Z

    return-void
.end method

.method private setBgAnimator(Lcom/android/systemui/plugins/qs/QSTile$State;)Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-direct {p0}, Lcom/oneplus/util/OpLottieUtils;->getCurrentBgColor()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-static {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getCircleColorForState(I)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/util/-$$Lambda$OpLottieUtils$pyRyLRZa5U9o76ho7ClFEwqqfI8;

    invoke-direct {v1, p0}, Lcom/oneplus/util/-$$Lambda$OpLottieUtils$pyRyLRZa5U9o76ho7ClFEwqqfI8;-><init>(Lcom/oneplus/util/OpLottieUtils;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/oneplus/util/OpLottieUtils$3;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/util/OpLottieUtils$3;-><init>(Lcom/oneplus/util/OpLottieUtils;Lcom/android/systemui/plugins/qs/QSTile$State;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method


# virtual methods
.method public applyLottieAnimIfNeeded(Landroid/widget/FrameLayout;Lcom/android/systemui/plugins/qs/QSTile$State;Z)Z
    .locals 3

    iget-boolean v0, p0, Lcom/oneplus/util/OpLottieUtils;->mIsAnimating:Z

    if-nez v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/oneplus/util/OpLottieUtils;->isNeedLottie(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/util/OpLottieUtils;->mIsAnimating:Z

    iget-object v1, p0, Lcom/oneplus/util/OpLottieUtils;->mLottieAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v1, :cond_1

    new-instance v1, Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v2, p0, Lcom/oneplus/util/OpLottieUtils;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/util/OpLottieUtils;->mLottieAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v1, p0, Lcom/oneplus/util/OpLottieUtils;->mLottieAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-direct {p0, p2, p3}, Lcom/oneplus/util/OpLottieUtils;->createLottieDrawable(Lcom/android/systemui/plugins/qs/QSTile$State;Z)Lcom/airbnb/lottie/LottieDrawable;

    move-result-object p3

    iput-object p3, p0, Lcom/oneplus/util/OpLottieUtils;->mLottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    iget-object p3, p0, Lcom/oneplus/util/OpLottieUtils;->mLottieAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v1, p0, Lcom/oneplus/util/OpLottieUtils;->mLottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p3, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p3, p0, Lcom/oneplus/util/OpLottieUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/android/systemui/R$dimen;->qs_quick_tile_size:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iget-object v1, p0, Lcom/oneplus/util/OpLottieUtils;->mLottieAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, p3, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object p1, p0, Lcom/oneplus/util/OpLottieUtils;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/oneplus/util/OpLottieUtils;->getLottieAnimFile(Lcom/android/systemui/plugins/qs/QSTile$State;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/oneplus/util/OpLottieUtils$1;

    invoke-direct {p3, p0}, Lcom/oneplus/util/OpLottieUtils$1;-><init>(Lcom/oneplus/util/OpLottieUtils;)V

    invoke-static {p1, p2, p3}, Lcom/airbnb/lottie/LottieComposition$Factory;->fromAssetFileName(Landroid/content/Context;Ljava/lang/String;Lcom/airbnb/lottie/OnCompositionLoadedListener;)Lcom/airbnb/lottie/Cancellable;

    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isNeedLottie(Lcom/android/systemui/plugins/qs/QSTile$State;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->lottiePrefix:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/oneplus/util/OpLottieUtils;->mClickedForAnim:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/util/OpLottieUtils;->isCurStateNeedLottie(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/oneplus/util/OpLottieUtils;->isCurShapeNeedLottie(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public synthetic lambda$createLottieDrawable$0$OpLottieUtils(Lcom/airbnb/lottie/LottieDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/util/OpLottieUtils;->mBg:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->isShown()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieDrawable;->isAnimating()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieDrawable;->cancelAnimation()V

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/LottieDrawable;->setProgress(F)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$setBgAnimator$1$OpLottieUtils(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/util/OpLottieUtils;->mBg:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public performClick()Z
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/util/OpLottieUtils;->mIsAnimating:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iput-boolean v1, p0, Lcom/oneplus/util/OpLottieUtils;->mClickedForAnim:Z

    const/4 p0, 0x0

    return p0
.end method
