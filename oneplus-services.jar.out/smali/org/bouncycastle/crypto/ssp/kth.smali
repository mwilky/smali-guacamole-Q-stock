.class public Lorg/bouncycastle/crypto/ssp/kth;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final Yoa:Ljava/math/BigInteger;

.field private static final ZERO:Ljava/math/BigInteger;


# instance fields
.field private L:I

.field private N:I

.field private Oqa:I

.field private digest:Lorg/bouncycastle/crypto/qbh;

.field private qAa:Z

.field private qxa:I

.field private rAa:I

.field private xma:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/ssp/kth;->ZERO:Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/ssp/kth;->ONE:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/ssp/kth;->Yoa:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/crypto/you/zta;->e()Lorg/bouncycastle/crypto/qbh;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/ssp/kth;-><init>(Lorg/bouncycastle/crypto/qbh;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/qbh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/ssp/kth;->digest:Lorg/bouncycastle/crypto/qbh;

    return-void
.end method

.method private static Lc(I)I
    .locals 1

    const/16 v0, 0x400

    if-le p0, v0, :cond_0

    const/16 p0, 0x100

    goto :goto_0

    :cond_0
    const/16 p0, 0xa0

    :goto_0
    return p0
.end method

.method private static Mc(I)I
    .locals 1

    const/16 v0, 0x400

    if-gt p0, v0, :cond_0

    const/16 p0, 0x28

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    div-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0x8

    add-int/lit8 p0, p0, 0x30

    :goto_0
    return p0
.end method

.method private cno(Ljava/math/BigInteger;)Z
    .locals 0

    iget p0, p0, Lorg/bouncycastle/crypto/ssp/kth;->qxa:I

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result p0

    return p0
.end method

.method private static qeg([B)V
    .locals 2

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    aget-byte v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private static sis(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 4

    sget-object v0, Lorg/bouncycastle/crypto/ssp/kth;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    sget-object v0, Lorg/bouncycastle/crypto/ssp/kth;->Yoa:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :cond_0
    sget-object v1, Lorg/bouncycastle/crypto/ssp/kth;->Yoa:Ljava/math/BigInteger;

    invoke-static {v1, v0, p2}, Lorg/bouncycastle/util/you;->you(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p1, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    return-object v1
.end method

.method private st()Lorg/bouncycastle/crypto/wtn/ywr;
    .locals 15

    const/16 v0, 0x14

    new-array v1, v0, [B

    new-array v2, v0, [B

    new-array v3, v0, [B

    new-array v0, v0, [B

    iget v4, p0, Lorg/bouncycastle/crypto/ssp/kth;->L:I

    add-int/lit8 v5, v4, -0x1

    div-int/lit16 v5, v5, 0xa0

    div-int/lit8 v4, v4, 0x8

    new-array v4, v4, [B

    iget-object v6, p0, Lorg/bouncycastle/crypto/ssp/kth;->digest:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {v6}, Lorg/bouncycastle/crypto/qbh;->vju()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SHA-1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_0
    :goto_0
    iget-object v6, p0, Lorg/bouncycastle/crypto/ssp/kth;->xma:Ljava/security/SecureRandom;

    invoke-virtual {v6, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v6, p0, Lorg/bouncycastle/crypto/ssp/kth;->digest:Lorg/bouncycastle/crypto/qbh;

    const/4 v7, 0x0

    invoke-static {v6, v1, v2, v7}, Lorg/bouncycastle/crypto/ssp/kth;->zta(Lorg/bouncycastle/crypto/qbh;[B[BI)V

    array-length v6, v1

    invoke-static {v1, v7, v3, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3}, Lorg/bouncycastle/crypto/ssp/kth;->qeg([B)V

    iget-object v6, p0, Lorg/bouncycastle/crypto/ssp/kth;->digest:Lorg/bouncycastle/crypto/qbh;

    invoke-static {v6, v3, v3, v7}, Lorg/bouncycastle/crypto/ssp/kth;->zta(Lorg/bouncycastle/crypto/qbh;[B[BI)V

    move v6, v7

    :goto_1
    array-length v8, v0

    if-eq v6, v8, :cond_1

    aget-byte v8, v2, v6

    aget-byte v9, v3, v6

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v0, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    aget-byte v6, v0, v7

    or-int/lit8 v6, v6, -0x80

    int-to-byte v6, v6

    aput-byte v6, v0, v7

    const/16 v6, 0x13

    aget-byte v8, v0, v6

    const/4 v9, 0x1

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v0, v6

    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, v9, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/ssp/kth;->cno(Ljava/math/BigInteger;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lorg/bouncycastle/util/zta;->vdb([B)[B

    move-result-object v8

    invoke-static {v8}, Lorg/bouncycastle/crypto/ssp/kth;->qeg([B)V

    move v10, v7

    :goto_2
    const/16 v11, 0x1000

    if-ge v10, v11, :cond_0

    move v11, v9

    :goto_3
    if-gt v11, v5, :cond_3

    invoke-static {v8}, Lorg/bouncycastle/crypto/ssp/kth;->qeg([B)V

    iget-object v12, p0, Lorg/bouncycastle/crypto/ssp/kth;->digest:Lorg/bouncycastle/crypto/qbh;

    array-length v13, v4

    array-length v14, v2

    mul-int/2addr v14, v11

    sub-int/2addr v13, v14

    invoke-static {v12, v8, v4, v13}, Lorg/bouncycastle/crypto/ssp/kth;->zta(Lorg/bouncycastle/crypto/qbh;[B[BI)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_3
    array-length v11, v4

    array-length v12, v2

    mul-int/2addr v12, v5

    sub-int/2addr v11, v12

    invoke-static {v8}, Lorg/bouncycastle/crypto/ssp/kth;->qeg([B)V

    iget-object v12, p0, Lorg/bouncycastle/crypto/ssp/kth;->digest:Lorg/bouncycastle/crypto/qbh;

    invoke-static {v12, v8, v2, v7}, Lorg/bouncycastle/crypto/ssp/kth;->zta(Lorg/bouncycastle/crypto/qbh;[B[BI)V

    array-length v12, v2

    sub-int/2addr v12, v11

    invoke-static {v2, v12, v4, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v11, v4, v7

    or-int/lit8 v11, v11, -0x80

    int-to-byte v11, v11

    aput-byte v11, v4, v7

    new-instance v11, Ljava/math/BigInteger;

    invoke-direct {v11, v9, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v6, v9}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    sget-object v13, Lorg/bouncycastle/crypto/ssp/kth;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/math/BigInteger;->bitLength()I

    move-result v12

    iget v13, p0, Lorg/bouncycastle/crypto/ssp/kth;->L:I

    if-eq v12, v13, :cond_4

    goto :goto_4

    :cond_4
    invoke-direct {p0, v11}, Lorg/bouncycastle/crypto/ssp/kth;->cno(Ljava/math/BigInteger;)Z

    move-result v12

    if-eqz v12, :cond_5

    iget-object p0, p0, Lorg/bouncycastle/crypto/ssp/kth;->xma:Ljava/security/SecureRandom;

    invoke-static {v11, v6, p0}, Lorg/bouncycastle/crypto/ssp/kth;->sis(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/crypto/wtn/ywr;

    new-instance v2, Lorg/bouncycastle/crypto/wtn/bvj;

    invoke-direct {v2, v1, v10}, Lorg/bouncycastle/crypto/wtn/bvj;-><init>([BI)V

    invoke-direct {v0, v11, v6, p0, v2}, Lorg/bouncycastle/crypto/wtn/ywr;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/wtn/bvj;)V

    return-object v0

    :cond_5
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "can only use SHA-1 for generating FIPS 186-2 parameters"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static tsu(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/crypto/ssp/kth;->sis(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method private tt()Lorg/bouncycastle/crypto/wtn/ywr;
    .locals 14

    iget-object v0, p0, Lorg/bouncycastle/crypto/ssp/kth;->digest:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/qbh;->les()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    iget v2, p0, Lorg/bouncycastle/crypto/ssp/kth;->N:I

    div-int/lit8 v2, v2, 0x8

    new-array v2, v2, [B

    iget v3, p0, Lorg/bouncycastle/crypto/ssp/kth;->L:I

    add-int/lit8 v4, v3, -0x1

    div-int/2addr v4, v1

    add-int/lit8 v5, v3, -0x1

    rem-int/2addr v5, v1

    div-int/lit8 v3, v3, 0x8

    new-array v1, v3, [B

    invoke-interface {v0}, Lorg/bouncycastle/crypto/qbh;->les()I

    move-result v3

    new-array v3, v3, [B

    :cond_0
    :goto_0
    iget-object v5, p0, Lorg/bouncycastle/crypto/ssp/kth;->xma:Ljava/security/SecureRandom;

    invoke-virtual {v5, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v5, 0x0

    invoke-static {v0, v2, v3, v5}, Lorg/bouncycastle/crypto/ssp/kth;->zta(Lorg/bouncycastle/crypto/qbh;[B[BI)V

    new-instance v6, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    sget-object v8, Lorg/bouncycastle/crypto/ssp/kth;->ONE:Ljava/math/BigInteger;

    iget v9, p0, Lorg/bouncycastle/crypto/ssp/kth;->N:I

    sub-int/2addr v9, v7

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v6

    iget v8, p0, Lorg/bouncycastle/crypto/ssp/kth;->N:I

    sub-int/2addr v8, v7

    invoke-virtual {v6, v8}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/ssp/kth;->cno(Ljava/math/BigInteger;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lorg/bouncycastle/util/zta;->vdb([B)[B

    move-result-object v8

    iget v9, p0, Lorg/bouncycastle/crypto/ssp/kth;->L:I

    mul-int/lit8 v9, v9, 0x4

    move v10, v5

    :goto_1
    if-ge v10, v9, :cond_0

    move v11, v7

    :goto_2
    if-gt v11, v4, :cond_2

    invoke-static {v8}, Lorg/bouncycastle/crypto/ssp/kth;->qeg([B)V

    array-length v12, v1

    array-length v13, v3

    mul-int/2addr v13, v11

    sub-int/2addr v12, v13

    invoke-static {v0, v8, v1, v12}, Lorg/bouncycastle/crypto/ssp/kth;->zta(Lorg/bouncycastle/crypto/qbh;[B[BI)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    array-length v11, v1

    array-length v12, v3

    mul-int/2addr v12, v4

    sub-int/2addr v11, v12

    invoke-static {v8}, Lorg/bouncycastle/crypto/ssp/kth;->qeg([B)V

    invoke-static {v0, v8, v3, v5}, Lorg/bouncycastle/crypto/ssp/kth;->zta(Lorg/bouncycastle/crypto/qbh;[B[BI)V

    array-length v12, v3

    sub-int/2addr v12, v11

    invoke-static {v3, v12, v1, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v11, v1, v5

    or-int/lit8 v11, v11, -0x80

    int-to-byte v11, v11

    aput-byte v11, v1, v5

    new-instance v11, Ljava/math/BigInteger;

    invoke-direct {v11, v7, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    sget-object v13, Lorg/bouncycastle/crypto/ssp/kth;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/math/BigInteger;->bitLength()I

    move-result v12

    iget v13, p0, Lorg/bouncycastle/crypto/ssp/kth;->L:I

    if-eq v12, v13, :cond_3

    goto :goto_3

    :cond_3
    invoke-direct {p0, v11}, Lorg/bouncycastle/crypto/ssp/kth;->cno(Ljava/math/BigInteger;)Z

    move-result v12

    if-eqz v12, :cond_5

    iget v1, p0, Lorg/bouncycastle/crypto/ssp/kth;->rAa:I

    if-ltz v1, :cond_4

    invoke-static {v0, v11, v6, v2, v1}, Lorg/bouncycastle/crypto/ssp/kth;->zta(Lorg/bouncycastle/crypto/qbh;Ljava/math/BigInteger;Ljava/math/BigInteger;[BI)Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Lorg/bouncycastle/crypto/wtn/ywr;

    new-instance v3, Lorg/bouncycastle/crypto/wtn/bvj;

    iget p0, p0, Lorg/bouncycastle/crypto/ssp/kth;->rAa:I

    invoke-direct {v3, v2, v10, p0}, Lorg/bouncycastle/crypto/wtn/bvj;-><init>([BII)V

    invoke-direct {v1, v11, v6, v0, v3}, Lorg/bouncycastle/crypto/wtn/ywr;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/wtn/bvj;)V

    return-object v1

    :cond_4
    iget-object p0, p0, Lorg/bouncycastle/crypto/ssp/kth;->xma:Ljava/security/SecureRandom;

    invoke-static {v11, v6, p0}, Lorg/bouncycastle/crypto/ssp/kth;->tsu(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/crypto/wtn/ywr;

    new-instance v1, Lorg/bouncycastle/crypto/wtn/bvj;

    invoke-direct {v1, v2, v10}, Lorg/bouncycastle/crypto/wtn/bvj;-><init>([BI)V

    invoke-direct {v0, v11, v6, p0, v1}, Lorg/bouncycastle/crypto/wtn/ywr;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/wtn/bvj;)V

    return-object v0

    :cond_5
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1
.end method

.method private static zta(Lorg/bouncycastle/crypto/qbh;Ljava/math/BigInteger;Ljava/math/BigInteger;[BI)Ljava/math/BigInteger;
    .locals 5

    sget-object v0, Lorg/bouncycastle/crypto/ssp/kth;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    const-string v0, "6767656E"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/tsu;->decode(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, p3

    array-length v2, v0

    add-int/2addr v1, v2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    array-length v3, p3

    const/4 v4, 0x0

    invoke-static {p3, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p3, p3

    array-length v3, v0

    invoke-static {v0, v4, v1, p3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p3, v1

    add-int/lit8 p3, p3, -0x3

    int-to-byte p4, p4

    aput-byte p4, v1, p3

    invoke-interface {p0}, Lorg/bouncycastle/crypto/qbh;->les()I

    move-result p3

    new-array p3, p3, [B

    move p4, v2

    :goto_0
    const/high16 v0, 0x10000

    if-ge p4, v0, :cond_1

    invoke-static {v1}, Lorg/bouncycastle/crypto/ssp/kth;->qeg([B)V

    invoke-static {p0, v1, p3, v4}, Lorg/bouncycastle/crypto/ssp/kth;->zta(Lorg/bouncycastle/crypto/qbh;[B[BI)V

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v2, p3}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v0, p2, p1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v3, Lorg/bouncycastle/crypto/ssp/kth;->Yoa:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-ltz v3, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static zta(Lorg/bouncycastle/crypto/qbh;[B[BI)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v0}, Lorg/bouncycastle/crypto/qbh;->update([BII)V

    invoke-interface {p0, p2, p3}, Lorg/bouncycastle/crypto/qbh;->doFinal([BI)I

    return-void
.end method


# virtual methods
.method public generateParameters()Lorg/bouncycastle/crypto/wtn/ywr;
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/ssp/kth;->qAa:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/ssp/kth;->tt()Lorg/bouncycastle/crypto/wtn/ywr;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/ssp/kth;->st()Lorg/bouncycastle/crypto/wtn/ywr;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public zta(IILjava/security/SecureRandom;)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/crypto/ssp/kth;->L:I

    invoke-static {p1}, Lorg/bouncycastle/crypto/ssp/kth;->Lc(I)I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/crypto/ssp/kth;->N:I

    iput p2, p0, Lorg/bouncycastle/crypto/ssp/kth;->qxa:I

    iget p1, p0, Lorg/bouncycastle/crypto/ssp/kth;->L:I

    invoke-static {p1}, Lorg/bouncycastle/crypto/ssp/kth;->Mc(I)I

    move-result p1

    add-int/lit8 p2, p2, 0x1

    div-int/lit8 p2, p2, 0x2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/crypto/ssp/kth;->Oqa:I

    iput-object p3, p0, Lorg/bouncycastle/crypto/ssp/kth;->xma:Ljava/security/SecureRandom;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/ssp/kth;->qAa:Z

    const/4 p1, -0x1

    iput p1, p0, Lorg/bouncycastle/crypto/ssp/kth;->rAa:I

    return-void
.end method

.method public zta(Lorg/bouncycastle/crypto/wtn/dma;)V
    .locals 5

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/dma;->getL()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/dma;->Ii()I

    move-result v1

    const/16 v2, 0x400

    if-lt v0, v2, :cond_7

    const/16 v3, 0xc00

    if-gt v0, v3, :cond_7

    rem-int/lit16 v4, v0, 0x400

    if-nez v4, :cond_7

    if-ne v0, v2, :cond_1

    const/16 v2, 0xa0

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "N must be 160 for L = 1024"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/16 v2, 0x800

    const/16 v4, 0x100

    if-ne v0, v2, :cond_3

    const/16 v2, 0xe0

    if-eq v1, v2, :cond_3

    if-ne v1, v4, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "N must be 224 or 256 for L = 2048"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    if-ne v0, v3, :cond_5

    if-ne v1, v4, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "N must be 256 for L = 3072"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    iget-object v2, p0, Lorg/bouncycastle/crypto/ssp/kth;->digest:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/qbh;->les()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    if-lt v2, v1, :cond_6

    iput v0, p0, Lorg/bouncycastle/crypto/ssp/kth;->L:I

    iput v1, p0, Lorg/bouncycastle/crypto/ssp/kth;->N:I

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/dma;->getCertainty()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/crypto/ssp/kth;->qxa:I

    invoke-static {v0}, Lorg/bouncycastle/crypto/ssp/kth;->Mc(I)I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/crypto/ssp/kth;->qxa:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/ssp/kth;->Oqa:I

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/dma;->Zi()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/ssp/kth;->xma:Ljava/security/SecureRandom;

    iput-boolean v2, p0, Lorg/bouncycastle/crypto/ssp/kth;->qAa:Z

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/dma;->oj()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/crypto/ssp/kth;->rAa:I

    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Digest output size too small for value of N"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "L values must be between 1024 and 3072 and a multiple of 1024"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
