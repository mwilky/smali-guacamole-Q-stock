.class public Lorg/bouncycastle/jcajce/provider/asymmetric/dh/zta;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/util/you;
.source ""


# instance fields
.field protected Xoa:Ljava/security/SecureRandom;

.field private l:I

.field protected strength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/you;-><init>()V

    const/16 v0, 0x800

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/zta;->strength:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/zta;->l:I

    return-void
.end method


# virtual methods
.method protected engineGenerateParameters()Ljava/security/AlgorithmParameters;
    .locals 4

    new-instance v0, Lorg/bouncycastle/crypto/ssp/rtg;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/ssp/rtg;-><init>()V

    iget v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/zta;->strength:I

    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/gck;->ma(I)I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/zta;->Xoa:Ljava/security/SecureRandom;

    if-eqz v2, :cond_0

    iget v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/zta;->strength:I

    invoke-virtual {v0, v3, v1, v2}, Lorg/bouncycastle/crypto/ssp/rtg;->zta(IILjava/security/SecureRandom;)V

    goto :goto_0

    :cond_0
    iget v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/zta;->strength:I

    invoke-static {}, Lorg/bouncycastle/crypto/igw;->hj()Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lorg/bouncycastle/crypto/ssp/rtg;->zta(IILjava/security/SecureRandom;)V

    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/ssp/rtg;->generateParameters()Lorg/bouncycastle/crypto/wtn/cno;

    move-result-object v0

    :try_start_0
    const-string v1, "DH"

    invoke-virtual {p0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/you;->ua(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/cno;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/cno;->getG()Ljava/math/BigInteger;

    move-result-object v0

    iget p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/zta;->l:I

    invoke-direct {v2, v3, v0, p0}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-virtual {v1, v2}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(ILjava/security/SecureRandom;)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/zta;->strength:I

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/zta;->Xoa:Ljava/security/SecureRandom;

    return-void
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    instance-of v0, p1, Ljavax/crypto/spec/DHGenParameterSpec;

    if-eqz v0, :cond_0

    check-cast p1, Ljavax/crypto/spec/DHGenParameterSpec;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHGenParameterSpec;->getPrimeSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/zta;->strength:I

    invoke-virtual {p1}, Ljavax/crypto/spec/DHGenParameterSpec;->getExponentSize()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/zta;->l:I

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/zta;->Xoa:Ljava/security/SecureRandom;

    return-void

    :cond_0
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "DH parameter generator requires a DHGenParameterSpec for initialisation"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
