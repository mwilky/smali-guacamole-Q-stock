.class public abstract Lcom/google/zxing/oned/OneDReader;
.super Ljava/lang/Object;
.source "OneDReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# static fields
.field protected static final INTEGER_MATH_SHIFT:I = 0x8

.field protected static final PATTERN_MATCH_RESULT_SCALE_FACTOR:I = 0x100


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doDecode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v0, p2

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getWidth()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    move-result v2

    new-instance v3, Lcom/google/zxing/common/BitArray;

    invoke-direct {v3, v1}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    shr-int/lit8 v4, v2, 0x1

    const/4 v6, 0x1

    if-eqz v0, :cond_0

    sget-object v7, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_1

    const/16 v8, 0x8

    goto :goto_1

    :cond_1
    const/4 v8, 0x5

    :goto_1
    shr-int v8, v2, v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    if-eqz v7, :cond_2

    move v9, v2

    goto :goto_2

    :cond_2
    const/16 v9, 0xf

    :goto_2
    const/4 v10, 0x0

    move-object v11, v0

    :goto_3
    if-ge v10, v9, :cond_b

    add-int/lit8 v0, v10, 0x1

    shr-int/lit8 v12, v0, 0x1

    and-int/lit8 v0, v10, 0x1

    if-nez v0, :cond_3

    move v0, v6

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    :goto_4
    move v13, v0

    if-eqz v13, :cond_4

    move v0, v12

    goto :goto_5

    :cond_4
    neg-int v0, v12

    :goto_5
    mul-int/2addr v0, v8

    add-int v14, v4, v0

    if-ltz v14, :cond_a

    if-ge v14, v2, :cond_9

    move-object/from16 v15, p1

    :try_start_0
    invoke-virtual {v15, v14, v3}, Lcom/google/zxing/BinaryBitmap;->getBlackRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_7

    move-object v3, v0

    nop

    const/4 v0, 0x0

    move-object/from16 v23, v11

    move v11, v0

    move-object/from16 v0, v23

    :goto_6
    const/4 v5, 0x2

    if-ge v11, v5, :cond_8

    if-ne v11, v6, :cond_5

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->reverse()V

    if-eqz v0, :cond_5

    sget-object v5, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Ljava/util/EnumMap;

    const-class v6, Lcom/google/zxing/DecodeHintType;

    invoke-direct {v5, v6}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-interface {v5, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    sget-object v6, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v5

    goto :goto_7

    :cond_5
    move-object v5, v0

    :goto_7
    move-object/from16 v6, p0

    :try_start_1
    invoke-virtual {v6, v14, v3, v5}, Lcom/google/zxing/oned/OneDReader;->decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0
    :try_end_1
    .catch Lcom/google/zxing/ReaderException; {:try_start_1 .. :try_end_1} :catch_6

    move/from16 v18, v2

    const/4 v2, 0x1

    if-ne v11, v2, :cond_7

    :try_start_2
    sget-object v2, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;
    :try_end_2
    .catch Lcom/google/zxing/ReaderException; {:try_start_2 .. :try_end_2} :catch_5

    const/16 v19, 0xb4

    move-object/from16 p2, v3

    :try_start_3
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v2

    if-eqz v2, :cond_6

    new-instance v3, Lcom/google/zxing/ResultPoint;
    :try_end_3
    .catch Lcom/google/zxing/ReaderException; {:try_start_3 .. :try_end_3} :catch_4

    move/from16 v19, v4

    int-to-float v4, v1

    const/16 v16, 0x0

    :try_start_4
    aget-object v20, v2, v16

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v20

    sub-float v4, v4, v20

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v4, v4, v20

    aget-object v21, v2, v16
    :try_end_4
    .catch Lcom/google/zxing/ReaderException; {:try_start_4 .. :try_end_4} :catch_3

    move-object/from16 v22, v5

    :try_start_5
    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v3, v2, v16

    new-instance v3, Lcom/google/zxing/ResultPoint;
    :try_end_5
    .catch Lcom/google/zxing/ReaderException; {:try_start_5 .. :try_end_5} :catch_2

    int-to-float v4, v1

    const/4 v5, 0x1

    :try_start_6
    aget-object v17, v2, v5

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v17

    sub-float v4, v4, v17

    sub-float v4, v4, v20

    aget-object v17, v2, v5
    :try_end_6
    .catch Lcom/google/zxing/ReaderException; {:try_start_6 .. :try_end_6} :catch_1

    :try_start_7
    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V
    :try_end_7
    .catch Lcom/google/zxing/ReaderException; {:try_start_7 .. :try_end_7} :catch_2

    const/4 v4, 0x1

    :try_start_8
    aput-object v3, v2, v4
    :try_end_8
    .catch Lcom/google/zxing/ReaderException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    move v4, v5

    goto :goto_9

    :catch_2
    move-exception v0

    const/4 v4, 0x1

    goto :goto_9

    :catch_3
    move-exception v0

    move-object/from16 v22, v5

    const/4 v4, 0x1

    goto :goto_9

    :cond_6
    move/from16 v19, v4

    move-object/from16 v22, v5

    goto :goto_8

    :catch_4
    move-exception v0

    move/from16 v19, v4

    move-object/from16 v22, v5

    const/4 v4, 0x1

    const/16 v16, 0x0

    goto :goto_9

    :catch_5
    move-exception v0

    move-object/from16 p2, v3

    move/from16 v19, v4

    move-object/from16 v22, v5

    const/4 v4, 0x1

    const/16 v16, 0x0

    goto :goto_9

    :cond_7
    move-object/from16 p2, v3

    move/from16 v19, v4

    move-object/from16 v22, v5

    :goto_8
    return-object v0

    :catch_6
    move-exception v0

    move/from16 v18, v2

    move-object/from16 p2, v3

    move/from16 v19, v4

    move-object/from16 v22, v5

    const/4 v4, 0x1

    const/16 v16, 0x0

    :goto_9
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, p2

    move v6, v4

    move/from16 v2, v18

    move/from16 v4, v19

    move-object/from16 v0, v22

    goto/16 :goto_6

    :cond_8
    move/from16 v18, v2

    move-object/from16 p2, v3

    move/from16 v19, v4

    move v4, v6

    const/16 v16, 0x0

    move-object/from16 v6, p0

    move-object v11, v0

    goto :goto_a

    :catch_7
    move-exception v0

    move/from16 v18, v2

    move/from16 v19, v4

    move v4, v6

    const/16 v16, 0x0

    move-object/from16 v6, p0

    move-object v2, v0

    move-object v0, v2

    nop

    :goto_a
    add-int/lit8 v10, v10, 0x1

    move v6, v4

    move/from16 v2, v18

    move/from16 v4, v19

    goto/16 :goto_3

    :cond_9
    move-object/from16 v6, p0

    move-object/from16 v15, p1

    move/from16 v18, v2

    move/from16 v19, v4

    goto :goto_b

    :cond_a
    move-object/from16 v6, p0

    move-object/from16 v15, p1

    move/from16 v18, v2

    move/from16 v19, v4

    goto :goto_b

    :cond_b
    move-object/from16 v6, p0

    move-object/from16 v15, p1

    move/from16 v18, v2

    move/from16 v19, v4

    :goto_b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method protected static patternMatchVariance([I[II)I
    .locals 10

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget v4, p0, v3

    add-int/2addr v1, v4

    aget v4, p1, v3

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const v3, 0x7fffffff

    if-ge v1, v2, :cond_1

    return v3

    :cond_1
    shl-int/lit8 v4, v1, 0x8

    div-int/2addr v4, v2

    mul-int v5, p2, v4

    shr-int/lit8 p2, v5, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v0, :cond_4

    aget v7, p0, v6

    shl-int/lit8 v7, v7, 0x8

    aget v8, p1, v6

    mul-int/2addr v8, v4

    if-le v7, v8, :cond_2

    sub-int v9, v7, v8

    goto :goto_2

    :cond_2
    sub-int v9, v8, v7

    :goto_2
    if-le v9, p2, :cond_3

    return v3

    :cond_3
    add-int/2addr v5, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    div-int v3, v5, v1

    return v3
.end method

.method protected static recordPattern(Lcom/google/zxing/common/BitArray;I[I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    if-ge p1, v2, :cond_6

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    const/4 v5, 0x0

    move v6, p1

    :goto_0
    if-ge v6, v2, :cond_3

    invoke-virtual {p0, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    xor-int/2addr v7, v3

    if-eqz v7, :cond_0

    aget v7, p2, v5

    add-int/2addr v7, v4

    aput v7, p2, v5

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    if-ne v5, v0, :cond_1

    goto :goto_3

    :cond_1
    aput v4, p2, v5

    if-nez v3, :cond_2

    move v7, v4

    goto :goto_1

    :cond_2
    move v7, v1

    :goto_1
    move v3, v7

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    if-eq v5, v0, :cond_5

    add-int/lit8 v1, v0, -0x1

    if-ne v5, v1, :cond_4

    if-ne v6, v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    :cond_5
    :goto_4
    return-void

    :cond_6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method

.method protected static recordPatternInReverse(Lcom/google/zxing/common/BitArray;I[I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    array-length v0, p2

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    :cond_0
    :goto_0
    if-lez p1, :cond_2

    if-ltz v0, :cond_2

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eq v2, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    if-nez v1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_2
    if-gez v0, :cond_3

    add-int/lit8 v2, p1, 0x1

    invoke-static {p0, v2, p2}, Lcom/google/zxing/oned/OneDReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    return-void

    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/oned/OneDReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/oned/OneDReader;->doDecode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    if-eqz p2, :cond_0

    sget-object v1, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->isRotateSupported()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->rotateCounterClockwise()Lcom/google/zxing/BinaryBitmap;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/google/zxing/oned/OneDReader;->doDecode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v4

    const/16 v5, 0x10e

    if-eqz v4, :cond_1

    sget-object v6, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v5

    rem-int/lit16 v5, v6, 0x168

    :cond_1
    sget-object v6, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    :goto_1
    array-length v9, v6

    if-ge v8, v9, :cond_2

    new-instance v9, Lcom/google/zxing/ResultPoint;

    int-to-float v10, v7

    aget-object v11, v6, v8

    invoke-virtual {v11}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v11

    sub-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v10, v11

    aget-object v11, v6, v8

    invoke-virtual {v11}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v11

    invoke-direct {v9, v10, v11}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    return-object v3

    :cond_3
    throw v0
.end method

.method public abstract decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation
.end method

.method public reset()V
    .locals 0

    return-void
.end method
