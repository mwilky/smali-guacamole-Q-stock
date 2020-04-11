.class public Lorg/bouncycastle/crypto/tsu/zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/zta;


# instance fields
.field private Hla:Lorg/bouncycastle/crypto/zta;

.field private dwa:Z

.field private wxa:[B

.field private xxa:Lorg/bouncycastle/crypto/qbh;

.field private yla:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/zta;)V
    .locals 2

    invoke-static {}, Lorg/bouncycastle/crypto/you/zta;->e()Lorg/bouncycastle/crypto/qbh;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/crypto/tsu/zta;-><init>(Lorg/bouncycastle/crypto/zta;Lorg/bouncycastle/crypto/qbh;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/zta;Lorg/bouncycastle/crypto/qbh;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/tsu/zta;-><init>(Lorg/bouncycastle/crypto/zta;Lorg/bouncycastle/crypto/qbh;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/zta;Lorg/bouncycastle/crypto/qbh;Lorg/bouncycastle/crypto/qbh;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/tsu/zta;->Hla:Lorg/bouncycastle/crypto/zta;

    iput-object p3, p0, Lorg/bouncycastle/crypto/tsu/zta;->xxa:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/qbh;->les()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/tsu/zta;->wxa:[B

    invoke-interface {p2}, Lorg/bouncycastle/crypto/qbh;->reset()V

    const/4 p1, 0x0

    if-eqz p4, :cond_0

    array-length p3, p4

    invoke-interface {p2, p4, p1, p3}, Lorg/bouncycastle/crypto/qbh;->update([BII)V

    :cond_0
    iget-object p0, p0, Lorg/bouncycastle/crypto/tsu/zta;->wxa:[B

    invoke-interface {p2, p0, p1}, Lorg/bouncycastle/crypto/qbh;->doFinal([BI)I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/zta;Lorg/bouncycastle/crypto/qbh;[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p2, p3}, Lorg/bouncycastle/crypto/tsu/zta;-><init>(Lorg/bouncycastle/crypto/zta;Lorg/bouncycastle/crypto/qbh;Lorg/bouncycastle/crypto/qbh;[B)V

    return-void
.end method

.method private sis(I[B)V
    .locals 2

    ushr-int/lit8 p0, p1, 0x18

    int-to-byte p0, p0

    const/4 v0, 0x0

    aput-byte p0, p2, v0

    ushr-int/lit8 p0, p1, 0x10

    int-to-byte p0, p0

    const/4 v1, 0x1

    aput-byte p0, p2, v1

    ushr-int/lit8 p0, p1, 0x8

    int-to-byte p0, p0

    const/4 v1, 0x2

    aput-byte p0, p2, v1

    ushr-int/lit8 p0, p1, 0x0

    int-to-byte p0, p0

    const/4 p1, 0x3

    aput-byte p0, p2, p1

    return-void
.end method

.method private zta([BIII)[B
    .locals 7

    new-array v0, p4, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/tsu/zta;->xxa:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/qbh;->les()I

    move-result v1

    new-array v1, v1, [B

    const/4 v2, 0x4

    new-array v2, v2, [B

    iget-object v3, p0, Lorg/bouncycastle/crypto/tsu/zta;->xxa:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/qbh;->reset()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v5, v1

    div-int v5, p4, v5

    if-ge v4, v5, :cond_0

    invoke-direct {p0, v4, v2}, Lorg/bouncycastle/crypto/tsu/zta;->sis(I[B)V

    iget-object v5, p0, Lorg/bouncycastle/crypto/tsu/zta;->xxa:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {v5, p1, p2, p3}, Lorg/bouncycastle/crypto/qbh;->update([BII)V

    iget-object v5, p0, Lorg/bouncycastle/crypto/tsu/zta;->xxa:Lorg/bouncycastle/crypto/qbh;

    array-length v6, v2

    invoke-interface {v5, v2, v3, v6}, Lorg/bouncycastle/crypto/qbh;->update([BII)V

    iget-object v5, p0, Lorg/bouncycastle/crypto/tsu/zta;->xxa:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {v5, v1, v3}, Lorg/bouncycastle/crypto/qbh;->doFinal([BI)I

    array-length v5, v1

    mul-int/2addr v5, v4

    array-length v6, v1

    invoke-static {v1, v3, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    array-length v5, v1

    mul-int/2addr v5, v4

    if-ge v5, p4, :cond_1

    invoke-direct {p0, v4, v2}, Lorg/bouncycastle/crypto/tsu/zta;->sis(I[B)V

    iget-object p4, p0, Lorg/bouncycastle/crypto/tsu/zta;->xxa:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {p4, p1, p2, p3}, Lorg/bouncycastle/crypto/qbh;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tsu/zta;->xxa:Lorg/bouncycastle/crypto/qbh;

    array-length p2, v2

    invoke-interface {p1, v2, v3, p2}, Lorg/bouncycastle/crypto/qbh;->update([BII)V

    iget-object p0, p0, Lorg/bouncycastle/crypto/tsu/zta;->xxa:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {p0, v1, v3}, Lorg/bouncycastle/crypto/qbh;->doFinal([BI)I

    array-length p0, v1

    mul-int/2addr p0, v4

    array-length p1, v0

    array-length p2, v1

    mul-int/2addr v4, p2

    sub-int/2addr p1, v4

    invoke-static {v1, v3, v0, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public b()Lorg/bouncycastle/crypto/zta;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/tsu/zta;->Hla:Lorg/bouncycastle/crypto/zta;

    return-object p0
.end method

.method public d()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tsu/zta;->Hla:Lorg/bouncycastle/crypto/zta;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/zta;->d()I

    move-result v0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/tsu/zta;->dwa:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    iget-object p0, p0, Lorg/bouncycastle/crypto/tsu/zta;->wxa:[B

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public ivd()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tsu/zta;->Hla:Lorg/bouncycastle/crypto/zta;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/zta;->ivd()I

    move-result v0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/tsu/zta;->dwa:Z

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    iget-object p0, p0, Lorg/bouncycastle/crypto/tsu/zta;->wxa:[B

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    return v0
.end method

.method public rtg([BII)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tsu/zta;->Hla:Lorg/bouncycastle/crypto/zta;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/zta;->you([BII)[B

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/crypto/tsu/zta;->Hla:Lorg/bouncycastle/crypto/zta;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/zta;->ivd()I

    move-result p2

    new-array p2, p2, [B

    array-length p3, p2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tsu/zta;->wxa:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    if-ge p3, v0, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, v2

    :goto_0
    array-length v0, p1

    array-length v3, p2

    if-gt v0, v3, :cond_1

    array-length v0, p2

    array-length v3, p1

    sub-int/2addr v0, v3

    array-length v3, p1

    invoke-static {p1, v2, p2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_1
    array-length p3, p2

    invoke-static {p1, v2, p2, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p3, v1

    :goto_1
    iget-object p1, p0, Lorg/bouncycastle/crypto/tsu/zta;->wxa:[B

    array-length v0, p1

    array-length v3, p2

    array-length v4, p1

    sub-int/2addr v3, v4

    array-length p1, p1

    invoke-direct {p0, p2, v0, v3, p1}, Lorg/bouncycastle/crypto/tsu/zta;->zta([BIII)[B

    move-result-object p1

    move v0, v2

    :goto_2
    iget-object v3, p0, Lorg/bouncycastle/crypto/tsu/zta;->wxa:[B

    array-length v4, v3

    if-eq v0, v4, :cond_2

    aget-byte v3, p2, v0

    aget-byte v4, p1, v0

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    array-length p1, v3

    array-length v0, p2

    array-length v3, v3

    sub-int/2addr v0, v3

    invoke-direct {p0, p2, v2, p1, v0}, Lorg/bouncycastle/crypto/tsu/zta;->zta([BIII)[B

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tsu/zta;->wxa:[B

    array-length v0, v0

    :goto_3
    array-length v3, p2

    if-eq v0, v3, :cond_3

    aget-byte v3, p2, v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/tsu/zta;->wxa:[B

    array-length v4, v4

    sub-int v4, v0, v4

    aget-byte v4, p1, v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    move p1, v2

    move v0, p1

    :goto_4
    iget-object v3, p0, Lorg/bouncycastle/crypto/tsu/zta;->wxa:[B

    array-length v4, v3

    if-eq p1, v4, :cond_5

    aget-byte v4, v3, p1

    array-length v3, v3

    add-int/2addr v3, p1

    aget-byte v3, p2, v3

    if-eq v4, v3, :cond_4

    move v0, v1

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_5
    array-length p0, p2

    array-length p1, v3

    mul-int/lit8 p1, p1, 0x2

    :goto_5
    array-length v3, p2

    if-eq p1, v3, :cond_9

    aget-byte v3, p2, p1

    if-eqz v3, :cond_6

    move v3, v1

    goto :goto_6

    :cond_6
    move v3, v2

    :goto_6
    array-length v4, p2

    if-ne p0, v4, :cond_7

    move v4, v1

    goto :goto_7

    :cond_7
    move v4, v2

    :goto_7
    and-int/2addr v3, v4

    if-eqz v3, :cond_8

    move p0, p1

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_9
    array-length p1, p2

    sub-int/2addr p1, v1

    if-le p0, p1, :cond_a

    move p1, v1

    goto :goto_8

    :cond_a
    move p1, v2

    :goto_8
    aget-byte v3, p2, p0

    if-eq v3, v1, :cond_b

    move v3, v1

    goto :goto_9

    :cond_b
    move v3, v2

    :goto_9
    or-int/2addr p1, v3

    add-int/2addr p0, v1

    or-int/2addr p3, v0

    or-int/2addr p1, p3

    if-nez p1, :cond_c

    array-length p1, p2

    sub-int/2addr p1, p0

    new-array p1, p1, [B

    array-length p3, p1

    invoke-static {p2, p0, p1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_c
    invoke-static {p2, v2}, Lorg/bouncycastle/util/zta;->fill([BB)V

    new-instance p0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p1, "data wrong"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public ssp([BII)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tsu/zta;->d()I

    move-result v0

    if-gt p3, v0, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tsu/zta;->d()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tsu/zta;->wxa:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    new-array v0, v0, [B

    array-length v2, v0

    sub-int/2addr v2, p3

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, v0

    sub-int/2addr p1, p3

    sub-int/2addr p1, v1

    aput-byte v1, v0, p1

    iget-object p1, p0, Lorg/bouncycastle/crypto/tsu/zta;->wxa:[B

    array-length p2, p1

    array-length p3, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tsu/zta;->wxa:[B

    array-length p1, p1

    new-array p1, p1, [B

    iget-object p2, p0, Lorg/bouncycastle/crypto/tsu/zta;->yla:Ljava/security/SecureRandom;

    invoke-virtual {p2, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    array-length p2, p1

    array-length p3, v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/tsu/zta;->wxa:[B

    array-length v2, v2

    sub-int/2addr p3, v2

    invoke-direct {p0, p1, v1, p2, p3}, Lorg/bouncycastle/crypto/tsu/zta;->zta([BIII)[B

    move-result-object p2

    iget-object p3, p0, Lorg/bouncycastle/crypto/tsu/zta;->wxa:[B

    array-length p3, p3

    :goto_0
    array-length v2, v0

    if-eq p3, v2, :cond_0

    aget-byte v2, v0, p3

    iget-object v3, p0, Lorg/bouncycastle/crypto/tsu/zta;->wxa:[B

    array-length v3, v3

    sub-int v3, p3, v3

    aget-byte v3, p2, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/bouncycastle/crypto/tsu/zta;->wxa:[B

    array-length p2, p2

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tsu/zta;->wxa:[B

    array-length p2, p1

    array-length p3, v0

    array-length v2, p1

    sub-int/2addr p3, v2

    array-length p1, p1

    invoke-direct {p0, v0, p2, p3, p1}, Lorg/bouncycastle/crypto/tsu/zta;->zta([BIII)[B

    move-result-object p1

    move p2, v1

    :goto_1
    iget-object p3, p0, Lorg/bouncycastle/crypto/tsu/zta;->wxa:[B

    array-length p3, p3

    if-eq p2, p3, :cond_1

    aget-byte p3, v0, p2

    aget-byte v2, p1, p2

    xor-int/2addr p3, v2

    int-to-byte p3, p3

    aput-byte p3, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lorg/bouncycastle/crypto/tsu/zta;->Hla:Lorg/bouncycastle/crypto/zta;

    array-length p1, v0

    invoke-interface {p0, v0, v1, p1}, Lorg/bouncycastle/crypto/zta;->you([BII)[B

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p1, "input data too long"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public you([BII)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tsu/zta;->dwa:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/tsu/zta;->ssp([BII)[B

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/tsu/zta;->rtg([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public zta(ZLorg/bouncycastle/crypto/kth;)V
    .locals 1

    instance-of v0, p2, Lorg/bouncycastle/crypto/wtn/hmo;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/wtn/hmo;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/hmo;->Vi()Ljava/security/SecureRandom;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/bouncycastle/crypto/igw;->Ui()Ljava/security/SecureRandom;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/crypto/tsu/zta;->yla:Ljava/security/SecureRandom;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tsu/zta;->Hla:Lorg/bouncycastle/crypto/zta;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/crypto/zta;->zta(ZLorg/bouncycastle/crypto/kth;)V

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/tsu/zta;->dwa:Z

    return-void
.end method
