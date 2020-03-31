.class public Lcom/oneplus/phone/OpTrustDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "OpTrustDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/phone/OpTrustDrawable$StateUpdateAnimatorListener;
    }
.end annotation


# instance fields
.field private mAlpha:I

.field private final mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mAnimating:Z

.field private mCurAlpha:I

.field private mCurAnimator:Landroid/animation/Animator;

.field private mCurInnerRadius:F

.field private final mInnerRadiusEnter:F

.field private final mInnerRadiusExit:F

.field private final mInnerRadiusVisibleMax:F

.field private final mInnerRadiusVisibleMin:F

.field private mPaint:Landroid/graphics/Paint;

.field private final mRadiusUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mState:I

.field private final mThickness:F

.field private mTrustManaged:Z

.field private final mVisibleAnimator:Landroid/animation/Animator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/phone/OpTrustDrawable;->mState:I

    new-instance v0, Lcom/oneplus/phone/OpTrustDrawable$1;

    invoke-direct {v0, p0}, Lcom/oneplus/phone/OpTrustDrawable$1;-><init>(Lcom/oneplus/phone/OpTrustDrawable;)V

    iput-object v0, p0, Lcom/oneplus/phone/OpTrustDrawable;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Lcom/oneplus/phone/OpTrustDrawable$2;

    invoke-direct {v0, p0}, Lcom/oneplus/phone/OpTrustDrawable$2;-><init>(Lcom/oneplus/phone/OpTrustDrawable;)V

    iput-object v0, p0, Lcom/oneplus/phone/OpTrustDrawable;->mRadiusUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->trust_circle_inner_radius_visible_min:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/oneplus/phone/OpTrustDrawable;->mInnerRadiusVisibleMin:F

    sget v1, Lcom/android/systemui/R$dimen;->trust_circle_inner_radius_visible_max:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/oneplus/phone/OpTrustDrawable;->mInnerRadiusVisibleMax:F

    sget v1, Lcom/android/systemui/R$dimen;->trust_circle_inner_radius_exit:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/oneplus/phone/OpTrustDrawable;->mInnerRadiusExit:F

    sget v1, Lcom/android/systemui/R$dimen;->trust_circle_inner_radius_enter:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/oneplus/phone/OpTrustDrawable;->mInnerRadiusEnter:F

    sget v1, Lcom/android/systemui/R$dimen;->trust_circle_thickness:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/oneplus/phone/OpTrustDrawable;->mThickness:F

    iget v0, p0, Lcom/oneplus/phone/OpTrustDrawable;->mInnerRadiusEnter:F

    iput v0, p0, Lcom/oneplus/phone/OpTrustDrawable;->mCurInnerRadius:F

    invoke-direct {p0}, Lcom/oneplus/phone/OpTrustDrawable;->makeVisibleAnimator()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/phone/OpTrustDrawable;->mVisibleAnimator:Landroid/animation/Animator;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/phone/OpTrustDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/oneplus/phone/OpTrustDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/oneplus/phone/OpTrustDrawable;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/systemui/R$attr;->wallpaperTextColor:I

    invoke-static {p1, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/oneplus/phone/OpTrustDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/oneplus/phone/OpTrustDrawable;->mPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/oneplus/phone/OpTrustDrawable;->mThickness:F

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method static synthetic access$102(Lcom/oneplus/phone/OpTrustDrawable;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/phone/OpTrustDrawable;->mCurAlpha:I

    return p1
.end method

.method static synthetic access$202(Lcom/oneplus/phone/OpTrustDrawable;F)F
    .locals 0

    iput p1, p0, Lcom/oneplus/phone/OpTrustDrawable;->mCurInnerRadius:F

    return p1
.end method

.method static synthetic access$300(Lcom/oneplus/phone/OpTrustDrawable;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/phone/OpTrustDrawable;->updateState(Z)V

    return-void
.end method

.method private configureAnimator(Landroid/animation/ValueAnimator;JLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/view/animation/Interpolator;Z)Landroid/animation/ValueAnimator;
    .locals 0

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p1, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p6, :cond_0

    const/4 p0, -0x1

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const/4 p0, 0x2

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    :cond_0
    return-object p1
.end method

.method private makeAnimators(FFIIJLandroid/view/animation/Interpolator;ZZ)Landroid/animation/Animator;
    .locals 13

    move-object v7, p0

    const/4 v8, 0x2

    new-array v0, v8, [I

    const/4 v9, 0x0

    aput p3, v0, v9

    const/4 v10, 0x1

    aput p4, v0, v10

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v11

    iget-object v4, v7, Lcom/oneplus/phone/OpTrustDrawable;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object v0, p0

    move-object v1, v11

    move-wide/from16 v2, p5

    move-object/from16 v5, p7

    move/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/phone/OpTrustDrawable;->configureAnimator(Landroid/animation/ValueAnimator;JLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/view/animation/Interpolator;Z)Landroid/animation/ValueAnimator;

    new-array v0, v8, [F

    aput p1, v0, v9

    aput p2, v0, v10

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v12

    iget-object v4, v7, Lcom/oneplus/phone/OpTrustDrawable;->mRadiusUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object v0, p0

    move-object v1, v12

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/phone/OpTrustDrawable;->configureAnimator(Landroid/animation/ValueAnimator;JLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/view/animation/Interpolator;Z)Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v8, [Landroid/animation/Animator;

    aput-object v11, v1, v9

    aput-object v12, v1, v10

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz p9, :cond_0

    new-instance v1, Lcom/oneplus/phone/OpTrustDrawable$StateUpdateAnimatorListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oneplus/phone/OpTrustDrawable$StateUpdateAnimatorListener;-><init>(Lcom/oneplus/phone/OpTrustDrawable;Lcom/oneplus/phone/OpTrustDrawable$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-object v0
.end method

.method private makeEnterAnimator(FI)Landroid/animation/Animator;
    .locals 10

    iget v2, p0, Lcom/oneplus/phone/OpTrustDrawable;->mInnerRadiusVisibleMax:F

    sget-object v7, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const/16 v4, 0x4c

    const-wide/16 v5, 0x1f4

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/oneplus/phone/OpTrustDrawable;->makeAnimators(FFIIJLandroid/view/animation/Interpolator;ZZ)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method private makeExitAnimator(FI)Landroid/animation/Animator;
    .locals 10

    iget v2, p0, Lcom/oneplus/phone/OpTrustDrawable;->mInnerRadiusExit:F

    sget-object v7, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const/4 v4, 0x0

    const-wide/16 v5, 0x1f4

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/oneplus/phone/OpTrustDrawable;->makeAnimators(FFIIJLandroid/view/animation/Interpolator;ZZ)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method private makeVisibleAnimator()Landroid/animation/Animator;
    .locals 10

    iget v1, p0, Lcom/oneplus/phone/OpTrustDrawable;->mInnerRadiusVisibleMax:F

    iget v2, p0, Lcom/oneplus/phone/OpTrustDrawable;->mInnerRadiusVisibleMin:F

    sget-object v7, Lcom/android/systemui/Interpolators;->ACCELERATE_DECELERATE:Landroid/view/animation/Interpolator;

    const/16 v3, 0x4c

    const/16 v4, 0x26

    const-wide/16 v5, 0x3e8

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/oneplus/phone/OpTrustDrawable;->makeAnimators(FFIIJLandroid/view/animation/Interpolator;ZZ)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method private updateState(Z)V
    .locals 6

    iget-boolean v0, p0, Lcom/oneplus/phone/OpTrustDrawable;->mAnimating:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/oneplus/phone/OpTrustDrawable;->mState:I

    const/4 v1, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/phone/OpTrustDrawable;->mTrustManaged:Z

    goto :goto_2

    :cond_1
    if-nez v0, :cond_2

    iget-boolean v5, p0, Lcom/oneplus/phone/OpTrustDrawable;->mTrustManaged:Z

    if-eqz v5, :cond_5

    :goto_0
    move v0, v4

    goto :goto_2

    :cond_2
    if-ne v0, v4, :cond_3

    iget-boolean v5, p0, Lcom/oneplus/phone/OpTrustDrawable;->mTrustManaged:Z

    if-nez v5, :cond_5

    :goto_1
    move v0, v3

    goto :goto_2

    :cond_3
    if-ne v0, v2, :cond_4

    iget-boolean v5, p0, Lcom/oneplus/phone/OpTrustDrawable;->mTrustManaged:Z

    if-nez v5, :cond_5

    goto :goto_1

    :cond_4
    if-ne v0, v3, :cond_5

    iget-boolean v5, p0, Lcom/oneplus/phone/OpTrustDrawable;->mTrustManaged:Z

    if-eqz v5, :cond_5

    goto :goto_0

    :cond_5
    :goto_2
    const/4 v5, 0x0

    if-nez p1, :cond_7

    if-ne v0, v4, :cond_6

    move v0, v2

    :cond_6
    if-ne v0, v3, :cond_7

    move v0, v5

    :cond_7
    iget p1, p0, Lcom/oneplus/phone/OpTrustDrawable;->mState:I

    if-eq v0, p1, :cond_e

    iget-object p1, p0, Lcom/oneplus/phone/OpTrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oneplus/phone/OpTrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    :cond_8
    if-nez v0, :cond_9

    iput v5, p0, Lcom/oneplus/phone/OpTrustDrawable;->mCurAlpha:I

    iget p1, p0, Lcom/oneplus/phone/OpTrustDrawable;->mInnerRadiusEnter:F

    iput p1, p0, Lcom/oneplus/phone/OpTrustDrawable;->mCurInnerRadius:F

    goto :goto_3

    :cond_9
    if-ne v0, v4, :cond_a

    iget p1, p0, Lcom/oneplus/phone/OpTrustDrawable;->mCurInnerRadius:F

    iget v2, p0, Lcom/oneplus/phone/OpTrustDrawable;->mCurAlpha:I

    invoke-direct {p0, p1, v2}, Lcom/oneplus/phone/OpTrustDrawable;->makeEnterAnimator(FI)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/phone/OpTrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    iget p1, p0, Lcom/oneplus/phone/OpTrustDrawable;->mState:I

    if-ne p1, v1, :cond_c

    iget-object p1, p0, Lcom/oneplus/phone/OpTrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    goto :goto_3

    :cond_a
    if-ne v0, v2, :cond_b

    const/16 p1, 0x4c

    iput p1, p0, Lcom/oneplus/phone/OpTrustDrawable;->mCurAlpha:I

    iget p1, p0, Lcom/oneplus/phone/OpTrustDrawable;->mInnerRadiusVisibleMax:F

    iput p1, p0, Lcom/oneplus/phone/OpTrustDrawable;->mCurInnerRadius:F

    iget-object p1, p0, Lcom/oneplus/phone/OpTrustDrawable;->mVisibleAnimator:Landroid/animation/Animator;

    iput-object p1, p0, Lcom/oneplus/phone/OpTrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    goto :goto_3

    :cond_b
    if-ne v0, v3, :cond_c

    iget p1, p0, Lcom/oneplus/phone/OpTrustDrawable;->mCurInnerRadius:F

    iget v1, p0, Lcom/oneplus/phone/OpTrustDrawable;->mCurAlpha:I

    invoke-direct {p0, p1, v1}, Lcom/oneplus/phone/OpTrustDrawable;->makeExitAnimator(FI)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/phone/OpTrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    :cond_c
    :goto_3
    iput v0, p0, Lcom/oneplus/phone/OpTrustDrawable;->mState:I

    iget-object p1, p0, Lcom/oneplus/phone/OpTrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_d
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_e
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    iget v0, p0, Lcom/oneplus/phone/OpTrustDrawable;->mCurAlpha:I

    iget v1, p0, Lcom/oneplus/phone/OpTrustDrawable;->mAlpha:I

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/phone/OpTrustDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    iget v2, p0, Lcom/oneplus/phone/OpTrustDrawable;->mCurInnerRadius:F

    iget-object p0, p0, Lcom/oneplus/phone/OpTrustDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getAlpha()I
    .locals 0

    iget p0, p0, Lcom/oneplus/phone/OpTrustDrawable;->mAlpha:I

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public setAlpha(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/phone/OpTrustDrawable;->mAlpha:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "not implemented"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTrustManaged(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/phone/OpTrustDrawable;->mTrustManaged:Z

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/oneplus/phone/OpTrustDrawable;->mState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/phone/OpTrustDrawable;->mTrustManaged:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/oneplus/phone/OpTrustDrawable;->updateState(Z)V

    return-void
.end method

.method public start()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/phone/OpTrustDrawable;->mAnimating:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/phone/OpTrustDrawable;->mAnimating:Z

    invoke-direct {p0, v0}, Lcom/oneplus/phone/OpTrustDrawable;->updateState(Z)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/phone/OpTrustDrawable;->mAnimating:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/phone/OpTrustDrawable;->mAnimating:Z

    iget-object v1, p0, Lcom/oneplus/phone/OpTrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/phone/OpTrustDrawable;->mCurAnimator:Landroid/animation/Animator;

    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/oneplus/phone/OpTrustDrawable;->mState:I

    iput v0, p0, Lcom/oneplus/phone/OpTrustDrawable;->mCurAlpha:I

    iget v0, p0, Lcom/oneplus/phone/OpTrustDrawable;->mInnerRadiusEnter:F

    iput v0, p0, Lcom/oneplus/phone/OpTrustDrawable;->mCurInnerRadius:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    return-void
.end method
