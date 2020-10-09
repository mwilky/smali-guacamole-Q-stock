.class public Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/ssp;
.super Ljava/security/KeyPairGenerator;
.source ""


# static fields
.field private static lock:Ljava/lang/Object;

.field private static params:Ljava/util/Hashtable;


# instance fields
.field Xoa:Ljava/security/SecureRandom;

.field fpa:Lorg/bouncycastle/crypto/ssp/cno;

.field gpa:Z

.field param:Lorg/bouncycastle/crypto/wtn/wtn;

.field strength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/ssp;->params:Ljava/util/Hashtable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/ssp;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "DSA"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/crypto/ssp/cno;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/ssp/cno;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/ssp;->fpa:Lorg/bouncycastle/crypto/ssp/cno;

    const/16 v0, 0x400

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/ssp;->strength:I

    invoke-static {}, Lorg/bouncycastle/crypto/igw;->hj()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/ssp;->Xoa:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/ssp;->gpa:Z

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 8

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/ssp;->gpa:Z

    if-nez v0, :cond_5

    iget v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/ssp;->strength:I

    invoke-static {v0}, Lorg/bouncycastle/util/cno;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/ssp;->params:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/ssp;->params:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/wtn/wtn;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/ssp;->param:Lorg/bouncycastle/crypto/wtn/wtn;

    goto/16 :goto_3

    :cond_0
    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/ssp;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/ssp;->params:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/ssp;->params:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/wtn/wtn;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/ssp;->param:Lorg/bouncycastle/crypto/wtn/wtn;

    goto :goto_2

    :cond_1
    iget v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/ssp;->strength:I

    invoke-static {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/gck;->ma(I)I

    move-result v2

    iget v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/ssp;->strength:I

    const/16 v4, 0x400

    if-ne v3, v4, :cond_3

    new-instance v3, Lorg/bouncycastle/crypto/ssp/kth;

    invoke-direct {v3}, Lorg/bouncycastle/crypto/ssp/kth;-><init>()V

    const-string v5, "org.bouncycastle.dsa.FIPS186-2for1024bits"

    invoke-static {v5}, Lorg/bouncycastle/util/gck;->Wa(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/ssp;->strength:I

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/ssp;->Xoa:Ljava/security/SecureRandom;

    :goto_0
    invoke-virtual {v3, v4, v2, v5}, Lorg/bouncycastle/crypto/ssp/kth;->zta(IILjava/security/SecureRandom;)V

    goto :goto_1

    :cond_2
    new-instance v5, Lorg/bouncycastle/crypto/wtn/dma;

    const/16 v6, 0xa0

    iget-object v7, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/ssp;->Xoa:Ljava/security/SecureRandom;

    invoke-direct {v5, v4, v6, v2, v7}, Lorg/bouncycastle/crypto/wtn/dma;-><init>(IIILjava/security/SecureRandom;)V

    invoke-virtual {v3, v5}, Lorg/bouncycastle/crypto/ssp/kth;->zta(Lorg/bouncycastle/crypto/wtn/dma;)V

    goto :goto_1

    :cond_3
    iget v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/ssp;->strength:I

    if-le v3, v4, :cond_4

    new-instance v3, Lorg/bouncycastle/crypto/wtn/dma;

    iget v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/ssp;->strength:I

    const/16 v5, 0x100

    iget-object v6, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/ssp;->Xoa:Ljava/security/SecureRandom;

    invoke-direct {v3, v4, v5, v2, v6}, Lorg/bouncycastle/crypto/wtn/dma;-><init>(IIILjava/security/SecureRandom;)V

    new-instance v2, Lorg/bouncycastle/crypto/ssp/kth;

    new-instance v4, Lorg/bouncycastle/crypto/you/ywr;

    invoke-direct {v4}, Lorg/bouncycastle/crypto/you/ywr;-><init>()V

    invoke-direct {v2, v4}, Lorg/bouncycastle/crypto/ssp/kth;-><init>(Lorg/bouncycastle/crypto/qbh;)V

    invoke-virtual {v2, v3}, Lorg/bouncycastle/crypto/ssp/kth;->zta(Lorg/bouncycastle/crypto/wtn/dma;)V

    move-object v3, v2

    goto :goto_1

    :cond_4
    new-instance v3, Lorg/bouncycastle/crypto/ssp/kth;

    invoke-direct {v3}, Lorg/bouncycastle/crypto/ssp/kth;-><init>()V

    iget v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/ssp;->strength:I

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/ssp;->Xoa:Ljava/security/SecureRandom;

    goto :goto_0

    :goto_1
    new-instance v2, Lorg/bouncycastle/crypto/wtn/wtn;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/ssp;->Xoa:Ljava/security/SecureRandom;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/ssp/kth;->generateParameters()Lorg/bouncycastle/crypto/wtn/ywr;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lorg/bouncycastle/crypto/wtn/wtn;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/wtn/ywr;)V

    iput-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/ssp;->param:Lorg/bouncycastle/crypto/wtn/wtn;

    sget-object v2, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/ssp;->params:Ljava/util/Hashtable;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/ssp;->param:Lorg/bouncycastle/crypto/wtn/wtn;

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/ssp;->fpa:Lorg/bouncycastle/crypto/ssp/cno;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/ssp;->param:Lorg/bouncycastle/crypto/wtn/wtn;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/ssp/cno;->zta(Lorg/bouncycastle/crypto/bvj;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/ssp;->gpa:Z

    goto :goto_4

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_5
    :goto_4
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/ssp;->fpa:Lorg/bouncycastle/crypto/ssp/cno;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/ssp/cno;->generateKeyPair()Lorg/bouncycastle/crypto/you;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/you;->getPublic()Lorg/bouncycastle/crypto/wtn/you;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/wtn/oif;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/you;->getPrivate()Lorg/bouncycastle/crypto/wtn/you;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/wtn/qbh;

    new-instance v1, Ljava/security/KeyPair;

    new-instance v2, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;

    invoke-direct {v2, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;-><init>(Lorg/bouncycastle/crypto/wtn/oif;)V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPrivateKey;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPrivateKey;-><init>(Lorg/bouncycastle/crypto/wtn/qbh;)V

    invoke-direct {v1, v2, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v1
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 4

    const/16 v0, 0x200

    if-lt p1, v0, :cond_4

    const/16 v0, 0x1000

    if-gt p1, v0, :cond_4

    const/16 v0, 0x400

    if-ge p1, v0, :cond_0

    rem-int/lit8 v1, p1, 0x40

    if-nez v1, :cond_4

    :cond_0
    if-lt p1, v0, :cond_1

    rem-int/lit16 v0, p1, 0x400

    if-nez v0, :cond_4

    :cond_1
    if-nez p2, :cond_2

    new-instance p2, Ljava/security/SecureRandom;

    invoke-direct {p2}, Ljava/security/SecureRandom;-><init>()V

    :cond_2
    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/sis;

    invoke-interface {v0, p1}, Lorg/bouncycastle/jcajce/provider/config/sis;->tsu(I)Ljava/security/spec/DSAParameterSpec;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance p1, Lorg/bouncycastle/crypto/wtn/wtn;

    new-instance v1, Lorg/bouncycastle/crypto/wtn/ywr;

    invoke-virtual {v0}, Ljava/security/spec/DSAParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/spec/DSAParameterSpec;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/spec/DSAParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lorg/bouncycastle/crypto/wtn/ywr;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p1, p2, v1}, Lorg/bouncycastle/crypto/wtn/wtn;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/wtn/ywr;)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/ssp;->param:Lorg/bouncycastle/crypto/wtn/wtn;

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/ssp;->fpa:Lorg/bouncycastle/crypto/ssp/cno;

    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/ssp;->param:Lorg/bouncycastle/crypto/wtn/wtn;

    invoke-virtual {p1, p2}, Lorg/bouncycastle/crypto/ssp/cno;->zta(Lorg/bouncycastle/crypto/bvj;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    iput p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/ssp;->strength:I

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/ssp;->Xoa:Ljava/security/SecureRandom;

    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/ssp;->gpa:Z

    return-void

    :cond_4
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "strength must be from 512 - 4096 and a multiple of 1024 above 1024"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    instance-of v0, p1, Ljava/security/spec/DSAParameterSpec;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/security/spec/DSAParameterSpec;

    if-nez p2, :cond_0

    new-instance p2, Ljava/security/SecureRandom;

    invoke-direct {p2}, Ljava/security/SecureRandom;-><init>()V

    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/wtn/wtn;

    new-instance v1, Lorg/bouncycastle/crypto/wtn/ywr;

    invoke-virtual {p1}, Ljava/security/spec/DSAParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/spec/DSAParameterSpec;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Ljava/security/spec/DSAParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lorg/bouncycastle/crypto/wtn/ywr;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, p2, v1}, Lorg/bouncycastle/crypto/wtn/wtn;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/wtn/ywr;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/ssp;->param:Lorg/bouncycastle/crypto/wtn/wtn;

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/ssp;->fpa:Lorg/bouncycastle/crypto/ssp/cno;

    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/ssp;->param:Lorg/bouncycastle/crypto/wtn/wtn;

    invoke-virtual {p1, p2}, Lorg/bouncycastle/crypto/ssp/cno;->zta(Lorg/bouncycastle/crypto/bvj;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/ssp;->gpa:Z

    return-void

    :cond_1
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "parameter object not a DSAParameterSpec"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
