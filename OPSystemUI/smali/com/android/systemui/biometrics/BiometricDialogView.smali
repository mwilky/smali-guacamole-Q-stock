.class public abstract Lcom/android/systemui/biometrics/BiometricDialogView;
.super Landroid/widget/LinearLayout;
.source "BiometricDialogView.java"


# instance fields
.field private mAnimatingAway:Z

.field private final mAnimationTranslationOffset:F

.field private mAuthenticatePkg:Ljava/lang/String;

.field protected final mBiometricIcon:Landroid/widget/ImageView;

.field protected mBundle:Landroid/os/Bundle;

.field protected final mCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

.field protected final mDescriptionText:Landroid/widget/TextView;

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field protected final mDialog:Landroid/widget/LinearLayout;

.field private final mDialogWidth:F

.field private final mErrorColor:I

.field protected mErrorText:Landroid/widget/TextView;

.field protected mHandler:Landroid/os/Handler;

.field protected final mLayout:Landroid/view/ViewGroup;

.field private final mLinearOutSlowIn:Landroid/view/animation/Interpolator;

.field protected mNegativeButton:Landroid/widget/Button;

.field private mPause:Z

.field protected mPositiveButton:Landroid/widget/Button;

.field protected mRequireConfirmation:Z

.field private mRestoredState:Landroid/os/Bundle;

.field private final mShowAnimationRunnable:Ljava/lang/Runnable;

.field private mSkipIntro:Z

.field private mState:I

.field protected final mSubtitleText:Landroid/widget/TextView;

.field protected mTextColor:I

.field protected final mTitleText:Landroid/widget/TextView;

.field protected final mTryAgainButton:Landroid/widget/Button;

.field private mUserId:I

.field private final mUserManager:Landroid/os/UserManager;

.field private mWasForceRemoved:Z

.field private final mWindowManager:Landroid/view/WindowManager;

.field private final mWindowToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/biometrics/DialogViewCallback;Z)V
    .locals 6

    invoke-static {}, Lcom/oneplus/util/ThemeColorUtils;->getCurrentTheme()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/android/systemui/R$style;->Oneplus_Theme_BiometricDialog_Dark:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/systemui/R$style;->Oneplus_Theme_BiometricDialog_Light:I

    :goto_0
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mWindowToken:Landroid/os/IBinder;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mState:I

    new-instance v0, Lcom/android/systemui/biometrics/BiometricDialogView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/BiometricDialogView$1;-><init>(Lcom/android/systemui/biometrics/BiometricDialogView;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mShowAnimationRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/biometrics/BiometricDialogView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/BiometricDialogView$2;-><init>(Lcom/android/systemui/biometrics/BiometricDialogView;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Lcom/android/systemui/biometrics/BiometricDialogView;->needWrap(Lcom/android/systemui/biometrics/DialogViewCallback;)Lcom/android/systemui/biometrics/DialogViewCallback;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

    sget-object p2, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mUserManager:Landroid/os/UserManager;

    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/admin/DevicePolicyManager;

    iput-object p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$dimen;->biometric_dialog_animation_translation_offset:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mAnimationTranslationOffset:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$color;->biometric_dialog_error:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorColor:I

    new-instance p2, Landroid/util/DisplayMetrics;

    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialogWidth:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$layout;->op_biometric_dialog:I

    invoke-virtual {v2, v3, p0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    new-instance v2, Lcom/android/systemui/biometrics/BiometricDialogView$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/biometrics/BiometricDialogView$3;-><init>(Lcom/android/systemui/biometrics/BiometricDialogView;)V

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v2, Lcom/android/systemui/R$id;->space:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v3, Lcom/android/systemui/R$id;->left_space:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v4, Lcom/android/systemui/R$id;->right_space:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v5, Lcom/android/systemui/R$id;->dialog:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v5, Lcom/android/systemui/R$id;->title:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mTitleText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v5, Lcom/android/systemui/R$id;->subtitle:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mSubtitleText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v5, Lcom/android/systemui/R$id;->description:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDescriptionText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v5, Lcom/android/systemui/R$id;->biometric_icon:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v4, p2, v0, p3}, Lcom/android/systemui/biometrics/BiometricDialogView;->shouldAdjustForOpUIDesign(Landroid/view/ViewGroup;Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;Z)V

    iget-object p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget p3, Lcom/android/systemui/R$id;->button_try_again:I

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mTryAgainButton:Landroid/widget/Button;

    sget p2, Lcom/oneplus/util/ThemeColorUtils;->QS_ACCENT:I

    invoke-static {p2}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result p2

    iget-object p3, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {p3, p2}, Landroid/widget/Button;->setTextColor(I)V

    iget-object p3, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {p3, p2}, Landroid/widget/Button;->setTextColor(I)V

    iget-object p3, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mTryAgainButton:Landroid/widget/Button;

    invoke-virtual {p3, p2}, Landroid/widget/Button;->setTextColor(I)V

    iget-object p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->getIconDescriptionResourceId()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->setDismissesDialog(Landroid/view/View;)V

    invoke-direct {p0, v2}, Lcom/android/systemui/biometrics/BiometricDialogView;->setDismissesDialog(Landroid/view/View;)V

    invoke-direct {p0, v3}, Lcom/android/systemui/biometrics/BiometricDialogView;->setDismissesDialog(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mNegativeButton:Landroid/widget/Button;

    new-instance p2, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogView$RYcTkb_tfg9qgMigefa-LgT2rmQ;

    invoke-direct {p2, p0}, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogView$RYcTkb_tfg9qgMigefa-LgT2rmQ;-><init>(Lcom/android/systemui/biometrics/BiometricDialogView;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    new-instance p2, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogView$2B_4hvtZC5hBNK8tMhbM4pc0Qyc;

    invoke-direct {p2, p0}, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogView$2B_4hvtZC5hBNK8tMhbM4pc0Qyc;-><init>(Lcom/android/systemui/biometrics/BiometricDialogView;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mTryAgainButton:Landroid/widget/Button;

    new-instance p2, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogView$0WbgvKDg-E592VyX7dMGcDXbGTQ;

    invoke-direct {p2, p0}, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogView$0WbgvKDg-E592VyX7dMGcDXbGTQ;-><init>(Lcom/android/systemui/biometrics/BiometricDialogView;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestFocus()Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/biometrics/BiometricDialogView;)Landroid/view/animation/Interpolator;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/biometrics/BiometricDialogView;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/systemui/biometrics/BiometricDialogView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mAnimatingAway:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/biometrics/BiometricDialogView;)F
    .locals 0

    iget p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mAnimationTranslationOffset:F

    return p0
.end method

.method private getFodAnimationSize()F
    .locals 1

    invoke-static {}, Lcom/oneplus/util/OpUtils;->is2KResolution()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/systemui/R$dimen;->fp_animation_height_2k:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/systemui/R$dimen;->fp_animation_height_1080p:I

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method private getFodIconBottomSpace(Landroid/util/DisplayMetrics;)I
    .locals 9

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->getFodAnimationSize()F

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->getFodIconSize()F

    move-result v1

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportCustomFingerprintType2()Z

    move-result v2

    invoke-static {}, Lcom/oneplus/util/OpUtils;->is2KResolution()Z

    move-result v3

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportCutout()Z

    move-result v4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/oneplus/util/OpUtils;->isCutoutHide(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/oneplus/util/OpUtils;->isSupportResolutionSwitch(Landroid/content/Context;)Z

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adjusting bottom space. isFpType2= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", is2kDisplay= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isSupportCutout= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isCutoutHide= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isSupportResolutionSwitch= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "BiometricDialogView"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_2

    if-eqz v2, :cond_0

    sget v2, Lcom/android/systemui/R$dimen;->op_biometric_animation_view_ss_y:I

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    sget v2, Lcom/android/systemui/R$dimen;->op_biometric_animation_view_y_2k:I

    goto :goto_0

    :cond_1
    sget v2, Lcom/android/systemui/R$dimen;->op_biometric_animation_view_y_1080p:I

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    sget v2, Lcom/android/systemui/R$dimen;->op_biometric_animation_view_ss_y:I

    goto :goto_0

    :cond_3
    sget v2, Lcom/android/systemui/R$dimen;->op_biometric_animation_view_y:I

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/oneplus/util/OpUtils;->getCutoutPathdataHeight(Landroid/content/Context;)I

    move-result p0

    add-int/2addr p1, p0

    :cond_4
    int-to-float p0, p1

    sub-float/2addr p0, v2

    sub-float/2addr p0, v1

    sub-float/2addr v0, v1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v0, p1

    sub-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private getFodIconSize()F
    .locals 1

    invoke-static {}, Lcom/oneplus/util/OpUtils;->is2KResolution()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_icon_normal_width_2k:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_icon_normal_width_1080p:I

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method private setDismissesDialog(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    new-instance v0, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogView$agcwyvTgMSypTMy6oXZQaR3oBGY;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogView$agcwyvTgMSypTMy6oXZQaR3oBGY;-><init>(Lcom/android/systemui/biometrics/BiometricDialogView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private shouldAdjustForOpUIDesign(Landroid/view/ViewGroup;Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;Z)V
    .locals 6

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/systemui/R$id;->error1:I

    instance-of v2, p0, Lcom/android/systemui/biometrics/FingerprintDialogView;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->getFodIconSize()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, p2}, Lcom/android/systemui/biometrics/BiometricDialogView;->getFodIconBottomSpace(Landroid/util/DisplayMetrics;)I

    move-result v3

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/systemui/R$id;->error2:I

    :cond_1
    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    if-nez v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->biometric_dialog_biometric_icon_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/android/systemui/R$dimen;->op_biometric_dialog_bottom_height_no_fod:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mTextColor:I

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v0, Lcom/android/systemui/R$id;->bottom_space:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget p3, p3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr p3, p2

    add-int/2addr v3, p3

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1d

    if-lt p2, p3, :cond_3

    iget-object p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object p2

    if-eqz p2, :cond_3

    if-nez v4, :cond_3

    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result p2

    sub-int/2addr v3, p2

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eqz p4, :cond_4

    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget p2, Lcom/android/systemui/R$id;->button1:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mNegativeButton:Landroid/widget/Button;

    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget p2, Lcom/android/systemui/R$id;->button2:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mNegativeButton:Landroid/widget/Button;

    iget p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialogWidth:F

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p0, p2

    float-to-int p0, p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setMaxWidth(I)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget p2, Lcom/android/systemui/R$id;->button2:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mNegativeButton:Landroid/widget/Button;

    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget p2, Lcom/android/systemui/R$id;->button1:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    :goto_1
    return-void
.end method

.method private updateFingerprintStatus()V
    .locals 4

    const-string v0, "fingerprint"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v0

    const-string v1, "BiometricDialogView"

    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintService;->getAuthenticatedPackage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mAuthenticatePkg:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mAuthenticatePkg:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPause:Z

    if-eqz p0, :cond_0

    const/16 p0, 0xc

    goto :goto_0

    :cond_0
    const/16 p0, 0xb

    :goto_0
    invoke-interface {v0, p0}, Landroid/hardware/fingerprint/IFingerprintService;->updateStatus(I)I

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFingerprintStatus: current authentication pkg is not "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mAuthenticatePkg:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string/jumbo v0, "updateStatus occur remote exception"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    const-string/jumbo p0, "updateFingerprintStatus null pointer"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public forceRemove()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mAnimatingAway:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mWasForceRemoved:Z

    return-void
.end method

.method protected abstract getAuthenticatedAccessibilityResourceId()I
.end method

.method protected abstract getDelayAfterAuthenticatedDurationMs()I
.end method

.method protected abstract getHintStringResourceId()I
.end method

.method protected abstract getIconDescriptionResourceId()I
.end method

.method public bridge synthetic getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7de

    const v4, 0x1000100

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v0, 0x1

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const-string v0, "BiometricDialogView"

    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mWindowToken:Landroid/os/IBinder;

    iput-object p0, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    return-object v6
.end method

.method protected getState()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mState:I

    return p0
.end method

.method protected abstract handleResetMessage()V
.end method

.method public synthetic lambda$new$0$BiometricDialogView(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mState:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

    invoke-interface {p0}, Lcom/android/systemui/biometrics/DialogViewCallback;->onNegativePressed()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

    invoke-interface {p0}, Lcom/android/systemui/biometrics/DialogViewCallback;->onUserCanceled()V

    :goto_1
    return-void
.end method

.method public synthetic lambda$new$1$BiometricDialogView()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

    invoke-interface {p0}, Lcom/android/systemui/biometrics/DialogViewCallback;->onPositivePressed()V

    return-void
.end method

.method public synthetic lambda$new$2$BiometricDialogView(Landroid/view/View;)V
    .locals 3

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->updateState(I)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogView$Qw9PC-sGZ_LOQrNNiplnrZAouws;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogView$Qw9PC-sGZ_LOQrNNiplnrZAouws;-><init>(Lcom/android/systemui/biometrics/BiometricDialogView;)V

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->getDelayAfterAuthenticatedDurationMs()I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic lambda$new$3$BiometricDialogView(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->handleResetMessage()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->updateState(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->showTryAgainButton(Z)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

    invoke-interface {p0}, Lcom/android/systemui/biometrics/DialogViewCallback;->onTryAgainPressed()V

    return-void
.end method

.method public synthetic lambda$setDismissesDialog$4$BiometricDialogView(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mState:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->shouldGrayAreaDismissDialog()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

    invoke-interface {p0}, Lcom/android/systemui/biometrics/DialogViewCallback;->onUserCanceled()V

    :cond_0
    return-void
.end method

.method protected needWrap(Lcom/android/systemui/biometrics/DialogViewCallback;)Lcom/android/systemui/biometrics/DialogViewCallback;
    .locals 0

    return-object p1
.end method

.method public onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->background:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mUserManager:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$drawable;->work_challenge_background:I

    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget v3, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getOrganizationColorForUser(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v1, Lcom/android/systemui/R$color;->biometric_dialog_dim_color:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mNegativeButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/leak/RotationUtils;->getRotation(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialogWidth:F

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mRestoredState:Landroid/os/Bundle;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogView;->updateState(I)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->getHintStringResourceId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->getHintStringResourceId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mState:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogView;->updateState(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBundle:Landroid/os/Bundle;

    const-string v2, "key_fingerprint_package_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mAuthenticatePkg:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBundle:Landroid/os/Bundle;

    const-string v2, "subtitle"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mSubtitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mSubtitleText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mSubtitleText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBundle:Landroid/os/Bundle;

    const-string v2, "description"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDescriptionText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDescriptionText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDescriptionText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mNegativeButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBundle:Landroid/os/Bundle;

    const-string v3, "negative_text"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->requiresConfirmation()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mRestoredState:Landroid/os/Bundle;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mWasForceRemoved:Z

    const/4 v2, 0x0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mSkipIntro:Z

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mAnimationTranslationOffset:F

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mShowAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->onBiometricPromptReady()V

    :goto_5
    iput-boolean v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mWasForceRemoved:Z

    iput-boolean v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mSkipIntro:Z

    return-void
.end method

.method public onAuthenticationFailed(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogView;->updateState(I)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->showTemporaryMessage(Ljava/lang/String;)V

    return-void
.end method

.method protected onBiometricPromptReady()V
    .locals 0

    return-void
.end method

.method public onDialogAnimatedIn()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->onBiometricPromptReady()V

    return-void
.end method

.method public onErrorReceived(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogView;->updateState(I)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->showTemporaryMessage(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->showTryAgainButton(Z)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

    invoke-interface {p0}, Lcom/android/systemui/biometrics/DialogViewCallback;->onErrorShown()V

    return-void
.end method

.method public onHelpReceived(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogView;->updateState(I)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->showTemporaryMessage(Ljava/lang/String;)V

    return-void
.end method

.method public onSaveState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mTryAgainButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    const-string v1, "key_try_again_visibility"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    const-string v1, "key_confirm_visibility"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mState:I

    const-string v1, "key_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const-string v1, "key_error_text_visibility"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "key_error_text_string"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    const-string v1, "key_error_text_is_temporary"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p0

    const-string v0, "key_error_text_color"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowFocusChanged: hasFocus= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAnimatingAway= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mAnimatingAway:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mWasForceRemoved= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mWasForceRemoved:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mAnimatingAway:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mWasForceRemoved:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPause:Z

    if-eqz v0, :cond_0

    const-string p1, "onWindowFocusChanged: need to resume"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPause:Z

    invoke-direct {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->updateFingerprintStatus()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPause:Z

    if-nez p1, :cond_1

    const-string p1, "onWindowFocusChanged: need to suspend"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPause:Z

    invoke-direct {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->updateFingerprintStatus()V

    :cond_1
    :goto_0
    return-void
.end method

.method public requiresConfirmation()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mRequireConfirmation:Z

    return p0
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 3

    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mRestoredState:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mTryAgainButton:Landroid/widget/Button;

    const-string v1, "key_try_again_visibility"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    const-string v1, "key_confirm_visibility"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    const-string v0, "key_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mState:I

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    const-string v1, "key_error_text_string"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    const-string v1, "key_error_text_visibility"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    const-string v1, "key_error_text_color"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v0, "key_error_text_is_temporary"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method public setRequireConfirmation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mRequireConfirmation:Z

    return-void
.end method

.method public setSkipIntro(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mSkipIntro:Z

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mUserId:I

    return-void
.end method

.method protected abstract shouldGrayAreaDismissDialog()Z
.end method

.method protected showTemporaryMessage(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorColor:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public showTryAgainButton(Z)V
    .locals 0

    return-void
.end method

.method public startDismiss()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mAnimatingAway:Z

    new-instance v0, Lcom/android/systemui/biometrics/BiometricDialogView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/BiometricDialogView$4;-><init>(Lcom/android/systemui/biometrics/BiometricDialogView;)V

    new-instance v1, Lcom/android/systemui/biometrics/BiometricDialogView$5;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogView$5;-><init>(Lcom/android/systemui/biometrics/BiometricDialogView;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected abstract updateIcon(II)V
.end method

.method public updateState(I)V
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x4

    if-ne p1, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    if-eq p1, v0, :cond_2

    if-ne p1, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mNegativeButton:Landroid/widget/Button;

    sget v1, Lcom/android/systemui/R$string;->cancel:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :cond_3
    iget v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mState:I

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->updateIcon(II)V

    iput p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mState:I

    return-void
.end method
