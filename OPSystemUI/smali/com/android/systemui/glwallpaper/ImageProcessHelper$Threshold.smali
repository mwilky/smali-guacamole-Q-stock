.class Lcom/android/systemui/glwallpaper/ImageProcessHelper$Threshold;
.super Ljava/lang/Object;
.source "ImageProcessHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/glwallpaper/ImageProcessHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Threshold"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/glwallpaper/ImageProcessHelper$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/glwallpaper/ImageProcessHelper$Threshold;-><init>()V

    return-void
.end method

.method private getHistogram(Landroid/graphics/Bitmap;)[I
    .locals 10

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const/16 v1, 0x100

    new-array v2, v1, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_3

    move v5, v3

    :goto_1
    if-ge v5, p0, :cond_2

    invoke-virtual {p1, v5, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    add-int/2addr v7, v6

    if-ltz v7, :cond_0

    if-ge v7, v1, :cond_0

    aget v6, v2, v7

    add-int/lit8 v6, v6, 0x1

    aput v6, v2, v7

    goto :goto_2

    :cond_0
    sget-boolean v6, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/android/systemui/glwallpaper/ImageProcessHelper;->access$200()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "wrong array index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method private isSolidColor(Landroid/graphics/Bitmap;[I)Z
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    mul-int/2addr p0, p1

    array-length p1, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_2

    aget v2, p2, v1

    if-eqz v2, :cond_0

    if-eq v2, p0, :cond_0

    goto :goto_1

    :cond_0
    if-ne v2, p0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private toGrayscale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-static {}, Lcom/android/systemui/glwallpaper/ImageProcessHelper;->access$500()[F

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrix;-><init>([F)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-object p0
.end method


# virtual methods
.method public compute(Landroid/graphics/Bitmap;)F
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/glwallpaper/ImageProcessHelper$Threshold;->toGrayscale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/glwallpaper/ImageProcessHelper$Threshold;->getHistogram(Landroid/graphics/Bitmap;)[I

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/glwallpaper/ImageProcessHelper$Threshold;->isSolidColor(Landroid/graphics/Bitmap;[I)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/android/systemui/glwallpaper/ImageProcessHelper$Percentile85;

    invoke-direct {p0, v1}, Lcom/android/systemui/glwallpaper/ImageProcessHelper$Percentile85;-><init>(Lcom/android/systemui/glwallpaper/ImageProcessHelper$1;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/android/systemui/glwallpaper/ImageProcessHelper$Otsus;

    invoke-direct {p0, v1}, Lcom/android/systemui/glwallpaper/ImageProcessHelper$Otsus;-><init>(Lcom/android/systemui/glwallpaper/ImageProcessHelper$1;)V

    :goto_0
    invoke-interface {p0, p1, v0}, Lcom/android/systemui/glwallpaper/ImageProcessHelper$ThresholdAlgorithm;->compute(Landroid/graphics/Bitmap;[I)F

    move-result p0

    return p0
.end method
