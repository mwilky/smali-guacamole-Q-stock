.class Lyou/zta/sis/zta/obl;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final WIDTH:B = 0x4t

.field private static final YDa:Ljava/math/BigInteger;

.field private static final ZDa:Ljava/math/BigInteger;

.field private static final _Da:Ljava/math/BigInteger;

.field public static final aEa:B = 0x10t

.field public static final bEa:[Lyou/zta/sis/zta/vju;

.field public static final cEa:[[B

.field public static final dEa:[Lyou/zta/sis/zta/vju;

.field public static final eEa:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 14

    sget-object v0, Lyou/zta/sis/zta/sis;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lyou/zta/sis/zta/obl;->YDa:Ljava/math/BigInteger;

    sget-object v0, Lyou/zta/sis/zta/sis;->Zna:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lyou/zta/sis/zta/obl;->ZDa:Ljava/math/BigInteger;

    sget-object v0, Lyou/zta/sis/zta/sis;->VCa:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lyou/zta/sis/zta/obl;->_Da:Ljava/math/BigInteger;

    const/16 v0, 0x9

    new-array v1, v0, [Lyou/zta/sis/zta/vju;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    new-instance v4, Lyou/zta/sis/zta/vju;

    sget-object v5, Lyou/zta/sis/zta/sis;->ONE:Ljava/math/BigInteger;

    sget-object v6, Lyou/zta/sis/zta/sis;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v4, v5, v6}, Lyou/zta/sis/zta/vju;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const/4 v4, 0x2

    aput-object v3, v1, v4

    new-instance v6, Lyou/zta/sis/zta/vju;

    sget-object v7, Lyou/zta/sis/zta/obl;->_Da:Ljava/math/BigInteger;

    sget-object v8, Lyou/zta/sis/zta/obl;->YDa:Ljava/math/BigInteger;

    invoke-direct {v6, v7, v8}, Lyou/zta/sis/zta/vju;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v7, 0x3

    aput-object v6, v1, v7

    const/4 v6, 0x4

    aput-object v3, v1, v6

    new-instance v8, Lyou/zta/sis/zta/vju;

    sget-object v9, Lyou/zta/sis/zta/obl;->YDa:Ljava/math/BigInteger;

    invoke-direct {v8, v9, v9}, Lyou/zta/sis/zta/vju;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v9, 0x5

    aput-object v8, v1, v9

    const/4 v8, 0x6

    aput-object v3, v1, v8

    new-instance v10, Lyou/zta/sis/zta/vju;

    sget-object v11, Lyou/zta/sis/zta/sis;->ONE:Ljava/math/BigInteger;

    sget-object v12, Lyou/zta/sis/zta/obl;->YDa:Ljava/math/BigInteger;

    invoke-direct {v10, v11, v12}, Lyou/zta/sis/zta/vju;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v11, 0x7

    aput-object v10, v1, v11

    const/16 v10, 0x8

    aput-object v3, v1, v10

    sput-object v1, Lyou/zta/sis/zta/obl;->bEa:[Lyou/zta/sis/zta/vju;

    new-array v1, v10, [[B

    aput-object v3, v1, v2

    new-array v12, v5, [B

    aput-byte v5, v12, v2

    aput-object v12, v1, v5

    aput-object v3, v1, v4

    new-array v12, v7, [B

    fill-array-data v12, :array_0

    aput-object v12, v1, v7

    aput-object v3, v1, v6

    new-array v12, v7, [B

    fill-array-data v12, :array_1

    aput-object v12, v1, v9

    aput-object v3, v1, v8

    new-array v12, v6, [B

    fill-array-data v12, :array_2

    aput-object v12, v1, v11

    sput-object v1, Lyou/zta/sis/zta/obl;->cEa:[[B

    new-array v0, v0, [Lyou/zta/sis/zta/vju;

    aput-object v3, v0, v2

    new-instance v1, Lyou/zta/sis/zta/vju;

    sget-object v12, Lyou/zta/sis/zta/sis;->ONE:Ljava/math/BigInteger;

    sget-object v13, Lyou/zta/sis/zta/sis;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v1, v12, v13}, Lyou/zta/sis/zta/vju;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v5

    aput-object v3, v0, v4

    new-instance v1, Lyou/zta/sis/zta/vju;

    sget-object v12, Lyou/zta/sis/zta/obl;->_Da:Ljava/math/BigInteger;

    sget-object v13, Lyou/zta/sis/zta/sis;->ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v12, v13}, Lyou/zta/sis/zta/vju;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v7

    aput-object v3, v0, v6

    new-instance v1, Lyou/zta/sis/zta/vju;

    sget-object v12, Lyou/zta/sis/zta/obl;->YDa:Ljava/math/BigInteger;

    sget-object v13, Lyou/zta/sis/zta/sis;->ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v12, v13}, Lyou/zta/sis/zta/vju;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v9

    aput-object v3, v0, v8

    new-instance v1, Lyou/zta/sis/zta/vju;

    sget-object v12, Lyou/zta/sis/zta/sis;->ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v12, v12}, Lyou/zta/sis/zta/vju;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v11

    aput-object v3, v0, v10

    sput-object v0, Lyou/zta/sis/zta/obl;->dEa:[Lyou/zta/sis/zta/vju;

    new-array v0, v10, [[B

    aput-object v3, v0, v2

    new-array v1, v5, [B

    aput-byte v5, v1, v2

    aput-object v1, v0, v5

    aput-object v3, v0, v4

    new-array v1, v7, [B

    fill-array-data v1, :array_3

    aput-object v1, v0, v7

    aput-object v3, v0, v6

    new-array v1, v7, [B

    fill-array-data v1, :array_4

    aput-object v1, v0, v9

    aput-object v3, v0, v8

    new-array v1, v6, [B

    fill-array-data v1, :array_5

    aput-object v1, v0, v11

    sput-object v0, Lyou/zta/sis/zta/obl;->eEa:[[B

    return-void

    :array_0
    .array-data 1
        -0x1t
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_2
    .array-data 1
        -0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_3
    .array-data 1
        -0x1t
        0x0t
        0x1t
    .end array-data

    :array_4
    .array-data 1
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_5
    .array-data 1
        -0x1t
        0x0t
        0x0t
        -0x1t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ra(I)B
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    int-to-byte p0, p0

    return p0
.end method

.method protected static ugm(Ljava/math/BigInteger;)I
    .locals 1

    if-eqz p0, :cond_1

    sget-object v0, Lyou/zta/sis/zta/sis;->Zna:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object v0, Lyou/zta/sis/zta/sis;->tOa:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "h (Cofactor) must be 2 or 4"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static you(BLyou/zta/sis/zta/vju;)[B
    .locals 9

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mu must be 1 or -1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lyou/zta/sis/zta/obl;->zta(BLyou/zta/sis/zta/vju;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x1e

    if-le v1, v2, :cond_2

    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    :cond_2
    const/16 v1, 0x22

    :goto_1
    new-array v1, v1, [B

    iget-object v2, p1, Lyou/zta/sis/zta/vju;->twa:Ljava/math/BigInteger;

    iget-object p1, p1, Lyou/zta/sis/zta/vju;->roa:Ljava/math/BigInteger;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_2
    sget-object v6, Lyou/zta/sis/zta/sis;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Lyou/zta/sis/zta/sis;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    add-int/2addr v4, v0

    new-array p0, v4, [B

    invoke-static {v1, v3, p0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :cond_4
    :goto_3
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v6

    if-eqz v6, :cond_6

    sget-object v4, Lyou/zta/sis/zta/sis;->Zna:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    sget-object v7, Lyou/zta/sis/zta/sis;->tOa:Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v5

    aget-byte v4, v1, v5

    if-ne v4, v0, :cond_5

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->clearBit(I)Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_4

    :cond_5
    sget-object v4, Lyou/zta/sis/zta/sis;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    :goto_4
    move v4, v5

    goto :goto_5

    :cond_6
    aput-byte v3, v1, v5

    :goto_5
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v6

    if-ne p0, v0, :cond_7

    invoke-virtual {p1, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_6

    :cond_7
    invoke-virtual {p1, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    :goto_6
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v2

    add-int/lit8 v5, v5, 0x1

    move-object v8, v2

    move-object v2, p1

    move-object p1, v8

    goto :goto_2
.end method

.method public static you(Lyou/zta/sis/zta/rtg$zta;)[Ljava/math/BigInteger;
    .locals 5

    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg$zta;->Pj()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg;->getFieldSize()I

    move-result v0

    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg;->getA()Lyou/zta/sis/zta/cno;

    move-result-object v1

    invoke-virtual {v1}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-static {v1}, Lyou/zta/sis/zta/obl;->ra(I)B

    move-result v2

    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg;->getCofactor()Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lyou/zta/sis/zta/obl;->ugm(Ljava/math/BigInteger;)I

    move-result p0

    add-int/lit8 v0, v0, 0x3

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Lyou/zta/sis/zta/obl;->zta(BIZ)[Ljava/math/BigInteger;

    move-result-object v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v0, v1

    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v0, v3

    :cond_0
    sget-object v2, Lyou/zta/sis/zta/sis;->ONE:Ljava/math/BigInteger;

    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v4, Lyou/zta/sis/zta/sis;->ONE:Ljava/math/BigInteger;

    aget-object v0, v0, v1

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/math/BigInteger;

    aput-object v2, v0, v1

    aput-object p0, v0, v3

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "si is defined for Koblitz curves only"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ywr(Lyou/zta/sis/zta/cno;)B
    .locals 0

    invoke-virtual {p0}, Lyou/zta/sis/zta/cno;->isZero()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    int-to-byte p0, p0

    return p0
.end method

.method public static zta(Lyou/zta/sis/zta/rtg$zta;)B
    .locals 1

    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg$zta;->Pj()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg;->getA()Lyou/zta/sis/zta/cno;

    move-result-object p0

    invoke-virtual {p0}, Lyou/zta/sis/zta/cno;->isZero()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No Koblitz curve (ABC), TNAF multiplication not possible"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zta(BI)Ljava/math/BigInteger;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    if-ne p0, v0, :cond_0

    const-wide/16 p0, 0x6

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 p0, 0xa

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lyou/zta/sis/zta/obl;->zta(BIZ)[Ljava/math/BigInteger;

    move-result-object p0

    sget-object v2, Lyou/zta/sis/zta/sis;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object p1

    aget-object v0, p0, v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v2, Lyou/zta/sis/zta/sis;->Zna:Ljava/math/BigInteger;

    aget-object p0, p0, v1

    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static zta(BLyou/zta/sis/zta/vju;)Ljava/math/BigInteger;
    .locals 3

    iget-object v0, p1, Lyou/zta/sis/zta/vju;->twa:Ljava/math/BigInteger;

    invoke-virtual {v0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p1, Lyou/zta/sis/zta/vju;->twa:Ljava/math/BigInteger;

    iget-object v2, p1, Lyou/zta/sis/zta/vju;->roa:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object p1, p1, Lyou/zta/sis/zta/vju;->roa:Ljava/math/BigInteger;

    invoke-virtual {p1, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p1

    if-ne p0, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    :goto_0
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_1

    :cond_0
    const/4 v2, -0x1

    if-ne p0, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    :goto_1
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mu must be 1 or -1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zta(Ljava/math/BigInteger;IB[Ljava/math/BigInteger;BB)Lyou/zta/sis/zta/vju;
    .locals 13

    move/from16 v0, p4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    aget-object v3, p3, v1

    aget-object v4, p3, v2

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_0

    :cond_0
    aget-object v3, p3, v1

    aget-object v4, p3, v2

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    :goto_0
    move-object v10, v3

    move v3, p1

    invoke-static {v0, p1, v2}, Lyou/zta/sis/zta/obl;->zta(BIZ)[Ljava/math/BigInteger;

    move-result-object v4

    aget-object v11, v4, v2

    aget-object v5, p3, v1

    move-object v4, p0

    move-object v6, v11

    move v7, p2

    move v8, p1

    move/from16 v9, p5

    invoke-static/range {v4 .. v9}, Lyou/zta/sis/zta/obl;->zta(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lyou/zta/sis/zta/zgw;

    move-result-object v12

    aget-object v5, p3, v2

    invoke-static/range {v4 .. v9}, Lyou/zta/sis/zta/obl;->zta(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lyou/zta/sis/zta/zgw;

    move-result-object v3

    invoke-static {v12, v3, v0}, Lyou/zta/sis/zta/obl;->zta(Lyou/zta/sis/zta/zgw;Lyou/zta/sis/zta/zgw;B)Lyou/zta/sis/zta/vju;

    move-result-object v0

    iget-object v3, v0, Lyou/zta/sis/zta/vju;->twa:Ljava/math/BigInteger;

    invoke-virtual {v10, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    const-wide/16 v4, 0x2

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    aget-object v5, p3, v2

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, v0, Lyou/zta/sis/zta/vju;->roa:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aget-object v2, p3, v2

    iget-object v4, v0, Lyou/zta/sis/zta/vju;->twa:Ljava/math/BigInteger;

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    aget-object v1, p3, v1

    iget-object v0, v0, Lyou/zta/sis/zta/vju;->roa:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v1, Lyou/zta/sis/zta/vju;

    invoke-direct {v1, v3, v0}, Lyou/zta/sis/zta/vju;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v1
.end method

.method public static zta(Lyou/zta/sis/zta/zgw;Lyou/zta/sis/zta/zgw;B)Lyou/zta/sis/zta/vju;
    .locals 7

    invoke-virtual {p0}, Lyou/zta/sis/zta/zgw;->getScale()I

    move-result v0

    invoke-virtual {p1}, Lyou/zta/sis/zta/zgw;->getScale()I

    move-result v1

    if-ne v1, v0, :cond_a

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mu must be 1 or -1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lyou/zta/sis/zta/zgw;->Bk()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lyou/zta/sis/zta/zgw;->Bk()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0, v2}, Lyou/zta/sis/zta/zgw;->subtract(Ljava/math/BigInteger;)Lyou/zta/sis/zta/zgw;

    move-result-object p0

    invoke-virtual {p1, v3}, Lyou/zta/sis/zta/zgw;->subtract(Ljava/math/BigInteger;)Lyou/zta/sis/zta/zgw;

    move-result-object p1

    invoke-virtual {p0, p0}, Lyou/zta/sis/zta/zgw;->zta(Lyou/zta/sis/zta/zgw;)Lyou/zta/sis/zta/zgw;

    move-result-object v4

    if-ne p2, v1, :cond_2

    invoke-virtual {v4, p1}, Lyou/zta/sis/zta/zgw;->zta(Lyou/zta/sis/zta/zgw;)Lyou/zta/sis/zta/zgw;

    move-result-object v4

    goto :goto_1

    :cond_2
    invoke-virtual {v4, p1}, Lyou/zta/sis/zta/zgw;->rtg(Lyou/zta/sis/zta/zgw;)Lyou/zta/sis/zta/zgw;

    move-result-object v4

    :goto_1
    invoke-virtual {p1, p1}, Lyou/zta/sis/zta/zgw;->zta(Lyou/zta/sis/zta/zgw;)Lyou/zta/sis/zta/zgw;

    move-result-object v5

    invoke-virtual {v5, p1}, Lyou/zta/sis/zta/zgw;->zta(Lyou/zta/sis/zta/zgw;)Lyou/zta/sis/zta/zgw;

    move-result-object v5

    invoke-virtual {v5, p1}, Lyou/zta/sis/zta/zgw;->zta(Lyou/zta/sis/zta/zgw;)Lyou/zta/sis/zta/zgw;

    move-result-object p1

    if-ne p2, v1, :cond_3

    invoke-virtual {p0, v5}, Lyou/zta/sis/zta/zgw;->rtg(Lyou/zta/sis/zta/zgw;)Lyou/zta/sis/zta/zgw;

    move-result-object v5

    invoke-virtual {p0, p1}, Lyou/zta/sis/zta/zgw;->zta(Lyou/zta/sis/zta/zgw;)Lyou/zta/sis/zta/zgw;

    move-result-object p0

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v5}, Lyou/zta/sis/zta/zgw;->zta(Lyou/zta/sis/zta/zgw;)Lyou/zta/sis/zta/zgw;

    move-result-object v5

    invoke-virtual {p0, p1}, Lyou/zta/sis/zta/zgw;->rtg(Lyou/zta/sis/zta/zgw;)Lyou/zta/sis/zta/zgw;

    move-result-object p0

    :goto_2
    sget-object p1, Lyou/zta/sis/zta/sis;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, p1}, Lyou/zta/sis/zta/zgw;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    const/4 v6, 0x0

    if-ltz p1, :cond_5

    sget-object p1, Lyou/zta/sis/zta/obl;->YDa:Ljava/math/BigInteger;

    invoke-virtual {v5, p1}, Lyou/zta/sis/zta/zgw;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-gez p1, :cond_4

    goto :goto_3

    :cond_4
    move p1, v6

    move v6, v1

    goto :goto_4

    :cond_5
    sget-object p1, Lyou/zta/sis/zta/sis;->Zna:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Lyou/zta/sis/zta/zgw;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-ltz p1, :cond_6

    :goto_3
    move p1, p2

    goto :goto_4

    :cond_6
    move p1, v6

    :goto_4
    sget-object v1, Lyou/zta/sis/zta/obl;->YDa:Ljava/math/BigInteger;

    invoke-virtual {v4, v1}, Lyou/zta/sis/zta/zgw;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_8

    sget-object p0, Lyou/zta/sis/zta/sis;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, p0}, Lyou/zta/sis/zta/zgw;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-ltz p0, :cond_7

    goto :goto_5

    :cond_7
    move v6, v0

    goto :goto_6

    :cond_8
    sget-object v0, Lyou/zta/sis/zta/obl;->ZDa:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Lyou/zta/sis/zta/zgw;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gez p0, :cond_9

    :goto_5
    neg-int p0, p2

    int-to-byte p1, p0

    :cond_9
    :goto_6
    int-to-long v0, v6

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    int-to-long p1, p1

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    new-instance p2, Lyou/zta/sis/zta/vju;

    invoke-direct {p2, p0, p1}, Lyou/zta/sis/zta/vju;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p2

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "lambda0 and lambda1 do not have same scale"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zta(Lyou/zta/sis/zta/wtn$zta;)Lyou/zta/sis/zta/wtn$zta;
    .locals 0

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn$zta;->vk()Lyou/zta/sis/zta/wtn$zta;

    move-result-object p0

    return-object p0
.end method

.method public static zta(Lyou/zta/sis/zta/wtn$zta;Ljava/math/BigInteger;)Lyou/zta/sis/zta/wtn$zta;
    .locals 7

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v0

    check-cast v0, Lyou/zta/sis/zta/rtg$zta;

    invoke-virtual {v0}, Lyou/zta/sis/zta/rtg;->getFieldSize()I

    move-result v2

    invoke-virtual {v0}, Lyou/zta/sis/zta/rtg;->getA()Lyou/zta/sis/zta/cno;

    move-result-object v1

    invoke-virtual {v1}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-static {v1}, Lyou/zta/sis/zta/obl;->ra(I)B

    move-result v5

    invoke-virtual {v0}, Lyou/zta/sis/zta/rtg$zta;->Oj()[Ljava/math/BigInteger;

    move-result-object v4

    int-to-byte v3, v1

    const/16 v6, 0xa

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lyou/zta/sis/zta/obl;->zta(Ljava/math/BigInteger;IB[Ljava/math/BigInteger;BB)Lyou/zta/sis/zta/vju;

    move-result-object p1

    invoke-static {p0, p1}, Lyou/zta/sis/zta/obl;->zta(Lyou/zta/sis/zta/wtn$zta;Lyou/zta/sis/zta/vju;)Lyou/zta/sis/zta/wtn$zta;

    move-result-object p0

    return-object p0
.end method

.method public static zta(Lyou/zta/sis/zta/wtn$zta;Lyou/zta/sis/zta/vju;)Lyou/zta/sis/zta/wtn$zta;
    .locals 1

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v0

    check-cast v0, Lyou/zta/sis/zta/rtg$zta;

    invoke-virtual {v0}, Lyou/zta/sis/zta/rtg;->getA()Lyou/zta/sis/zta/cno;

    move-result-object v0

    invoke-static {v0}, Lyou/zta/sis/zta/obl;->ywr(Lyou/zta/sis/zta/cno;)B

    move-result v0

    invoke-static {v0, p1}, Lyou/zta/sis/zta/obl;->you(BLyou/zta/sis/zta/vju;)[B

    move-result-object p1

    invoke-static {p0, p1}, Lyou/zta/sis/zta/obl;->zta(Lyou/zta/sis/zta/wtn$zta;[B)Lyou/zta/sis/zta/wtn$zta;

    move-result-object p0

    return-object p0
.end method

.method public static zta(Lyou/zta/sis/zta/wtn$zta;[B)Lyou/zta/sis/zta/wtn$zta;
    .locals 6

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v0

    invoke-virtual {v0}, Lyou/zta/sis/zta/rtg;->getInfinity()Lyou/zta/sis/zta/wtn;

    move-result-object v0

    check-cast v0, Lyou/zta/sis/zta/wtn$zta;

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->negate()Lyou/zta/sis/zta/wtn;

    move-result-object v1

    check-cast v1, Lyou/zta/sis/zta/wtn$zta;

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    move-object v4, v0

    move v0, v3

    :goto_0
    if-ltz v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    aget-byte v5, p1, v2

    if-eqz v5, :cond_1

    invoke-virtual {v4, v0}, Lyou/zta/sis/zta/wtn$zta;->oa(I)Lyou/zta/sis/zta/wtn$zta;

    move-result-object v0

    if-lez v5, :cond_0

    move-object v4, p0

    goto :goto_1

    :cond_0
    move-object v4, v1

    :goto_1
    invoke-virtual {v0, v4}, Lyou/zta/sis/zta/wtn;->kth(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    move-result-object v0

    check-cast v0, Lyou/zta/sis/zta/wtn$zta;

    move-object v4, v0

    move v0, v3

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    if-lez v0, :cond_3

    invoke-virtual {v4, v0}, Lyou/zta/sis/zta/wtn$zta;->oa(I)Lyou/zta/sis/zta/wtn$zta;

    move-result-object v4

    :cond_3
    return-object v4
.end method

.method public static zta(BLyou/zta/sis/zta/zgw;Lyou/zta/sis/zta/zgw;)Lyou/zta/sis/zta/zgw;
    .locals 2

    invoke-virtual {p1, p1}, Lyou/zta/sis/zta/zgw;->tsu(Lyou/zta/sis/zta/zgw;)Lyou/zta/sis/zta/zgw;

    move-result-object v0

    invoke-virtual {p1, p2}, Lyou/zta/sis/zta/zgw;->tsu(Lyou/zta/sis/zta/zgw;)Lyou/zta/sis/zta/zgw;

    move-result-object p1

    invoke-virtual {p2, p2}, Lyou/zta/sis/zta/zgw;->tsu(Lyou/zta/sis/zta/zgw;)Lyou/zta/sis/zta/zgw;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lyou/zta/sis/zta/zgw;->shiftLeft(I)Lyou/zta/sis/zta/zgw;

    move-result-object p2

    if-ne p0, v1, :cond_0

    invoke-virtual {v0, p1}, Lyou/zta/sis/zta/zgw;->zta(Lyou/zta/sis/zta/zgw;)Lyou/zta/sis/zta/zgw;

    move-result-object p0

    :goto_0
    invoke-virtual {p0, p2}, Lyou/zta/sis/zta/zgw;->zta(Lyou/zta/sis/zta/zgw;)Lyou/zta/sis/zta/zgw;

    move-result-object p0

    goto :goto_1

    :cond_0
    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    invoke-virtual {v0, p1}, Lyou/zta/sis/zta/zgw;->rtg(Lyou/zta/sis/zta/zgw;)Lyou/zta/sis/zta/zgw;

    move-result-object p0

    goto :goto_0

    :goto_1
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mu must be 1 or -1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zta(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lyou/zta/sis/zta/zgw;
    .locals 2

    add-int/lit8 v0, p4, 0x5

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p5

    sub-int v1, p4, v0

    add-int/lit8 v1, v1, -0x2

    add-int/2addr v1, p3

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    sub-int/2addr v0, p5

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lyou/zta/sis/zta/sis;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    :cond_0
    new-instance p0, Lyou/zta/sis/zta/zgw;

    invoke-direct {p0, p1, p5}, Lyou/zta/sis/zta/zgw;-><init>(Ljava/math/BigInteger;I)V

    return-object p0
.end method

.method public static zta(BLyou/zta/sis/zta/vju;BLjava/math/BigInteger;Ljava/math/BigInteger;[Lyou/zta/sis/zta/vju;)[B
    .locals 8

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mu must be 1 or -1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lyou/zta/sis/zta/obl;->zta(BLyou/zta/sis/zta/vju;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x1e

    if-le v1, v2, :cond_2

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v1, p2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, p2, 0x22

    :goto_1
    new-array p2, v1, [B

    invoke-virtual {p3, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p1, Lyou/zta/sis/zta/vju;->twa:Ljava/math/BigInteger;

    iget-object p1, p1, Lyou/zta/sis/zta/vju;->roa:Ljava/math/BigInteger;

    const/4 v3, 0x0

    move v4, v3

    :goto_2
    sget-object v5, Lyou/zta/sis/zta/sis;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lyou/zta/sis/zta/sis;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    return-object p2

    :cond_4
    :goto_3
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p1, p4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    if-ltz v6, :cond_5

    invoke-virtual {v5, p3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    :cond_5
    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, p2, v4

    if-gez v5, :cond_6

    neg-int v5, v5

    int-to-byte v5, v5

    move v6, v5

    move v5, v3

    goto :goto_4

    :cond_6
    move v6, v5

    move v5, v0

    :goto_4
    if-eqz v5, :cond_7

    aget-object v5, p5, v6

    iget-object v5, v5, Lyou/zta/sis/zta/vju;->twa:Ljava/math/BigInteger;

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    aget-object v5, p5, v6

    iget-object v5, v5, Lyou/zta/sis/zta/vju;->roa:Ljava/math/BigInteger;

    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_5

    :cond_7
    aget-object v5, p5, v6

    iget-object v5, v5, Lyou/zta/sis/zta/vju;->twa:Ljava/math/BigInteger;

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    aget-object v5, p5, v6

    iget-object v5, v5, Lyou/zta/sis/zta/vju;->roa:Ljava/math/BigInteger;

    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_5

    :cond_8
    aput-byte v3, p2, v4

    :goto_5
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    if-ne p0, v0, :cond_9

    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_6

    :cond_9
    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    :goto_6
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v2

    add-int/lit8 v4, v4, 0x1

    move-object v7, v2

    move-object v2, p1

    move-object p1, v7

    goto/16 :goto_2
.end method

.method public static zta(BIZ)[Ljava/math/BigInteger;
    .locals 5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mu must be 1 or -1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    sget-object p2, Lyou/zta/sis/zta/sis;->Zna:Ljava/math/BigInteger;

    int-to-long v1, p0

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_1

    :cond_2
    sget-object p2, Lyou/zta/sis/zta/sis;->ZERO:Ljava/math/BigInteger;

    sget-object v1, Lyou/zta/sis/zta/sis;->ONE:Ljava/math/BigInteger;

    :goto_1
    move-object v2, v1

    move-object v1, p2

    move p2, v0

    :goto_2
    if-ge p2, p1, :cond_4

    if-ne p0, v0, :cond_3

    move-object v3, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v3

    :goto_3
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    add-int/lit8 p2, p2, 0x1

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_2

    :cond_4
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/math/BigInteger;

    const/4 p1, 0x0

    aput-object v1, p0, p1

    aput-object v2, p0, v0

    return-object p0
.end method

.method public static zta(IILjava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 3

    invoke-static {p1}, Lyou/zta/sis/zta/obl;->ra(I)B

    move-result v0

    invoke-static {p2}, Lyou/zta/sis/zta/obl;->ugm(Ljava/math/BigInteger;)I

    move-result p2

    add-int/lit8 p0, p0, 0x3

    sub-int/2addr p0, p1

    const/4 p1, 0x0

    invoke-static {v0, p0, p1}, Lyou/zta/sis/zta/obl;->zta(BIZ)[Ljava/math/BigInteger;

    move-result-object p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    aget-object v0, p0, p1

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    aput-object v0, p0, p1

    aget-object v0, p0, v1

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    aput-object v0, p0, v1

    :cond_0
    sget-object v0, Lyou/zta/sis/zta/sis;->ONE:Ljava/math/BigInteger;

    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v2, Lyou/zta/sis/zta/sis;->ONE:Ljava/math/BigInteger;

    aget-object p0, p0, p1

    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p0

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/math/BigInteger;

    aput-object v0, p2, p1

    aput-object p0, p2, v1

    return-object p2
.end method

.method public static zta(Lyou/zta/sis/zta/wtn$zta;B)[Lyou/zta/sis/zta/wtn$zta;
    .locals 5

    if-nez p1, :cond_0

    sget-object p1, Lyou/zta/sis/zta/obl;->cEa:[[B

    goto :goto_0

    :cond_0
    sget-object p1, Lyou/zta/sis/zta/obl;->eEa:[[B

    :goto_0
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lyou/zta/sis/zta/wtn$zta;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    array-length v1, p1

    const/4 v2, 0x3

    :goto_1
    if-ge v2, v1, :cond_1

    ushr-int/lit8 v3, v2, 0x1

    aget-object v4, p1, v2

    invoke-static {p0, v4}, Lyou/zta/sis/zta/obl;->zta(Lyou/zta/sis/zta/wtn$zta;[B)Lyou/zta/sis/zta/wtn$zta;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object p0

    invoke-virtual {p0, v0}, Lyou/zta/sis/zta/rtg;->you([Lyou/zta/sis/zta/wtn;)V

    return-object v0
.end method
