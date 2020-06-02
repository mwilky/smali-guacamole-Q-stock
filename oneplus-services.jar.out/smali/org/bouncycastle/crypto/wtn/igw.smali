.class public Lorg/bouncycastle/crypto/wtn/igw;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private counter:I

.field private jxa:[B


# direct methods
.method public constructor <init>([BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/util/zta;->vdb([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/wtn/igw;->jxa:[B

    iput p2, p0, Lorg/bouncycastle/crypto/wtn/igw;->counter:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/bouncycastle/crypto/wtn/igw;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/bouncycastle/crypto/wtn/igw;

    iget v0, p1, Lorg/bouncycastle/crypto/wtn/igw;->counter:I

    iget v2, p0, Lorg/bouncycastle/crypto/wtn/igw;->counter:I

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lorg/bouncycastle/crypto/wtn/igw;->jxa:[B

    iget-object p1, p1, Lorg/bouncycastle/crypto/wtn/igw;->jxa:[B

    invoke-static {p0, p1}, Lorg/bouncycastle/util/zta;->sis([B[B)Z

    move-result p0

    return p0
.end method

.method public getSeed()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/wtn/igw;->jxa:[B

    invoke-static {p0}, Lorg/bouncycastle/util/zta;->vdb([B)[B

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/wtn/igw;->counter:I

    iget-object p0, p0, Lorg/bouncycastle/crypto/wtn/igw;->jxa:[B

    invoke-static {p0}, Lorg/bouncycastle/util/zta;->hashCode([B)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public wj()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/crypto/wtn/igw;->counter:I

    return p0
.end method
