.class public Lorg/bouncycastle/jcajce/provider/asymmetric/dh/ssp;
.super Ljava/security/KeyPairGenerator;
.source ""


# static fields
.field private static lock:Ljava/lang/Object;

.field private static params:Ljava/util/Hashtable;


# instance fields
.field Hla:Lorg/bouncycastle/crypto/ssp/sis;

.field Ila:Z

.field param:Lorg/bouncycastle/crypto/wtn/rtg;

.field strength:I

.field yla:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/ssp;->params:Ljava/util/Hashtable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/ssp;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "DH"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/crypto/ssp/sis;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/ssp/sis;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/ssp;->Hla:Lorg/bouncycastle/crypto/ssp/sis;

    const/16 v0, 0x800

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/ssp;->strength:I

    invoke-static {}, Lorg/bouncycastle/crypto/igw;->Ui()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/ssp;->yla:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/ssp;->Ila:Z

    return-void
.end method

.method private zta(Ljava/security/SecureRandom;Ljavax/crypto/spec/DHParameterSpec;)Lorg/bouncycastle/crypto/wtn/rtg;
    .locals 4

    new-instance p0, Lorg/bouncycastle/crypto/wtn/rtg;

    new-instance v0, Lorg/bouncycastle/crypto/wtn/cno;

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result p2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p2}, Lorg/bouncycastle/crypto/wtn/cno;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/wtn/rtg;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/wtn/cno;)V

    return-object p0
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 6

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/ssp;->Ila:Z

    if-nez v0, :cond_3

    iget v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/ssp;->strength:I

    invoke-static {v0}, Lorg/bouncycastle/util/cno;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/ssp;->params:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/ssp;->params:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/wtn/rtg;

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/ssp;->param:Lorg/bouncycastle/crypto/wtn/rtg;

    goto :goto_2

    :cond_0
    sget-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/sis;

    iget v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/ssp;->strength:I

    invoke-interface {v1, v2}, Lorg/bouncycastle/jcajce/provider/config/sis;->cno(I)Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/ssp;->yla:Ljava/security/SecureRandom;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/ssp;->zta(Ljava/security/SecureRandom;Ljavax/crypto/spec/DHParameterSpec;)Lorg/bouncycastle/crypto/wtn/rtg;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/ssp;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/ssp;->params:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/ssp;->params:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/wtn/rtg;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/ssp;->param:Lorg/bouncycastle/crypto/wtn/rtg;

    goto :goto_1

    :cond_2
    new-instance v2, Lorg/bouncycastle/crypto/ssp/rtg;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/ssp/rtg;-><init>()V

    iget v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/ssp;->strength:I

    iget v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/ssp;->strength:I

    invoke-static {v4}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/gck;->ga(I)I

    move-result v4

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/ssp;->yla:Ljava/security/SecureRandom;

    invoke-virtual {v2, v3, v4, v5}, Lorg/bouncycastle/crypto/ssp/rtg;->zta(IILjava/security/SecureRandom;)V

    new-instance v3, Lorg/bouncycastle/crypto/wtn/rtg;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/ssp;->yla:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/ssp/rtg;->generateParameters()Lorg/bouncycastle/crypto/wtn/cno;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lorg/bouncycastle/crypto/wtn/rtg;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/wtn/cno;)V

    iput-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/ssp;->param:Lorg/bouncycastle/crypto/wtn/rtg;

    sget-object v2, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/ssp;->params:Ljava/util/Hashtable;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/ssp;->param:Lorg/bouncycastle/crypto/wtn/rtg;

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/ssp;->Hla:Lorg/bouncycastle/crypto/ssp/sis;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/ssp;->param:Lorg/bouncycastle/crypto/wtn/rtg;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/ssp/sis;->zta(Lorg/bouncycastle/crypto/bvj;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/ssp;->Ila:Z

    goto :goto_3

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_3
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/ssp;->Hla:Lorg/bouncycastle/crypto/ssp/sis;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/ssp/sis;->generateKeyPair()Lorg/bouncycastle/crypto/you;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/you;->getPublic()Lorg/bouncycastle/crypto/wtn/you;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/wtn/bio;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/you;->getPrivate()Lorg/bouncycastle/crypto/wtn/you;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/wtn/kth;

    new-instance v1, Ljava/security/KeyPair;

    new-instance v2, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;

    invoke-direct {v2, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;-><init>(Lorg/bouncycastle/crypto/wtn/bio;)V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;-><init>(Lorg/bouncycastle/crypto/wtn/kth;)V

    invoke-direct {v1, v2, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v1
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/ssp;->strength:I

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/ssp;->yla:Ljava/security/SecureRandom;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/ssp;->Ila:Z

    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    instance-of v0, p1, Ljavax/crypto/spec/DHParameterSpec;

    if-eqz v0, :cond_0

    check-cast p1, Ljavax/crypto/spec/DHParameterSpec;

    :try_start_0
    invoke-direct {p0, p2, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/ssp;->zta(Ljava/security/SecureRandom;Ljavax/crypto/spec/DHParameterSpec;)Lorg/bouncycastle/crypto/wtn/rtg;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/ssp;->param:Lorg/bouncycastle/crypto/wtn/rtg;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/ssp;->Hla:Lorg/bouncycastle/crypto/ssp/sis;

    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/ssp;->param:Lorg/bouncycastle/crypto/wtn/rtg;

    invoke-virtual {p1, p2}, Lorg/bouncycastle/crypto/ssp/sis;->zta(Lorg/bouncycastle/crypto/bvj;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/ssp;->Ila:Z

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "parameter object not a DHParameterSpec"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
