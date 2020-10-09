.class public Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;
.source ""

# interfaces
.implements Lorg/bouncycastle/jcajce/provider/symmetric/util/gck;


# instance fields
.field private Qqa:[Ljava/lang/Class;

.field private Rpa:Lorg/bouncycastle/crypto/ear;

.field private digest:I

.field private era:Lorg/bouncycastle/crypto/wtn/ire;

.field private gra:I

.field private hra:I

.field private kra:Ljavax/crypto/spec/PBEParameterSpec;

.field private lra:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/crypto/ear;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;-><init>(Lorg/bouncycastle/crypto/ear;III)V

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/crypto/ear;III)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;->Qqa:[Ljava/lang/Class;

    iput v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;->hra:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;->kra:Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;->lra:Ljava/lang/String;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;->Rpa:Lorg/bouncycastle/crypto/ear;

    iput p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;->hra:I

    iput p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;->gra:I

    iput p4, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;->digest:I

    return-void
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    add-int v0, p5, p3

    array-length v1, p4

    if-gt v0, v1, :cond_1

    if-eqz p3, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;->Rpa:Lorg/bouncycastle/crypto/ear;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lorg/bouncycastle/crypto/ear;->zta([BII[BI)I

    :cond_0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;->Rpa:Lorg/bouncycastle/crypto/ear;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/ear;->reset()V

    return p3

    :cond_1
    new-instance p0, Ljavax/crypto/ShortBufferException;

    const-string p1, "output buffer too short for input."

    invoke-direct {p0, p1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected engineDoFinal([BII)[B
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;->engineUpdate([BII)[B

    move-result-object p1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;->Rpa:Lorg/bouncycastle/crypto/ear;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/ear;->reset()V

    return-object p1

    :cond_0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;->Rpa:Lorg/bouncycastle/crypto/ear;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/ear;->reset()V

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method protected engineGetBlockSize()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected engineGetIV()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;->era:Lorg/bouncycastle/crypto/wtn/ire;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/wtn/ire;->getIV()[B

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .locals 0

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p0

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x8

    return p0
.end method

.method protected engineGetOutputSize(I)I
    .locals 0

    return p1
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Rqa:Ljava/security/AlgorithmParameters;

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;->kra:Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;->lra:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->ua(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;->kra:Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v0, p0}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;->era:Lorg/bouncycastle/crypto/wtn/ire;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;->Rpa:Lorg/bouncycastle/crypto/ear;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/ear;->vju()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "ChaCha7539"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    const-string v1, "Grain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "Grainv1"

    goto :goto_0

    :cond_3
    const-string v1, "HC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_0
    :try_start_1
    invoke-virtual {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->ua(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Rqa:Ljava/security/AlgorithmParameters;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Rqa:Ljava/security/AlgorithmParameters;

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;->era:Lorg/bouncycastle/crypto/wtn/ire;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/wtn/ire;->getIV()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Rqa:Ljava/security/AlgorithmParameters;

    return-object p0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;->Qqa:[Ljava/lang/Class;

    array-length v3, v2

    if-eq v1, v3, :cond_0

    :try_start_0
    aget-object v2, v2, v1

    invoke-virtual {p3, v2}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "can\'t handle parameter "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/security/AlgorithmParameters;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_2
    invoke-virtual {p0, p1, p2, v0, p4}, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Rqa:Ljava/security/AlgorithmParameters;

    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-virtual {p0}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;->kra:Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;->lra:Ljava/lang/String;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->Rqa:Ljava/security/AlgorithmParameters;

    instance-of v0, p2, Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_11

    instance-of v0, p2, Lorg/bouncycastle/jcajce/PKCS12Key;

    if-eqz v0, :cond_1

    check-cast p2, Lorg/bouncycastle/jcajce/PKCS12Key;

    check-cast p3, Ljavax/crypto/spec/PBEParameterSpec;

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;->kra:Ljavax/crypto/spec/PBEParameterSpec;

    instance-of p3, p2, Lorg/bouncycastle/jcajce/PKCS12KeyWithParameters;

    if-eqz p3, :cond_0

    iget-object p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;->kra:Ljavax/crypto/spec/PBEParameterSpec;

    if-nez p3, :cond_0

    new-instance p3, Ljavax/crypto/spec/PBEParameterSpec;

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/jcajce/PKCS12KeyWithParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/PKCS12KeyWithParameters;->getSalt()[B

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/PKCS12KeyWithParameters;->getIterationCount()I

    move-result v0

    invoke-direct {p3, v1, v0}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;->kra:Ljavax/crypto/spec/PBEParameterSpec;

    :cond_0
    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/PKCS12Key;->getEncoded()[B

    move-result-object v2

    const/4 v3, 0x2

    iget v4, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;->digest:I

    iget v5, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;->gra:I

    iget p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;->hra:I

    mul-int/lit8 v6, p2, 0x8

    iget-object v7, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;->kra:Ljavax/crypto/spec/PBEParameterSpec;

    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;->Rpa:Lorg/bouncycastle/crypto/ear;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/ear;->vju()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v2 .. v8}, Lorg/bouncycastle/jcajce/provider/symmetric/util/gck$zta;->zta([BIIIILjava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lorg/bouncycastle/crypto/kth;

    move-result-object p2

    move-object p3, p2

    goto/16 :goto_2

    :cond_1
    instance-of v0, p2, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    if-eqz v0, :cond_5

    check-cast p2, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->Zi()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->Zi()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;->lra:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->he()Lorg/bouncycastle/crypto/kth;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->he()Lorg/bouncycastle/crypto/kth;

    move-result-object p3

    new-instance v0, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getSalt()[B

    move-result-object v1

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getIterationCount()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;->kra:Ljavax/crypto/spec/PBEParameterSpec;

    goto :goto_1

    :cond_3
    instance-of v0, p3, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;->Rpa:Lorg/bouncycastle/crypto/ear;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/ear;->vju()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/gck$zta;->zta(Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lorg/bouncycastle/crypto/kth;

    move-result-object v0

    check-cast p3, Ljavax/crypto/spec/PBEParameterSpec;

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;->kra:Ljavax/crypto/spec/PBEParameterSpec;

    move-object p3, v0

    :goto_1
    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->Kj()I

    move-result p2

    if-eqz p2, :cond_8

    move-object p2, p3

    check-cast p2, Lorg/bouncycastle/crypto/wtn/ire;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;->era:Lorg/bouncycastle/crypto/wtn/ire;

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "PBE requires PBE parameters to be set."

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    if-nez p3, :cond_7

    iget p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;->digest:I

    if-gtz p3, :cond_6

    new-instance p3, Lorg/bouncycastle/crypto/wtn/cjf;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object p2

    invoke-direct {p3, p2}, Lorg/bouncycastle/crypto/wtn/cjf;-><init>([B)V

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "Algorithm requires a PBE key"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    instance-of v0, p3, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v0, :cond_10

    new-instance v0, Lorg/bouncycastle/crypto/wtn/ire;

    new-instance v1, Lorg/bouncycastle/crypto/wtn/cjf;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object p2

    invoke-direct {v1, p2}, Lorg/bouncycastle/crypto/wtn/cjf;-><init>([B)V

    check-cast p3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p3}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lorg/bouncycastle/crypto/wtn/ire;-><init>(Lorg/bouncycastle/crypto/kth;[B)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;->era:Lorg/bouncycastle/crypto/wtn/ire;

    move-object p3, v0

    :cond_8
    :goto_2
    iget p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;->hra:I

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eqz p2, :cond_c

    instance-of p2, p3, Lorg/bouncycastle/crypto/wtn/ire;

    if-nez p2, :cond_c

    if-nez p4, :cond_9

    invoke-static {}, Lorg/bouncycastle/crypto/igw;->hj()Ljava/security/SecureRandom;

    move-result-object p4

    :cond_9
    if-eq p1, v1, :cond_b

    if-ne p1, v0, :cond_a

    goto :goto_3

    :cond_a
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "no IV set when one expected"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    :goto_3
    iget p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;->hra:I

    new-array p2, p2, [B

    invoke-virtual {p4, p2}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance p4, Lorg/bouncycastle/crypto/wtn/ire;

    invoke-direct {p4, p3, p2}, Lorg/bouncycastle/crypto/wtn/ire;-><init>(Lorg/bouncycastle/crypto/kth;[B)V

    iput-object p4, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;->era:Lorg/bouncycastle/crypto/wtn/ire;

    move-object p3, p4

    :cond_c
    if-eq p1, v1, :cond_f

    const/4 p2, 0x2

    if-eq p1, p2, :cond_e

    if-eq p1, v0, :cond_f

    const/4 p2, 0x4

    if-ne p1, p2, :cond_d

    goto :goto_4

    :cond_d
    :try_start_0
    new-instance p0, Ljava/security/InvalidParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unknown opmode "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " passed"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    goto :goto_6

    :cond_e
    :goto_4
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;->Rpa:Lorg/bouncycastle/crypto/ear;

    const/4 p1, 0x0

    invoke-interface {p0, p1, p3}, Lorg/bouncycastle/crypto/ear;->zta(ZLorg/bouncycastle/crypto/kth;)V

    goto :goto_5

    :cond_f
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;->Rpa:Lorg/bouncycastle/crypto/ear;

    invoke-interface {p0, v1, p3}, Lorg/bouncycastle/crypto/ear;->zta(ZLorg/bouncycastle/crypto/kth;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    return-void

    :goto_6
    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "unknown parameter type."

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    new-instance p0, Ljava/security/InvalidKeyException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Key for algorithm "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not suitable for symmetric enryption."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string p0, "ECB"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "NONE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t support mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    const-string p0, "NoPadding"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Padding "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " unknown."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected engineUpdate([BII[BI)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    add-int v0, p5, p3

    array-length v1, p4

    if-gt v0, v1, :cond_0

    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;->Rpa:Lorg/bouncycastle/crypto/ear;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lorg/bouncycastle/crypto/ear;->zta([BII[BI)I
    :try_end_0
    .catch Lorg/bouncycastle/crypto/DataLengthException; {:try_start_0 .. :try_end_0} :catch_0

    return p3

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p0, Ljavax/crypto/ShortBufferException;

    const-string p1, "output buffer too short for input."

    invoke-direct {p0, p1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected engineUpdate([BII)[B
    .locals 7

    new-array v6, p3, [B

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;->Rpa:Lorg/bouncycastle/crypto/ear;

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v6

    invoke-interface/range {v0 .. v5}, Lorg/bouncycastle/crypto/ear;->zta([BII[BI)I

    return-object v6
.end method
