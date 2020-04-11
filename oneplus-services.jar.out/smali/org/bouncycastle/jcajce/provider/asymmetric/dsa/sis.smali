.class public Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/sis;
.super Ljava/security/SignatureSpi;
.source ""

# interfaces
.implements Lorg/bouncycastle/asn1/dma/gwm;
.implements Lorg/bouncycastle/asn1/x509/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/sis$sis;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/sis$you;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/sis$zta;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/sis$tsu;
    }
.end annotation


# instance fields
.field private digest:Lorg/bouncycastle/crypto/qbh;

.field private encoding:Lorg/bouncycastle/crypto/gck/zta;

.field private qna:Lorg/bouncycastle/crypto/gck;

.field private xma:Ljava/security/SecureRandom;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/crypto/qbh;Lorg/bouncycastle/crypto/gck;)V
    .locals 1

    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    sget-object v0, Lorg/bouncycastle/crypto/gck/kth;->INSTANCE:Lorg/bouncycastle/crypto/gck/kth;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/sis;->encoding:Lorg/bouncycastle/crypto/gck/zta;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/sis;->digest:Lorg/bouncycastle/crypto/qbh;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/sis;->qna:Lorg/bouncycastle/crypto/gck;

    return-void
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "engineGetParameter unsupported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/tsu;->you(Ljava/security/PrivateKey;)Lorg/bouncycastle/crypto/wtn/you;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/wtn/gck;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/gck;->getParameters()Lorg/bouncycastle/crypto/wtn/ywr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/sis;->zta(Lorg/bouncycastle/crypto/wtn/ywr;)V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/sis;->xma:Ljava/security/SecureRandom;

    if-eqz v0, :cond_0

    new-instance v1, Lorg/bouncycastle/crypto/wtn/hmo;

    invoke-direct {v1, p1, v0}, Lorg/bouncycastle/crypto/wtn/hmo;-><init>(Lorg/bouncycastle/crypto/kth;Ljava/security/SecureRandom;)V

    move-object p1, v1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/sis;->digest:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/qbh;->reset()V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/sis;->qna:Lorg/bouncycastle/crypto/gck;

    const/4 v0, 0x1

    invoke-interface {p0, v0, p1}, Lorg/bouncycastle/crypto/wtn;->zta(ZLorg/bouncycastle/crypto/kth;)V

    return-void
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/sis;->xma:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/sis;->engineInitSign(Ljava/security/PrivateKey;)V

    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/tsu;->zta(Ljava/security/PublicKey;)Lorg/bouncycastle/crypto/wtn/you;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/sis;->digest:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/qbh;->reset()V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/sis;->qna:Lorg/bouncycastle/crypto/gck;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/bouncycastle/crypto/wtn;->zta(ZLorg/bouncycastle/crypto/kth;)V

    return-void
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "engineSetParameter unsupported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "engineSetParameter unsupported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected engineSign()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/sis;->digest:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/qbh;->les()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/sis;->digest:Lorg/bouncycastle/crypto/qbh;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/qbh;->doFinal([BI)I

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/sis;->qna:Lorg/bouncycastle/crypto/gck;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/wtn;->you([B)[Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/sis;->encoding:Lorg/bouncycastle/crypto/gck/zta;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/sis;->qna:Lorg/bouncycastle/crypto/gck;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/gck;->getOrder()Ljava/math/BigInteger;

    move-result-object p0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-interface {v1, p0, v2, v0}, Lorg/bouncycastle/crypto/gck/zta;->zta(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/security/SignatureException;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUpdate(B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/sis;->digest:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {p0, p1}, Lorg/bouncycastle/crypto/qbh;->update(B)V

    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/sis;->digest:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/qbh;->update([BII)V

    return-void
.end method

.method protected engineVerify([B)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/sis;->digest:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/qbh;->les()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/sis;->digest:Lorg/bouncycastle/crypto/qbh;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/qbh;->doFinal([BI)I

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/sis;->encoding:Lorg/bouncycastle/crypto/gck/zta;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/sis;->qna:Lorg/bouncycastle/crypto/gck;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/gck;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v1, v3, p1}, Lorg/bouncycastle/crypto/gck/zta;->zta(Ljava/math/BigInteger;[B)[Ljava/math/BigInteger;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/sis;->qna:Lorg/bouncycastle/crypto/gck;

    aget-object v1, p1, v2

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-interface {p0, v0, v1, p1}, Lorg/bouncycastle/crypto/wtn;->zta([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result p0

    return p0

    :catch_0
    new-instance p0, Ljava/security/SignatureException;

    const-string p1, "error decoding signature bytes."

    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected zta(Lorg/bouncycastle/crypto/wtn/ywr;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/ywr;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/ywr;->getQ()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/sis;->digest:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/qbh;->les()I

    move-result v1

    const/16 v2, 0x400

    if-lt v0, v2, :cond_8

    const/16 v3, 0xc00

    if-gt v0, v3, :cond_8

    rem-int/lit16 v4, v0, 0x400

    if-nez v4, :cond_8

    if-ne v0, v2, :cond_1

    const/16 v2, 0xa0

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "valueN must be 160 for valueL = 1024"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/16 v2, 0x800

    const/16 v4, 0x100

    if-ne v0, v2, :cond_3

    const/16 v2, 0xe0

    if-eq p1, v2, :cond_3

    if-ne p1, v4, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "valueN must be 224 or 256 for valueL = 2048"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    if-ne v0, v3, :cond_5

    if-ne p1, v4, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "valueN must be 256 for valueL = 3072"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/sis;->digest:Lorg/bouncycastle/crypto/qbh;

    instance-of p0, p0, Lorg/bouncycastle/crypto/you/igw;

    if-nez p0, :cond_7

    mul-int/lit8 v1, v1, 0x8

    if-gt p1, v1, :cond_6

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "Key is too strong for this signature algorithm"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_3
    return-void

    :cond_8
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "valueL values must be between 1024 and 3072 and a multiple of 1024"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
