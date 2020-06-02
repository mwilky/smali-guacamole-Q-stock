.class public Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;
.super Landroid/widget/RelativeLayout;
.source "OPFingerPrintDynamicEnrollView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnrollCompletedAnim:Lcom/airbnb/lottie/LottieAnimationView;

.field private mOPFingerInputCompletedComfirmBtn:Lcom/oneplus/lib/widget/button/OPButton;

.field private mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

.field private mOPFingerInputTipsTitle:Landroid/widget/TextView;

.field private mOPFingerInputTipsWarning:Landroid/widget/TextView;

.field private mOPFingerPrintFodBgAnimView:Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;

.field private mOPFingerPrintRecognitionContinueLottieView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;

.field private mOPFingerPrintRecognitionLottieView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;

.field public mOnOPFingerComfirmListener:Lcom/oneplus/settings/opfinger/OnOPFingerComfirmListener;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d01a9

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mView:Landroid/view/View;

    const v1, 0x7f0a0499

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerPrintFodBgAnimView:Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mView:Landroid/view/View;

    const v1, 0x7f0a049d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerPrintRecognitionLottieView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mView:Landroid/view/View;

    const v1, 0x7f0a049a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerPrintRecognitionContinueLottieView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mView:Landroid/view/View;

    const v1, 0x7f0a04ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mView:Landroid/view/View;

    const v1, 0x7f0a04ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mView:Landroid/view/View;

    const v1, 0x7f0a04ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsWarning:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mView:Landroid/view/View;

    const v1, 0x7f0a04eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/button/OPButton;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputCompletedComfirmBtn:Lcom/oneplus/lib/widget/button/OPButton;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputCompletedComfirmBtn:Lcom/oneplus/lib/widget/button/OPButton;

    new-instance v1, Lcom/oneplus/settings/opfinger/-$$Lambda$OPFingerPrintDynamicEnrollView$eKKvrHSp4Wm1p9Ark3E310fwwnc;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/opfinger/-$$Lambda$OPFingerPrintDynamicEnrollView$eKKvrHSp4Wm1p9Ark3E310fwwnc;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04ea

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mEnrollCompletedAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->isNeedWaveEffect()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerPrintFodBgAnimView:Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public doEnroll(IIZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x7

    if-lt p2, v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerPrintRecognitionLottieView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p2, v0, p3}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->doRecognitionByCount(IIZ)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerPrintRecognitionContinueLottieView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;

    if-eqz v1, :cond_1

    nop

    invoke-virtual {v1, p2, v0, p3}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->doRecognitionByCount(IIZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public doRecognition(IIIZ)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->getFingerprintScaleAnimStep(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    const v2, 0x7f120cd3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    if-gt p1, v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerPrintRecognitionLottieView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->playAnimationByCount(IIIZ)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerPrintRecognitionContinueLottieView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->playAnimationByCount(IIIZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public enrollFailed()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    const v1, 0x7f120e29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    const v1, 0x7f120e28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputCompletedComfirmBtn:Lcom/oneplus/lib/widget/button/OPButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerPrintRecognitionContinueLottieView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;

    if-eqz v0, :cond_0

    nop

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public getWarningTipsView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsWarning:Landroid/widget/TextView;

    return-object v0
.end method

.method public hideHeaderView()V
    .locals 5

    const v0, 0x7f0a0613

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0614

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mView:Landroid/view/View;

    const v3, 0x7f0a04ed

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mView:Landroid/view/View;

    const v4, 0x7f0a04ec

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public hideWarningTips()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsWarning:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsWarning:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public isNeedWaveEffect()Z
    .locals 1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isFingerprintNeedEnrollTime20(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$initViews$0$OPFingerPrintDynamicEnrollView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOnOPFingerComfirmListener:Lcom/oneplus/settings/opfinger/OnOPFingerComfirmListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oneplus/settings/opfinger/OnOPFingerComfirmListener;->onOPFingerComfirmClick()V

    :cond_0
    return-void
.end method

.method public playEnrollCompletedAnim()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerPrintRecognitionLottieView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerPrintRecognitionContinueLottieView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mEnrollCompletedAnim:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mEnrollCompletedAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_2
    return-void
.end method

.method public releaseEnrollCompletedAnim()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mEnrollCompletedAnim:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mEnrollCompletedAnim:Lcom/airbnb/lottie/LottieAnimationView;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerPrintRecognitionLottieView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->releaseFingerprintLottieAnimation()V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerPrintRecognitionContinueLottieView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->releaseFingerprintLottieAnimation()V

    :cond_2
    return-void
.end method

.method public resetTextAndBtn()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v1, 0x7f120e33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f120cd3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f120e31

    goto :goto_0

    :cond_2
    const v0, 0x7f120e32

    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputCompletedComfirmBtn:Lcom/oneplus/lib/widget/button/OPButton;

    if-eqz v0, :cond_4

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPButton;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public resetWithAnimation()V
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->resetTextAndBtn()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerPrintRecognitionContinueLottieView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public resetWithoutAnimation()V
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->resetTextAndBtn()V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerPrintRecognitionContinueLottieView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public revealWithoutAnimation()V
    .locals 0

    return-void
.end method

.method public setCenterVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerPrintFodBgAnimView:Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->isNeedWaveEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerPrintFodBgAnimView:Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->setCenterVisible(Z)V

    :cond_0
    return-void
.end method

.method public setEdgeVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerPrintFodBgAnimView:Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->isNeedWaveEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerPrintFodBgAnimView:Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->setEdgeVisible(Z)V

    :cond_0
    return-void
.end method

.method public setEnrollAnimBgColor(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerPrintRecognitionLottieView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;

    if-eqz v0, :cond_0

    nop

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->setEnrollAnimBgColor(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerPrintRecognitionContinueLottieView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;

    if-eqz v0, :cond_1

    nop

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->setEnrollAnimBgColor(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setEnrollAnimVisibility(Z)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerPrintRecognitionLottieView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerPrintRecognitionContinueLottieView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;

    return-void
.end method

.method public setOnOPFingerComfirmListener(Lcom/oneplus/settings/opfinger/OnOPFingerComfirmListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOnOPFingerComfirmListener:Lcom/oneplus/settings/opfinger/OnOPFingerComfirmListener;

    return-void
.end method

.method public setSubTitleView(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    return-void
.end method

.method public setTipsCompletedContent()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    const v1, 0x7f120e27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    const v1, 0x7f120e26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputCompletedComfirmBtn:Lcom/oneplus/lib/widget/button/OPButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPButton;->setVisibility(I)V

    return-void
.end method

.method public setTipsContinueContent()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    const v1, 0x7f120e2c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    const v1, 0x7f120e2b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputCompletedComfirmBtn:Lcom/oneplus/lib/widget/button/OPButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPButton;->setVisibility(I)V

    return-void
.end method

.method public setTipsProgressContent(II)V
    .locals 3

    const/16 v0, 0x8

    const/16 v1, 0xd

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    const v2, 0x7f120e2c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    const v2, 0x7f120e2b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputCompletedComfirmBtn:Lcom/oneplus/lib/widget/button/OPButton;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/button/OPButton;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x64

    if-lt p2, v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    const v2, 0x7f120e30

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    const v2, 0x7f120e2f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputCompletedComfirmBtn:Lcom/oneplus/lib/widget/button/OPButton;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/button/OPButton;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    const v2, 0x7f120e2e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    const v2, 0x7f120e2d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputCompletedComfirmBtn:Lcom/oneplus/lib/widget/button/OPButton;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/button/OPButton;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setTipsStatusContent(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    const v1, 0x7f120e35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    const v1, 0x7f120e34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    const v1, 0x7f120e33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    const v1, 0x7f120e32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    nop

    :goto_0
    return-void
.end method

.method public setTitleView(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    return-void
.end method

.method public showContinueView()V
    .locals 14

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerPrintRecognitionLottieView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerPrintRecognitionContinueLottieView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerPrintRecognitionContinueLottieView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->playContinueAnimation()V

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v13, Landroid/view/animation/ScaleAnimation;

    const v5, 0x3f4ccccd    # 0.8f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f4ccccd    # 0.8f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v11, 0x1

    const/high16 v12, 0x3f000000    # 0.5f

    move-object v4, v13

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v4, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->start()V

    return-void
.end method

.method public showWarningTips(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsWarning:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsWarning:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsWarning:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public startTouchDownAnim()V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->isNeedWaveEffect()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    return-void
.end method
