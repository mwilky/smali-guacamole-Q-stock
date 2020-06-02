.class public Lorg/bouncycastle/crypto/wtn/lqr;
.super Lorg/bouncycastle/crypto/bvj;
.source ""


# instance fields
.field private Eza:I

.field private publicExponent:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/security/SecureRandom;II)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lorg/bouncycastle/crypto/bvj;-><init>(Ljava/security/SecureRandom;I)V

    const/16 p2, 0xc

    if-lt p3, p2, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result p2

    if-eqz p2, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/crypto/wtn/lqr;->publicExponent:Ljava/math/BigInteger;

    iput p4, p0, Lorg/bouncycastle/crypto/wtn/lqr;->Eza:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "public exponent cannot be even"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key strength too small"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getCertainty()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/crypto/wtn/lqr;->Eza:I

    return p0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/wtn/lqr;->publicExponent:Ljava/math/BigInteger;

    return-object p0
.end method
