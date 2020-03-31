.class public Lcom/android/systemui/qs/PathInterpolatorBuilder;
.super Ljava/lang/Object;
.source "PathInterpolatorBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;
    }
.end annotation


# instance fields
.field private mDist:[F

.field private mX:[F

.field private mY:[F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/qs/PathInterpolatorBuilder;->initCubic(FFFF)V

    return-void
.end method

.method private initCubic(FFFF)V
    .locals 8

    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {v7, v0, v0}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-direct {p0, v7}, Lcom/android/systemui/qs/PathInterpolatorBuilder;->initPath(Landroid/graphics/Path;)V

    return-void
.end method

.method private initPath(Landroid/graphics/Path;)V
    .locals 11

    const v0, 0x3b03126f    # 0.002f

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->approximate(F)[F

    move-result-object p1

    array-length v0, p1

    div-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    aget v2, p1, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_6

    const/4 v2, 0x2

    aget v4, p1, v2

    cmpl-float v4, v4, v3

    if-nez v4, :cond_6

    array-length v4, p1

    sub-int/2addr v4, v2

    aget v2, p1, v4

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-nez v2, :cond_6

    array-length v2, p1

    sub-int/2addr v2, v1

    aget v2, p1, v2

    cmpl-float v2, v2, v4

    if-nez v2, :cond_6

    new-array v2, v0, [F

    iput-object v2, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mX:[F

    new-array v2, v0, [F

    iput-object v2, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mY:[F

    new-array v2, v0, [F

    iput-object v2, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mDist:[F

    const/4 v2, 0x0

    move v4, v2

    move v5, v3

    move v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v0, :cond_4

    add-int/lit8 v7, v4, 0x1

    aget v4, p1, v4

    add-int/lit8 v8, v7, 0x1

    aget v7, p1, v7

    add-int/lit8 v9, v8, 0x1

    aget v8, p1, v8

    cmpl-float v5, v4, v5

    if-nez v5, :cond_1

    cmpl-float v5, v7, v6

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "cannot have discontinuity in X axis: fraction="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", x="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", prevX="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PathInterpolatorBuilder"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The Path cannot have discontinuity in the X axis."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    cmpg-float v5, v7, v6

    if-ltz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mX:[F

    aput v7, v5, v3

    iget-object v6, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mY:[F

    aput v8, v6, v3

    if-lez v3, :cond_2

    aget v8, v5, v3

    add-int/lit8 v10, v3, -0x1

    aget v5, v5, v10

    sub-float/2addr v8, v5

    aget v5, v6, v3

    aget v6, v6, v10

    sub-float/2addr v5, v6

    mul-float/2addr v8, v8

    mul-float/2addr v5, v5

    add-float/2addr v8, v5

    float-to-double v5, v8

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mDist:[F

    aget v8, v6, v10

    add-float/2addr v8, v5

    aput v8, v6, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    move v5, v4

    move v6, v7

    move v4, v9

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The Path cannot loop back on itself."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mDist:[F

    array-length v3, p1

    sub-int/2addr v3, v1

    aget p1, p1, v3

    :goto_2
    if-ge v2, v0, :cond_5

    iget-object v1, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mDist:[F

    aget v3, v1, v2

    div-float/2addr v3, p1

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The Path must start at (0,0) and end at (1,1)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getXInterpolator()Landroid/view/animation/Interpolator;
    .locals 3

    new-instance v0, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;

    iget-object v1, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mDist:[F

    iget-object p0, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mX:[F

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;-><init>([F[FLcom/android/systemui/qs/PathInterpolatorBuilder$1;)V

    return-object v0
.end method

.method public getYInterpolator()Landroid/view/animation/Interpolator;
    .locals 3

    new-instance v0, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;

    iget-object v1, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mDist:[F

    iget-object p0, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mY:[F

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;-><init>([F[FLcom/android/systemui/qs/PathInterpolatorBuilder$1;)V

    return-object v0
.end method
