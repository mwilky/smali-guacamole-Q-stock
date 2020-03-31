.class Lcom/android/systemui/glwallpaper/ImageProcessHelper$Percentile85;
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
    name = "Percentile85"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/glwallpaper/ImageProcessHelper$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/glwallpaper/ImageProcessHelper$Percentile85;-><init>()V

    return-void
.end method


# virtual methods
.method public compute(Landroid/graphics/Bitmap;[I)F
    .locals 7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    mul-int/2addr p0, p1

    const/16 p1, 0x100

    new-array p1, p1, [F

    const v0, 0x3f4ccccd    # 0.8f

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    aget v2, p2, v1

    int-to-float v2, v2

    int-to-float v3, p0

    div-float/2addr v2, v3

    aput v2, p1, v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v1, -0x1

    aget v2, p1, v2

    :goto_1
    aget v3, p1, v1

    add-int/lit8 v4, v1, 0x1

    int-to-float v5, v4

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    add-float/2addr v3, v2

    const v6, 0x3f59999a    # 0.85f

    cmpg-float v2, v2, v6

    if-gez v2, :cond_1

    cmpl-float v2, v3, v6

    if-ltz v2, :cond_1

    move v0, v5

    :cond_1
    if-lez v1, :cond_2

    aget v2, p1, v1

    add-int/lit8 v3, v1, -0x1

    aget v3, p1, v3

    add-float/2addr v2, v3

    aput v2, p1, v1

    :cond_2
    move v1, v4

    goto :goto_0

    :cond_3
    return v0
.end method
