.class public Lorg/bouncycastle/crypto/ssp/igw;
.super Lorg/bouncycastle/crypto/gwm;
.source ""


# instance fields
.field private digest:Lorg/bouncycastle/crypto/qbh;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/gwm;-><init>()V

    invoke-static {}, Lorg/bouncycastle/crypto/you/zta;->veq()Lorg/bouncycastle/crypto/qbh;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/ssp/igw;->digest:Lorg/bouncycastle/crypto/qbh;

    return-void
.end method

.method private Ec(I)[B
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/crypto/ssp/igw;->digest:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/qbh;->les()I

    move-result v0

    new-array v0, v0, [B

    new-array v1, p1, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lorg/bouncycastle/crypto/ssp/igw;->digest:Lorg/bouncycastle/crypto/qbh;

    iget-object v5, p0, Lorg/bouncycastle/crypto/gwm;->password:[B

    array-length v6, v5

    invoke-interface {v4, v5, v2, v6}, Lorg/bouncycastle/crypto/qbh;->update([BII)V

    iget-object v4, p0, Lorg/bouncycastle/crypto/ssp/igw;->digest:Lorg/bouncycastle/crypto/qbh;

    iget-object v5, p0, Lorg/bouncycastle/crypto/gwm;->salt:[B

    array-length v6, v5

    invoke-interface {v4, v5, v2, v6}, Lorg/bouncycastle/crypto/qbh;->update([BII)V

    iget-object v4, p0, Lorg/bouncycastle/crypto/ssp/igw;->digest:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {v4, v0, v2}, Lorg/bouncycastle/crypto/qbh;->doFinal([BI)I

    array-length v4, v0

    if-le p1, v4, :cond_0

    array-length v4, v0

    goto :goto_1

    :cond_0
    move v4, p1

    :goto_1
    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v4

    sub-int/2addr p1, v4

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    iget-object v4, p0, Lorg/bouncycastle/crypto/ssp/igw;->digest:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/qbh;->reset()V

    iget-object v4, p0, Lorg/bouncycastle/crypto/ssp/igw;->digest:Lorg/bouncycastle/crypto/qbh;

    array-length v5, v0

    invoke-interface {v4, v0, v2, v5}, Lorg/bouncycastle/crypto/qbh;->update([BII)V

    goto :goto_0
.end method


# virtual methods
.method public generateDerivedParameters(I)Lorg/bouncycastle/crypto/kth;
    .locals 2

    div-int/lit8 p1, p1, 0x8

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/ssp/igw;->Ec(I)[B

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/crypto/wtn/cjf;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lorg/bouncycastle/crypto/wtn/cjf;-><init>([BII)V

    return-object v0
.end method

.method public init([B[B)V
    .locals 1

    const/4 v0, 0x1

    invoke-super {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/gwm;->zta([B[BI)V

    return-void
.end method

.method public ja(I)Lorg/bouncycastle/crypto/kth;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/ssp/igw;->generateDerivedParameters(I)Lorg/bouncycastle/crypto/kth;

    move-result-object p0

    return-object p0
.end method

.method public ugm(II)Lorg/bouncycastle/crypto/kth;
    .locals 3

    div-int/lit8 p1, p1, 0x8

    div-int/lit8 p2, p2, 0x8

    add-int v0, p1, p2

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/ssp/igw;->Ec(I)[B

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/crypto/wtn/ire;

    new-instance v1, Lorg/bouncycastle/crypto/wtn/cjf;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1}, Lorg/bouncycastle/crypto/wtn/cjf;-><init>([BII)V

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/bouncycastle/crypto/wtn/ire;-><init>(Lorg/bouncycastle/crypto/kth;[BII)V

    return-object v0
.end method
