.class public Lcom/oneplus/aod/OpWakingUpScrim;
.super Landroid/view/View;
.source "OpWakingUpScrim.java"


# instance fields
.field private isDisappearAnimationStart:Z

.field private mAnimationFrame:F

.field private mCircle1Colr:I

.field private mCircle2Colr:I

.field private mCircle3Colr:I

.field private mDisappearAnimator:Landroid/animation/ValueAnimator;

.field private mRadius:F

.field private mTestUnlockSpeed:Z

.field private mWithoutDelayAnimationDuration:I

.field private mWithoutDelayAnimationStartFrame:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mRadius:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->isDisappearAnimationStart:Z

    const/high16 v1, -0x1000000

    iput v1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle1Colr:I

    iput v1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle2Colr:I

    iput v1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle3Colr:I

    iput p1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mWithoutDelayAnimationStartFrame:F

    iput v0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mWithoutDelayAnimationDuration:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mRadius:F

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/oneplus/aod/OpWakingUpScrim;->isDisappearAnimationStart:Z

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle1Colr:I

    iput v0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle2Colr:I

    iput v0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle3Colr:I

    iput p1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mWithoutDelayAnimationStartFrame:F

    iput p2, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mWithoutDelayAnimationDuration:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mRadius:F

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/oneplus/aod/OpWakingUpScrim;->isDisappearAnimationStart:Z

    const/high16 p3, -0x1000000

    iput p3, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle1Colr:I

    iput p3, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle2Colr:I

    iput p3, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle3Colr:I

    iput p1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mWithoutDelayAnimationStartFrame:F

    iput p2, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mWithoutDelayAnimationDuration:I

    return-void
.end method

.method static synthetic access$002(Lcom/oneplus/aod/OpWakingUpScrim;F)F
    .locals 0

    iput p1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mRadius:F

    return p1
.end method

.method static synthetic access$102(Lcom/oneplus/aod/OpWakingUpScrim;F)F
    .locals 0

    iput p1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mAnimationFrame:F

    return p1
.end method

.method static synthetic access$200(Lcom/oneplus/aod/OpWakingUpScrim;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/aod/OpWakingUpScrim;->calculateCircleColor(F)V

    return-void
.end method

.method private calculateCircleColor(F)V
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x41033333    # 8.2f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    div-float v1, v0, v1

    const/high16 v2, 0x41100000    # 9.0f

    mul-float/2addr v2, v0

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mRadius:F

    cmpl-float v4, v0, v3

    const v5, 0x3f4f5c29    # 0.81f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const v8, 0x3f68f5c3    # 0.91f

    if-ltz v4, :cond_2

    cmpl-float v4, v3, v1

    if-ltz v4, :cond_2

    cmpl-float v4, v3, v2

    if-lez v4, :cond_0

    sub-float p1, v0, v3

    sub-float v2, v0, v2

    div-float/2addr p1, v2

    mul-float/2addr p1, v8

    :goto_0
    move v7, p1

    goto :goto_1

    :cond_0
    sub-float p1, v6, p1

    cmpg-float v2, v8, p1

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    move p1, v8

    goto :goto_0

    :goto_1
    mul-float/2addr v5, v7

    iget p1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mRadius:F

    sub-float p1, v0, p1

    sub-float/2addr v0, v1

    div-float/2addr p1, v0

    mul-float/2addr p1, v5

    goto :goto_3

    :cond_2
    iget v0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mRadius:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    sub-float/2addr v6, p1

    cmpg-float p1, v8, v6

    if-gez p1, :cond_3

    move v7, v6

    goto :goto_2

    :cond_3
    move v7, v8

    :goto_2
    mul-float/2addr v5, v7

    cmpl-float p1, v6, v5

    if-lez p1, :cond_4

    move v5, v6

    :cond_4
    move p1, v5

    goto :goto_3

    :cond_5
    move p1, v7

    :goto_3
    invoke-direct {p0, p1}, Lcom/oneplus/aod/OpWakingUpScrim;->getColor(F)I

    move-result p1

    iput p1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle1Colr:I

    invoke-direct {p0, v7}, Lcom/oneplus/aod/OpWakingUpScrim;->getColor(F)I

    move-result p1

    iput p1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle2Colr:I

    const/high16 p1, -0x1000000

    iput p1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle3Colr:I

    return-void
.end method

.method private getColor(F)I
    .locals 0

    const/high16 p0, 0x437f0000    # 255.0f

    mul-float/2addr p1, p0

    float-to-int p0, p1

    shl-int/lit8 p0, p0, 0x18

    and-int/lit8 p0, p0, -0x1

    return p0
.end method


# virtual methods
.method public getDisappearAnimationWithDelay()Landroid/animation/ValueAnimator;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mDisappearAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mDisappearAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f19999a    # 0.6f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iget-object v1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mDisappearAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x4b

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mDisappearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mDisappearAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/aod/OpWakingUpScrim$3;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/OpWakingUpScrim$3;-><init>(Lcom/oneplus/aod/OpWakingUpScrim;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mDisappearAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/aod/OpWakingUpScrim$4;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/OpWakingUpScrim$4;-><init>(Lcom/oneplus/aod/OpWakingUpScrim;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mDisappearAnimator:Landroid/animation/ValueAnimator;

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getDisappearAnimationWithoutDelay()Landroid/animation/ValueAnimator;
    .locals 5

    iget v0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mWithoutDelayAnimationStartFrame:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    iget v2, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mWithoutDelayAnimationDuration:I

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0xc8

    :goto_1
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mDisappearAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mDisappearAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3f19999a    # 0.6f

    invoke-direct {v0, v2, v1, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iget-object v1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mDisappearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mDisappearAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/aod/OpWakingUpScrim$1;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/OpWakingUpScrim$1;-><init>(Lcom/oneplus/aod/OpWakingUpScrim;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mDisappearAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/aod/OpWakingUpScrim$2;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/OpWakingUpScrim$2;-><init>(Lcom/oneplus/aod/OpWakingUpScrim;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mDisappearAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v4, v2, 0x2

    div-int/lit8 v5, v3, 0x2

    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    int-to-float v9, v2

    int-to-float v10, v3

    sget-object v11, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v12

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    int-to-float v2, v4

    int-to-float v3, v5

    iget v4, v0, Lcom/oneplus/aod/OpWakingUpScrim;->mRadius:F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v12, v2, v3, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    sget-object v4, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v12, v4}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v5, 0x41200000    # 10.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v1, v12, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v4, v0, Lcom/oneplus/aod/OpWakingUpScrim;->mRadius:F

    cmpl-float v4, v4, v2

    iget v4, v0, Lcom/oneplus/aod/OpWakingUpScrim;->mRadius:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    new-instance v4, Landroid/graphics/RadialGradient;

    iget v5, v0, Lcom/oneplus/aod/OpWakingUpScrim;->mRadius:F

    const/4 v6, 0x3

    new-array v6, v6, [I

    const/4 v7, 0x0

    iget v8, v0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle1Colr:I

    aput v8, v6, v7

    const/4 v7, 0x1

    iget v8, v0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle2Colr:I

    aput v8, v6, v7

    iget v7, v0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle3Colr:I

    const/4 v8, 0x2

    aput v7, v6, v8

    const/16 v18, 0x0

    sget-object v19, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v13, v4

    move v14, v2

    move v15, v3

    move/from16 v16, v5

    move-object/from16 v17, v6

    invoke-direct/range {v13 .. v19}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v4, v0, Lcom/oneplus/aod/OpWakingUpScrim;->mRadius:F

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-boolean v2, v0, Lcom/oneplus/aod/OpWakingUpScrim;->mTestUnlockSpeed:Z

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v3, v0, Lcom/oneplus/aod/OpWakingUpScrim;->mAnimationFrame:F

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x43480000    # 200.0f

    invoke-virtual {v1, v3, v4, v4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    sget-boolean v1, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTestUnlockSpeed draw mRadius:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/oneplus/aod/OpWakingUpScrim;->mAnimationFrame:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpWakingUpScrim"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    const-string v0, "OpWakingUpScrim"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mRadius:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 v1, 0x0

    const-string v2, "debug.wakingup.scrim"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mTestUnlockSpeed:Z

    iget-boolean v2, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mTestUnlockSpeed:Z

    if-eqz v2, :cond_0

    const-string v2, "debug.wakingup.scrim.animation.start.frame"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mWithoutDelayAnimationStartFrame:F

    const-string v2, "debug.wakingup.scrim.animation.start.duration"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mWithoutDelayAnimationDuration:I

    sget-boolean v1, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "debug AnimationStartFrame:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mWithoutDelayAnimationStartFrame:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " AnimationDuration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mWithoutDelayAnimationDuration:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
