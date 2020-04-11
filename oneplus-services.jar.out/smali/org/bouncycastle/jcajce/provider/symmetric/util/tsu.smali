.class public Lorg/bouncycastle/jcajce/provider/symmetric/util/tsu;
.super Ljavax/crypto/KeyGeneratorSpi;
.source ""


# instance fields
.field protected Gma:Lorg/bouncycastle/crypto/cno;

.field protected apa:Ljava/lang/String;

.field protected bpa:I

.field protected cpa:Z

.field protected keySize:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;ILorg/bouncycastle/crypto/cno;)V
    .locals 1

    invoke-direct {p0}, Ljavax/crypto/KeyGeneratorSpi;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/tsu;->cpa:Z

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/tsu;->apa:Ljava/lang/String;

    iput p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/tsu;->bpa:I

    iput p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/tsu;->keySize:I

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/tsu;->Gma:Lorg/bouncycastle/crypto/cno;

    return-void
.end method


# virtual methods
.method protected engineGenerateKey()Ljavax/crypto/SecretKey;
    .locals 4

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/tsu;->cpa:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/tsu;->Gma:Lorg/bouncycastle/crypto/cno;

    new-instance v1, Lorg/bouncycastle/crypto/bvj;

    invoke-static {}, Lorg/bouncycastle/crypto/igw;->Yi()Ljava/security/SecureRandom;

    move-result-object v2

    iget v3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/tsu;->bpa:I

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/crypto/bvj;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/cno;->zta(Lorg/bouncycastle/crypto/bvj;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/tsu;->cpa:Z

    :cond_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/tsu;->Gma:Lorg/bouncycastle/crypto/cno;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/cno;->generateKey()[B

    move-result-object v1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/tsu;->apa:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method protected engineInit(ILjava/security/SecureRandom;)V
    .locals 2

    if-nez p2, :cond_0

    :try_start_0
    invoke-static {}, Lorg/bouncycastle/crypto/igw;->Yi()Ljava/security/SecureRandom;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/tsu;->Gma:Lorg/bouncycastle/crypto/cno;

    new-instance v1, Lorg/bouncycastle/crypto/bvj;

    invoke-direct {v1, p2, p1}, Lorg/bouncycastle/crypto/bvj;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/cno;->zta(Lorg/bouncycastle/crypto/bvj;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/tsu;->cpa:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineInit(Ljava/security/SecureRandom;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/tsu;->Gma:Lorg/bouncycastle/crypto/cno;

    new-instance v1, Lorg/bouncycastle/crypto/bvj;

    iget v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/tsu;->bpa:I

    invoke-direct {v1, p1, v2}, Lorg/bouncycastle/crypto/bvj;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/cno;->zta(Lorg/bouncycastle/crypto/bvj;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/tsu;->cpa:Z

    :cond_0
    return-void
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "Not Implemented"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
