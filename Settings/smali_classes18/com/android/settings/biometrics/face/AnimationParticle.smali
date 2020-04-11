.class public Lcom/android/settings/biometrics/face/AnimationParticle;
.super Ljava/lang/Object;
.source "AnimationParticle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/biometrics/face/AnimationParticle$Listener;
    }
.end annotation


# static fields
.field private static final FINAL_RING_STROKE_WIDTH:I = 0xf

.field private static final MAX_STROKE_WIDTH:I = 0x14

.field private static final MIN_STROKE_WIDTH:I = 0xa

.field private static final PULSE_SPEED_NORMAL:F = 6.2831855f

.field private static final RING_SIZE_FINALIZATION_TIME:F = 0.1f

.field private static final RING_SWEEP_GROW_RATE_PRIMARY:F = 480.0f

.field private static final RING_SWEEP_GROW_RATE_SECONDARY:F = 240.0f

.field private static final ROTATION_ACCELERATION_SPEED:F = 2.0f

.field private static final ROTATION_SPEED_NORMAL:F = 0.8f

.field private static final TAG:Ljava/lang/String; = "AnimationParticle"


# instance fields
.field private mAnimationState:I

.field private final mAssignedColor:I

.field private final mBorderWidth:I

.field private final mBounds:Landroid/graphics/Rect;

.field private mCurrentAngle:F

.field private mCurrentSize:F

.field private final mErrorColor:I

.field private final mEvaluator:Landroid/animation/ArgbEvaluator;

.field private final mIndex:I

.field private mLastAnimationState:I

.field private final mListener:Lcom/android/settings/biometrics/face/AnimationParticle$Listener;

.field private final mOffsetTimeSec:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mRingAdjustRate:F

.field private mRingCompletionTime:F

.field private mRotationSpeed:F

.field private mSweepAngle:F

.field private mSweepRate:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/biometrics/face/AnimationParticle$Listener;Landroid/graphics/Rect;IIILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/biometrics/face/AnimationParticle$Listener;",
            "Landroid/graphics/Rect;",
            "III",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mCurrentSize:F

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mRotationSpeed:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mSweepAngle:F

    const/high16 v0, 0x43700000    # 240.0f

    iput v0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mSweepRate:F

    iput-object p3, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mBounds:Landroid/graphics/Rect;

    iput p4, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mBorderWidth:I

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mEvaluator:Landroid/animation/ArgbEvaluator;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f060175

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mErrorColor:I

    iput p5, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mIndex:I

    iput-object p2, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mListener:Lcom/android/settings/biometrics/face/AnimationParticle$Listener;

    int-to-float v0, p5

    int-to-float v1, p6

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const v2, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mCurrentAngle:F

    int-to-float v0, p5

    int-to-float v3, p6

    div-float/2addr v0, v3

    const/high16 v3, 0x3fa00000    # 1.25f

    mul-float/2addr v0, v3

    mul-float/2addr v0, v1

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mOffsetTimeSec:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mPaint:Landroid/graphics/Paint;

    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result v0

    rem-int v0, p5, v0

    invoke-interface {p7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mAssignedColor:I

    iget-object v0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mAssignedColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mCurrentSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method private drawDot(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mBorderWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mBorderWidth:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    iget v3, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mCurrentAngle:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    iget v4, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mCurrentAngle:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mCurrentSize:F

    iget-object v5, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawRing(Landroid/graphics/Canvas;)V
    .locals 6

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mBorderWidth:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget v4, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mBorderWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v5, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mBorderWidth:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget v2, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mCurrentAngle:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    iget v3, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mSweepAngle:F

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v2, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private updateDot(JJ)V
    .locals 9

    long-to-float v0, p3

    const v1, 0x3a83126f    # 0.001f

    mul-float/2addr v0, v1

    long-to-float v2, p1

    mul-float/2addr v2, v1

    iget v1, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mRotationSpeed:F

    const v3, 0x3f4ccccd    # 0.8f

    div-float/2addr v1, v3

    iget v4, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mAnimationState:I

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eq v4, v7, :cond_0

    if-ne v4, v6, :cond_1

    :cond_0
    iget v4, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mRotationSpeed:F

    const/4 v7, 0x0

    cmpl-float v8, v4, v7

    if-lez v8, :cond_1

    mul-float/2addr v5, v0

    sub-float/2addr v4, v5

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mRotationSpeed:F

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mAnimationState:I

    const/4 v7, 0x1

    if-ne v4, v7, :cond_2

    iget v4, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mRotationSpeed:F

    cmpg-float v3, v4, v3

    if-gez v3, :cond_2

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iput v4, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mRotationSpeed:F

    :cond_2
    :goto_0
    iget v3, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mCurrentAngle:F

    iget v4, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mRotationSpeed:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mCurrentAngle:F

    const/high16 v3, 0x40a00000    # 5.0f

    const v4, 0x40c90fdb

    mul-float/2addr v4, v2

    iget v5, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mOffsetTimeSec:F

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v3

    const/high16 v3, 0x41700000    # 15.0f

    add-float/2addr v4, v3

    iput v4, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mCurrentSize:F

    iget v3, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mCurrentSize:F

    const/high16 v4, 0x41200000    # 10.0f

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mCurrentSize:F

    iget v3, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mAssignedColor:I

    iget v4, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mAnimationState:I

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne v4, v6, :cond_3

    iget-object v4, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mEvaluator:Landroid/animation/ArgbEvaluator;

    sub-float/2addr v5, v1

    iget v6, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mAssignedColor:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mErrorColor:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    :cond_3
    iget v4, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mLastAnimationState:I

    if-ne v4, v6, :cond_4

    iget-object v4, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mEvaluator:Landroid/animation/ArgbEvaluator;

    sub-float/2addr v5, v1

    iget v6, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mAssignedColor:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mErrorColor:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mCurrentSize:F

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private updateRing(JJ)V
    .locals 8

    long-to-float v0, p3

    const v1, 0x3a83126f    # 0.001f

    mul-float/2addr v0, v1

    long-to-float v2, p1

    mul-float/2addr v2, v1

    iget v1, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mRingAdjustRate:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    const/high16 v4, 0x41700000    # 15.0f

    const v5, 0x3dcccccd    # 0.1f

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mCurrentSize:F

    sub-float v1, v4, v1

    div-float/2addr v1, v5

    iput v1, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mRingAdjustRate:F

    iget v1, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mRingCompletionTime:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    add-float v1, v2, v5

    iput v1, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mRingCompletionTime:F

    :cond_0
    iget v1, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mRotationSpeed:F

    const v3, 0x3f4ccccd    # 0.8f

    cmpg-float v3, v1, v3

    if-gez v3, :cond_1

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v0

    add-float/2addr v1, v3

    iput v1, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mRotationSpeed:F

    :cond_1
    iget v1, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mCurrentAngle:F

    iget v3, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mRotationSpeed:F

    mul-float/2addr v3, v0

    add-float/2addr v1, v3

    iput v1, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mCurrentAngle:F

    iget v1, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mSweepAngle:F

    const/high16 v3, 0x43b40000    # 360.0f

    cmpg-float v6, v1, v3

    if-gez v6, :cond_2

    iget v6, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mSweepRate:F

    mul-float v7, v6, v0

    add-float/2addr v1, v7

    iput v1, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mSweepAngle:F

    add-float/2addr v6, v7

    iput v6, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mSweepRate:F

    :cond_2
    iget v1, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mSweepAngle:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_3

    iput v3, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mSweepAngle:F

    iget-object v1, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mListener:Lcom/android/settings/biometrics/face/AnimationParticle$Listener;

    iget v3, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mIndex:I

    invoke-interface {v1, v3}, Lcom/android/settings/biometrics/face/AnimationParticle$Listener;->onRingCompleted(I)V

    :cond_3
    cmpg-float v1, v2, v5

    if-gez v1, :cond_4

    iget v1, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mCurrentSize:F

    iget v3, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mRingAdjustRate:F

    mul-float/2addr v3, v0

    add-float/2addr v1, v3

    iput v1, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mCurrentSize:F

    iget-object v1, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mCurrentSize:F

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_0

    :cond_4
    iput v4, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mCurrentSize:F

    iget-object v1, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mCurrentSize:F

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :goto_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget v0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mAnimationState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/face/AnimationParticle;->drawDot(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/face/AnimationParticle;->drawRing(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public setAsPrimary()V
    .locals 1

    const/high16 v0, 0x43f00000    # 480.0f

    iput v0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mSweepRate:F

    return-void
.end method

.method public update(JJ)V
    .locals 2

    iget v0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mAnimationState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/biometrics/face/AnimationParticle;->updateDot(JJ)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/biometrics/face/AnimationParticle;->updateRing(JJ)V

    :goto_0
    return-void
.end method

.method public updateState(I)V
    .locals 2

    iget v0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mAnimationState:I

    if-ne v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Already in state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimationParticle"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_1
    iget v0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mAnimationState:I

    iput v0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mLastAnimationState:I

    iput p1, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mAnimationState:I

    return-void
.end method
