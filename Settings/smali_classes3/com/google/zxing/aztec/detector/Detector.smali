.class public final Lcom/google/zxing/aztec/detector/Detector;
.super Ljava/lang/Object;
.source "Detector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/aztec/detector/Detector$Point;
    }
.end annotation


# static fields
.field private static final EXPECTED_CORNER_BITS:[I


# instance fields
.field private compact:Z

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private nbCenterLayers:I

.field private nbDataBlocks:I

.field private nbLayers:I

.field private shift:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/aztec/detector/Detector;->EXPECTED_CORNER_BITS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xee0
        0x1dc
        0x83b
        0x707
    .end array-data
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    return-void
.end method

.method private static distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
    .locals 4

    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v0

    return v0
.end method

.method private static distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F
    .locals 4

    invoke-virtual {p0}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/zxing/common/detector/MathUtils;->distance(IIII)F

    move-result v0

    return v0
.end method

.method private static expandSquare([Lcom/google/zxing/ResultPoint;FF)[Lcom/google/zxing/ResultPoint;
    .locals 15

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v1, p1, v0

    div-float v1, p2, v1

    const/4 v2, 0x0

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    const/4 v4, 0x2

    aget-object v5, p0, v4

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    sub-float/2addr v3, v5

    aget-object v5, p0, v2

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    aget-object v6, p0, v4

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    aget-object v6, p0, v2

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    aget-object v7, p0, v4

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v7

    add-float/2addr v6, v7

    div-float/2addr v6, v0

    aget-object v7, p0, v2

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    aget-object v8, p0, v4

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v8

    add-float/2addr v7, v8

    div-float/2addr v7, v0

    new-instance v8, Lcom/google/zxing/ResultPoint;

    mul-float v9, v1, v3

    add-float/2addr v9, v6

    mul-float v10, v1, v5

    add-float/2addr v10, v7

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v9, Lcom/google/zxing/ResultPoint;

    mul-float v10, v1, v3

    sub-float v10, v6, v10

    mul-float v11, v1, v5

    sub-float v11, v7, v11

    invoke-direct {v9, v10, v11}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v10, 0x1

    aget-object v11, p0, v10

    invoke-virtual {v11}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v11

    const/4 v12, 0x3

    aget-object v13, p0, v12

    invoke-virtual {v13}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v13

    sub-float/2addr v11, v13

    aget-object v3, p0, v10

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    aget-object v13, p0, v12

    invoke-virtual {v13}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v13

    sub-float/2addr v3, v13

    aget-object v5, p0, v10

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    aget-object v13, p0, v12

    invoke-virtual {v13}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v13

    add-float/2addr v5, v13

    div-float/2addr v5, v0

    aget-object v6, p0, v10

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    aget-object v13, p0, v12

    invoke-virtual {v13}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v13

    add-float/2addr v6, v13

    div-float/2addr v6, v0

    new-instance v0, Lcom/google/zxing/ResultPoint;

    mul-float v7, v1, v11

    add-float/2addr v7, v5

    mul-float v13, v1, v3

    add-float/2addr v13, v6

    invoke-direct {v0, v7, v13}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v7, Lcom/google/zxing/ResultPoint;

    mul-float v13, v1, v11

    sub-float v13, v5, v13

    mul-float v14, v1, v3

    sub-float v14, v6, v14

    invoke-direct {v7, v13, v14}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v13, 0x4

    new-array v13, v13, [Lcom/google/zxing/ResultPoint;

    aput-object v8, v13, v2

    aput-object v0, v13, v10

    aput-object v9, v13, v4

    aput-object v7, v13, v12

    return-object v13
.end method

.method private extractParameters([Lcom/google/zxing/ResultPoint;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lcom/google/zxing/aztec/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    aget-object v3, p1, v2

    invoke-direct {p0, v3}, Lcom/google/zxing/aztec/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    aget-object v4, p1, v3

    invoke-direct {p0, v4}, Lcom/google/zxing/aztec/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    mul-int/2addr v4, v2

    const/4 v5, 0x4

    new-array v6, v5, [I

    aget-object v7, p1, v0

    aget-object v8, p1, v1

    invoke-direct {p0, v7, v8, v4}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I

    move-result v7

    aput v7, v6, v0

    aget-object v7, p1, v1

    aget-object v8, p1, v2

    invoke-direct {p0, v7, v8, v4}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I

    move-result v7

    aput v7, v6, v1

    aget-object v7, p1, v2

    aget-object v8, p1, v3

    invoke-direct {p0, v7, v8, v4}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I

    move-result v7

    aput v7, v6, v2

    aget-object v2, p1, v3

    aget-object v0, p1, v0

    invoke-direct {p0, v2, v0, v4}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I

    move-result v0

    aput v0, v6, v3

    move-object v0, v6

    invoke-static {v0, v4}, Lcom/google/zxing/aztec/detector/Detector;->getRotation([II)I

    move-result v2

    iput v2, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    iget v7, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    add-int/2addr v7, v6

    rem-int/2addr v7, v5

    aget v7, v0, v7

    iget-boolean v8, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    if-eqz v8, :cond_0

    const/4 v8, 0x7

    shl-long/2addr v2, v8

    shr-int/lit8 v8, v7, 0x1

    and-int/lit8 v8, v8, 0x7f

    int-to-long v8, v8

    add-long/2addr v2, v8

    goto :goto_1

    :cond_0
    const/16 v8, 0xa

    shl-long/2addr v2, v8

    shr-int/lit8 v8, v7, 0x2

    and-int/lit16 v8, v8, 0x3e0

    shr-int/lit8 v9, v7, 0x1

    and-int/lit8 v9, v9, 0x1f

    add-int/2addr v8, v9

    int-to-long v8, v8

    add-long/2addr v2, v8

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v5, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    invoke-static {v2, v3, v5}, Lcom/google/zxing/aztec/detector/Detector;->getCorrectedParameterData(JZ)I

    move-result v5

    iget-boolean v6, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    if-eqz v6, :cond_2

    shr-int/lit8 v6, v5, 0x6

    add-int/2addr v6, v1

    iput v6, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    and-int/lit8 v6, v5, 0x3f

    add-int/2addr v6, v1

    iput v6, p0, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    goto :goto_2

    :cond_2
    shr-int/lit8 v6, v5, 0xb

    add-int/2addr v6, v1

    iput v6, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    and-int/lit16 v6, v5, 0x7ff

    add-int/2addr v6, v1

    iput v6, p0, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    :goto_2
    return-void

    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method private getBullsEyeCorners(Lcom/google/zxing/aztec/detector/Detector$Point;)[Lcom/google/zxing/ResultPoint;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    move-object/from16 v3, p1

    move-object/from16 v4, p1

    const/4 v5, 0x1

    const/4 v6, 0x1

    iput v6, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    :goto_0
    iget v7, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    const/16 v8, 0x9

    const/4 v9, 0x0

    const/4 v10, 0x2

    if-ge v7, v8, :cond_2

    const/4 v7, -0x1

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v8

    invoke-direct {v0, v2, v5, v6, v6}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v11

    invoke-direct {v0, v3, v5, v7, v6}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v12

    invoke-direct {v0, v4, v5, v7, v7}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v7

    iget v13, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    if-le v13, v10, :cond_0

    invoke-static {v7, v8}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F

    move-result v13

    iget v14, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    int-to-float v14, v14

    mul-float/2addr v13, v14

    invoke-static {v4, v1}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F

    move-result v14

    iget v15, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    add-int/2addr v15, v10

    int-to-float v15, v15

    mul-float/2addr v14, v15

    div-float/2addr v13, v14

    float-to-double v14, v13

    const-wide/high16 v16, 0x3fe8000000000000L    # 0.75

    cmpg-double v14, v14, v16

    if-ltz v14, :cond_2

    float-to-double v14, v13

    const-wide/high16 v16, 0x3ff4000000000000L    # 1.25

    cmpl-double v14, v14, v16

    if-gtz v14, :cond_2

    invoke-direct {v0, v8, v11, v12, v7}, Lcom/google/zxing/aztec/detector/Detector;->isWhiteOrBlackRectangle(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)Z

    move-result v14

    if-nez v14, :cond_0

    goto :goto_1

    :cond_0
    move-object v1, v8

    move-object v2, v11

    move-object v3, v12

    move-object v4, v7

    if-nez v5, :cond_1

    move v9, v6

    :cond_1
    move v5, v9

    iget v7, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    add-int/2addr v7, v6

    iput v7, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    goto :goto_0

    :cond_2
    :goto_1
    iget v7, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    const/4 v8, 0x5

    if-eq v7, v8, :cond_4

    const/4 v11, 0x7

    if-ne v7, v11, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6

    :cond_4
    :goto_2
    iget v7, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    if-ne v7, v8, :cond_5

    move v7, v6

    goto :goto_3

    :cond_5
    move v7, v9

    :goto_3
    iput-boolean v7, v0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    new-instance v7, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v8

    int-to-float v8, v8

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v8, v11

    invoke-virtual {v1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v12, v11

    invoke-direct {v7, v8, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v8, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v2}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v12, v11

    invoke-virtual {v2}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v13, v11

    invoke-direct {v8, v12, v13}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v12, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v3}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v13, v11

    invoke-virtual {v3}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v14, v11

    invoke-direct {v12, v13, v14}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v13, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v4}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v14, v11

    invoke-virtual {v4}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v15, v11

    invoke-direct {v13, v14, v15}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    move-object v11, v13

    const/4 v13, 0x4

    new-array v13, v13, [Lcom/google/zxing/ResultPoint;

    aput-object v7, v13, v9

    aput-object v8, v13, v6

    aput-object v12, v13, v10

    const/4 v6, 0x3

    aput-object v11, v13, v6

    iget v9, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    mul-int/lit8 v14, v9, 0x2

    sub-int/2addr v14, v6

    int-to-float v6, v14

    mul-int/2addr v9, v10

    int-to-float v9, v9

    invoke-static {v13, v6, v9}, Lcom/google/zxing/aztec/detector/Detector;->expandSquare([Lcom/google/zxing/ResultPoint;FF)[Lcom/google/zxing/ResultPoint;

    move-result-object v6

    return-object v6
.end method

.method private getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I
    .locals 11

    invoke-static {p1, p2}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F

    move-result v0

    invoke-virtual {p2}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v0

    invoke-virtual {p2}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v0

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v7

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    const/4 v7, 0x0

    :goto_0
    int-to-float v8, v7

    cmpg-float v8, v8, v0

    if-gez v8, :cond_1

    add-float/2addr v4, v1

    add-float/2addr v5, v2

    iget-object v8, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-static {v4}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v9

    invoke-static {v5}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eq v8, v6, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    int-to-float v7, v3

    div-float/2addr v7, v0

    const v8, 0x3dcccccd    # 0.1f

    cmpl-float v9, v7, v8

    const/4 v10, 0x0

    if-lez v9, :cond_2

    const v9, 0x3f666666    # 0.9f

    cmpg-float v9, v7, v9

    if-gez v9, :cond_2

    return v10

    :cond_2
    cmpg-float v8, v7, v8

    const/4 v9, 0x1

    if-gtz v8, :cond_3

    move v10, v9

    :cond_3
    if-ne v10, v6, :cond_4

    goto :goto_1

    :cond_4
    const/4 v9, -0x1

    :goto_1
    return v9
.end method

.method private static getCorrectedParameterData(JZ)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 v0, 0x7

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    const/4 v1, 0x4

    :goto_0
    sub-int v2, v0, v1

    new-array v3, v0, [I

    add-int/lit8 v4, v0, -0x1

    :goto_1
    if-ltz v4, :cond_1

    long-to-int v5, p0

    and-int/lit8 v5, v5, 0xf

    aput v5, v3, v4

    const/4 v5, 0x4

    shr-long/2addr p0, v5

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_1
    :try_start_0
    new-instance v4, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    sget-object v5, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_PARAM:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v4, v5}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    invoke-virtual {v4, v3, v2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v1, :cond_2

    shl-int/lit8 v6, v4, 0x4

    aget v7, v3, v5

    add-int v4, v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    return v4

    :catch_0
    move-exception v4

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5
.end method

.method private getDimension()I
    .locals 3

    iget-boolean v0, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xb

    return v0

    :cond_0
    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    if-gt v0, v1, :cond_1

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xf

    return v0

    :cond_1
    mul-int/lit8 v2, v0, 0x4

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0xf

    return v2
.end method

.method private getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;
    .locals 3

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v1

    add-int/2addr v1, p4

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-ne v2, p2, :cond_0

    add-int/2addr v0, p3

    add-int/2addr v1, p4

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p3

    sub-int/2addr v1, p4

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-ne v2, p2, :cond_1

    add-int/2addr v0, p3

    goto :goto_1

    :cond_1
    sub-int/2addr v0, p3

    :goto_2
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-ne v2, p2, :cond_2

    add-int/2addr v1, p4

    goto :goto_2

    :cond_2
    sub-int/2addr v1, p4

    new-instance v2, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-direct {v2, v0, v1}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    return-object v2
.end method

.method private getMatrixCenter()Lcom/google/zxing/aztec/detector/Detector$Point;
    .locals 15

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    iget-object v7, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v6, v7}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    invoke-virtual {v6}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->detect()[Lcom/google/zxing/ResultPoint;

    move-result-object v6

    aget-object v7, v6, v5
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    aget-object v8, v6, v4
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    aget-object v9, v6, v1
    :try_end_2
    .catch Lcom/google/zxing/NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    aget-object v2, v6, v0
    :try_end_3
    .catch Lcom/google/zxing/NotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception v6

    goto :goto_2

    :catch_1
    move-exception v6

    goto :goto_1

    :catch_2
    move-exception v6

    goto :goto_0

    :catch_3
    move-exception v6

    move-object v7, v2

    :goto_0
    move-object v8, v2

    :goto_1
    move-object v9, v2

    :goto_2
    iget-object v10, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v10}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v10

    div-int/2addr v10, v1

    iget-object v11, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v11}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v11

    div-int/2addr v11, v1

    new-instance v12, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v13, v10, 0x7

    add-int/lit8 v14, v11, -0x7

    invoke-direct {v12, v13, v14}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v12, v5, v4, v3}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v7

    new-instance v12, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v13, v10, 0x7

    add-int/lit8 v14, v11, 0x7

    invoke-direct {v12, v13, v14}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v12, v5, v4, v4}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v8

    new-instance v12, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v13, v10, -0x7

    add-int/lit8 v14, v11, 0x7

    invoke-direct {v12, v13, v14}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v12, v5, v3, v4}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v9

    new-instance v12, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v13, v10, -0x7

    add-int/lit8 v14, v11, -0x7

    invoke-direct {v12, v13, v14}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v12, v5, v3, v3}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v2

    :goto_3
    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v10

    add-float/2addr v6, v10

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v10

    add-float/2addr v6, v10

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v10

    add-float/2addr v6, v10

    const/high16 v10, 0x40800000    # 4.0f

    div-float/2addr v6, v10

    invoke-static {v6}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v6

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v11

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v12

    add-float/2addr v11, v12

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v12

    add-float/2addr v11, v12

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v12

    add-float/2addr v11, v12

    div-float/2addr v11, v10

    invoke-static {v11}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v11

    :try_start_4
    new-instance v12, Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    iget-object v13, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    const/16 v14, 0xf

    invoke-direct {v12, v13, v14, v6, v11}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;III)V

    invoke-virtual {v12}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->detect()[Lcom/google/zxing/ResultPoint;

    move-result-object v12

    aget-object v13, v12, v5

    move-object v7, v13

    aget-object v13, v12, v4

    move-object v8, v13

    aget-object v1, v12, v1

    move-object v9, v1

    aget-object v0, v12, v0
    :try_end_4
    .catch Lcom/google/zxing/NotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    new-instance v1, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v12, v6, 0x7

    add-int/lit8 v13, v11, -0x7

    invoke-direct {v1, v12, v13}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v1, v5, v4, v3}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v7

    new-instance v1, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v12, v6, 0x7

    add-int/lit8 v13, v11, 0x7

    invoke-direct {v1, v12, v13}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v1, v5, v4, v4}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v8

    new-instance v1, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v12, v6, -0x7

    add-int/lit8 v13, v11, 0x7

    invoke-direct {v1, v12, v13}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v1, v5, v3, v4}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v9

    new-instance v1, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v4, v6, -0x7

    add-int/lit8 v12, v11, -0x7

    invoke-direct {v1, v4, v12}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v1, v5, v3, v3}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v1

    move-object v0, v1

    :goto_4
    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    add-float/2addr v1, v2

    div-float/2addr v1, v10

    invoke-static {v1}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v1

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v10

    invoke-static {v2}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v2

    new-instance v3, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-direct {v3, v1, v2}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    return-object v3
.end method

.method private getMatrixCornerPoints([Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;
    .locals 2

    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/google/zxing/aztec/detector/Detector;->getDimension()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/google/zxing/aztec/detector/Detector;->expandSquare([Lcom/google/zxing/ResultPoint;FF)[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    return-object v0
.end method

.method private static getRotation([II)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, p0

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    add-int/lit8 v5, p1, -0x2

    shr-int v5, v4, v5

    shl-int/lit8 v5, v5, 0x1

    and-int/lit8 v6, v4, 0x1

    add-int/2addr v5, v6

    shl-int/lit8 v6, v0, 0x3

    add-int v0, v6, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    and-int/lit8 v1, v0, 0x1

    shl-int/lit8 v1, v1, 0xb

    shr-int/lit8 v2, v0, 0x1

    add-int/2addr v1, v2

    const/4 v0, 0x0

    :goto_1
    const/4 v2, 0x4

    if-ge v0, v2, :cond_2

    sget-object v2, Lcom/google/zxing/aztec/detector/Detector;->EXPECTED_CORNER_BITS:[I

    aget v2, v2, v0

    xor-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method private isValid(II)Z
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isValid(Lcom/google/zxing/ResultPoint;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    invoke-static {v1}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v2

    return v2
.end method

.method private isWhiteOrBlackRectangle(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)Z
    .locals 4

    const/4 v0, 0x3

    new-instance v1, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    move-object p1, v1

    new-instance v1, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-virtual {p2}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p2}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    move-object p2, v1

    new-instance v1, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-virtual {p3}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p3}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    move-object p3, v1

    new-instance v1, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-virtual {p4}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p4}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    move-object p4, v1

    invoke-direct {p0, p4, p1}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v3

    if-eq v3, v1, :cond_1

    return v2

    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v3

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    invoke-direct {p0, p3, p4}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v3

    if-ne v3, v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method private sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/common/BitMatrix;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v1, p1

    invoke-static {}, Lcom/google/zxing/common/GridSampler;->getInstance()Lcom/google/zxing/common/GridSampler;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/aztec/detector/Detector;->getDimension()I

    move-result v15

    move v3, v15

    move v2, v15

    int-to-float v4, v15

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    move-object/from16 v14, p0

    iget v8, v14, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    int-to-float v5, v8

    sub-float v21, v4, v5

    move/from16 v7, v21

    move/from16 v4, v21

    move/from16 v10, v21

    move/from16 v5, v21

    int-to-float v9, v15

    div-float/2addr v9, v6

    int-to-float v6, v8

    add-float v22, v9, v6

    move/from16 v8, v22

    move/from16 v9, v22

    move/from16 v11, v22

    move/from16 v6, v22

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v12

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v13

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v16

    move/from16 v14, v16

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v16

    move/from16 v23, v15

    move/from16 v15, v16

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v16

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v17

    invoke-virtual/range {p5 .. p5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v18

    invoke-virtual/range {p5 .. p5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v19

    invoke-virtual/range {v0 .. v19}, Lcom/google/zxing/common/GridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method private sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I
    .locals 11

    const/4 v0, 0x0

    invoke-static {p1, p2}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v1

    int-to-float v2, p3

    div-float v2, v1, v2

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    mul-float/2addr v5, v2

    div-float/2addr v5, v1

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    sub-float/2addr v6, v7

    mul-float/2addr v6, v2

    div-float/2addr v6, v1

    const/4 v7, 0x0

    :goto_0
    if-ge v7, p3, :cond_1

    iget-object v8, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    int-to-float v9, v7

    mul-float/2addr v9, v5

    add-float/2addr v9, v3

    invoke-static {v9}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v9

    int-to-float v10, v7

    mul-float/2addr v10, v6

    add-float/2addr v10, v4

    invoke-static {v10}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eqz v8, :cond_0

    sub-int v8, p3, v7

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    shl-int v8, v9, v8

    or-int/2addr v0, v8

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public detect()Lcom/google/zxing/aztec/AztecDetectorResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/zxing/aztec/detector/Detector;->detect(Z)Lcom/google/zxing/aztec/AztecDetectorResult;

    move-result-object v0

    return-object v0
.end method

.method public detect(Z)Lcom/google/zxing/aztec/AztecDetectorResult;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object v6, p0

    invoke-direct {p0}, Lcom/google/zxing/aztec/detector/Detector;->getMatrixCenter()Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/google/zxing/aztec/detector/Detector;->getBullsEyeCorners(Lcom/google/zxing/aztec/detector/Detector$Point;)[Lcom/google/zxing/ResultPoint;

    move-result-object v8

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    aget-object v1, v8, v0

    const/4 v2, 0x2

    aget-object v3, v8, v2

    aput-object v3, v8, v0

    aput-object v1, v8, v2

    :cond_0
    invoke-direct {p0, v8}, Lcom/google/zxing/aztec/detector/Detector;->extractParameters([Lcom/google/zxing/ResultPoint;)V

    iget-object v1, v6, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    iget v0, v6, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    rem-int/lit8 v2, v0, 0x4

    aget-object v2, v8, v2

    add-int/lit8 v3, v0, 0x1

    rem-int/lit8 v3, v3, 0x4

    aget-object v3, v8, v3

    add-int/lit8 v4, v0, 0x2

    rem-int/lit8 v4, v4, 0x4

    aget-object v4, v8, v4

    add-int/lit8 v0, v0, 0x3

    rem-int/lit8 v0, v0, 0x4

    aget-object v5, v8, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/aztec/detector/Detector;->sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    invoke-direct {p0, v8}, Lcom/google/zxing/aztec/detector/Detector;->getMatrixCornerPoints([Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;

    move-result-object v1

    new-instance v2, Lcom/google/zxing/aztec/AztecDetectorResult;

    iget-boolean v12, v6, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    iget v13, v6, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    iget v14, v6, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    move-object v9, v2

    move-object v10, v0

    move-object v11, v1

    invoke-direct/range {v9 .. v14}, Lcom/google/zxing/aztec/AztecDetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;ZII)V

    return-object v2
.end method
