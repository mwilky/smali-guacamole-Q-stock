.class Lcom/android/systemui/glwallpaper/ImageProcessHelper$Otsus;
.super Ljava/lang/Object;
.source "ImageProcessHelper.java"

# interfaces
.implements Lcom/android/systemui/glwallpaper/ImageProcessHelper$ThresholdAlgorithm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/glwallpaper/ImageProcessHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Otsus"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/glwallpaper/ImageProcessHelper$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/glwallpaper/ImageProcessHelper$Otsus;-><init>()V

    return-void
.end method


# virtual methods
.method public compute(Landroid/graphics/Bitmap;[I)F
    .locals 11

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    mul-int/2addr p0, p1

    int-to-float p0, p0

    const/4 p1, 0x2

    new-array v0, p1, [F

    new-array v1, p1, [F

    new-array p1, p1, [F

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, p2

    const/4 v5, 0x1

    if-ge v3, v4, :cond_0

    aget v4, v1, v5

    aget v6, p2, v3

    mul-int/2addr v6, v3

    int-to-float v6, v6

    add-float/2addr v4, v6

    aput v4, v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    aput p0, v0, v5

    const/4 p0, 0x0

    move v4, p0

    move v6, v4

    move v3, v2

    :goto_1
    array-length v7, p2

    if-ge v3, v7, :cond_3

    aget v7, p2, v3

    int-to-float v7, v7

    int-to-float v8, v3

    mul-float v9, v7, v8

    aget v10, v0, v2

    add-float/2addr v10, v7

    aput v10, v0, v2

    aget v10, v0, v5

    sub-float/2addr v10, v7

    aput v10, v0, v5

    aget v7, v0, v2

    cmpl-float v7, v7, p0

    if-eqz v7, :cond_2

    aget v7, v0, v5

    cmpl-float v7, v7, p0

    if-nez v7, :cond_1

    goto :goto_2

    :cond_1
    aget v7, v1, v2

    add-float/2addr v7, v9

    aput v7, v1, v2

    aget v7, v1, v5

    sub-float/2addr v7, v9

    aput v7, v1, v5

    aget v7, v1, v2

    aget v9, v0, v2

    div-float/2addr v7, v9

    aput v7, p1, v2

    aget v7, v1, v5

    aget v9, v0, v5

    div-float/2addr v7, v9

    aput v7, p1, v5

    aget v7, p1, v2

    aget v9, p1, v5

    sub-float/2addr v7, v9

    aget v9, v0, v2

    aget v10, v0, v5

    mul-float/2addr v9, v10

    mul-float/2addr v9, v7

    mul-float/2addr v9, v7

    cmpl-float v7, v9, v6

    if-lez v7, :cond_2

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v8, v4

    array-length v4, p2

    int-to-float v4, v4

    div-float/2addr v8, v4

    move v4, v8

    move v6, v9

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return v4
.end method
