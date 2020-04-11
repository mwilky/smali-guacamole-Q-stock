.class public Lorg/bouncycastle/crypto/wtn/wtn;
.super Lorg/bouncycastle/crypto/bvj;
.source ""


# instance fields
.field private params:Lorg/bouncycastle/crypto/wtn/ywr;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/wtn/ywr;)V
    .locals 1

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/ywr;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/bvj;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, Lorg/bouncycastle/crypto/wtn/wtn;->params:Lorg/bouncycastle/crypto/wtn/ywr;

    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/crypto/wtn/ywr;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/wtn/wtn;->params:Lorg/bouncycastle/crypto/wtn/ywr;

    return-object p0
.end method
