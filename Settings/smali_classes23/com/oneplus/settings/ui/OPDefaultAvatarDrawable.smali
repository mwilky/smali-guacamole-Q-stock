.class public Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "OPDefaultAvatarDrawable.java"


# static fields
.field private static final CIRCLE_TEXTURE_RESOURCE_IDS:[I

.field private static final RES_COUNT:I = 0xa


# instance fields
.field private abridgeName:Ljava/lang/String;

.field private color:I

.field private final colors:Landroid/content/res/TypedArray;

.field private mContext:Landroid/content/Context;

.field private offset:F

.field private final paint:Landroid/graphics/Paint;

.field private final rect:Landroid/graphics/Rect;

.field private texture:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->CIRCLE_TEXTURE_RESOURCE_IDS:[I

    return-void

    :array_0
    .array-data 4
        0x7f080555
        0x7f080556
        0x7f080557
        0x7f080558
        0x7f080559
        0x7f08055a
        0x7f08055b
        0x7f08055c
        0x7f08055d
        0x7f08055e
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->rect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->offset:F

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->colors:Landroid/content/res/TypedArray;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->paint:Landroid/graphics/Paint;

    const-string v1, "sans-serif-medium"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iput-object p2, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->abridgeName:Ljava/lang/String;

    invoke-direct {p0, p3}, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->getResIndexByIdentify(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPDefaultAvatarDrawable"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->pickTexture(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->texture:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->pickColor(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->color:I

    return-void
.end method

.method private drawLetterTile(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    div-int/lit8 v4, v1, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->texture:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->texture:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->abridgeName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->abridgeName:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->abridgeName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "minDimension:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "LetterTileDrawable"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->paint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->mContext:Landroid/content/Context;

    const/high16 v6, 0x41c00000    # 24.0f

    invoke-static {v5, v6}, Lcom/oneplus/settings/utils/OPUtils;->sp2px(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->paint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->abridgeName:Ljava/lang/String;

    iget-object v6, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5, v4, v3, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->paint:Landroid/graphics/Paint;

    const-string v3, "sans-serif"

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->paint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->abridgeName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->offset:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->rect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private getResIndexByIdentify(Ljava/lang/String;)I
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->colors:Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    rem-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method private isInvalidIndex(I)Z
    .locals 1

    if-ltz p1, :cond_1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private pickColor(I)I
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->colors:Landroid/content/res/TypedArray;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->mContext:Landroid/content/Context;

    const v2, 0x7f06005b

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    return v0
.end method

.method private pickTexture(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->isInvalidIndex(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v2, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->CIRCLE_TEXTURE_RESOURCE_IDS:[I

    aget v2, v2, p1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->drawLetterTile(Landroid/graphics/Canvas;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public getBitmap(II)Landroid/graphics/Bitmap;
    .locals 2

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, p1, p2}, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->setBounds(IIII)V

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setOval(Landroid/graphics/Rect;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPDefaultAvatarDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
