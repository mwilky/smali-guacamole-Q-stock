.class public Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/sis;
.super Ljava/security/SignatureSpi;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/sis$zta;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/sis$ssp;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/sis$rtg;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/sis$tsu;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/sis$sis;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/sis$you;
    }
.end annotation


# instance fields
.field private Rpa:Lorg/bouncycastle/crypto/zta;

.field private Spa:Lorg/bouncycastle/asn1/x509/zta;

.field private digest:Lorg/bouncycastle/crypto/qbh;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/crypto/qbh;Lorg/bouncycastle/crypto/zta;)V
    .locals 0

    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/sis;->digest:Lorg/bouncycastle/crypto/qbh;

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/sis;->Rpa:Lorg/bouncycastle/crypto/zta;

    new-instance p2, Lorg/bouncycastle/asn1/x509/zta;

    sget-object p3, Lorg/bouncycastle/asn1/z;->INSTANCE:Lorg/bouncycastle/asn1/z;

    invoke-direct {p2, p1, p3}, Lorg/bouncycastle/asn1/x509/zta;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/sis;->Spa:Lorg/bouncycastle/asn1/x509/zta;

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/crypto/qbh;Lorg/bouncycastle/crypto/zta;)V
    .locals 0

    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/sis;->digest:Lorg/bouncycastle/crypto/qbh;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/sis;->Rpa:Lorg/bouncycastle/crypto/zta;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/sis;->Spa:Lorg/bouncycastle/asn1/x509/zta;

    return-void
.end method

.method private igw(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private veq([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/sis;->Spa:Lorg/bouncycastle/asn1/x509/zta;

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/x509/qbh;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/asn1/x509/qbh;-><init>(Lorg/bouncycastle/asn1/x509/zta;[B)V

    const-string p0, "DER"

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/oif;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/ssp;->zta(Ljava/security/interfaces/RSAPrivateKey;)Lorg/bouncycastle/crypto/wtn/veq;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/sis;->digest:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/qbh;->reset()V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/sis;->Rpa:Lorg/bouncycastle/crypto/zta;

    const/4 v0, 0x1

    invoke-interface {p0, v0, p1}, Lorg/bouncycastle/crypto/zta;->zta(ZLorg/bouncycastle/crypto/kth;)V

    return-void

    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supplied key ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/sis;->igw(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") is not a RSAPrivateKey instance"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/ssp;->zta(Ljava/security/interfaces/RSAPublicKey;)Lorg/bouncycastle/crypto/wtn/veq;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/sis;->digest:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/qbh;->reset()V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/sis;->Rpa:Lorg/bouncycastle/crypto/zta;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/bouncycastle/crypto/zta;->zta(ZLorg/bouncycastle/crypto/kth;)V

    return-void

    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supplied key ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/sis;->igw(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") is not a RSAPublicKey instance"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/sis;->digest:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/qbh;->les()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/sis;->digest:Lorg/bouncycastle/crypto/qbh;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/qbh;->doFinal([BI)I

    :try_start_0
    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/sis;->veq([B)[B

    move-result-object v0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/sis;->Rpa:Lorg/bouncycastle/crypto/zta;

    array-length v1, v0

    invoke-interface {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/zta;->you([BII)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/security/SignatureException;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    new-instance p0, Ljava/security/SignatureException;

    const-string v0, "key too small for signature type"

    invoke-direct {p0, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected engineUpdate(B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/sis;->digest:Lorg/bouncycastle/crypto/qbh;

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

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/sis;->digest:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/qbh;->update([BII)V

    return-void
.end method

.method protected engineVerify([B)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/sis;->digest:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/qbh;->les()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/sis;->digest:Lorg/bouncycastle/crypto/qbh;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/qbh;->doFinal([BI)I

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/sis;->Rpa:Lorg/bouncycastle/crypto/zta;

    array-length v3, p1

    invoke-interface {v1, p1, v2, v3}, Lorg/bouncycastle/crypto/zta;->you([BII)[B

    move-result-object p1

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/sis;->veq([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    array-length v0, p1

    array-length v1, p0

    if-ne v0, v1, :cond_0

    invoke-static {p1, p0}, Lorg/bouncycastle/util/zta;->cno([B[B)Z

    move-result p0

    return p0

    :cond_0
    array-length v0, p1

    array-length v1, p0

    add-int/lit8 v1, v1, -0x2

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    aget-byte v1, p0, v0

    add-int/lit8 v1, v1, -0x2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    const/4 v1, 0x3

    aget-byte v3, p0, v1

    add-int/lit8 v3, v3, -0x2

    int-to-byte v3, v3

    aput-byte v3, p0, v1

    aget-byte v1, p0, v1

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v3, v1, 0x2

    move v4, v2

    move v5, v4

    :goto_0
    array-length v6, p0

    sub-int/2addr v6, v3

    if-ge v4, v6, :cond_1

    add-int v6, v1, v4

    aget-byte v6, p1, v6

    add-int v7, v3, v4

    aget-byte v7, p0, v7

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_2

    aget-byte v4, p1, v3

    aget-byte v6, p0, v3

    xor-int/2addr v4, v6

    or-int/2addr v5, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    return v0

    :cond_4
    invoke-static {p0, p0}, Lorg/bouncycastle/util/zta;->cno([B[B)Z

    :catch_0
    return v2
.end method
