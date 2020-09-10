.class public Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/rtg;
.super Ljava/security/KeyPairGenerator;
.source ""


# static fields
.field static final Zoa:Ljava/math/BigInteger;


# instance fields
.field Voa:Lorg/bouncycastle/crypto/ssp/ywr;

.field param:Lorg/bouncycastle/crypto/wtn/lqr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x10001

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/rtg;->Zoa:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const-string v0, "RSA"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/crypto/ssp/ywr;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/ssp/ywr;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/rtg;->Voa:Lorg/bouncycastle/crypto/ssp/ywr;

    new-instance v0, Lorg/bouncycastle/crypto/wtn/lqr;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/rtg;->Zoa:Ljava/math/BigInteger;

    invoke-static {}, Lorg/bouncycastle/crypto/igw;->fj()Ljava/security/SecureRandom;

    move-result-object v2

    const/16 v3, 0x800

    invoke-static {v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/gck;->ma(I)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/wtn/lqr;-><init>(Ljava/math/BigInteger;Ljava/security/SecureRandom;II)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/rtg;->param:Lorg/bouncycastle/crypto/wtn/lqr;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/rtg;->Voa:Lorg/bouncycastle/crypto/ssp/ywr;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/rtg;->param:Lorg/bouncycastle/crypto/wtn/lqr;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/crypto/ssp/ywr;->zta(Lorg/bouncycastle/crypto/bvj;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 3

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/rtg;->Voa:Lorg/bouncycastle/crypto/ssp/ywr;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/ssp/ywr;->generateKeyPair()Lorg/bouncycastle/crypto/you;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/you;->getPublic()Lorg/bouncycastle/crypto/wtn/you;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/wtn/veq;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/you;->getPrivate()Lorg/bouncycastle/crypto/wtn/you;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/wtn/cgv;

    new-instance v1, Ljava/security/KeyPair;

    new-instance v2, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;

    invoke-direct {v2, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;-><init>(Lorg/bouncycastle/crypto/wtn/veq;)V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;-><init>(Lorg/bouncycastle/crypto/wtn/cgv;)V

    invoke-direct {v1, v2, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v1
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/wtn/lqr;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/rtg;->Zoa:Ljava/math/BigInteger;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/security/SecureRandom;

    invoke-direct {p2}, Ljava/security/SecureRandom;-><init>()V

    :goto_0
    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/gck;->ma(I)I

    move-result v2

    invoke-direct {v0, v1, p2, p1, v2}, Lorg/bouncycastle/crypto/wtn/lqr;-><init>(Ljava/math/BigInteger;Ljava/security/SecureRandom;II)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/rtg;->param:Lorg/bouncycastle/crypto/wtn/lqr;

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/rtg;->Voa:Lorg/bouncycastle/crypto/ssp/ywr;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/rtg;->param:Lorg/bouncycastle/crypto/wtn/lqr;

    invoke-virtual {p1, p0}, Lorg/bouncycastle/crypto/ssp/ywr;->zta(Lorg/bouncycastle/crypto/bvj;)V

    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    instance-of v0, p1, Ljava/security/spec/RSAKeyGenParameterSpec;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/security/spec/RSAKeyGenParameterSpec;

    new-instance v0, Lorg/bouncycastle/crypto/wtn/lqr;

    invoke-virtual {p1}, Ljava/security/spec/RSAKeyGenParameterSpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/security/SecureRandom;

    invoke-direct {p2}, Ljava/security/SecureRandom;-><init>()V

    :goto_0
    invoke-virtual {p1}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    move-result p1

    const/16 v2, 0x800

    invoke-static {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/gck;->ma(I)I

    move-result v2

    invoke-direct {v0, v1, p2, p1, v2}, Lorg/bouncycastle/crypto/wtn/lqr;-><init>(Ljava/math/BigInteger;Ljava/security/SecureRandom;II)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/rtg;->param:Lorg/bouncycastle/crypto/wtn/lqr;

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/rtg;->Voa:Lorg/bouncycastle/crypto/ssp/ywr;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/rtg;->param:Lorg/bouncycastle/crypto/wtn/lqr;

    invoke-virtual {p1, p0}, Lorg/bouncycastle/crypto/ssp/ywr;->zta(Lorg/bouncycastle/crypto/bvj;)V

    return-void

    :cond_1
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "parameter object not a RSAKeyGenParameterSpec"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
