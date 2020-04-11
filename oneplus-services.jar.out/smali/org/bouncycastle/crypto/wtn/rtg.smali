.class public Lorg/bouncycastle/crypto/wtn/rtg;
.super Lorg/bouncycastle/crypto/bvj;
.source ""


# instance fields
.field private params:Lorg/bouncycastle/crypto/wtn/cno;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/wtn/cno;)V
    .locals 1

    invoke-static {p2}, Lorg/bouncycastle/crypto/wtn/rtg;->zta(Lorg/bouncycastle/crypto/wtn/cno;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/bvj;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, Lorg/bouncycastle/crypto/wtn/rtg;->params:Lorg/bouncycastle/crypto/wtn/cno;

    return-void
.end method

.method static zta(Lorg/bouncycastle/crypto/wtn/cno;)I
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/wtn/cno;->getL()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/wtn/cno;->getL()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/wtn/cno;->getP()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    :goto_0
    return p0
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/crypto/wtn/cno;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/wtn/rtg;->params:Lorg/bouncycastle/crypto/wtn/cno;

    return-object p0
.end method
