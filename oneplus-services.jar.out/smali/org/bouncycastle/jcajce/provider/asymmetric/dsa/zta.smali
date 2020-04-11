.class public Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/zta;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/util/you;
.source ""


# instance fields
.field protected params:Lorg/bouncycastle/crypto/wtn/dma;

.field protected strength:I

.field protected yla:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/you;-><init>()V

    const/16 v0, 0x400

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/zta;->strength:I

    return-void
.end method


# virtual methods
.method protected engineGenerateParameters()Ljava/security/AlgorithmParameters;
    .locals 6

    iget v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/zta;->strength:I

    const/16 v1, 0x400

    if-gt v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/ssp/kth;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/ssp/kth;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/ssp/kth;

    new-instance v2, Lorg/bouncycastle/crypto/you/ywr;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/you/ywr;-><init>()V

    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/ssp/kth;-><init>(Lorg/bouncycastle/crypto/qbh;)V

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/zta;->yla:Ljava/security/SecureRandom;

    if-nez v2, :cond_1

    invoke-static {}, Lorg/bouncycastle/crypto/igw;->Ui()Ljava/security/SecureRandom;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/zta;->yla:Ljava/security/SecureRandom;

    :cond_1
    iget v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/zta;->strength:I

    invoke-static {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/gck;->ga(I)I

    move-result v2

    iget v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/zta;->strength:I

    if-ne v3, v1, :cond_2

    new-instance v3, Lorg/bouncycastle/crypto/wtn/dma;

    const/16 v4, 0xa0

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/zta;->yla:Ljava/security/SecureRandom;

    invoke-direct {v3, v1, v4, v2, v5}, Lorg/bouncycastle/crypto/wtn/dma;-><init>(IIILjava/security/SecureRandom;)V

    iput-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/zta;->params:Lorg/bouncycastle/crypto/wtn/dma;

    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/zta;->params:Lorg/bouncycastle/crypto/wtn/dma;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/ssp/kth;->zta(Lorg/bouncycastle/crypto/wtn/dma;)V

    goto :goto_2

    :cond_2
    if-le v3, v1, :cond_3

    new-instance v1, Lorg/bouncycastle/crypto/wtn/dma;

    const/16 v4, 0x100

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/zta;->yla:Ljava/security/SecureRandom;

    invoke-direct {v1, v3, v4, v2, v5}, Lorg/bouncycastle/crypto/wtn/dma;-><init>(IIILjava/security/SecureRandom;)V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/zta;->params:Lorg/bouncycastle/crypto/wtn/dma;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/zta;->yla:Ljava/security/SecureRandom;

    invoke-virtual {v0, v3, v2, v1}, Lorg/bouncycastle/crypto/ssp/kth;->zta(IILjava/security/SecureRandom;)V

    :goto_2
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/ssp/kth;->generateParameters()Lorg/bouncycastle/crypto/wtn/ywr;

    move-result-object v0

    :try_start_0
    const-string v1, "DSA"

    invoke-virtual {p0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/you;->ra(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object p0

    new-instance v1, Ljava/security/spec/DSAParameterSpec;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/ywr;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/ywr;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/ywr;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Ljava/security/spec/DSAParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(ILjava/security/SecureRandom;)V
    .locals 2

    const/16 v0, 0x200

    if-lt p1, v0, :cond_4

    const/16 v0, 0xc00

    if-gt p1, v0, :cond_4

    const/16 v0, 0x400

    if-gt p1, v0, :cond_1

    rem-int/lit8 v1, p1, 0x40

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "strength must be a multiple of 64 below 1024 bits."

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-le p1, v0, :cond_3

    rem-int/lit16 v0, p1, 0x400

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "strength must be a multiple of 1024 above 1024 bits."

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    iput p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/zta;->strength:I

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/zta;->yla:Ljava/security/SecureRandom;

    return-void

    :cond_4
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "strength must be from 512 - 3072"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "No supported AlgorithmParameterSpec for DSA parameter generation."

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
