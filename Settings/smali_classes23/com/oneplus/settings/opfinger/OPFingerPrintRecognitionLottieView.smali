.class public Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;
.super Landroid/widget/FrameLayout;
.source "OPFingerPrintRecognitionLottieView.java"


# static fields
.field public static final ANIM_DELAY_TIME:I = 0x20

.field public static final PATH_1:I = 0x0

.field public static final PATH_2:I = 0x1

.field public static final PATH_3:I = 0x2

.field public static final PATH_4:I = 0x3

.field public static final PATH_5:I = 0x4

.field public static final PATH_6:I = 0x5

.field public static final PATH_7:I = 0x6


# instance fields
.field private mBgView:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

.field private mContext:Landroid/content/Context;

.field private mFingerPrintView:Landroid/widget/FrameLayout;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

.field private mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

.field private mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private getLottieAnimationView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/OPLottieAnimationView;
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d01b9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->setAnimation(I)V

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->setSpeed(F)V

    new-instance v1, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView$1;

    invoke-direct {v1, p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView$1;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;Lcom/oneplus/settings/opfinger/OPLottieAnimationView;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method


# virtual methods
.method public doRecognitionByCount(IIZ)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    nop

    :goto_0
    return-void
.end method

.method public initLottieAnimationView(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d01b9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mBgView:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mBgView:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    const v1, 0x7f11002d

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->setAnimation(I)V

    const v0, 0x7f11002a

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->getLottieAnimationView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->setSplitSteps(I)V

    const v0, 0x7f11002b

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->getLottieAnimationView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->setSplitSteps(I)V

    const v0, 0x7f11002c

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->getLottieAnimationView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->setSplitSteps(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mBgView:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public initView(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d01a6

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mFingerPrintView:Landroid/widget/FrameLayout;

    const-string v0, "#414141"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->setEnrollAnimBgColor(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mFingerPrintView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->initLottieAnimationView(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public playAnimationByCount(IIIZ)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->resumeAnimation()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->resumeAnimation()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->resumeAnimation()V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public releaseFingerprintLottieAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->cancelAnimation()V

    iput-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->cancelAnimation()V

    iput-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->cancelAnimation()V

    iput-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    :cond_2
    return-void
.end method

.method public setBackGround(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mFingerPrintView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setEnrollAnimBgColor(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isFingerprintNeedEnrollTime20(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080636

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080634

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->mFingerPrintView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_2
    return-void
.end method
