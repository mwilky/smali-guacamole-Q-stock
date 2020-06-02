.class public final Lcom/google/zxing/common/detector/MonochromeRectangleDetector;
.super Ljava/lang/Object;
.source "MonochromeRectangleDetector.java"


# static fields
.field private static final MAX_MODULES:I = 0x20


# instance fields
.field private final image:Lcom/google/zxing/common/BitMatrix;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    return-void
.end method

.method private blackWhiteRange(IIIIZ)[I
    .locals 6

    add-int v0, p3, p4

    const/4 v1, 0x1

    shr-int/2addr v0, v1

    move v2, v0

    :goto_0
    if-lt v2, p3, :cond_7

    iget-object v3, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    if-eqz p5, :cond_0

    invoke-virtual {v3, v2, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_0
    invoke-virtual {v3, p1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    move v3, v2

    :cond_2
    add-int/lit8 v2, v2, -0x1

    if-lt v2, p3, :cond_4

    iget-object v4, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    if-eqz p5, :cond_3

    invoke-virtual {v4, v2, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_3
    invoke-virtual {v4, p1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_4
    :goto_2
    sub-int v4, v3, v2

    if-lt v2, p3, :cond_6

    if-le v4, p2, :cond_5

    goto :goto_3

    :cond_5
    goto :goto_0

    :cond_6
    :goto_3
    move v2, v3

    :cond_7
    add-int/2addr v2, v1

    move v3, v0

    :goto_4
    if-ge v3, p4, :cond_f

    iget-object v4, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    if-eqz p5, :cond_8

    invoke-virtual {v4, v3, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_5

    :cond_8
    invoke-virtual {v4, p1, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    move v4, v3

    :cond_a
    add-int/2addr v3, v1

    if-ge v3, p4, :cond_c

    iget-object v5, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    if-eqz p5, :cond_b

    invoke-virtual {v5, v3, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_6

    :cond_b
    invoke-virtual {v5, p1, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_c
    :goto_6
    sub-int v5, v3, v4

    if-ge v3, p4, :cond_e

    if-le v5, p2, :cond_d

    goto :goto_7

    :cond_d
    goto :goto_4

    :cond_e
    :goto_7
    move v3, v4

    :cond_f
    add-int/lit8 v3, v3, -0x1

    if-le v3, v2, :cond_10

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v2, v4, v5

    aput v3, v4, v1

    goto :goto_8

    :cond_10
    const/4 v4, 0x0

    :goto_8
    return-object v4
.end method

.method private findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move/from16 v0, p1

    move/from16 v1, p5

    const/4 v2, 0x0

    move/from16 v3, p5

    move/from16 v4, p1

    move-object v11, v2

    move v2, v4

    :goto_0
    move/from16 v12, p8

    if-ge v3, v12, :cond_c

    move/from16 v13, p7

    if-lt v3, v13, :cond_b

    move/from16 v14, p4

    if-ge v2, v14, :cond_a

    move/from16 v15, p3

    if-lt v2, v15, :cond_d

    if-nez p2, :cond_0

    const/4 v10, 0x1

    move-object/from16 v5, p0

    move v6, v3

    move/from16 v7, p9

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v5 .. v10}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->blackWhiteRange(IIIIZ)[I

    move-result-object v4

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    move-object/from16 v4, p0

    move v5, v2

    move/from16 v6, p9

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v4 .. v9}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->blackWhiteRange(IIIIZ)[I

    move-result-object v4

    :goto_1
    if-nez v4, :cond_9

    if-eqz v11, :cond_8

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez p2, :cond_4

    sub-int v7, v3, p6

    aget v8, v11, v6

    if-ge v8, v0, :cond_3

    aget v8, v11, v5

    if-le v8, v0, :cond_2

    new-instance v8, Lcom/google/zxing/ResultPoint;

    if-lez p6, :cond_1

    aget v5, v11, v6

    goto :goto_2

    :cond_1
    aget v5, v11, v5

    :goto_2
    int-to-float v5, v5

    int-to-float v6, v7

    invoke-direct {v8, v5, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object v8

    :cond_2
    new-instance v5, Lcom/google/zxing/ResultPoint;

    aget v6, v11, v6

    int-to-float v6, v6

    int-to-float v8, v7

    invoke-direct {v5, v6, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object v5

    :cond_3
    new-instance v6, Lcom/google/zxing/ResultPoint;

    aget v5, v11, v5

    int-to-float v5, v5

    int-to-float v8, v7

    invoke-direct {v6, v5, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object v6

    :cond_4
    sub-int v7, v2, p2

    aget v8, v11, v6

    if-ge v8, v1, :cond_7

    aget v8, v11, v5

    if-le v8, v1, :cond_6

    new-instance v8, Lcom/google/zxing/ResultPoint;

    int-to-float v9, v7

    if-gez p2, :cond_5

    aget v5, v11, v6

    goto :goto_3

    :cond_5
    aget v5, v11, v5

    :goto_3
    int-to-float v5, v5

    invoke-direct {v8, v9, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object v8

    :cond_6
    new-instance v5, Lcom/google/zxing/ResultPoint;

    int-to-float v8, v7

    aget v6, v11, v6

    int-to-float v6, v6

    invoke-direct {v5, v8, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object v5

    :cond_7
    new-instance v6, Lcom/google/zxing/ResultPoint;

    int-to-float v8, v7

    aget v5, v11, v5

    int-to-float v5, v5

    invoke-direct {v6, v8, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object v6

    :cond_8
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5

    :cond_9
    move-object v11, v4

    add-int v3, v3, p6

    add-int v2, v2, p2

    goto/16 :goto_0

    :cond_a
    move/from16 v15, p3

    goto :goto_4

    :cond_b
    move/from16 v15, p3

    move/from16 v14, p4

    goto :goto_4

    :cond_c
    move/from16 v15, p3

    move/from16 v14, p4

    move/from16 v13, p7

    :cond_d
    :goto_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public detect()[Lcom/google/zxing/ResultPoint;
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v14

    iget-object v0, v15, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v13

    shr-int/lit8 v19, v14, 0x1

    shr-int/lit8 v20, v13, 0x1

    div-int/lit16 v0, v14, 0x100

    const/4 v12, 0x1

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    div-int/lit16 v0, v13, 0x100

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    const/16 v16, 0x0

    move v8, v14

    const/16 v21, 0x0

    move v4, v13

    neg-int v6, v11

    shr-int/lit8 v9, v20, 0x1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v3, v21

    move/from16 v5, v19

    move/from16 v7, v16

    invoke-direct/range {v0 .. v9}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v23, v0, -0x1

    neg-int v0, v10

    shr-int/lit8 v18, v19, 0x1

    const/4 v1, 0x0

    move-object/from16 v9, p0

    move/from16 v24, v10

    move/from16 v10, v20

    move v7, v11

    move v11, v0

    move/from16 v25, v12

    move/from16 v12, v21

    move/from16 v26, v13

    move/from16 v27, v14

    move/from16 v14, v19

    move v15, v1

    move/from16 v16, v23

    move/from16 v17, v8

    invoke-direct/range {v9 .. v18}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v21, v0, -0x1

    shr-int/lit8 v18, v19, 0x1

    const/4 v15, 0x0

    move/from16 v11, v24

    move/from16 v12, v21

    invoke-direct/range {v9 .. v18}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v30, v0, 0x1

    shr-int/lit8 v18, v20, 0x1

    const/4 v11, 0x0

    move/from16 v13, v30

    move v15, v7

    invoke-direct/range {v9 .. v18}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v11, v0, 0x1

    neg-int v6, v7

    shr-int/lit8 v9, v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v3, v21

    move/from16 v4, v30

    move v12, v7

    move/from16 v7, v23

    move v8, v11

    invoke-direct/range {v0 .. v9}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/google/zxing/ResultPoint;

    aput-object v0, v1, v2

    aput-object v28, v1, v25

    const/4 v2, 0x2

    aput-object v29, v1, v2

    const/4 v2, 0x3

    aput-object v10, v1, v2

    return-object v1
.end method
