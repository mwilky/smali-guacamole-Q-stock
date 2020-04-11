.class public Lcom/android/settingslib/widget/AdaptiveOutlineDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "AdaptiveOutlineDrawable.java"


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mInsetPx:I

.field final mOutlinePaint:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 3

    new-instance v0, Lcom/android/settingslib/widget/AdaptiveIconShapeDrawable;

    invoke-direct {v0, p1}, Lcom/android/settingslib/widget/AdaptiveIconShapeDrawable;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/settingslib/widget/AdaptiveOutlineDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    new-instance v0, Landroid/graphics/Path;

    const v1, 0x1040188

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Lcom/android/settingslib/widget/AdaptiveOutlineDrawable;->mPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/widget/AdaptiveOutlineDrawable;->mOutlinePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/settingslib/widget/AdaptiveOutlineDrawable;->mOutlinePaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/settingslib/widget/R$color;->bt_outline_color:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/settingslib/widget/AdaptiveOutlineDrawable;->mOutlinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/settingslib/widget/AdaptiveOutlineDrawable;->mOutlinePaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/settingslib/widget/R$dimen;->adaptive_outline_stroke:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/settingslib/widget/AdaptiveOutlineDrawable;->mOutlinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget v0, Lcom/android/settingslib/widget/R$dimen;->dashboard_tile_foreground_image_inset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/widget/AdaptiveOutlineDrawable;->mInsetPx:I

    iput-object p2, p0, Lcom/android/settingslib/widget/AdaptiveOutlineDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/android/settingslib/widget/AdaptiveOutlineDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    const/high16 v1, 0x42c80000    # 100.0f

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v5, p0, Lcom/android/settingslib/widget/AdaptiveOutlineDrawable;->mPath:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/android/settingslib/widget/AdaptiveOutlineDrawable;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object v5, p0, Lcom/android/settingslib/widget/AdaptiveOutlineDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/android/settingslib/widget/AdaptiveOutlineDrawable;->mInsetPx:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/android/settingslib/widget/AdaptiveOutlineDrawable;->mInsetPx:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/widget/AdaptiveOutlineDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/settingslib/widget/AdaptiveOutlineDrawable;->mInsetPx:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/widget/AdaptiveOutlineDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/settingslib/widget/AdaptiveOutlineDrawable;->mInsetPx:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method
