.class public final Lcom/google/zxing/aztec/encoder/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# static fields
.field public static final DEFAULT_AZTEC_LAYERS:I = 0x0

.field public static final DEFAULT_EC_PERCENT:I = 0x21

.field private static final MAX_NB_BITS:I = 0x20

.field private static final MAX_NB_BITS_COMPACT:I = 0x4

.field private static final WORD_SIZE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x21

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    return-void

    :array_0
    .array-data 4
        0x4
        0x6
        0x6
        0x8
        0x8
        0x8
        0x8
        0x8
        0x8
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bitsToWords(Lcom/google/zxing/common/BitArray;II)[I
    .locals 7

    new-array v0, p2, [I

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    div-int/2addr v2, p1

    :goto_0
    if-ge v1, v2, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, p1, :cond_1

    mul-int v5, v1, p1

    add-int/2addr v5, v4

    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_0

    sub-int v5, p1, v4

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    shl-int v5, v6, v5

    goto :goto_2

    :cond_0
    const/4 v5, 0x0

    :goto_2
    or-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    sub-int v1, p1, v0

    :goto_1
    add-int v2, p1, v0

    if-gt v1, v2, :cond_0

    sub-int v2, p1, v0

    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int v2, p1, v0

    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    sub-int v2, p1, v0

    invoke-virtual {p0, v2, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int v2, p1, v0

    invoke-virtual {p0, v2, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    sub-int v0, p1, p2

    sub-int v1, p1, p2

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    sub-int v0, p1, p2

    add-int/lit8 v0, v0, 0x1

    sub-int v1, p1, p2

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    sub-int v0, p1, p2

    sub-int v1, p1, p2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int v0, p1, p2

    sub-int v1, p1, p2

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int v0, p1, p2

    sub-int v1, p1, p2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int v0, p1, p2

    add-int v1, p1, p2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    return-void
.end method

.method private static drawModeMessage(Lcom/google/zxing/common/BitMatrix;ZILcom/google/zxing/common/BitArray;)V
    .locals 4

    div-int/lit8 v0, p2, 0x2

    if-eqz p1, :cond_5

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_4

    add-int/lit8 v2, v0, -0x3

    add-int/2addr v2, v1

    invoke-virtual {p3, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v0, -0x5

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_0
    add-int/lit8 v3, v1, 0x7

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v3, v0, 0x5

    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_1
    rsub-int/lit8 v3, v1, 0x14

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v3, v0, 0x5

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_2
    rsub-int/lit8 v3, v1, 0x1b

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v3, v0, -0x5

    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0xa

    if-ge v1, v2, :cond_a

    add-int/lit8 v2, v0, -0x5

    add-int/2addr v2, v1

    div-int/lit8 v3, v1, 0x5

    add-int/2addr v2, v3

    invoke-virtual {p3, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_6

    add-int/lit8 v3, v0, -0x7

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_6
    add-int/lit8 v3, v1, 0xa

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_7

    add-int/lit8 v3, v0, 0x7

    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_7
    rsub-int/lit8 v3, v1, 0x1d

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_8

    add-int/lit8 v3, v0, 0x7

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_8
    rsub-int/lit8 v3, v1, 0x27

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_9

    add-int/lit8 v3, v0, -0x7

    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    :goto_2
    return-void
.end method

.method public static encode([B)Lcom/google/zxing/aztec/encoder/AztecCode;
    .locals 2

    const/16 v0, 0x21

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/zxing/aztec/encoder/Encoder;->encode([BII)Lcom/google/zxing/aztec/encoder/AztecCode;

    move-result-object v0

    return-object v0
.end method

.method public static encode([BII)Lcom/google/zxing/aztec/encoder/AztecCode;
    .locals 26

    new-instance v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;-><init>([B)V

    invoke-virtual {v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->encode()Lcom/google/zxing/common/BitArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    mul-int v2, v2, p1

    div-int/lit8 v2, v2, 0x64

    add-int/lit8 v2, v2, 0xb

    invoke-virtual {v0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    add-int/2addr v3, v2

    const/16 v4, 0x20

    const/4 v5, 0x0

    const/4 v7, 0x1

    if-eqz p2, :cond_6

    if-gez p2, :cond_0

    move v8, v7

    goto :goto_0

    :cond_0
    move v8, v5

    :goto_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-eqz v8, :cond_1

    const/4 v4, 0x4

    :cond_1
    if-gt v9, v4, :cond_5

    invoke-static {v9, v8}, Lcom/google/zxing/aztec/encoder/Encoder;->totalBitsInLayer(IZ)I

    move-result v4

    sget-object v5, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    aget v5, v5, v9

    rem-int v10, v4, v5

    sub-int v10, v4, v10

    invoke-static {v0, v5}, Lcom/google/zxing/aztec/encoder/Encoder;->stuffBits(Lcom/google/zxing/common/BitArray;I)Lcom/google/zxing/common/BitArray;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v12

    add-int/2addr v12, v2

    const-string v13, "Data to large for user specified layer"

    if-gt v12, v10, :cond_4

    if-eqz v8, :cond_3

    invoke-virtual {v11}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v12

    mul-int/lit8 v14, v5, 0x40

    if-gt v12, v14, :cond_2

    goto :goto_1

    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    :goto_1
    move v13, v4

    move v12, v9

    move-object v9, v11

    goto/16 :goto_5

    :cond_4
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    const-string v5, "Illegal value %s for layers"

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_6
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2
    if-gt v10, v4, :cond_1c

    const/4 v11, 0x3

    if-gt v10, v11, :cond_7

    move v11, v7

    goto :goto_3

    :cond_7
    move v11, v5

    :goto_3
    if-eqz v11, :cond_8

    add-int/lit8 v12, v10, 0x1

    goto :goto_4

    :cond_8
    move v12, v10

    :goto_4
    invoke-static {v12, v11}, Lcom/google/zxing/aztec/encoder/Encoder;->totalBitsInLayer(IZ)I

    move-result v13

    if-le v3, v13, :cond_9

    move-object/from16 v21, v0

    move/from16 v20, v2

    move/from16 v24, v3

    const/16 v17, 0x4

    goto/16 :goto_12

    :cond_9
    sget-object v14, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    aget v15, v14, v12

    if-eq v8, v15, :cond_a

    aget v8, v14, v12

    invoke-static {v0, v8}, Lcom/google/zxing/aztec/encoder/Encoder;->stuffBits(Lcom/google/zxing/common/BitArray;I)Lcom/google/zxing/common/BitArray;

    move-result-object v9

    :cond_a
    rem-int v14, v13, v8

    sub-int v14, v13, v14

    if-eqz v11, :cond_b

    invoke-virtual {v9}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v15

    mul-int/lit8 v4, v8, 0x40

    if-le v15, v4, :cond_b

    move-object/from16 v21, v0

    move/from16 v20, v2

    move/from16 v24, v3

    const/16 v17, 0x4

    goto/16 :goto_12

    :cond_b
    invoke-virtual {v9}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    add-int/2addr v4, v2

    if-gt v4, v14, :cond_1b

    move v5, v8

    move v8, v11

    :goto_5
    invoke-static {v9, v13, v5}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    move-result-object v4

    invoke-virtual {v9}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v10

    div-int/2addr v10, v5

    invoke-static {v8, v12, v10}, Lcom/google/zxing/aztec/encoder/Encoder;->generateModeMessage(ZII)Lcom/google/zxing/common/BitArray;

    move-result-object v11

    if-eqz v8, :cond_c

    mul-int/lit8 v14, v12, 0x4

    add-int/lit8 v14, v14, 0xb

    goto :goto_6

    :cond_c
    mul-int/lit8 v14, v12, 0x4

    add-int/lit8 v14, v14, 0xe

    :goto_6
    new-array v15, v14, [I

    if-eqz v8, :cond_e

    move/from16 v16, v14

    const/16 v18, 0x0

    move/from16 v6, v18

    :goto_7
    array-length v7, v15

    if-ge v6, v7, :cond_d

    aput v6, v15, v6

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    goto :goto_7

    :cond_d
    move-object/from16 v21, v0

    move/from16 v0, v16

    goto :goto_9

    :cond_e
    add-int/lit8 v6, v14, 0x1

    div-int/lit8 v7, v14, 0x2

    const/16 v16, 0x1

    add-int/lit8 v7, v7, -0x1

    div-int/lit8 v7, v7, 0xf

    const/16 v16, 0x2

    mul-int/lit8 v7, v7, 0x2

    add-int v16, v6, v7

    div-int/lit8 v6, v14, 0x2

    div-int/lit8 v7, v16, 0x2

    const/16 v20, 0x0

    move-object/from16 v21, v0

    move/from16 v0, v20

    :goto_8
    if-ge v0, v6, :cond_f

    div-int/lit8 v20, v0, 0xf

    add-int v20, v0, v20

    sub-int v22, v6, v0

    const/16 v18, 0x1

    add-int/lit8 v22, v22, -0x1

    sub-int v23, v7, v20

    add-int/lit8 v23, v23, -0x1

    aput v23, v15, v22

    add-int v22, v6, v0

    add-int v23, v7, v20

    add-int/lit8 v23, v23, 0x1

    aput v23, v15, v22

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_f
    move/from16 v0, v16

    :goto_9
    new-instance v6, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v6, v0}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    const/4 v7, 0x0

    const/16 v16, 0x0

    :goto_a
    if-ge v7, v12, :cond_17

    if-eqz v8, :cond_10

    sub-int v20, v12, v7

    const/16 v17, 0x4

    mul-int/lit8 v20, v20, 0x4

    add-int/lit8 v20, v20, 0x9

    goto :goto_b

    :cond_10
    const/16 v17, 0x4

    sub-int v20, v12, v7

    mul-int/lit8 v20, v20, 0x4

    add-int/lit8 v20, v20, 0xc

    :goto_b
    move/from16 v22, v20

    const/16 v20, 0x0

    move/from16 v1, v20

    :goto_c
    move/from16 v20, v2

    move/from16 v2, v22

    if-ge v1, v2, :cond_16

    mul-int/lit8 v22, v1, 0x2

    const/16 v23, 0x0

    move/from16 v24, v3

    move/from16 v3, v23

    :goto_d
    move/from16 v23, v5

    const/4 v5, 0x2

    if-ge v3, v5, :cond_15

    add-int v19, v16, v22

    add-int v5, v19, v3

    invoke-virtual {v4, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_11

    mul-int/lit8 v5, v7, 0x2

    add-int/2addr v5, v3

    aget v5, v15, v5

    mul-int/lit8 v19, v7, 0x2

    add-int v19, v19, v1

    move-object/from16 v25, v9

    aget v9, v15, v19

    invoke-virtual {v6, v5, v9}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    goto :goto_e

    :cond_11
    move-object/from16 v25, v9

    :goto_e
    mul-int/lit8 v5, v2, 0x2

    add-int v5, v16, v5

    add-int v5, v5, v22

    add-int/2addr v5, v3

    invoke-virtual {v4, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_12

    mul-int/lit8 v5, v7, 0x2

    add-int/2addr v5, v1

    aget v5, v15, v5

    add-int/lit8 v9, v14, -0x1

    mul-int/lit8 v19, v7, 0x2

    sub-int v9, v9, v19

    sub-int/2addr v9, v3

    aget v9, v15, v9

    invoke-virtual {v6, v5, v9}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_12
    mul-int/lit8 v5, v2, 0x4

    add-int v5, v16, v5

    add-int v5, v5, v22

    add-int/2addr v5, v3

    invoke-virtual {v4, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_13

    add-int/lit8 v5, v14, -0x1

    mul-int/lit8 v9, v7, 0x2

    sub-int/2addr v5, v9

    sub-int/2addr v5, v3

    aget v5, v15, v5

    add-int/lit8 v9, v14, -0x1

    mul-int/lit8 v19, v7, 0x2

    sub-int v9, v9, v19

    sub-int/2addr v9, v1

    aget v9, v15, v9

    invoke-virtual {v6, v5, v9}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_13
    mul-int/lit8 v5, v2, 0x6

    add-int v5, v16, v5

    add-int v5, v5, v22

    add-int/2addr v5, v3

    invoke-virtual {v4, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_14

    add-int/lit8 v5, v14, -0x1

    mul-int/lit8 v9, v7, 0x2

    sub-int/2addr v5, v9

    sub-int/2addr v5, v1

    aget v5, v15, v5

    mul-int/lit8 v9, v7, 0x2

    add-int/2addr v9, v3

    aget v9, v15, v9

    invoke-virtual {v6, v5, v9}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_14
    add-int/lit8 v3, v3, 0x1

    move/from16 v5, v23

    move-object/from16 v9, v25

    goto/16 :goto_d

    :cond_15
    move-object/from16 v25, v9

    add-int/lit8 v1, v1, 0x1

    move/from16 v22, v2

    move/from16 v2, v20

    move/from16 v5, v23

    move/from16 v3, v24

    goto/16 :goto_c

    :cond_16
    move/from16 v24, v3

    move/from16 v23, v5

    move-object/from16 v25, v9

    mul-int/lit8 v22, v2, 0x8

    add-int v16, v16, v22

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p0

    move/from16 v2, v20

    goto/16 :goto_a

    :cond_17
    move/from16 v20, v2

    move/from16 v24, v3

    move/from16 v23, v5

    move-object/from16 v25, v9

    invoke-static {v6, v8, v0, v11}, Lcom/google/zxing/aztec/encoder/Encoder;->drawModeMessage(Lcom/google/zxing/common/BitMatrix;ZILcom/google/zxing/common/BitArray;)V

    if-eqz v8, :cond_18

    div-int/lit8 v1, v0, 0x2

    const/4 v2, 0x5

    invoke-static {v6, v1, v2}, Lcom/google/zxing/aztec/encoder/Encoder;->drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V

    goto :goto_11

    :cond_18
    div-int/lit8 v1, v0, 0x2

    const/4 v2, 0x7

    invoke-static {v6, v1, v2}, Lcom/google/zxing/aztec/encoder/Encoder;->drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_f
    div-int/lit8 v3, v14, 0x2

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    if-ge v1, v3, :cond_1a

    div-int/lit8 v3, v0, 0x2

    and-int/2addr v3, v7

    :goto_10
    if-ge v3, v0, :cond_19

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v5, v2

    invoke-virtual {v6, v5, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    div-int/lit8 v5, v0, 0x2

    add-int/2addr v5, v2

    invoke-virtual {v6, v5, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v5, v2

    invoke-virtual {v6, v3, v5}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    div-int/lit8 v5, v0, 0x2

    add-int/2addr v5, v2

    invoke-virtual {v6, v3, v5}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int/lit8 v3, v3, 0x2

    goto :goto_10

    :cond_19
    add-int/lit8 v1, v1, 0xf

    add-int/lit8 v2, v2, 0x10

    goto :goto_f

    :cond_1a
    :goto_11
    new-instance v1, Lcom/google/zxing/aztec/encoder/AztecCode;

    invoke-direct {v1}, Lcom/google/zxing/aztec/encoder/AztecCode;-><init>()V

    invoke-virtual {v1, v8}, Lcom/google/zxing/aztec/encoder/AztecCode;->setCompact(Z)V

    invoke-virtual {v1, v0}, Lcom/google/zxing/aztec/encoder/AztecCode;->setSize(I)V

    invoke-virtual {v1, v12}, Lcom/google/zxing/aztec/encoder/AztecCode;->setLayers(I)V

    invoke-virtual {v1, v10}, Lcom/google/zxing/aztec/encoder/AztecCode;->setCodeWords(I)V

    invoke-virtual {v1, v6}, Lcom/google/zxing/aztec/encoder/AztecCode;->setMatrix(Lcom/google/zxing/common/BitMatrix;)V

    return-object v1

    :cond_1b
    move-object/from16 v21, v0

    move/from16 v20, v2

    move/from16 v24, v3

    const/16 v17, 0x4

    :goto_12
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p0

    move/from16 v2, v20

    move-object/from16 v0, v21

    move/from16 v3, v24

    const/16 v4, 0x20

    goto/16 :goto_2

    :cond_1c
    move-object/from16 v21, v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Data too large for an Aztec code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;
    .locals 10

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    div-int/2addr v0, p2

    new-instance v1, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;

    invoke-static {p2}, Lcom/google/zxing/aztec/encoder/Encoder;->getGF(I)Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    div-int v2, p1, p2

    invoke-static {p0, p2, v2}, Lcom/google/zxing/aztec/encoder/Encoder;->bitsToWords(Lcom/google/zxing/common/BitArray;II)[I

    move-result-object v3

    sub-int v4, v2, v0

    invoke-virtual {v1, v3, v4}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->encode([II)V

    rem-int v4, p1, p2

    new-instance v5, Lcom/google/zxing/common/BitArray;

    invoke-direct {v5}, Lcom/google/zxing/common/BitArray;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    move-object v6, v3

    array-length v7, v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_0

    aget v9, v6, v8

    invoke-virtual {v5, v9, p2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    return-object v5
.end method

.method static generateModeMessage(ZII)Lcom/google/zxing/common/BitArray;
    .locals 4

    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0}, Lcom/google/zxing/common/BitArray;-><init>()V

    const/4 v1, 0x4

    if-eqz p0, :cond_0

    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    const/16 v2, 0x1c

    invoke-static {v0, v2, v1}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v2, p2, -0x1

    const/16 v3, 0xb

    invoke-virtual {v0, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    const/16 v2, 0x28

    invoke-static {v0, v2, v1}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static getGF(I)Lcom/google/zxing/common/reedsolomon/GenericGF;
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_4

    const/4 v0, 0x6

    if-eq p0, v0, :cond_3

    const/16 v0, 0x8

    if-eq p0, v0, :cond_2

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-object v0

    :cond_1
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-object v0

    :cond_2
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-object v0

    :cond_3
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-object v0

    :cond_4
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_PARAM:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-object v0
.end method

.method static stuffBits(Lcom/google/zxing/common/BitArray;I)Lcom/google/zxing/common/BitArray;
    .locals 8

    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0}, Lcom/google/zxing/common/BitArray;-><init>()V

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    const/4 v2, 0x1

    shl-int v3, v2, p1

    add-int/lit8 v3, v3, -0x2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_5

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, p1, :cond_2

    add-int v7, v4, v6

    if-ge v7, v1, :cond_0

    add-int v7, v4, v6

    invoke-virtual {p0, v7}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    add-int/lit8 v7, p1, -0x1

    sub-int/2addr v7, v6

    shl-int v7, v2, v7

    or-int/2addr v5, v7

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    and-int v6, v5, v3

    if-ne v6, v3, :cond_3

    and-int v6, v5, v3

    invoke-virtual {v0, v6, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_3
    and-int v6, v5, v3

    if-nez v6, :cond_4

    or-int/lit8 v6, v5, 0x1

    invoke-virtual {v0, v6, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v5, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    :goto_2
    add-int/2addr v4, p1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private static totalBitsInLayer(IZ)I
    .locals 2

    if-eqz p1, :cond_0

    const/16 v0, 0x58

    goto :goto_0

    :cond_0
    const/16 v0, 0x70

    :goto_0
    mul-int/lit8 v1, p0, 0x10

    add-int/2addr v0, v1

    mul-int/2addr v0, p0

    return v0
.end method
