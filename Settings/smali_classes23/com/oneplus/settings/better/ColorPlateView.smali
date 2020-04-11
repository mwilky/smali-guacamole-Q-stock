.class public Lcom/oneplus/settings/better/ColorPlateView;
.super Landroid/view/View;
.source "ColorPlateView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/better/ColorPlateView$OnColorChangeListener;
    }
.end annotation


# static fields
.field private static final sDefaultHeight:I = 0x290

.field private static final sDefaultWidth:I = 0x360


# instance fields
.field private mBmpColorPlate:Landroid/graphics/Bitmap;

.field private mColorChangeListener:Lcom/oneplus/settings/better/ColorPlateView$OnColorChangeListener;

.field private mColorPlateMargin:I

.field private mCurrentXProgress:I

.field private mCurrentYProgress:I

.field private mHeightSelectBox:I

.field private mIntrinsicHeightColorPlate:I

.field private mIntrinsicWidthColorPlate:I

.field mLastXProgress:I

.field mLastYProgress:I

.field private mMaxXProgress:I

.field private mMaxYProgress:I

.field private mPaintColorPlate:Landroid/graphics/Paint;

.field private mPaintSelectBox:Landroid/graphics/Paint;

.field private mRectColorPlate:Landroid/graphics/Rect;

.field private mRectSelectBox:Landroid/graphics/RectF;

.field private mSelectBoxCornerRadius:F

.field private mWidthSelectBox:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mRectColorPlate:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mRectSelectBox:Landroid/graphics/RectF;

    const/16 v0, 0x64

    iput v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mMaxXProgress:I

    iput v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mMaxYProgress:I

    invoke-direct {p0}, Lcom/oneplus/settings/better/ColorPlateView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mRectColorPlate:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mRectSelectBox:Landroid/graphics/RectF;

    const/16 v0, 0x64

    iput v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mMaxXProgress:I

    iput v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mMaxYProgress:I

    invoke-direct {p0}, Lcom/oneplus/settings/better/ColorPlateView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mRectColorPlate:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mRectSelectBox:Landroid/graphics/RectF;

    const/16 v0, 0x64

    iput v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mMaxXProgress:I

    iput v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mMaxYProgress:I

    invoke-direct {p0}, Lcom/oneplus/settings/better/ColorPlateView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/better/ColorPlateView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/better/ColorPlateView;->updateSelectBox(II)V

    return-void
.end method

.method private calculateXProgress(I)I
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mRectColorPlate:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/oneplus/settings/better/ColorPlateView;->mRectColorPlate:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    iget v2, p0, Lcom/oneplus/settings/better/ColorPlateView;->mMaxXProgress:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private calculateYProgress(I)I
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mRectColorPlate:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/oneplus/settings/better/ColorPlateView;->mRectColorPlate:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    iget v2, p0, Lcom/oneplus/settings/better/ColorPlateView;->mMaxYProgress:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_0
    nop

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v3
.end method

.method private init()V
    .locals 4

    invoke-virtual {p0}, Lcom/oneplus/settings/better/ColorPlateView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080531

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/better/ColorPlateView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mBmpColorPlate:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/oneplus/settings/better/ColorPlateView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mSelectBoxCornerRadius:F

    iget-object v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mBmpColorPlate:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mIntrinsicWidthColorPlate:I

    iget-object v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mBmpColorPlate:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mIntrinsicHeightColorPlate:I

    invoke-virtual {p0}, Lcom/oneplus/settings/better/ColorPlateView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mWidthSelectBox:I

    iget v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mWidthSelectBox:I

    iput v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mHeightSelectBox:I

    int-to-float v0, v0

    const v1, 0x3f6147ae    # 0.88f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mColorPlateMargin:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mPaintColorPlate:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mPaintColorPlate:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mPaintColorPlate:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mPaintSelectBox:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mPaintSelectBox:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/oneplus/settings/better/ColorPlateView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06020a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mPaintSelectBox:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mPaintSelectBox:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/oneplus/settings/better/ColorPlateView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mPaintSelectBox:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mPaintSelectBox:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/oneplus/settings/better/ColorPlateView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/4 v2, 0x0

    const v3, -0x777778

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

.method private measureHeight(I)I
    .locals 4

    const/16 v0, 0x290

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_2

    if-eqz v1, :cond_1

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    const/16 v0, 0x290

    goto :goto_0

    :cond_2
    const/16 v3, 0x290

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    nop

    :goto_0
    return v0
.end method

.method private measureWidth(I)I
    .locals 4

    const/16 v0, 0x360

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_2

    if-eqz v1, :cond_1

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    const/16 v0, 0x360

    goto :goto_0

    :cond_2
    const/16 v3, 0x360

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    nop

    :goto_0
    return v0
.end method

.method private updateSelectBox(II)V
    .locals 6

    int-to-float v0, p1

    iget v1, p0, Lcom/oneplus/settings/better/ColorPlateView;->mMaxXProgress:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/oneplus/settings/better/ColorPlateView;->mRectColorPlate:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/oneplus/settings/better/ColorPlateView;->mRectColorPlate:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v1, p2

    iget v2, p0, Lcom/oneplus/settings/better/ColorPlateView;->mMaxYProgress:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/oneplus/settings/better/ColorPlateView;->mRectColorPlate:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/oneplus/settings/better/ColorPlateView;->mRectColorPlate:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/oneplus/settings/better/ColorPlateView;->mRectSelectBox:Landroid/graphics/RectF;

    iget v3, p0, Lcom/oneplus/settings/better/ColorPlateView;->mWidthSelectBox:I

    div-int/lit8 v4, v3, 0x2

    sub-int v4, v0, v4

    int-to-float v4, v4

    iput v4, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/oneplus/settings/better/ColorPlateView;->mHeightSelectBox:I

    div-int/lit8 v5, v4, 0x2

    sub-int v5, v1, v5

    int-to-float v5, v5

    iput v5, v2, Landroid/graphics/RectF;->top:F

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    int-to-float v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/oneplus/settings/better/ColorPlateView;->postInvalidate()V

    return-void
.end method


# virtual methods
.method public getColorChangeListener()Lcom/oneplus/settings/better/ColorPlateView$OnColorChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mColorChangeListener:Lcom/oneplus/settings/better/ColorPlateView$OnColorChangeListener;

    return-object v0
.end method

.method public getMaxXProgress()I
    .locals 1

    iget v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mMaxXProgress:I

    return v0
.end method

.method public getMaxYProgress()I
    .locals 1

    iget v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mMaxYProgress:I

    return v0
.end method

.method public getXYProgress()[I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p0, Lcom/oneplus/settings/better/ColorPlateView;->mCurrentXProgress:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/oneplus/settings/better/ColorPlateView;->mCurrentYProgress:I

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oneplus/settings/better/ColorPlateView;->mBmpColorPlate:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/settings/better/ColorPlateView;->mBmpColorPlate:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/oneplus/settings/better/ColorPlateView;->mBmpColorPlate:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/oneplus/settings/better/ColorPlateView;->mRectColorPlate:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/oneplus/settings/better/ColorPlateView;->mPaintColorPlate:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/oneplus/settings/better/ColorPlateView;->mRectSelectBox:Landroid/graphics/RectF;

    iget v2, p0, Lcom/oneplus/settings/better/ColorPlateView;->mSelectBoxCornerRadius:F

    iget-object v3, p0, Lcom/oneplus/settings/better/ColorPlateView;->mPaintSelectBox:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/oneplus/settings/better/ColorPlateView;->measureWidth(I)I

    move-result v0

    iget v1, p0, Lcom/oneplus/settings/better/ColorPlateView;->mIntrinsicHeightColorPlate:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/oneplus/settings/better/ColorPlateView;->mIntrinsicWidthColorPlate:I

    div-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/better/ColorPlateView;->setMeasuredDimension(II)V

    iget-object v2, p0, Lcom/oneplus/settings/better/ColorPlateView;->mRectColorPlate:Landroid/graphics/Rect;

    iget v3, p0, Lcom/oneplus/settings/better/ColorPlateView;->mColorPlateMargin:I

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    sub-int v4, v0, v3

    iput v4, v2, Landroid/graphics/Rect;->right:I

    sub-int v3, v1, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    invoke-virtual {p0}, Lcom/oneplus/settings/better/ColorPlateView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/oneplus/settings/better/ColorPlateView;->mRectColorPlate:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/settings/better/ColorPlateView;->mRectColorPlate:Landroid/graphics/Rect;

    iget v0, v2, Landroid/graphics/Rect;->left:I

    :cond_1
    iget-object v2, p0, Lcom/oneplus/settings/better/ColorPlateView;->mRectColorPlate:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-le v0, v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/settings/better/ColorPlateView;->mRectColorPlate:Landroid/graphics/Rect;

    iget v0, v2, Landroid/graphics/Rect;->right:I

    :cond_2
    iget-object v2, p0, Lcom/oneplus/settings/better/ColorPlateView;->mRectColorPlate:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/oneplus/settings/better/ColorPlateView;->mRectColorPlate:Landroid/graphics/Rect;

    iget v1, v2, Landroid/graphics/Rect;->top:I

    :cond_3
    iget-object v2, p0, Lcom/oneplus/settings/better/ColorPlateView;->mRectColorPlate:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_4

    iget-object v2, p0, Lcom/oneplus/settings/better/ColorPlateView;->mRectColorPlate:Landroid/graphics/Rect;

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    :cond_4
    iget-object v2, p0, Lcom/oneplus/settings/better/ColorPlateView;->mRectSelectBox:Landroid/graphics/RectF;

    iget v3, p0, Lcom/oneplus/settings/better/ColorPlateView;->mWidthSelectBox:I

    div-int/lit8 v4, v3, 0x2

    sub-int v4, v0, v4

    int-to-float v4, v4

    iput v4, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/oneplus/settings/better/ColorPlateView;->mHeightSelectBox:I

    div-int/lit8 v5, v4, 0x2

    sub-int v5, v1, v5

    int-to-float v5, v5

    iput v5, v2, Landroid/graphics/RectF;->top:F

    const/4 v5, 0x2

    div-int/2addr v3, v5

    add-int/2addr v3, v0

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    div-int/2addr v4, v5

    add-int/2addr v4, v1

    int-to-float v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/oneplus/settings/better/ColorPlateView;->invalidate()V

    iget v2, p0, Lcom/oneplus/settings/better/ColorPlateView;->mCurrentXProgress:I

    iput v2, p0, Lcom/oneplus/settings/better/ColorPlateView;->mLastXProgress:I

    iget v2, p0, Lcom/oneplus/settings/better/ColorPlateView;->mCurrentYProgress:I

    iput v2, p0, Lcom/oneplus/settings/better/ColorPlateView;->mLastYProgress:I

    invoke-direct {p0, v0}, Lcom/oneplus/settings/better/ColorPlateView;->calculateXProgress(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/settings/better/ColorPlateView;->mCurrentXProgress:I

    invoke-direct {p0, v1}, Lcom/oneplus/settings/better/ColorPlateView;->calculateYProgress(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/settings/better/ColorPlateView;->mCurrentYProgress:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    if-eq v2, v3, :cond_7

    if-eq v2, v5, :cond_5

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/oneplus/settings/better/ColorPlateView;->mColorChangeListener:Lcom/oneplus/settings/better/ColorPlateView$OnColorChangeListener;

    if-eqz v2, :cond_9

    iget v2, p0, Lcom/oneplus/settings/better/ColorPlateView;->mLastXProgress:I

    iget v4, p0, Lcom/oneplus/settings/better/ColorPlateView;->mCurrentXProgress:I

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v3, :cond_6

    iget v2, p0, Lcom/oneplus/settings/better/ColorPlateView;->mLastYProgress:I

    iget v4, p0, Lcom/oneplus/settings/better/ColorPlateView;->mCurrentYProgress:I

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-lt v2, v3, :cond_9

    :cond_6
    iget-object v2, p0, Lcom/oneplus/settings/better/ColorPlateView;->mColorChangeListener:Lcom/oneplus/settings/better/ColorPlateView$OnColorChangeListener;

    iget v4, p0, Lcom/oneplus/settings/better/ColorPlateView;->mCurrentXProgress:I

    iget v5, p0, Lcom/oneplus/settings/better/ColorPlateView;->mMaxXProgress:I

    iget v6, p0, Lcom/oneplus/settings/better/ColorPlateView;->mCurrentYProgress:I

    iget v7, p0, Lcom/oneplus/settings/better/ColorPlateView;->mMaxYProgress:I

    invoke-interface {v2, v4, v5, v6, v7}, Lcom/oneplus/settings/better/ColorPlateView$OnColorChangeListener;->colorChanged(IIII)V

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/oneplus/settings/better/ColorPlateView;->mColorChangeListener:Lcom/oneplus/settings/better/ColorPlateView$OnColorChangeListener;

    if-eqz v2, :cond_9

    iget v4, p0, Lcom/oneplus/settings/better/ColorPlateView;->mCurrentXProgress:I

    iget v5, p0, Lcom/oneplus/settings/better/ColorPlateView;->mMaxXProgress:I

    iget v6, p0, Lcom/oneplus/settings/better/ColorPlateView;->mCurrentYProgress:I

    iget v7, p0, Lcom/oneplus/settings/better/ColorPlateView;->mMaxYProgress:I

    invoke-interface {v2, v4, v5, v6, v7}, Lcom/oneplus/settings/better/ColorPlateView$OnColorChangeListener;->onStopTrackingTouch(IIII)V

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/oneplus/settings/better/ColorPlateView;->mColorChangeListener:Lcom/oneplus/settings/better/ColorPlateView$OnColorChangeListener;

    if-eqz v2, :cond_9

    iget v4, p0, Lcom/oneplus/settings/better/ColorPlateView;->mCurrentXProgress:I

    iget v5, p0, Lcom/oneplus/settings/better/ColorPlateView;->mMaxXProgress:I

    iget v6, p0, Lcom/oneplus/settings/better/ColorPlateView;->mCurrentYProgress:I

    iget v7, p0, Lcom/oneplus/settings/better/ColorPlateView;->mMaxYProgress:I

    invoke-interface {v2, v4, v5, v6, v7}, Lcom/oneplus/settings/better/ColorPlateView$OnColorChangeListener;->onStartTrackingTouch(IIII)V

    :cond_9
    :goto_0
    return v3
.end method

.method public setColorChangeListener(Lcom/oneplus/settings/better/ColorPlateView$OnColorChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/better/ColorPlateView;->mColorChangeListener:Lcom/oneplus/settings/better/ColorPlateView$OnColorChangeListener;

    return-void
.end method

.method public setMaxXProgress(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/settings/better/ColorPlateView;->mMaxXProgress:I

    return-void
.end method

.method public setMaxYProgress(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/settings/better/ColorPlateView;->mMaxYProgress:I

    return-void
.end method

.method public setProgress(II)V
    .locals 3

    iput p1, p0, Lcom/oneplus/settings/better/ColorPlateView;->mCurrentXProgress:I

    iput p2, p0, Lcom/oneplus/settings/better/ColorPlateView;->mCurrentYProgress:I

    iget-object v0, p0, Lcom/oneplus/settings/better/ColorPlateView;->mRectColorPlate:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-gtz v0, :cond_0

    new-instance v0, Lcom/oneplus/settings/better/ColorPlateView$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/settings/better/ColorPlateView$1;-><init>(Lcom/oneplus/settings/better/ColorPlateView;II)V

    const-wide/16 v1, 0x190

    invoke-virtual {p0, v0, v1, v2}, Lcom/oneplus/settings/better/ColorPlateView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/better/ColorPlateView;->updateSelectBox(II)V

    :goto_0
    return-void
.end method
