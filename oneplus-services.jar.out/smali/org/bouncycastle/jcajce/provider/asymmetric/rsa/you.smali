.class public Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/util/sis;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you$zta;
    }
.end annotation


# instance fields
.field private final helper:Lorg/bouncycastle/jcajce/tsu/tsu;

.field private tma:Lorg/bouncycastle/crypto/zta;

.field private tna:Ljava/security/AlgorithmParameters;

.field private vna:Ljava/security/spec/AlgorithmParameterSpec;

.field private wna:Z

.field private xna:Z

.field private yna:Lorg/bouncycastle/jcajce/provider/asymmetric/util/sis$zta;


# direct methods
.method public constructor <init>(Ljavax/crypto/spec/OAEPParameterSpec;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/sis;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/tsu/sis;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/tsu/sis;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->helper:Lorg/bouncycastle/jcajce/tsu/tsu;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->wna:Z

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->xna:Z

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/sis$zta;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/sis$zta;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->yna:Lorg/bouncycastle/jcajce/provider/asymmetric/util/sis$zta;

    :try_start_0
    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->zta(Ljavax/crypto/spec/OAEPParameterSpec;)V
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljavax/crypto/NoSuchPaddingException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/zta;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/sis;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/tsu/sis;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/tsu/sis;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->helper:Lorg/bouncycastle/jcajce/tsu/tsu;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->wna:Z

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->xna:Z

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/sis$zta;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/sis$zta;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->yna:Lorg/bouncycastle/jcajce/provider/asymmetric/util/sis$zta;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->tma:Lorg/bouncycastle/crypto/zta;

    return-void
.end method

.method public constructor <init>(ZZLorg/bouncycastle/crypto/zta;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/sis;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/tsu/sis;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/tsu/sis;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->helper:Lorg/bouncycastle/jcajce/tsu/tsu;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->wna:Z

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->xna:Z

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/sis$zta;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/sis$zta;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->yna:Lorg/bouncycastle/jcajce/provider/asymmetric/util/sis$zta;

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->wna:Z

    iput-boolean p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->xna:Z

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->tma:Lorg/bouncycastle/crypto/zta;

    return-void
.end method

.method private Xs()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    const-string v0, "unable to decrypt block"

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->tma:Lorg/bouncycastle/crypto/zta;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->yna:Lorg/bouncycastle/jcajce/provider/asymmetric/util/sis$zta;

    invoke-virtual {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/sis$zta;->Hf()[B

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->yna:Lorg/bouncycastle/jcajce/provider/asymmetric/util/sis$zta;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lorg/bouncycastle/crypto/zta;->you([BII)[B

    move-result-object v0
    :try_end_0
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->yna:Lorg/bouncycastle/jcajce/provider/asymmetric/util/sis$zta;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/sis$zta;->erase()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v2, Lorg/bouncycastle/jcajce/provider/util/BadBlockException;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/jcajce/provider/util/BadBlockException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Lorg/bouncycastle/jcajce/provider/util/BadBlockException;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/jcajce/provider/util/BadBlockException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->yna:Lorg/bouncycastle/jcajce/provider/asymmetric/util/sis$zta;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/sis$zta;->erase()V

    throw v0
.end method

.method private zta(Ljavax/crypto/spec/OAEPParameterSpec;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljava/security/spec/MGF1ParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/util/tsu;->Ja(Ljava/lang/String;)Lorg/bouncycastle/crypto/qbh;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tsu/zta;

    new-instance v2, Lorg/bouncycastle/crypto/rtg/wtn;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/rtg/wtn;-><init>()V

    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object v3

    check-cast v3, Ljavax/crypto/spec/PSource$PSpecified;

    invoke-virtual {v3}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lorg/bouncycastle/crypto/tsu/zta;-><init>(Lorg/bouncycastle/crypto/zta;Lorg/bouncycastle/crypto/qbh;[B)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->tma:Lorg/bouncycastle/crypto/zta;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->vna:Ljava/security/spec/AlgorithmParameterSpec;

    return-void

    :cond_0
    new-instance p0, Ljavax/crypto/NoSuchPaddingException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no match on OAEP constructor for digest algorithm: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    invoke-virtual {p0, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->engineGetOutputSize(I)I

    move-result v0

    add-int/2addr v0, p5

    array-length v1, p4

    if-gt v0, v1, :cond_5

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->yna:Lorg/bouncycastle/jcajce/provider/asymmetric/util/sis$zta;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->tma:Lorg/bouncycastle/crypto/zta;

    instance-of p1, p1, Lorg/bouncycastle/crypto/rtg/wtn;

    const-string p2, "too much data for RSA block"

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->yna:Lorg/bouncycastle/jcajce/provider/asymmetric/util/sis$zta;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    iget-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->tma:Lorg/bouncycastle/crypto/zta;

    invoke-interface {p3}, Lorg/bouncycastle/crypto/zta;->d()I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    if-gt p1, p3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->yna:Lorg/bouncycastle/jcajce/provider/asymmetric/util/sis$zta;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    iget-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->tma:Lorg/bouncycastle/crypto/zta;

    invoke-interface {p3}, Lorg/bouncycastle/crypto/zta;->d()I

    move-result p3

    if-gt p1, p3, :cond_4

    :goto_0
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->Xs()[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_1
    array-length p2, p0

    if-eq p1, p2, :cond_3

    add-int p2, p5, p1

    aget-byte p3, p0, p1

    aput-byte p3, p4, p2

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    array-length p0, p0

    return p0

    :cond_4
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljavax/crypto/ShortBufferException;

    const-string p1, "output buffer too short for input."

    invoke-direct {p0, p1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected engineDoFinal([BII)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->yna:Lorg/bouncycastle/jcajce/provider/asymmetric/util/sis$zta;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->tma:Lorg/bouncycastle/crypto/zta;

    instance-of p1, p1, Lorg/bouncycastle/crypto/rtg/wtn;

    const-string p2, "too much data for RSA block"

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->yna:Lorg/bouncycastle/jcajce/provider/asymmetric/util/sis$zta;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    iget-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->tma:Lorg/bouncycastle/crypto/zta;

    invoke-interface {p3}, Lorg/bouncycastle/crypto/zta;->d()I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    if-gt p1, p3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->yna:Lorg/bouncycastle/jcajce/provider/asymmetric/util/sis$zta;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    iget-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->tma:Lorg/bouncycastle/crypto/zta;

    invoke-interface {p3}, Lorg/bouncycastle/crypto/zta;->d()I

    move-result p3

    if-gt p1, p3, :cond_3

    :goto_0
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->Xs()[B

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected engineGetBlockSize()I
    .locals 1

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->tma:Lorg/bouncycastle/crypto/zta;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/zta;->d()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "RSA Cipher not initialised"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .locals 0

    instance-of p0, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz p0, :cond_0

    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0

    :cond_0
    instance-of p0, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz p0, :cond_1

    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "not an RSA key!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected engineGetOutputSize(I)I
    .locals 0

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->tma:Lorg/bouncycastle/crypto/zta;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/zta;->ivd()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "RSA Cipher not initialised"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->tna:Ljava/security/AlgorithmParameters;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->vna:Ljava/security/spec/AlgorithmParameterSpec;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->helper:Lorg/bouncycastle/jcajce/tsu/tsu;

    const-string v1, "OAEP"

    invoke-interface {v0, v1}, Lorg/bouncycastle/jcajce/tsu/tsu;->cno(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->tna:Ljava/security/AlgorithmParameters;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->tna:Ljava/security/AlgorithmParameters;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->vna:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :goto_0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->tna:Ljava/security/AlgorithmParameters;

    return-object p0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    if-eqz p3, :cond_0

    :try_start_0
    const-class v0, Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {p3, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "cannot recognise parameters: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/spec/InvalidParameterSpecException;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->tna:Ljava/security/AlgorithmParameters;

    invoke-virtual {p0, p1, p2, v0, p4}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

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
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/InvalidKeyException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Eeeek! "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    if-eqz p3, :cond_1

    instance-of v0, p3, Ljavax/crypto/spec/OAEPParameterSpec;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "unknown parameter type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    instance-of v0, p2, Ljava/security/interfaces/RSAPublicKey;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->xna:Z

    if-eqz v0, :cond_3

    if-eq p1, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "mode 1 requires RSAPrivateKey"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    check-cast p2, Ljava/security/interfaces/RSAPublicKey;

    invoke-static {p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/ssp;->zta(Ljava/security/interfaces/RSAPublicKey;)Lorg/bouncycastle/crypto/wtn/veq;

    move-result-object p2

    goto :goto_3

    :cond_4
    instance-of v0, p2, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->wna:Z

    if-eqz v0, :cond_6

    if-eq p1, v1, :cond_5

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "mode 2 requires RSAPublicKey"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_2
    check-cast p2, Ljava/security/interfaces/RSAPrivateKey;

    invoke-static {p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/ssp;->zta(Ljava/security/interfaces/RSAPrivateKey;)Lorg/bouncycastle/crypto/wtn/veq;

    move-result-object p2

    :goto_3
    if-eqz p3, :cond_c

    move-object v0, p3

    check-cast v0, Ljavax/crypto/spec/OAEPParameterSpec;

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->vna:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object p3

    const-string v2, "MGF1"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_8

    invoke-virtual {v0}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object p3

    sget-object v2, Lorg/bouncycastle/asn1/dma/gwm;->id_mgf1:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    goto :goto_4

    :cond_7
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "unknown mask generation function specified"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_4
    invoke-virtual {v0}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p3

    instance-of p3, p3, Ljava/security/spec/MGF1ParameterSpec;

    if-eqz p3, :cond_b

    invoke-virtual {v0}, Ljavax/crypto/spec/OAEPParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/bouncycastle/jcajce/provider/util/tsu;->Ja(Ljava/lang/String;)Lorg/bouncycastle/crypto/qbh;

    move-result-object p3

    if-eqz p3, :cond_a

    invoke-virtual {v0}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v2

    check-cast v2, Ljava/security/spec/MGF1ParameterSpec;

    invoke-virtual {v2}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/jcajce/provider/util/tsu;->Ja(Ljava/lang/String;)Lorg/bouncycastle/crypto/qbh;

    move-result-object v3

    if-eqz v3, :cond_9

    new-instance v2, Lorg/bouncycastle/crypto/tsu/zta;

    new-instance v4, Lorg/bouncycastle/crypto/rtg/wtn;

    invoke-direct {v4}, Lorg/bouncycastle/crypto/rtg/wtn;-><init>()V

    invoke-virtual {v0}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object v0

    check-cast v0, Ljavax/crypto/spec/PSource$PSpecified;

    invoke-virtual {v0}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object v0

    invoke-direct {v2, v4, p3, v3, v0}, Lorg/bouncycastle/crypto/tsu/zta;-><init>(Lorg/bouncycastle/crypto/zta;Lorg/bouncycastle/crypto/qbh;Lorg/bouncycastle/crypto/qbh;[B)V

    iput-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->tma:Lorg/bouncycastle/crypto/zta;

    goto :goto_5

    :cond_9
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "no match on MGF digest algorithm: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "no match on digest algorithm: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljavax/crypto/spec/OAEPParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "unkown MGF parameters"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    :goto_5
    iget-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->tma:Lorg/bouncycastle/crypto/zta;

    instance-of p3, p3, Lorg/bouncycastle/crypto/rtg/wtn;

    if-nez p3, :cond_e

    new-instance p3, Lorg/bouncycastle/crypto/wtn/hmo;

    if-eqz p4, :cond_d

    invoke-direct {p3, p2, p4}, Lorg/bouncycastle/crypto/wtn/hmo;-><init>(Lorg/bouncycastle/crypto/kth;Ljava/security/SecureRandom;)V

    goto :goto_6

    :cond_d
    invoke-static {}, Lorg/bouncycastle/crypto/igw;->Ui()Ljava/security/SecureRandom;

    move-result-object p4

    invoke-direct {p3, p2, p4}, Lorg/bouncycastle/crypto/wtn/hmo;-><init>(Lorg/bouncycastle/crypto/kth;Ljava/security/SecureRandom;)V

    goto :goto_6

    :cond_e
    move-object p3, p2

    :goto_6
    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->yna:Lorg/bouncycastle/jcajce/provider/asymmetric/util/sis$zta;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->reset()V

    if-eq p1, v1, :cond_11

    const/4 p2, 0x2

    if-eq p1, p2, :cond_10

    const/4 p2, 0x3

    if-eq p1, p2, :cond_11

    const/4 p2, 0x4

    if-ne p1, p2, :cond_f

    goto :goto_7

    :cond_f
    new-instance p0, Ljava/security/InvalidParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unknown opmode "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " passed to RSA"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    :goto_7
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->tma:Lorg/bouncycastle/crypto/zta;

    const/4 p1, 0x0

    invoke-interface {p0, p1, p3}, Lorg/bouncycastle/crypto/zta;->zta(ZLorg/bouncycastle/crypto/kth;)V

    goto :goto_8

    :cond_11
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->tma:Lorg/bouncycastle/crypto/zta;

    invoke-interface {p0, v1, p3}, Lorg/bouncycastle/crypto/zta;->zta(ZLorg/bouncycastle/crypto/kth;)V

    :goto_8
    return-void

    :cond_12
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "unknown key type passed to RSA"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ECB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iput-boolean v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->xna:Z

    iput-boolean v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->wna:Z

    return-void

    :cond_1
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->xna:Z

    iput-boolean v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->wna:Z

    return-void

    :cond_2
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

    :cond_3
    :goto_0
    return-void
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NOPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Lorg/bouncycastle/crypto/rtg/wtn;

    invoke-direct {p1}, Lorg/bouncycastle/crypto/rtg/wtn;-><init>()V

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->tma:Lorg/bouncycastle/crypto/zta;

    goto/16 :goto_7

    :cond_0
    const-string v1, "PKCS1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p1, Lorg/bouncycastle/crypto/tsu/tsu;

    new-instance v0, Lorg/bouncycastle/crypto/rtg/wtn;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/rtg/wtn;-><init>()V

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/tsu/tsu;-><init>(Lorg/bouncycastle/crypto/zta;)V

    goto :goto_0

    :cond_1
    const-string v1, "OAEPWITHMD5ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "MGF1"

    if-eqz v1, :cond_2

    new-instance p1, Ljavax/crypto/spec/OAEPParameterSpec;

    new-instance v0, Ljava/security/spec/MGF1ParameterSpec;

    const-string v1, "MD5"

    invoke-direct {v0, v1}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {p1, v1, v2, v0, v3}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    :goto_1
    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->zta(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto/16 :goto_7

    :cond_2
    const-string v1, "OAEPPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    :goto_2
    sget-object p1, Ljavax/crypto/spec/OAEPParameterSpec;->DEFAULT:Ljavax/crypto/spec/OAEPParameterSpec;

    goto :goto_1

    :cond_4
    const-string v1, "OAEPWITHSHA1ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "OAEPWITHSHA-1ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    const-string v1, "OAEPWITHSHA224ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "OAEPWITHSHA-224ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_6

    :cond_6
    const-string v1, "OAEPWITHSHA256ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "OAEPWITHSHA-256ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    const-string v1, "OAEPWITHSHA384ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "OAEPWITHSHA-384ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    const-string v1, "OAEPWITHSHA512ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "OAEPWITHSHA-512ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3

    :cond_9
    new-instance p0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " unavailable with RSA."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_3
    new-instance p1, Ljavax/crypto/spec/OAEPParameterSpec;

    sget-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA512:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v1, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    const-string v3, "SHA-512"

    invoke-direct {p1, v3, v2, v0, v1}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    goto/16 :goto_1

    :cond_b
    :goto_4
    new-instance p1, Ljavax/crypto/spec/OAEPParameterSpec;

    sget-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA384:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v1, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    const-string v3, "SHA-384"

    invoke-direct {p1, v3, v2, v0, v1}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    goto/16 :goto_1

    :cond_c
    :goto_5
    new-instance p1, Ljavax/crypto/spec/OAEPParameterSpec;

    sget-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v1, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    const-string v3, "SHA-256"

    invoke-direct {p1, v3, v2, v0, v1}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    goto/16 :goto_1

    :cond_d
    :goto_6
    new-instance p1, Ljavax/crypto/spec/OAEPParameterSpec;

    new-instance v0, Ljava/security/spec/MGF1ParameterSpec;

    const-string v1, "SHA-224"

    invoke-direct {v0, v1}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {p1, v1, v2, v0, v3}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    goto/16 :goto_1

    :goto_7
    return-void
.end method

.method protected engineUpdate([BII[BI)I
    .locals 0

    iget-object p4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->yna:Lorg/bouncycastle/jcajce/provider/asymmetric/util/sis$zta;

    invoke-virtual {p4, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->tma:Lorg/bouncycastle/crypto/zta;

    instance-of p1, p1, Lorg/bouncycastle/crypto/rtg/wtn;

    const-string p2, "too much data for RSA block"

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->yna:Lorg/bouncycastle/jcajce/provider/asymmetric/util/sis$zta;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->tma:Lorg/bouncycastle/crypto/zta;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/zta;->d()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    if-gt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->yna:Lorg/bouncycastle/jcajce/provider/asymmetric/util/sis$zta;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->tma:Lorg/bouncycastle/crypto/zta;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/zta;->d()I

    move-result p0

    if-gt p1, p0, :cond_2

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected engineUpdate([BII)[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->yna:Lorg/bouncycastle/jcajce/provider/asymmetric/util/sis$zta;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->tma:Lorg/bouncycastle/crypto/zta;

    instance-of p1, p1, Lorg/bouncycastle/crypto/rtg/wtn;

    const-string p2, "too much data for RSA block"

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->yna:Lorg/bouncycastle/jcajce/provider/asymmetric/util/sis$zta;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->tma:Lorg/bouncycastle/crypto/zta;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/zta;->d()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    if-gt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->yna:Lorg/bouncycastle/jcajce/provider/asymmetric/util/sis$zta;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;->tma:Lorg/bouncycastle/crypto/zta;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/zta;->d()I

    move-result p0

    if-gt p1, p0, :cond_2

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
