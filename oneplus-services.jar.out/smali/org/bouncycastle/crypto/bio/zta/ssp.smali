.class public Lorg/bouncycastle/crypto/bio/zta/ssp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/bio/zta/sis;


# instance fields
.field private LAa:[B

.field private T:[[J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init([B)V
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/zta/ssp;->T:[[J

    const/16 v1, 0x100

    const/4 v2, 0x2

    if-nez v0, :cond_0

    filled-new-array {v1, v2}, [I

    move-result-object v0

    const-class v3, J

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, Lorg/bouncycastle/crypto/bio/zta/ssp;->T:[[J

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/zta/ssp;->LAa:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/util/zta;->sis([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :goto_0
    invoke-static {p1}, Lorg/bouncycastle/util/zta;->vdb([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/bio/zta/ssp;->LAa:[B

    iget-object p1, p0, Lorg/bouncycastle/crypto/bio/zta/ssp;->LAa:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/zta/ssp;->T:[[J

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/bio/zta/tsu;->zta([B[J)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/bio/zta/ssp;->T:[[J

    aget-object v0, p1, v3

    aget-object p1, p1, v3

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/bio/zta/tsu;->cno([J[J)V

    :goto_1
    if-ge v2, v1, :cond_2

    iget-object p1, p0, Lorg/bouncycastle/crypto/bio/zta/ssp;->T:[[J

    shr-int/lit8 v0, v2, 0x1

    aget-object v0, p1, v0

    aget-object p1, p1, v2

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/bio/zta/tsu;->you([J[J)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/bio/zta/ssp;->T:[[J

    aget-object v0, p1, v2

    aget-object v4, p1, v3

    add-int/lit8 v5, v2, 0x1

    aget-object p1, p1, v5

    invoke-static {v0, v4, p1}, Lorg/bouncycastle/crypto/bio/zta/tsu;->zta([J[J[J)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_2
    return-void
.end method

.method public tsu([B)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/bouncycastle/crypto/bio/zta/ssp;->T:[[J

    const/16 v3, 0xf

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    const/4 v6, 0x1

    aget-wide v7, v2, v6

    const/16 v2, 0xe

    :goto_0
    const/16 v9, 0x8

    if-ltz v2, :cond_0

    iget-object v10, v0, Lorg/bouncycastle/crypto/bio/zta/ssp;->T:[[J

    aget-byte v11, v1, v2

    and-int/lit16 v11, v11, 0xff

    aget-object v10, v10, v11

    const/16 v11, 0x38

    shl-long v12, v7, v11

    aget-wide v14, v10, v6

    ushr-long/2addr v7, v9

    shl-long v16, v4, v11

    or-long v7, v7, v16

    xor-long/2addr v7, v14

    aget-wide v10, v10, v3

    ushr-long/2addr v4, v9

    xor-long/2addr v4, v10

    xor-long/2addr v4, v12

    ushr-long v9, v12, v6

    xor-long/2addr v4, v9

    const/4 v9, 0x2

    ushr-long v9, v12, v9

    xor-long/2addr v4, v9

    const/4 v9, 0x7

    ushr-long v9, v12, v9

    xor-long/2addr v4, v9

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    invoke-static {v4, v5, v1, v3}, Lorg/bouncycastle/util/igw;->zta(J[BI)V

    invoke-static {v7, v8, v1, v9}, Lorg/bouncycastle/util/igw;->zta(J[BI)V

    return-void
.end method
