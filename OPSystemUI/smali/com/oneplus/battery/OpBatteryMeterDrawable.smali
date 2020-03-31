.class public Lcom/oneplus/battery/OpBatteryMeterDrawable;
.super Lcom/android/settingslib/graph/BatteryMeterDrawableBase;
.source "OpBatteryMeterDrawable.java"


# instance fields
.field private mBatteryStyle:I

.field private mCircleBackPaint:Landroid/graphics/Paint;

.field private mCircleChargingPaint:Landroid/graphics/Paint;

.field private mCircleFrontPaint:Landroid/graphics/Paint;

.field private final mCircleRect:Landroid/graphics/RectF;

.field private mCircleSize:I

.field private mHeight:I

.field private mInStatusBar:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLog:Z

.field private mPluggedIn:Z

.field private mWidth:I

.field private resetUITimes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mBatteryStyle:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    iput-boolean p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mPluggedIn:Z

    iput-boolean p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mLog:Z

    iput p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->resetUITimes:I

    iput p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mLastHeight:I

    iput p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mLastWidth:I

    iput-boolean p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mInStatusBar:Z

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleChargingPaint:Landroid/graphics/Paint;

    iget-object p0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleChargingPaint:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;II)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/oneplus/battery/OpBatteryMeterDrawable;->initCircleSize(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getBatteryLevel()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getCharging()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getChargeColor()I

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getColorForLevel(I)I

    :goto_0
    iget-object v3, v0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getChargeColor()I

    move-result v4

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getColorForLevel(I)I

    move-result v4

    :goto_1
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleChargingPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getChargeColor()I

    move-result v4

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getColorForLevel(I)I

    move-result v4

    :goto_2
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, v0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    const/high16 v7, 0x43870000    # 270.0f

    const/high16 v8, 0x43b40000    # 360.0f

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v12, v0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    const/high16 v13, 0x43870000    # 270.0f

    const v3, 0x40666666    # 3.6f

    int-to-float v1, v1

    mul-float v14, v1, v3

    const/4 v15, 0x0

    iget-object v1, v0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->right:F

    iget v4, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, v0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v0, v0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleChargingPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual {v4, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method private initCircleSize(II)V
    .locals 3

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleSize:I

    iget p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleSize:I

    int-to-float p1, p1

    const/high16 p2, 0x40d00000    # 6.5f

    div-float/2addr p1, p2

    iget-object p2, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p2, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p2, 0x0

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    add-float v0, p2, p1

    iget v1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleSize:I

    int-to-float v2, v1

    sub-float/2addr v2, p1

    add-float/2addr v2, p2

    int-to-float p2, v1

    sub-float/2addr p2, p1

    iget-object p0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, p1, v2, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private postInvalidate(I)V
    .locals 3

    new-instance v0, Lcom/oneplus/battery/-$$Lambda$S7Wld1_rpLukBj6_kbvV_X28zVM;

    invoke-direct {v0, p0}, Lcom/oneplus/battery/-$$Lambda$S7Wld1_rpLukBj6_kbvV_X28zVM;-><init>(Lcom/oneplus/battery/OpBatteryMeterDrawable;)V

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getBatteryLevel()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mBatteryStyle:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mWidth:I

    iget v1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mHeight:I

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/battery/OpBatteryMeterDrawable;->drawCircle(Landroid/graphics/Canvas;II)V

    return-void
.end method

.method public getIntrinsicWidth()I
    .locals 2

    iget v0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mBatteryStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getIntrinsicHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getIntrinsicWidth()I

    move-result p0

    :goto_0
    return p0
.end method

.method public onBatteryStyleChanged(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mBatteryStyle:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->resetUITimes:I

    invoke-virtual {p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->postInvalidate()V

    return-void
.end method

.method public setBounds(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->setBounds(IIII)V

    sub-int/2addr p4, p2

    iput p4, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mHeight:I

    sub-int/2addr p3, p1

    iput p3, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mWidth:I

    iget p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mLastHeight:I

    iget p2, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mHeight:I

    if-ne p1, p2, :cond_0

    iget p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mLastWidth:I

    iget p2, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mWidth:I

    if-eq p1, p2, :cond_1

    :cond_0
    iget p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mHeight:I

    iput p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mLastHeight:I

    iget p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mWidth:I

    iput p1, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mLastWidth:I

    const/16 p1, 0x14

    invoke-direct {p0, p1}, Lcom/oneplus/battery/OpBatteryMeterDrawable;->postInvalidate(I)V

    :cond_1
    return-void
.end method

.method public setColors(II)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/oneplus/battery/OpBatteryMeterDrawable;->mCircleChargingPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-super {p0, p1, p2}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->setColors(II)V

    return-void
.end method
