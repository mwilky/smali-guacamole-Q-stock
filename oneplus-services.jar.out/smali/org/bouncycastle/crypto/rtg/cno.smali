.class public Lorg/bouncycastle/crypto/rtg/cno;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/ire;


# static fields
.field private static final wza:[B


# instance fields
.field private Doa:Z

.field private Gma:Lorg/bouncycastle/crypto/bio/you;

.field digest:[B

.field private iv:[B

.field private param:Lorg/bouncycastle/crypto/wtn/cjf;

.field private uza:Lorg/bouncycastle/crypto/wtn/ire;

.field vza:Lorg/bouncycastle/crypto/qbh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/rtg/cno;->wza:[B

    return-void

    :array_0
    .array-data 1
        0x4at
        -0x23t
        -0x5et
        0x2ct
        0x79t
        -0x18t
        0x21t
        0x5t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/bouncycastle/crypto/you/zta;->e()Lorg/bouncycastle/crypto/qbh;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/rtg/cno;->vza:Lorg/bouncycastle/crypto/qbh;

    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/rtg/cno;->digest:[B

    return-void
.end method

.method private ibl([B[B)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/rtg/cno;->vdw([B)[B

    move-result-object p0

    invoke-static {p0, p2}, Lorg/bouncycastle/util/zta;->cno([B[B)Z

    move-result p0

    return p0
.end method

.method private vdw([B)[B
    .locals 5

    const/16 v0, 0x8

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/crypto/rtg/cno;->vza:Lorg/bouncycastle/crypto/qbh;

    array-length v3, p1

    const/4 v4, 0x0

    invoke-interface {v2, p1, v4, v3}, Lorg/bouncycastle/crypto/qbh;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/rtg/cno;->vza:Lorg/bouncycastle/crypto/qbh;

    iget-object v2, p0, Lorg/bouncycastle/crypto/rtg/cno;->digest:[B

    invoke-interface {p1, v2, v4}, Lorg/bouncycastle/crypto/qbh;->doFinal([BI)I

    iget-object p0, p0, Lorg/bouncycastle/crypto/rtg/cno;->digest:[B

    invoke-static {p0, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private static zgw([B)[B
    .locals 4

    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    array-length v2, p0

    add-int/lit8 v3, v1, 0x1

    sub-int/2addr v2, v3

    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    move v1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public tsu([BII)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/rtg/cno;->Doa:Z

    if-nez v0, :cond_5

    if-eqz p1, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/crypto/rtg/cno;->Gma:Lorg/bouncycastle/crypto/bio/you;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/bio/you;->getBlockSize()I

    move-result v0

    rem-int v1, p3, v0

    if-nez v1, :cond_3

    new-instance v1, Lorg/bouncycastle/crypto/wtn/ire;

    iget-object v2, p0, Lorg/bouncycastle/crypto/rtg/cno;->param:Lorg/bouncycastle/crypto/wtn/cjf;

    sget-object v3, Lorg/bouncycastle/crypto/rtg/cno;->wza:[B

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/crypto/wtn/ire;-><init>(Lorg/bouncycastle/crypto/kth;[B)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/rtg/cno;->Gma:Lorg/bouncycastle/crypto/bio/you;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lorg/bouncycastle/crypto/bio/you;->zta(ZLorg/bouncycastle/crypto/kth;)V

    new-array v1, p3, [B

    move v2, v3

    :goto_0
    if-eq v2, p3, :cond_0

    iget-object v4, p0, Lorg/bouncycastle/crypto/rtg/cno;->Gma:Lorg/bouncycastle/crypto/bio/you;

    add-int v5, p2, v2

    invoke-virtual {v4, p1, v5, v1, v2}, Lorg/bouncycastle/crypto/bio/you;->zta([BI[BI)I

    add-int/2addr v2, v0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lorg/bouncycastle/crypto/rtg/cno;->zgw([B)[B

    move-result-object p1

    const/16 p2, 0x8

    new-array p3, p2, [B

    iput-object p3, p0, Lorg/bouncycastle/crypto/rtg/cno;->iv:[B

    array-length p3, p1

    sub-int/2addr p3, p2

    new-array p3, p3, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/rtg/cno;->iv:[B

    invoke-static {p1, v3, v1, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p1

    sub-int/2addr v1, p2

    invoke-static {p1, p2, p3, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Lorg/bouncycastle/crypto/wtn/ire;

    iget-object v1, p0, Lorg/bouncycastle/crypto/rtg/cno;->param:Lorg/bouncycastle/crypto/wtn/cjf;

    iget-object v2, p0, Lorg/bouncycastle/crypto/rtg/cno;->iv:[B

    invoke-direct {p1, v1, v2}, Lorg/bouncycastle/crypto/wtn/ire;-><init>(Lorg/bouncycastle/crypto/kth;[B)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/rtg/cno;->uza:Lorg/bouncycastle/crypto/wtn/ire;

    iget-object p1, p0, Lorg/bouncycastle/crypto/rtg/cno;->Gma:Lorg/bouncycastle/crypto/bio/you;

    iget-object v1, p0, Lorg/bouncycastle/crypto/rtg/cno;->uza:Lorg/bouncycastle/crypto/wtn/ire;

    invoke-virtual {p1, v3, v1}, Lorg/bouncycastle/crypto/bio/you;->zta(ZLorg/bouncycastle/crypto/kth;)V

    array-length p1, p3

    new-array p1, p1, [B

    move v1, v3

    :goto_1
    array-length v2, p1

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/crypto/rtg/cno;->Gma:Lorg/bouncycastle/crypto/bio/you;

    invoke-virtual {v2, p3, v1, p1, v1}, Lorg/bouncycastle/crypto/bio/you;->zta([BI[BI)I

    add-int/2addr v1, v0

    goto :goto_1

    :cond_1
    array-length p3, p1

    sub-int/2addr p3, p2

    new-array p3, p3, [B

    new-array v0, p2, [B

    array-length v1, p1

    sub-int/2addr v1, p2

    invoke-static {p1, v3, p3, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p1

    sub-int/2addr v1, p2

    invoke-static {p1, v1, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, p3, v0}, Lorg/bouncycastle/crypto/rtg/cno;->ibl([B[B)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object p3

    :cond_2
    new-instance p0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p1, "Checksum inside ciphertext is corrupted"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ciphertext not multiple of "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p1, "Null pointer as ciphertext"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not set for unwrapping"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public vju()Ljava/lang/String;
    .locals 0

    const-string p0, "DESede"

    return-object p0
.end method

.method public wrap([BII)[B
    .locals 4

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/rtg/cno;->Doa:Z

    if-eqz v0, :cond_3

    new-array v0, p3, [B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/rtg/cno;->vdw([B)[B

    move-result-object p1

    array-length p2, v0

    array-length p3, p1

    add-int/2addr p2, p3

    new-array p2, p2, [B

    array-length p3, v0

    invoke-static {v0, v1, p2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p3, v0

    array-length v0, p1

    invoke-static {p1, v1, p2, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/rtg/cno;->Gma:Lorg/bouncycastle/crypto/bio/you;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/bio/you;->getBlockSize()I

    move-result p1

    array-length p3, p2

    rem-int/2addr p3, p1

    if-nez p3, :cond_2

    iget-object p3, p0, Lorg/bouncycastle/crypto/rtg/cno;->Gma:Lorg/bouncycastle/crypto/bio/you;

    iget-object v0, p0, Lorg/bouncycastle/crypto/rtg/cno;->uza:Lorg/bouncycastle/crypto/wtn/ire;

    const/4 v2, 0x1

    invoke-virtual {p3, v2, v0}, Lorg/bouncycastle/crypto/bio/you;->zta(ZLorg/bouncycastle/crypto/kth;)V

    array-length p3, p2

    new-array p3, p3, [B

    move v0, v1

    :goto_0
    array-length v3, p2

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/crypto/rtg/cno;->Gma:Lorg/bouncycastle/crypto/bio/you;

    invoke-virtual {v3, p2, v0, p3, v0}, Lorg/bouncycastle/crypto/bio/you;->zta([BI[BI)I

    add-int/2addr v0, p1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/bouncycastle/crypto/rtg/cno;->iv:[B

    array-length v0, p2

    array-length v3, p3

    add-int/2addr v0, v3

    new-array v0, v0, [B

    array-length v3, p2

    invoke-static {p2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lorg/bouncycastle/crypto/rtg/cno;->iv:[B

    array-length p2, p2

    array-length v3, p3

    invoke-static {p3, v1, v0, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/rtg/cno;->zgw([B)[B

    move-result-object p2

    new-instance p3, Lorg/bouncycastle/crypto/wtn/ire;

    iget-object v0, p0, Lorg/bouncycastle/crypto/rtg/cno;->param:Lorg/bouncycastle/crypto/wtn/cjf;

    sget-object v3, Lorg/bouncycastle/crypto/rtg/cno;->wza:[B

    invoke-direct {p3, v0, v3}, Lorg/bouncycastle/crypto/wtn/ire;-><init>(Lorg/bouncycastle/crypto/kth;[B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/rtg/cno;->Gma:Lorg/bouncycastle/crypto/bio/you;

    invoke-virtual {v0, v2, p3}, Lorg/bouncycastle/crypto/bio/you;->zta(ZLorg/bouncycastle/crypto/kth;)V

    :goto_1
    array-length p3, p2

    if-eq v1, p3, :cond_1

    iget-object p3, p0, Lorg/bouncycastle/crypto/rtg/cno;->Gma:Lorg/bouncycastle/crypto/bio/you;

    invoke-virtual {p3, p2, v1, p2, v1}, Lorg/bouncycastle/crypto/bio/you;->zta([BI[BI)I

    add-int/2addr v1, p1

    goto :goto_1

    :cond_1
    return-object p2

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not multiple of block length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not initialized for wrapping"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public zta(ZLorg/bouncycastle/crypto/kth;)V
    .locals 3

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/rtg/cno;->Doa:Z

    new-instance p1, Lorg/bouncycastle/crypto/bio/you;

    new-instance v0, Lorg/bouncycastle/crypto/rtg/ssp;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/rtg/ssp;-><init>()V

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/bio/you;-><init>(Lorg/bouncycastle/crypto/rtg;)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/rtg/cno;->Gma:Lorg/bouncycastle/crypto/bio/you;

    instance-of p1, p2, Lorg/bouncycastle/crypto/wtn/hmo;

    if-eqz p1, :cond_0

    check-cast p2, Lorg/bouncycastle/crypto/wtn/hmo;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/hmo;->getParameters()Lorg/bouncycastle/crypto/kth;

    move-result-object p1

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/hmo;->Zi()Ljava/security/SecureRandom;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/bouncycastle/crypto/igw;->Yi()Ljava/security/SecureRandom;

    move-result-object p1

    move-object v2, p2

    move-object p2, p1

    move-object p1, v2

    :goto_0
    instance-of v0, p1, Lorg/bouncycastle/crypto/wtn/cjf;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    check-cast p1, Lorg/bouncycastle/crypto/wtn/cjf;

    iput-object p1, p0, Lorg/bouncycastle/crypto/rtg/cno;->param:Lorg/bouncycastle/crypto/wtn/cjf;

    iget-boolean p1, p0, Lorg/bouncycastle/crypto/rtg/cno;->Doa:Z

    if-eqz p1, :cond_4

    new-array p1, v1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/rtg/cno;->iv:[B

    iget-object p1, p0, Lorg/bouncycastle/crypto/rtg/cno;->iv:[B

    invoke-virtual {p2, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance p1, Lorg/bouncycastle/crypto/wtn/ire;

    iget-object p2, p0, Lorg/bouncycastle/crypto/rtg/cno;->param:Lorg/bouncycastle/crypto/wtn/cjf;

    iget-object v0, p0, Lorg/bouncycastle/crypto/rtg/cno;->iv:[B

    invoke-direct {p1, p2, v0}, Lorg/bouncycastle/crypto/wtn/ire;-><init>(Lorg/bouncycastle/crypto/kth;[B)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/rtg/cno;->uza:Lorg/bouncycastle/crypto/wtn/ire;

    goto :goto_1

    :cond_1
    instance-of p2, p1, Lorg/bouncycastle/crypto/wtn/ire;

    if-eqz p2, :cond_4

    check-cast p1, Lorg/bouncycastle/crypto/wtn/ire;

    iput-object p1, p0, Lorg/bouncycastle/crypto/rtg/cno;->uza:Lorg/bouncycastle/crypto/wtn/ire;

    iget-object p1, p0, Lorg/bouncycastle/crypto/rtg/cno;->uza:Lorg/bouncycastle/crypto/wtn/ire;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/ire;->getIV()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/rtg/cno;->iv:[B

    iget-object p1, p0, Lorg/bouncycastle/crypto/rtg/cno;->uza:Lorg/bouncycastle/crypto/wtn/ire;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/ire;->getParameters()Lorg/bouncycastle/crypto/kth;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/crypto/wtn/cjf;

    iput-object p1, p0, Lorg/bouncycastle/crypto/rtg/cno;->param:Lorg/bouncycastle/crypto/wtn/cjf;

    iget-boolean p1, p0, Lorg/bouncycastle/crypto/rtg/cno;->Doa:Z

    if-eqz p1, :cond_3

    iget-object p0, p0, Lorg/bouncycastle/crypto/rtg/cno;->iv:[B

    if-eqz p0, :cond_2

    array-length p0, p0

    if-ne p0, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "IV is not 8 octets"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You should not supply an IV for unwrapping"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    return-void
.end method
