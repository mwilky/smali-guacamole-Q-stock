.class public Lorg/bouncycastle/crypto/rtg/rtg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/rtg;


# static fields
.field protected static final BLOCK_SIZE:I = 0x8

.field private static final eza:[S

.field private static final fza:[I

.field private static final gza:[B

.field private static final hza:[B

.field private static final iza:[B

.field private static final jza:[I

.field private static final kza:[I

.field private static final lza:[I

.field private static final mza:[I

.field private static final nza:[I

.field private static final oza:[I

.field private static final pza:[I

.field private static final qza:[I


# instance fields
.field private Xya:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/rtg/rtg;->eza:[S

    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/crypto/rtg/rtg;->fza:[I

    const/16 v0, 0x38

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/bouncycastle/crypto/rtg/rtg;->gza:[B

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lorg/bouncycastle/crypto/rtg/rtg;->hza:[B

    const/16 v0, 0x30

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    sput-object v0, Lorg/bouncycastle/crypto/rtg/rtg;->iza:[B

    const/16 v0, 0x40

    new-array v1, v0, [I

    fill-array-data v1, :array_5

    sput-object v1, Lorg/bouncycastle/crypto/rtg/rtg;->jza:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_6

    sput-object v1, Lorg/bouncycastle/crypto/rtg/rtg;->kza:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_7

    sput-object v1, Lorg/bouncycastle/crypto/rtg/rtg;->lza:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_8

    sput-object v1, Lorg/bouncycastle/crypto/rtg/rtg;->mza:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_9

    sput-object v1, Lorg/bouncycastle/crypto/rtg/rtg;->nza:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_a

    sput-object v1, Lorg/bouncycastle/crypto/rtg/rtg;->oza:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_b

    sput-object v1, Lorg/bouncycastle/crypto/rtg/rtg;->pza:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_c

    sput-object v0, Lorg/bouncycastle/crypto/rtg/rtg;->qza:[I

    return-void

    :array_0
    .array-data 2
        0x80s
        0x40s
        0x20s
        0x10s
        0x8s
        0x4s
        0x2s
        0x1s
    .end array-data

    :array_1
    .array-data 4
        0x800000
        0x400000
        0x200000
        0x100000
        0x80000
        0x40000
        0x20000
        0x10000
        0x8000
        0x4000
        0x2000
        0x1000
        0x800
        0x400
        0x200
        0x100
        0x80
        0x40
        0x20
        0x10
        0x8
        0x4
        0x2
        0x1
    .end array-data

    :array_2
    .array-data 1
        0x38t
        0x30t
        0x28t
        0x20t
        0x18t
        0x10t
        0x8t
        0x0t
        0x39t
        0x31t
        0x29t
        0x21t
        0x19t
        0x11t
        0x9t
        0x1t
        0x3at
        0x32t
        0x2at
        0x22t
        0x1at
        0x12t
        0xat
        0x2t
        0x3bt
        0x33t
        0x2bt
        0x23t
        0x3et
        0x36t
        0x2et
        0x26t
        0x1et
        0x16t
        0xet
        0x6t
        0x3dt
        0x35t
        0x2dt
        0x25t
        0x1dt
        0x15t
        0xdt
        0x5t
        0x3ct
        0x34t
        0x2ct
        0x24t
        0x1ct
        0x14t
        0xct
        0x4t
        0x1bt
        0x13t
        0xbt
        0x3t
    .end array-data

    :array_3
    .array-data 1
        0x1t
        0x2t
        0x4t
        0x6t
        0x8t
        0xat
        0xct
        0xet
        0xft
        0x11t
        0x13t
        0x15t
        0x17t
        0x19t
        0x1bt
        0x1ct
    .end array-data

    :array_4
    .array-data 1
        0xdt
        0x10t
        0xat
        0x17t
        0x0t
        0x4t
        0x2t
        0x1bt
        0xet
        0x5t
        0x14t
        0x9t
        0x16t
        0x12t
        0xbt
        0x3t
        0x19t
        0x7t
        0xft
        0x6t
        0x1at
        0x13t
        0xct
        0x1t
        0x28t
        0x33t
        0x1et
        0x24t
        0x2et
        0x36t
        0x1dt
        0x27t
        0x32t
        0x2ct
        0x20t
        0x2ft
        0x2bt
        0x30t
        0x26t
        0x37t
        0x21t
        0x34t
        0x2dt
        0x29t
        0x31t
        0x23t
        0x1ct
        0x1ft
    .end array-data

    :array_5
    .array-data 4
        0x1010400
        0x0
        0x10000
        0x1010404
        0x1010004
        0x10404
        0x4
        0x10000
        0x400
        0x1010400
        0x1010404
        0x400
        0x1000404
        0x1010004
        0x1000000
        0x4
        0x404
        0x1000400
        0x1000400
        0x10400
        0x10400
        0x1010000
        0x1010000
        0x1000404
        0x10004
        0x1000004
        0x1000004
        0x10004
        0x0
        0x404
        0x10404
        0x1000000
        0x10000
        0x1010404
        0x4
        0x1010000
        0x1010400
        0x1000000
        0x1000000
        0x400
        0x1010004
        0x10000
        0x10400
        0x1000004
        0x400
        0x4
        0x1000404
        0x10404
        0x1010404
        0x10004
        0x1010000
        0x1000404
        0x1000004
        0x404
        0x10404
        0x1010400
        0x404
        0x1000400
        0x1000400
        0x0
        0x10004
        0x10400
        0x0
        0x1010004
    .end array-data

    :array_6
    .array-data 4
        -0x7fef7fe0
        -0x7fff8000
        0x8000
        0x108020
        0x100000
        0x20
        -0x7fefffe0
        -0x7fff7fe0
        -0x7fffffe0
        -0x7fef7fe0
        -0x7fef8000
        -0x80000000
        -0x7fff8000
        0x100000
        0x20
        -0x7fefffe0
        0x108000
        0x100020
        -0x7fff7fe0
        0x0
        -0x80000000
        0x8000
        0x108020
        -0x7ff00000
        0x100020
        -0x7fffffe0
        0x0
        0x108000
        0x8020
        -0x7fef8000
        -0x7ff00000
        0x8020
        0x0
        0x108020
        -0x7fefffe0
        0x100000
        -0x7fff7fe0
        -0x7ff00000
        -0x7fef8000
        0x8000
        -0x7ff00000
        -0x7fff8000
        0x20
        -0x7fef7fe0
        0x108020
        0x20
        0x8000
        -0x80000000
        0x8020
        -0x7fef8000
        0x100000
        -0x7fffffe0
        0x100020
        -0x7fff7fe0
        -0x7fffffe0
        0x100020
        0x108000
        0x0
        -0x7fff8000
        0x8020
        -0x80000000
        -0x7fefffe0
        -0x7fef7fe0
        0x108000
    .end array-data

    :array_7
    .array-data 4
        0x208
        0x8020200
        0x0
        0x8020008
        0x8000200
        0x0
        0x20208
        0x8000200
        0x20008
        0x8000008
        0x8000008
        0x20000
        0x8020208
        0x20008
        0x8020000
        0x208
        0x8000000
        0x8
        0x8020200
        0x200
        0x20200
        0x8020000
        0x8020008
        0x20208
        0x8000208
        0x20200
        0x20000
        0x8000208
        0x8
        0x8020208
        0x200
        0x8000000
        0x8020200
        0x8000000
        0x20008
        0x208
        0x20000
        0x8020200
        0x8000200
        0x0
        0x200
        0x20008
        0x8020208
        0x8000200
        0x8000008
        0x200
        0x0
        0x8020008
        0x8000208
        0x20000
        0x8000000
        0x8020208
        0x8
        0x20208
        0x20200
        0x8000008
        0x8020000
        0x8000208
        0x208
        0x8020000
        0x20208
        0x8
        0x8020008
        0x20200
    .end array-data

    :array_8
    .array-data 4
        0x802001
        0x2081
        0x2081
        0x80
        0x802080
        0x800081
        0x800001
        0x2001
        0x0
        0x802000
        0x802000
        0x802081
        0x81
        0x0
        0x800080
        0x800001
        0x1
        0x2000
        0x800000
        0x802001
        0x80
        0x800000
        0x2001
        0x2080
        0x800081
        0x1
        0x2080
        0x800080
        0x2000
        0x802080
        0x802081
        0x81
        0x800080
        0x800001
        0x802000
        0x802081
        0x81
        0x0
        0x0
        0x802000
        0x2080
        0x800080
        0x800081
        0x1
        0x802001
        0x2081
        0x2081
        0x80
        0x802081
        0x81
        0x1
        0x2000
        0x800001
        0x2001
        0x802080
        0x800081
        0x2001
        0x2080
        0x800000
        0x802001
        0x80
        0x800000
        0x2000
        0x802080
    .end array-data

    :array_9
    .array-data 4
        0x100
        0x2080100
        0x2080000
        0x42000100    # 32.000977f
        0x80000
        0x100
        0x40000000    # 2.0f
        0x2080000
        0x40080100
        0x80000
        0x2000100
        0x40080100
        0x42000100    # 32.000977f
        0x42080000    # 34.0f
        0x80100
        0x40000000    # 2.0f
        0x2000000
        0x40080000    # 2.125f
        0x40080000    # 2.125f
        0x0
        0x40000100    # 2.000061f
        0x42080100    # 34.000977f
        0x42080100    # 34.000977f
        0x2000100
        0x42080000    # 34.0f
        0x40000100    # 2.000061f
        0x0
        0x42000000    # 32.0f
        0x2080100
        0x2000000
        0x42000000    # 32.0f
        0x80100
        0x80000
        0x42000100    # 32.000977f
        0x100
        0x2000000
        0x40000000    # 2.0f
        0x2080000
        0x42000100    # 32.000977f
        0x40080100
        0x2000100
        0x40000000    # 2.0f
        0x42080000    # 34.0f
        0x2080100
        0x40080100
        0x100
        0x2000000
        0x42080000    # 34.0f
        0x42080100    # 34.000977f
        0x80100
        0x42000000    # 32.0f
        0x42080100    # 34.000977f
        0x2080000
        0x0
        0x40080000    # 2.125f
        0x42000000    # 32.0f
        0x80100
        0x2000100
        0x40000100    # 2.000061f
        0x80000
        0x0
        0x40080000    # 2.125f
        0x2080100
        0x40000100    # 2.000061f
    .end array-data

    :array_a
    .array-data 4
        0x20000010
        0x20400000
        0x4000
        0x20404010
        0x20400000
        0x10
        0x20404010
        0x400000
        0x20004000
        0x404010
        0x400000
        0x20000010
        0x400010
        0x20004000
        0x20000000
        0x4010
        0x0
        0x400010
        0x20004010
        0x4000
        0x404000
        0x20004010
        0x10
        0x20400010
        0x20400010
        0x0
        0x404010
        0x20404000
        0x4010
        0x404000
        0x20404000
        0x20000000
        0x20004000
        0x10
        0x20400010
        0x404000
        0x20404010
        0x400000
        0x4010
        0x20000010
        0x400000
        0x20004000
        0x20000000
        0x4010
        0x20000010
        0x20404010
        0x404000
        0x20400000
        0x404010
        0x20404000
        0x0
        0x20400010
        0x10
        0x4000
        0x20400000
        0x404010
        0x4000
        0x400010
        0x20004010
        0x0
        0x20404000
        0x20000000
        0x400010
        0x20004010
    .end array-data

    :array_b
    .array-data 4
        0x200000
        0x4200002
        0x4000802    # 1.5050005E-36f
        0x0
        0x800
        0x4000802    # 1.5050005E-36f
        0x200802
        0x4200800
        0x4200802
        0x200000
        0x0
        0x4000002
        0x2
        0x4000000
        0x4200002
        0x802
        0x4000800    # 1.5050001E-36f
        0x200802
        0x200002
        0x4000800    # 1.5050001E-36f
        0x4000002
        0x4200000
        0x4200800
        0x200002
        0x4200000
        0x800
        0x802
        0x4200802
        0x200800
        0x2
        0x4000000
        0x200800
        0x4000000
        0x200800
        0x200000
        0x4000802    # 1.5050005E-36f
        0x4000802    # 1.5050005E-36f
        0x4200002
        0x4200002
        0x2
        0x200002
        0x4000000
        0x4000800    # 1.5050001E-36f
        0x200000
        0x4200800
        0x802
        0x200802
        0x4200800
        0x802
        0x4000002
        0x4200802
        0x4200000
        0x200800
        0x0
        0x2
        0x4200802
        0x0
        0x200802
        0x4200000
        0x800
        0x4000002
        0x4000800    # 1.5050001E-36f
        0x800
        0x200002
    .end array-data

    :array_c
    .array-data 4
        0x10001040
        0x1000
        0x40000
        0x10041040
        0x10000000
        0x10001040
        0x40
        0x10000000
        0x40040
        0x10040000
        0x10041040
        0x41000
        0x10041000
        0x41040
        0x1000
        0x40
        0x10040000
        0x10000040
        0x10001000
        0x1040
        0x41000
        0x40040
        0x10040040
        0x10041000
        0x1040
        0x0
        0x0
        0x10040040
        0x10000040
        0x10001000
        0x41040
        0x40000
        0x41040
        0x40000
        0x10041000
        0x1000
        0x40
        0x10040040
        0x1000
        0x41040
        0x10001000
        0x40
        0x10000040
        0x10040000
        0x10040040
        0x10000000
        0x40000
        0x10001040
        0x0
        0x10041040
        0x40040
        0x10000040
        0x10040000
        0x10001000
        0x10001040
        0x0
        0x10041040
        0x41000
        0x41000
        0x1040
        0x1040
        0x40040
        0x10000000
        0x10041000
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/rtg/rtg;->Xya:[I

    return-void
.end method


# virtual methods
.method public getBlockSize()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public vju()Ljava/lang/String;
    .locals 0

    const-string p0, "DES"

    return-object p0
.end method

.method public zta([BI[BI)I
    .locals 6

    iget-object v1, p0, Lorg/bouncycastle/crypto/rtg/rtg;->Xya:[I

    if-eqz v1, :cond_2

    add-int/lit8 v0, p2, 0x8

    array-length v2, p1

    if-gt v0, v2, :cond_1

    add-int/lit8 v0, p4, 0x8

    array-length v2, p3

    if-gt v0, v2, :cond_0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/rtg/rtg;->zta([I[BI[BI)V

    const/16 p0, 0x8

    return p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p1, "output buffer too short"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p1, "input buffer too short"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "DES engine not initialised"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public zta(ZLorg/bouncycastle/crypto/kth;)V
    .locals 2

    instance-of v0, p2, Lorg/bouncycastle/crypto/wtn/cjf;

    if-eqz v0, :cond_1

    check-cast p2, Lorg/bouncycastle/crypto/wtn/cjf;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/cjf;->getKey()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/cjf;->getKey()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/rtg/rtg;->zta(Z[B)[I

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/rtg/rtg;->Xya:[I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DES key too long - should be 8 bytes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid parameter passed to DES init - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected zta([I[BI[BI)V
    .locals 22

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-static/range {p2 .. p3}, Lorg/bouncycastle/util/igw;->igw([BI)I

    move-result v2

    add-int/lit8 v3, p3, 0x4

    move-object/from16 v4, p2

    invoke-static {v4, v3}, Lorg/bouncycastle/util/igw;->igw([BI)I

    move-result v3

    ushr-int/lit8 v4, v2, 0x4

    xor-int/2addr v4, v3

    const v5, 0xf0f0f0f

    and-int/2addr v4, v5

    xor-int/2addr v3, v4

    shl-int/lit8 v4, v4, 0x4

    xor-int/2addr v2, v4

    ushr-int/lit8 v4, v2, 0x10

    xor-int/2addr v4, v3

    const v6, 0xffff

    and-int/2addr v4, v6

    xor-int/2addr v3, v4

    shl-int/lit8 v4, v4, 0x10

    xor-int/2addr v2, v4

    ushr-int/lit8 v4, v3, 0x2

    xor-int/2addr v4, v2

    const v7, 0x33333333

    and-int/2addr v4, v7

    xor-int/2addr v2, v4

    shl-int/lit8 v4, v4, 0x2

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v3, 0x8

    xor-int/2addr v4, v2

    const v8, 0xff00ff

    and-int/2addr v4, v8

    xor-int/2addr v2, v4

    const/16 v9, 0x8

    shl-int/2addr v4, v9

    xor-int/2addr v3, v4

    shl-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v3, v3, 0x1f

    or-int/2addr v3, v4

    xor-int v4, v2, v3

    const v10, -0x55555556

    and-int/2addr v4, v10

    xor-int/2addr v2, v4

    xor-int/2addr v3, v4

    shl-int/lit8 v4, v2, 0x1

    ushr-int/lit8 v2, v2, 0x1f

    or-int/2addr v2, v4

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v9, :cond_0

    shl-int/lit8 v11, v3, 0x1c

    ushr-int/lit8 v12, v3, 0x4

    or-int/2addr v11, v12

    mul-int/lit8 v12, v4, 0x4

    add-int/lit8 v13, v12, 0x0

    aget v13, p1, v13

    xor-int/2addr v11, v13

    sget-object v13, Lorg/bouncycastle/crypto/rtg/rtg;->pza:[I

    and-int/lit8 v14, v11, 0x3f

    aget v14, v13, v14

    sget-object v15, Lorg/bouncycastle/crypto/rtg/rtg;->nza:[I

    ushr-int/lit8 v16, v11, 0x8

    and-int/lit8 v16, v16, 0x3f

    aget v16, v15, v16

    or-int v14, v14, v16

    sget-object v16, Lorg/bouncycastle/crypto/rtg/rtg;->lza:[I

    ushr-int/lit8 v17, v11, 0x10

    and-int/lit8 v17, v17, 0x3f

    aget v17, v16, v17

    or-int v14, v14, v17

    sget-object v17, Lorg/bouncycastle/crypto/rtg/rtg;->jza:[I

    ushr-int/lit8 v11, v11, 0x18

    and-int/lit8 v11, v11, 0x3f

    aget v11, v17, v11

    or-int/2addr v11, v14

    add-int/lit8 v14, v12, 0x1

    aget v14, p1, v14

    xor-int/2addr v14, v3

    sget-object v18, Lorg/bouncycastle/crypto/rtg/rtg;->qza:[I

    and-int/lit8 v19, v14, 0x3f

    aget v19, v18, v19

    or-int v11, v11, v19

    sget-object v19, Lorg/bouncycastle/crypto/rtg/rtg;->oza:[I

    ushr-int/lit8 v20, v14, 0x8

    and-int/lit8 v20, v20, 0x3f

    aget v20, v19, v20

    or-int v11, v11, v20

    sget-object v20, Lorg/bouncycastle/crypto/rtg/rtg;->mza:[I

    ushr-int/lit8 v21, v14, 0x10

    and-int/lit8 v21, v21, 0x3f

    aget v21, v20, v21

    or-int v11, v11, v21

    sget-object v21, Lorg/bouncycastle/crypto/rtg/rtg;->kza:[I

    ushr-int/lit8 v14, v14, 0x18

    and-int/lit8 v14, v14, 0x3f

    aget v14, v21, v14

    or-int/2addr v11, v14

    xor-int/2addr v2, v11

    shl-int/lit8 v11, v2, 0x1c

    ushr-int/lit8 v14, v2, 0x4

    or-int/2addr v11, v14

    add-int/lit8 v14, v12, 0x2

    aget v14, p1, v14

    xor-int/2addr v11, v14

    and-int/lit8 v14, v11, 0x3f

    aget v13, v13, v14

    ushr-int/lit8 v14, v11, 0x8

    and-int/lit8 v14, v14, 0x3f

    aget v14, v15, v14

    or-int/2addr v13, v14

    ushr-int/lit8 v14, v11, 0x10

    and-int/lit8 v14, v14, 0x3f

    aget v14, v16, v14

    or-int/2addr v13, v14

    ushr-int/lit8 v11, v11, 0x18

    and-int/lit8 v11, v11, 0x3f

    aget v11, v17, v11

    or-int/2addr v11, v13

    add-int/lit8 v12, v12, 0x3

    aget v12, p1, v12

    xor-int/2addr v12, v2

    and-int/lit8 v13, v12, 0x3f

    aget v13, v18, v13

    or-int/2addr v11, v13

    ushr-int/lit8 v13, v12, 0x8

    and-int/lit8 v13, v13, 0x3f

    aget v13, v19, v13

    or-int/2addr v11, v13

    ushr-int/lit8 v13, v12, 0x10

    and-int/lit8 v13, v13, 0x3f

    aget v13, v20, v13

    or-int/2addr v11, v13

    ushr-int/lit8 v12, v12, 0x18

    and-int/lit8 v12, v12, 0x3f

    aget v12, v21, v12

    or-int/2addr v11, v12

    xor-int/2addr v3, v11

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_0
    shl-int/lit8 v4, v3, 0x1f

    ushr-int/lit8 v3, v3, 0x1

    or-int/2addr v3, v4

    xor-int v4, v2, v3

    and-int/2addr v4, v10

    xor-int/2addr v2, v4

    xor-int/2addr v3, v4

    shl-int/lit8 v4, v2, 0x1f

    ushr-int/lit8 v2, v2, 0x1

    or-int/2addr v2, v4

    ushr-int/lit8 v4, v2, 0x8

    xor-int/2addr v4, v3

    and-int/2addr v4, v8

    xor-int/2addr v3, v4

    shl-int/2addr v4, v9

    xor-int/2addr v2, v4

    ushr-int/lit8 v4, v2, 0x2

    xor-int/2addr v4, v3

    and-int/2addr v4, v7

    xor-int/2addr v3, v4

    shl-int/lit8 v4, v4, 0x2

    xor-int/2addr v2, v4

    ushr-int/lit8 v4, v3, 0x10

    xor-int/2addr v4, v2

    and-int/2addr v4, v6

    xor-int/2addr v2, v4

    shl-int/lit8 v4, v4, 0x10

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v3, 0x4

    xor-int/2addr v4, v2

    and-int/2addr v4, v5

    xor-int/2addr v2, v4

    shl-int/lit8 v4, v4, 0x4

    xor-int/2addr v3, v4

    invoke-static {v3, v0, v1}, Lorg/bouncycastle/util/igw;->you(I[BI)V

    add-int/lit8 v1, v1, 0x4

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/util/igw;->you(I[BI)V

    return-void
.end method

.method protected zta(Z[B)[I
    .locals 11

    const/16 p0, 0x20

    new-array v0, p0, [I

    const/16 v1, 0x38

    new-array v2, v1, [Z

    new-array v3, v1, [Z

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v1, :cond_1

    sget-object v7, Lorg/bouncycastle/crypto/rtg/rtg;->gza:[B

    aget-byte v7, v7, v5

    ushr-int/lit8 v8, v7, 0x3

    aget-byte v8, p2, v8

    sget-object v9, Lorg/bouncycastle/crypto/rtg/rtg;->eza:[S

    and-int/lit8 v7, v7, 0x7

    aget-short v7, v9, v7

    and-int/2addr v7, v8

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    move v6, v4

    :goto_1
    aput-boolean v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move p2, v4

    :goto_2
    const/16 v5, 0x10

    if-ge p2, v5, :cond_a

    if-eqz p1, :cond_2

    shl-int/lit8 v5, p2, 0x1

    goto :goto_3

    :cond_2
    rsub-int/lit8 v5, p2, 0xf

    shl-int/2addr v5, v6

    :goto_3
    add-int/lit8 v7, v5, 0x1

    aput v4, v0, v7

    aput v4, v0, v5

    move v8, v4

    :goto_4
    const/16 v9, 0x1c

    if-ge v8, v9, :cond_4

    sget-object v10, Lorg/bouncycastle/crypto/rtg/rtg;->hza:[B

    aget-byte v10, v10, p2

    add-int/2addr v10, v8

    if-ge v10, v9, :cond_3

    aget-boolean v9, v2, v10

    aput-boolean v9, v3, v8

    goto :goto_5

    :cond_3
    add-int/lit8 v10, v10, -0x1c

    aget-boolean v9, v2, v10

    aput-boolean v9, v3, v8

    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_4
    :goto_6
    if-ge v9, v1, :cond_6

    sget-object v8, Lorg/bouncycastle/crypto/rtg/rtg;->hza:[B

    aget-byte v8, v8, p2

    add-int/2addr v8, v9

    if-ge v8, v1, :cond_5

    aget-boolean v8, v2, v8

    aput-boolean v8, v3, v9

    goto :goto_7

    :cond_5
    add-int/lit8 v8, v8, -0x1c

    aget-boolean v8, v2, v8

    aput-boolean v8, v3, v9

    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_6
    move v8, v4

    :goto_8
    const/16 v9, 0x18

    if-ge v8, v9, :cond_9

    sget-object v9, Lorg/bouncycastle/crypto/rtg/rtg;->iza:[B

    aget-byte v9, v9, v8

    aget-boolean v9, v3, v9

    if-eqz v9, :cond_7

    aget v9, v0, v5

    sget-object v10, Lorg/bouncycastle/crypto/rtg/rtg;->fza:[I

    aget v10, v10, v8

    or-int/2addr v9, v10

    aput v9, v0, v5

    :cond_7
    sget-object v9, Lorg/bouncycastle/crypto/rtg/rtg;->iza:[B

    add-int/lit8 v10, v8, 0x18

    aget-byte v9, v9, v10

    aget-boolean v9, v3, v9

    if-eqz v9, :cond_8

    aget v9, v0, v7

    sget-object v10, Lorg/bouncycastle/crypto/rtg/rtg;->fza:[I

    aget v10, v10, v8

    or-int/2addr v9, v10

    aput v9, v0, v7

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_9
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_a
    :goto_9
    if-eq v4, p0, :cond_b

    aget p1, v0, v4

    add-int/lit8 p2, v4, 0x1

    aget v1, v0, p2

    const/high16 v2, 0xfc0000

    and-int v3, p1, v2

    shl-int/lit8 v3, v3, 0x6

    and-int/lit16 v6, p1, 0xfc0

    shl-int/lit8 v6, v6, 0xa

    or-int/2addr v3, v6

    and-int/2addr v2, v1

    ushr-int/lit8 v2, v2, 0xa

    or-int/2addr v2, v3

    and-int/lit16 v3, v1, 0xfc0

    ushr-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    aput v2, v0, v4

    const v2, 0x3f000

    and-int v3, p1, v2

    shl-int/lit8 v3, v3, 0xc

    and-int/lit8 p1, p1, 0x3f

    shl-int/2addr p1, v5

    or-int/2addr p1, v3

    and-int/2addr v2, v1

    ushr-int/lit8 v2, v2, 0x4

    or-int/2addr p1, v2

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr p1, v1

    aput p1, v0, p2

    add-int/lit8 v4, v4, 0x2

    goto :goto_9

    :cond_b
    return-object v0
.end method
