.class public final Lcom/google/zxing/oned/CodaBarWriter;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "CodaBarWriter.java"


# static fields
.field private static final ALT_START_END_CHARS:[C

.field private static final START_END_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    return-void

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
    .end array-data

    :array_1
    .array-data 2
        0x54s
        0x4es
        0x2as
        0x45s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;)[Z
    .locals 17

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_15

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    sget-object v5, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    invoke-static {v5, v2}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    invoke-static {v5, v3}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v1

    :goto_0
    sget-object v6, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    invoke-static {v6, v2}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    invoke-static {v6, v3}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v1

    :goto_1
    if-nez v5, :cond_3

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Codabar should start/end with "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    invoke-static {v7}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", or start/end with "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    invoke-static {v7}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_2
    const/16 v7, 0x14

    const/4 v8, 0x4

    new-array v8, v8, [C

    fill-array-data v8, :array_0

    const/4 v9, 0x1

    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v4

    if-ge v9, v10, :cond_7

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-eq v10, v11, :cond_6

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x24

    if-ne v10, v11, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v8, v10}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v10

    if-eqz v10, :cond_5

    add-int/lit8 v7, v7, 0xa

    goto :goto_5

    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot encode : \'"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v10, 0x27

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    :goto_4
    add-int/lit8 v7, v7, 0x9

    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v4

    add-int/2addr v7, v9

    new-array v9, v7, [Z

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v11, v12, :cond_14

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v12

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v13, v4

    if-ne v11, v13, :cond_c

    const/16 v13, 0x2a

    if-eq v12, v13, :cond_b

    const/16 v13, 0x45

    if-eq v12, v13, :cond_a

    const/16 v13, 0x4e

    if-eq v12, v13, :cond_9

    const/16 v13, 0x54

    if-eq v12, v13, :cond_8

    goto :goto_7

    :cond_8
    const/16 v12, 0x41

    goto :goto_7

    :cond_9
    const/16 v12, 0x42

    goto :goto_7

    :cond_a
    const/16 v12, 0x44

    goto :goto_7

    :cond_b
    const/16 v12, 0x43

    :cond_c
    :goto_7
    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_8
    sget-object v15, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    array-length v15, v15

    if-ge v14, v15, :cond_e

    sget-object v15, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    aget-char v15, v15, v14

    if-ne v12, v15, :cond_d

    sget-object v15, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    aget v13, v15, v14

    goto :goto_9

    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    :cond_e
    :goto_9
    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move v1, v15

    move v15, v14

    move v14, v10

    move/from16 v10, v16

    :goto_a
    const/4 v4, 0x7

    if-ge v10, v4, :cond_12

    aput-boolean v15, v9, v14

    add-int/lit8 v14, v14, 0x1

    rsub-int/lit8 v4, v10, 0x6

    shr-int v4, v13, v4

    const/4 v0, 0x1

    and-int/2addr v4, v0

    if-eqz v4, :cond_10

    if-ne v1, v0, :cond_f

    goto :goto_b

    :cond_f
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p1

    const/4 v4, 0x1

    goto :goto_a

    :cond_10
    :goto_b
    if-nez v15, :cond_11

    const/4 v0, 0x1

    goto :goto_c

    :cond_11
    const/4 v0, 0x0

    :goto_c
    move v15, v0

    add-int/lit8 v10, v10, 0x1

    const/4 v1, 0x0

    move-object/from16 v0, p1

    const/4 v4, 0x1

    goto :goto_a

    :cond_12
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    if-ge v11, v0, :cond_13

    const/4 v0, 0x0

    aput-boolean v0, v9, v14

    add-int/lit8 v14, v14, 0x1

    move v10, v14

    goto :goto_d

    :cond_13
    const/4 v0, 0x0

    move v10, v14

    :goto_d
    add-int/lit8 v11, v11, 0x1

    move v1, v0

    move-object/from16 v0, p1

    goto/16 :goto_6

    :cond_14
    return-object v9

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Codabar should start/end with start/stop symbols"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 2
        0x2fs
        0x3as
        0x2bs
        0x2es
    .end array-data
.end method
