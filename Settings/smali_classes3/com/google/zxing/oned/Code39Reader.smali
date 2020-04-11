.class public final Lcom/google/zxing/oned/Code39Reader;
.super Lcom/google/zxing/oned/OneDReader;
.source "Code39Reader.java"


# static fields
.field private static final ALPHABET:[C

.field static final ALPHABET_STRING:Ljava/lang/String; = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

.field private static final ASTERISK_ENCODING:I

.field static final CHARACTER_ENCODINGS:[I


# instance fields
.field private final counters:[I

.field private final decodeRowResult:Ljava/lang/StringBuilder;

.field private final extendedMode:Z

.field private final usingCheckDigit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/Code39Reader;->ALPHABET:[C

    const/16 v0, 0x2c

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    sget-object v0, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    const/16 v1, 0x27

    aget v0, v0, v1

    sput v0, Lcom/google/zxing/oned/Code39Reader;->ASTERISK_ENCODING:I

    return-void

    :array_0
    .array-data 4
        0x34
        0x121
        0x61
        0x160
        0x31
        0x130
        0x70
        0x25
        0x124
        0x64
        0x109
        0x49
        0x148
        0x19
        0x118
        0x58
        0xd
        0x10c
        0x4c
        0x1c
        0x103
        0x43
        0x142
        0x13
        0x112
        0x52
        0x7
        0x106
        0x46
        0x16
        0x181
        0xc1
        0x1c0
        0x91
        0x190
        0xd0
        0x85
        0x184
        0xc4
        0x94
        0xa8
        0xa2
        0x8a
        0x2a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/zxing/oned/Code39Reader;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/zxing/oned/Code39Reader;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 2

    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    iput-boolean p1, p0, Lcom/google/zxing/oned/Code39Reader;->usingCheckDigit:Z

    iput-boolean p2, p0, Lcom/google/zxing/oned/Code39Reader;->extendedMode:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/Code39Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    const/16 v0, 0x9

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/Code39Reader;->counters:[I

    return-void
.end method

.method private static decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_c

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    const/16 v5, 0x25

    const/16 v6, 0x24

    const/16 v7, 0x2b

    if-eq v3, v7, :cond_1

    if-eq v3, v6, :cond_1

    if-eq v3, v5, :cond_1

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_1
    :goto_1
    add-int/lit8 v8, v2, 0x1

    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/4 v9, 0x0

    const/16 v10, 0x5a

    const/16 v11, 0x41

    if-eq v3, v6, :cond_a

    if-eq v3, v5, :cond_7

    if-eq v3, v7, :cond_5

    if-eq v3, v4, :cond_2

    goto :goto_2

    :cond_2
    if-lt v8, v11, :cond_3

    const/16 v4, 0x4f

    if-gt v8, v4, :cond_3

    add-int/lit8 v4, v8, -0x20

    int-to-char v9, v4

    goto :goto_2

    :cond_3
    if-ne v8, v10, :cond_4

    const/16 v9, 0x3a

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    :cond_5
    if-lt v8, v11, :cond_6

    if-gt v8, v10, :cond_6

    add-int/lit8 v4, v8, 0x20

    int-to-char v9, v4

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    :cond_7
    if-lt v8, v11, :cond_8

    const/16 v4, 0x45

    if-gt v8, v4, :cond_8

    add-int/lit8 v4, v8, -0x26

    int-to-char v9, v4

    goto :goto_2

    :cond_8
    const/16 v4, 0x46

    if-lt v8, v4, :cond_9

    const/16 v4, 0x57

    if-gt v8, v4, :cond_9

    add-int/lit8 v4, v8, -0xb

    int-to-char v9, v4

    goto :goto_2

    :cond_9
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    :cond_a
    if-lt v8, v11, :cond_b

    if-gt v8, v10, :cond_b

    add-int/lit8 v4, v8, -0x40

    int-to-char v9, v4

    :goto_2
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    nop

    add-int/lit8 v2, v2, 0x1

    nop

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_b
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    :cond_c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static findAsteriskPattern(Lcom/google/zxing/common/BitArray;[I)[I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v2

    const/4 v3, 0x0

    move v4, v2

    const/4 v5, 0x0

    array-length v6, p1

    move v7, v2

    :goto_0
    if-ge v7, v0, :cond_4

    invoke-virtual {p0, v7}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v8

    xor-int/2addr v8, v5

    const/4 v9, 0x1

    if-eqz v8, :cond_0

    aget v8, p1, v3

    add-int/2addr v8, v9

    aput v8, p1, v3

    goto :goto_3

    :cond_0
    add-int/lit8 v8, v6, -0x1

    if-ne v3, v8, :cond_2

    invoke-static {p1}, Lcom/google/zxing/oned/Code39Reader;->toNarrowWidePattern([I)I

    move-result v8

    sget v10, Lcom/google/zxing/oned/Code39Reader;->ASTERISK_ENCODING:I

    const/4 v11, 0x2

    if-ne v8, v10, :cond_1

    sub-int v8, v7, v4

    shr-int/2addr v8, v9

    sub-int v8, v4, v8

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {p0, v8, v4, v1}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v8

    if-eqz v8, :cond_1

    new-array v8, v11, [I

    aput v4, v8, v1

    aput v7, v8, v9

    return-object v8

    :cond_1
    aget v8, p1, v1

    aget v10, p1, v9

    add-int/2addr v8, v10

    add-int/2addr v4, v8

    add-int/lit8 v8, v6, -0x2

    invoke-static {p1, v11, p1, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v8, v6, -0x2

    aput v1, p1, v8

    add-int/lit8 v8, v6, -0x1

    aput v1, p1, v8

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    :goto_1
    aput v9, p1, v3

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    move v9, v1

    :goto_2
    move v5, v9

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method

.method private static patternToChar(I)C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget v1, v1, v0

    if-ne v1, p0, :cond_0

    sget-object v1, Lcom/google/zxing/oned/Code39Reader;->ALPHABET:[C

    aget-char v1, v1, v0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method private static toNarrowWidePattern([I)I
    .locals 10

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    const v2, 0x7fffffff

    move-object v3, p0

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    aget v6, v3, v5

    if-ge v6, v2, :cond_0

    if-le v6, v1, :cond_0

    move v2, v6

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v0, :cond_3

    aget v7, p0, v6

    if-le v7, v1, :cond_2

    add-int/lit8 v8, v0, -0x1

    sub-int/2addr v8, v6

    const/4 v9, 0x1

    shl-int v8, v9, v8

    or-int/2addr v5, v8

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v4, v7

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x3

    const/4 v7, -0x1

    if-ne v3, v6, :cond_6

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v0, :cond_5

    if-lez v3, :cond_5

    aget v8, p0, v6

    if-le v8, v1, :cond_4

    add-int/lit8 v3, v3, -0x1

    shl-int/lit8 v9, v8, 0x1

    if-lt v9, v4, :cond_4

    return v7

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    return v5

    :cond_6
    if-gt v3, v6, :cond_7

    return v7

    :cond_7
    goto :goto_0
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 20
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

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/google/zxing/oned/Code39Reader;->counters:[I

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    iget-object v5, v0, Lcom/google/zxing/oned/Code39Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-static {v2, v3}, Lcom/google/zxing/oned/Code39Reader;->findAsteriskPattern(Lcom/google/zxing/common/BitArray;[I)[I

    move-result-object v6

    const/4 v7, 0x1

    aget v8, v6, v7

    invoke-virtual {v2, v8}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v9

    :goto_0
    invoke-static {v2, v8, v3}, Lcom/google/zxing/oned/Code39Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    invoke-static {v3}, Lcom/google/zxing/oned/Code39Reader;->toNarrowWidePattern([I)I

    move-result v10

    if-ltz v10, :cond_a

    invoke-static {v10}, Lcom/google/zxing/oned/Code39Reader;->patternToChar(I)C

    move-result v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v12, v8

    move-object v13, v3

    array-length v14, v13

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_0

    aget v16, v13, v15

    add-int v8, v8, v16

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v8}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v8

    const/16 v10, 0x2a

    if-ne v11, v10, :cond_9

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    sub-int/2addr v10, v7

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v10, 0x0

    move-object v13, v3

    array-length v14, v13

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v14, :cond_1

    aget v16, v13, v15

    add-int v10, v10, v16

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_1
    sub-int v13, v8, v12

    sub-int/2addr v13, v10

    if-eq v8, v9, :cond_3

    shr-int/lit8 v14, v13, 0x1

    if-lt v14, v10, :cond_2

    goto :goto_3

    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v4

    throw v4

    :cond_3
    :goto_3
    iget-boolean v14, v0, Lcom/google/zxing/oned/Code39Reader;->usingCheckDigit:Z

    if-eqz v14, :cond_6

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    sub-int/2addr v14, v7

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v19, v16

    move/from16 v16, v15

    move/from16 v15, v19

    :goto_4
    if-ge v15, v14, :cond_4

    iget-object v4, v0, Lcom/google/zxing/oned/Code39Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const-string v7, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

    invoke-virtual {v7, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int v16, v16, v4

    add-int/lit8 v15, v15, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    sget-object v7, Lcom/google/zxing/oned/Code39Reader;->ALPHABET:[C

    rem-int/lit8 v15, v16, 0x2b

    aget-char v7, v7, v15

    if-ne v4, v7, :cond_5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_5

    :cond_5
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v4

    throw v4

    :cond_6
    :goto_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_8

    iget-boolean v4, v0, Lcom/google/zxing/oned/Code39Reader;->extendedMode:Z

    if-eqz v4, :cond_7

    invoke-static {v5}, Lcom/google/zxing/oned/Code39Reader;->decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_6
    const/4 v7, 0x1

    aget v14, v6, v7

    const/4 v7, 0x0

    aget v15, v6, v7

    add-int/2addr v14, v15

    int-to-float v7, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v7, v14

    add-int v15, v8, v12

    int-to-float v15, v15

    div-float/2addr v15, v14

    new-instance v14, Lcom/google/zxing/Result;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    new-instance v2, Lcom/google/zxing/ResultPoint;

    move-object/from16 v18, v3

    int-to-float v3, v1

    invoke-direct {v2, v7, v3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-instance v2, Lcom/google/zxing/ResultPoint;

    int-to-float v3, v1

    invoke-direct {v2, v15, v3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/16 v17, 0x1

    aput-object v2, v0, v17

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    const/4 v3, 0x0

    invoke-direct {v14, v4, v3, v0, v2}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v14

    :cond_8
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_9
    move-object/from16 v18, v3

    move v3, v4

    move/from16 v17, v7

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, v18

    goto/16 :goto_0

    :cond_a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method
