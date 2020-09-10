.class public Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;
.super Landroidx/preference/Preference;
.source "OPFaceUnlockModeLottieViewCategory.java"


# static fields
.field private static final ONEPLUS_FACE_UNLOCK_POWERKEY_RECOGNIZE_ENABLE:Ljava/lang/String; = "oneplus_face_unlock_powerkey_recognize_enable"

.field private static final SWIPE_UP_MODE:I = 0x0

.field private static final USE_POWER_BUTTON_MODE:I = 0x1


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mHasInited:Z

.field private mLayoutResId:I

.field private mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;

.field private mViewPagerContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d022e

    iput v0, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mLayoutResId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mHasInited:Z

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f0d022e

    iput v0, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mLayoutResId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mHasInited:Z

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x7f0d022e

    iput v0, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mLayoutResId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mHasInited:Z

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mContentResolver:Landroid/content/ContentResolver;

    iget v0, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mLayoutResId:I

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->setLayoutResource(I)V

    return-void
.end method

.method private setAnimationResource()V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mHasInited:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->getUnlockMode()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "op_face_unlock_by_swipe_up_dark.json"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "op_face_unlock_by_swipe_up_light.json"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "op_face_unlock_by_use_power_key_dark.json"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "op_face_unlock_by_use_power_key_light.json"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getUnlockMode()I
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_face_unlock_powerkey_recognize_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a04c8

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mHasInited:Z

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->startAnim()V

    return-void
.end method

.method public releaseAnim()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mHasInited:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    return-void
.end method

.method public setViewType(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mHasInited:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->stopAnim()V

    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->setAnimationResource()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method

.method public startAnim()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mHasInited:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->getUnlockMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->setViewType(I)V

    return-void
.end method

.method public stopAnim()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mHasInited:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    :cond_0
    return-void
.end method
