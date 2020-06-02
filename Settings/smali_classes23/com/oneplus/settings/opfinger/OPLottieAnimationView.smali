.class public Lcom/oneplus/settings/opfinger/OPLottieAnimationView;
.super Lcom/airbnb/lottie/LottieAnimationView;
.source "OPLottieAnimationView.java"


# instance fields
.field private mCurrenProgress:I

.field private mFillCompleted:Z

.field private mSplitSteps:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getCurrenProgress()I
    .locals 1

    iget v0, p0, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->mCurrenProgress:I

    return v0
.end method

.method public getSplitSteps()I
    .locals 1

    iget v0, p0, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->mSplitSteps:I

    return v0
.end method

.method public isFillCompleted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->mFillCompleted:Z

    return v0
.end method

.method public setCurrenProgress(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->mCurrenProgress:I

    return-void
.end method

.method public setFillCompleted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->mFillCompleted:Z

    return-void
.end method

.method public setSplitSteps(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->mSplitSteps:I

    return-void
.end method
