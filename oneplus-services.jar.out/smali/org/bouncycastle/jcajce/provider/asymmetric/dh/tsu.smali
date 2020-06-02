.class public Lorg/bouncycastle/jcajce/provider/asymmetric/dh/tsu;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;
.source ""


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final lra:Ljava/math/BigInteger;


# instance fields
.field private g:Ljava/math/BigInteger;

.field private final kra:Lorg/bouncycastle/crypto/tsu;

.field private p:Ljava/math/BigInteger;

.field private result:[B

.field private x:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/tsu;->ONE:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/tsu;->lra:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "Diffie-Hellman"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/tsu;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/dma;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/crypto/dma;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/dma;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/tsu;->kra:Lorg/bouncycastle/crypto/tsu;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/crypto/tsu;Lorg/bouncycastle/crypto/dma;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/dma;)V

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/tsu;->kra:Lorg/bouncycastle/crypto/tsu;

    return-void
.end method

.method private you(Ljava/security/PrivateKey;)Lorg/bouncycastle/crypto/wtn/kth;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of p0, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    if-eqz p0, :cond_1

    instance-of p0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;

    if-eqz p0, :cond_0

    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->Gj()Lorg/bouncycastle/crypto/wtn/kth;

    move-result-object p0

    return-object p0

    :cond_0
    check-cast p1, Ljavax/crypto/interfaces/DHPrivateKey;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/crypto/wtn/kth;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object p1

    new-instance v1, Lorg/bouncycastle/crypto/wtn/cno;

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result p0

    invoke-direct {v1, v2, v3, v4, p0}, Lorg/bouncycastle/crypto/wtn/cno;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/crypto/wtn/kth;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/wtn/cno;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "private key not a DHPrivateKey"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private zta(Ljava/security/PublicKey;)Lorg/bouncycastle/crypto/wtn/bio;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of p0, p1, Ljavax/crypto/interfaces/DHPublicKey;

    if-eqz p0, :cond_2

    instance-of p0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;

    if-eqz p0, :cond_0

    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->Gj()Lorg/bouncycastle/crypto/wtn/bio;

    move-result-object p0

    return-object p0

    :cond_0
    check-cast p1, Ljavax/crypto/interfaces/DHPublicKey;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p0

    instance-of v0, p0, Lorg/bouncycastle/jcajce/sis/you;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/wtn/bio;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object p1

    check-cast p0, Lorg/bouncycastle/jcajce/sis/you;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/sis/you;->ug()Lorg/bouncycastle/crypto/wtn/cno;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lorg/bouncycastle/crypto/wtn/bio;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/wtn/cno;)V

    return-object v0

    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/wtn/bio;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object p1

    new-instance v1, Lorg/bouncycastle/crypto/wtn/cno;

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result p0

    invoke-direct {v1, v2, v3, v4, p0}, Lorg/bouncycastle/crypto/wtn/cno;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/crypto/wtn/bio;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/wtn/cno;)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "public key not a DHPublicKey"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/tsu;->x:Ljava/math/BigInteger;

    if-eqz v0, :cond_5

    instance-of v0, p1, Ljavax/crypto/interfaces/DHPublicKey;

    if-eqz v0, :cond_4

    check-cast p1, Ljavax/crypto/interfaces/DHPublicKey;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/tsu;->g:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/tsu;->p:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/tsu;->lra:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/tsu;->p:Ljava/math/BigInteger;

    sget-object v2, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/tsu;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/tsu;->x:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/tsu;->p:Ljava/math/BigInteger;

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/tsu;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/tsu;->tsu(Ljava/math/BigInteger;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/tsu;->result:[B

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;-><init>(Ljava/math/BigInteger;Ljavax/crypto/spec/DHParameterSpec;)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "Shared key can\'t be 1"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "Invalid DH PublicKey"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "DHPublicKey not for this KeyAgreement!"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "DHKeyAgreement doPhase requires DHPublicKey"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Diffie-Hellman not initialised."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected engineGenerateSecret([BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/tsu;->x:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->engineGenerateSecret([BI)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Diffie-Hellman not initialised."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/tsu;->x:Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    const-string v0, "TlsPremasterSecret"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/tsu;->result:[B

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->kth([B)[B

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Diffie-Hellman not initialised."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected engineGenerateSecret()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/tsu;->x:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    invoke-super {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->engineGenerateSecret()[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Diffie-Hellman not initialised."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of p2, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    if-eqz p2, :cond_0

    check-cast p1, Ljavax/crypto/interfaces/DHPrivateKey;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p2

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/tsu;->p:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p2

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/tsu;->g:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/tsu;->x:Ljava/math/BigInteger;

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/tsu;->x:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/tsu;->tsu(Ljava/math/BigInteger;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/tsu;->result:[B

    return-void

    :cond_0
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "DHKeyAgreement requires DHPrivateKey"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    instance-of p3, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    if-eqz p3, :cond_4

    check-cast p1, Ljavax/crypto/interfaces/DHPrivateKey;

    if-eqz p2, :cond_3

    instance-of p3, p2, Ljavax/crypto/spec/DHParameterSpec;

    if-eqz p3, :cond_0

    check-cast p2, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object p3

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/tsu;->p:Ljava/math/BigInteger;

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/tsu;->g:Ljava/math/BigInteger;

    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->era:[B

    goto :goto_1

    :cond_0
    instance-of p3, p2, Lorg/bouncycastle/jcajce/sis/tsu;

    if-eqz p3, :cond_2

    iget-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Roa:Lorg/bouncycastle/crypto/dma;

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p3

    invoke-virtual {p3}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object p3

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/tsu;->p:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p3

    invoke-virtual {p3}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object p3

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/tsu;->g:Ljava/math/BigInteger;

    check-cast p2, Lorg/bouncycastle/jcajce/sis/tsu;

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/sis/tsu;->Lj()[B

    move-result-object p2

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "no KDF specified for UserKeyingMaterialSpec"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "DHKeyAgreement only accepts DHParameterSpec"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p2

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/tsu;->p:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p2

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/tsu;->g:Ljava/math/BigInteger;

    :goto_1
    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/tsu;->x:Ljava/math/BigInteger;

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/tsu;->x:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/tsu;->tsu(Ljava/math/BigInteger;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/tsu;->result:[B

    return-void

    :cond_4
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "DHKeyAgreement requires DHPrivateKey for initialisation"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected tg()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/tsu;->result:[B

    return-object p0
.end method

.method protected tsu(Ljava/math/BigInteger;)[B
    .locals 3

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/tsu;->p:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    add-int/lit8 p0, p0, 0x7

    div-int/lit8 p0, p0, 0x8

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    array-length v0, p1

    if-ne v0, p0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    if-nez v1, :cond_1

    array-length v1, p1

    add-int/lit8 v2, p0, 0x1

    if-ne v1, v2, :cond_1

    array-length p0, p1

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    new-array p0, p0, [B

    array-length v2, p0

    invoke-static {p1, v1, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :cond_1
    new-array p0, p0, [B

    array-length v1, p0

    array-length v2, p1

    sub-int/2addr v1, v2

    array-length v2, p1

    invoke-static {p1, v0, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method
