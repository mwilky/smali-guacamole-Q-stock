.class public Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;
.super Landroid/widget/FrameLayout;
.source "OPFingerPrintRecognitionContinueLottieView.java"


# static fields
.field public static final ANIM_DELAY_TIME:I = 0x20


# instance fields
.field private mBgView:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

.field private mContext:Landroid/content/Context;

.field private mFingerPrintView:Landroid/widget/FrameLayout;

.field private mLastExcessStep:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

.field private mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

.field private mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

.field private mLottieAnimationView04:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

.field private mLottieAnimationView05:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLastExcessStep:I

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLastExcessStep:I

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLastExcessStep:I

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private getLottieAnimationView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/OPLottieAnimationView;
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d01bd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->setAnimation(I)V

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->setSpeed(F)V

    new-instance v1, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView$1;

    invoke-direct {v1, p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView$1;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;Lcom/oneplus/settings/opfinger/OPLottieAnimationView;)V

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

.method public dynamicSetLottieSplit(II)V
    .locals 12

    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->getUnFullFillViewCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    sub-int v2, p1, v1

    div-int/2addr v2, v0

    if-gtz v2, :cond_1

    const/4 v2, 0x1

    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "zhuyang--excessStep:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " splitStep:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " remainingSteps:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v1, :cond_2

    move v5, v4

    goto :goto_0

    :cond_2
    move v5, v3

    :goto_0
    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v6}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result v6

    const/16 v7, 0xc

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v6, v5}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->setSplitSteps(I)V

    iget-object v6, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    div-int v8, v7, v5

    int-to-float v8, v8

    invoke-virtual {v6, v8}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->setSpeed(F)V

    :cond_3
    if-lez v1, :cond_4

    move v6, v4

    goto :goto_1

    :cond_4
    move v6, v3

    :goto_1
    add-int/2addr v6, v2

    iget-object v8, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v8}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v8, v6}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->setSplitSteps(I)V

    iget-object v8, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    div-int v9, v7, v6

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->setSpeed(F)V

    :cond_5
    if-lez v1, :cond_6

    move v8, v4

    goto :goto_2

    :cond_6
    move v8, v3

    :goto_2
    add-int/2addr v8, v2

    iget-object v9, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v9}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v9, v6}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->setSplitSteps(I)V

    iget-object v9, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    div-int v10, v7, v8

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->setSpeed(F)V

    :cond_7
    if-lez v1, :cond_8

    move v9, v4

    goto :goto_3

    :cond_8
    move v9, v3

    :goto_3
    add-int/2addr v9, v2

    iget-object v10, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView04:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v10}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result v10

    if-nez v10, :cond_9

    iget-object v10, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView04:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v10, v9}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->setSplitSteps(I)V

    iget-object v10, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView04:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    div-int v11, v7, v9

    int-to-float v11, v11

    invoke-virtual {v10, v11}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->setSpeed(F)V

    :cond_9
    if-lez v1, :cond_a

    move v3, v4

    :cond_a
    add-int/2addr v3, v2

    if-ne v0, v4, :cond_b

    iget v4, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLastExcessStep:I

    const/4 v10, -0x1

    if-ne v4, v10, :cond_b

    add-int/lit8 v4, p1, 0x1

    iput v4, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLastExcessStep:I

    iget-object v4, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView05:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    iget v10, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLastExcessStep:I

    invoke-virtual {v4, v10}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->setSplitSteps(I)V

    iget-object v4, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView05:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    iget v10, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLastExcessStep:I

    div-int/2addr v7, v10

    int-to-float v7, v7

    invoke-virtual {v4, v7}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->setSpeed(F)V

    :cond_b
    return-void
.end method

.method public getUnFullFillViewCount()I
    .locals 2

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView04:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    :cond_3
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView05:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, -0x1

    :cond_4
    return v0
.end method

.method public initLottieAnimationView(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d01bd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mBgView:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mBgView:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    const v1, 0x7f110037

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->setAnimation(I)V

    const v0, 0x7f110032

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->getLottieAnimationView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->setSplitSteps(I)V

    const v0, 0x7f110033

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->getLottieAnimationView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->setSplitSteps(I)V

    const v0, 0x7f110034

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->getLottieAnimationView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->setSplitSteps(I)V

    const v0, 0x7f110035

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->getLottieAnimationView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView04:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    const v0, 0x7f110036

    invoke-direct {p0, v0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->getLottieAnimationView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView05:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mBgView:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView04:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView05:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public initView(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d01aa

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mFingerPrintView:Landroid/widget/FrameLayout;

    const-string v0, "#414141"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->setEnrollAnimBgColor(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mFingerPrintView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->initLottieAnimationView(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public playAnimationByCount(IIIZ)V
    .locals 1

    invoke-virtual {p0, p2, p3}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->dynamicSetLottieSplit(II)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->resumeAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->resumeAnimation()V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->resumeAnimation()V

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView04:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView04:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->resumeAnimation()V

    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView04:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView05:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView05:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->resumeAnimation()V

    :cond_4
    return-void
.end method

.method public playContinueAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mBgView:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->playAnimation()V

    :cond_0
    return-void
.end method

.method public releaseFingerprintLottieAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->cancelAnimation()V

    iput-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->cancelAnimation()V

    iput-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->cancelAnimation()V

    iput-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView04:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->cancelAnimation()V

    iput-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView04:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView05:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->cancelAnimation()V

    iput-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView05:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    :cond_4
    return-void
.end method

.method public setBackGround(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mFingerPrintView:Landroid/widget/FrameLayout;

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

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isFingerprintNeedEnrollTime20(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08066a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080668

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mFingerPrintView:Landroid/widget/FrameLayout;

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
