.class public Lcom/android/server/engineer/zta;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final BA:I = 0x4

.field private static final CA:I = 0x6

.field private static final DA:I = 0x7

.field private static final EA:I = 0x2

.field private static final HW_AUTH_PASSWORD:I = 0x1

.field private static final KM_ERROR_INVALID_INPUT_LENGTH:I = -0x15

.field private static final KM_ORIGIN_GENERATED:I = 0x0

.field private static final KM_TAG_ALGORITHM:I = 0x2

.field private static final KM_TAG_AUTH_TIMEOUT:I = 0x1f9

.field private static final KM_TAG_KEY_SIZE:I = 0x3

.field private static final KM_TAG_ORIGIN:I = 0x2be

.field private static final KM_TAG_PURPOSE:I = 0x1

.field private static final KM_TAG_ROLLBACK_RESISTANT:I = 0x2bf

.field private static final KM_TAG_USER_AUTH_TYPE:I = 0x1f8

.field static final TAG:Ljava/lang/String; = "KeyAttestationTest"

.field public static final fA:I = 0x0

.field public static final gA:I = 0x1

.field private static final hA:I = 0xf4240

.field private static final iA:I = 0x1e8480

.field private static final jA:I = 0x9

.field private static final kA:I = 0x0

.field private static final lA:I = 0x2

.field private static final nA:I = 0x3

.field private static final oA:I = 0x1

.field private static final pA:I = 0x2

.field private static final qA:I = 0x3

.field private static final rA:Ljava/util/regex/Pattern;

.field private static final sA:I = 0x1

.field private static final tA:I = 0x2

.field private static final uA:Ljava/util/regex/Pattern;

.field private static final vA:I = 0x6

.field private static final wA:Ljava/lang/String; = "1.3.6.1.4.1.11129.2.1.17"

.field private static final xA:I = 0x0

.field private static final yA:I = 0x1

.field private static final zA:I = 0x3


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "([0-9]{1,2})(?:\\.([0-9]{1,2}))?(?:\\.([0-9]{1,2}))?(?:[^0-9.]+.*)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/engineer/zta;->rA:Ljava/util/regex/Pattern;

    const-string v0, "([0-9]{4})-([0-9]{2})-[0-9]{2}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/engineer/zta;->uA:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private Cb(I)Z
    .locals 1

    and-int/lit8 p0, p1, 0x2

    const/4 v0, 0x1

    if-nez p0, :cond_1

    and-int/lit8 p0, p1, 0x1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private Db(I)Z
    .locals 0

    and-int/lit8 p0, p1, 0x4

    if-nez p0, :cond_1

    and-int/lit8 p0, p1, 0x8

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static Eb(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "TEE"

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "Invalid security level."

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p0, "Software"

    return-object p0
.end method

.method static you(Ljava/math/BigInteger;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "INTEGER out of bounds"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zta(Lorg/bouncycastle/asn1/ssp;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    instance-of v0, p0, Lorg/bouncycastle/asn1/ywr;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lcom/android/server/engineer/zta;->you(Ljava/math/BigInteger;)I

    move-result p0

    return p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/bio;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/bouncycastle/asn1/bio;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/bio;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Integer value expected; found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " instead."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static zta(Ljava/security/cert/Certificate;)Lorg/bouncycastle/asn1/obl;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p0, Ljava/security/cert/X509Certificate;

    const-string v0, "1.3.6.1.4.1.11129.2.1.17"

    invoke-virtual {p0, v0}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/dma;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/dma;-><init>([B)V

    :try_start_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/dma;->readObject()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ibl;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object p0

    new-instance v1, Lorg/bouncycastle/asn1/dma;

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/dma;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/dma;->readObject()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/obl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :try_start_2
    invoke-static {v2, v1}, Lcom/android/server/engineer/zta;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v2, v0}, Lcom/android/server/engineer/zta;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-static {p0, v1}, Lcom/android/server/engineer/zta;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v1

    invoke-static {p0, v0}, Lcom/android/server/engineer/zta;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v1

    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "Couldn\'t find the keystore attestation extension data."

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zta([Lorg/bouncycastle/asn1/ssp;I)Lorg/bouncycastle/asn1/vdb;
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    check-cast v2, Lorg/bouncycastle/asn1/lqr;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/lqr;->getTagNo()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/lqr;->getObject()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private zta(I[BI[[Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    array-length v0, p4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v8, p4, v1

    const/4 v4, 0x1

    move-object v2, p0

    move-object v3, p2

    move v5, p1

    move v6, p3

    move-object v7, v8

    :try_start_0
    invoke-direct/range {v2 .. v7}, Lcom/android/server/engineer/zta;->zta([BZII[Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p2

    move v5, p1

    move v6, p3

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/server/engineer/zta;->zta([BZII[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance p4, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed on key size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " challenge ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], purposes "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and paddings "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4

    :cond_0
    return-void
.end method

.method private zta(Landroid/security/keystore/KeyGenParameterSpec;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const-string p0, "AndroidKeyStore"

    invoke-static {p2, p0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    return-void
.end method

.method private zta(Ljava/lang/String;Landroid/security/keystore/KeyGenParameterSpec;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const-string p0, "AndroidKeyStore"

    invoke-static {p1, p0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    return-void
.end method

.method private zta([BZII[Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    add-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    new-instance v2, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/32 v5, 0x1e8480

    add-long/2addr v3, v5

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    new-instance v3, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const-string v4, "test_key"

    invoke-direct {v3, v4, p4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, p3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v3

    const-string v5, "NONE"

    const-string v6, "SHA-256"

    const-string v7, "SHA-512"

    filled-new-array {v5, v6, v7}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAttestationChallenge([B)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v3

    if-eqz p2, :cond_0

    invoke-virtual {v3, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeyValidityStart(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeyValidityForOriginationEnd(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeyValidityForConsumptionEnd(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    :cond_0
    invoke-direct {p0, p4}, Lcom/android/server/engineer/zta;->Cb(I)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v3, p5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 p2, 0x0

    invoke-virtual {v3, p2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    :cond_1
    invoke-direct {p0, p4}, Lcom/android/server/engineer/zta;->Db(I)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {v3, p5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    :cond_2
    invoke-virtual {v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object p2

    const-string p5, "RSA"

    invoke-direct {p0, p5, p2}, Lcom/android/server/engineer/zta;->zta(Ljava/lang/String;Landroid/security/keystore/KeyGenParameterSpec;)V

    const-string p2, "AndroidKeyStore"

    invoke-static {p2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p2

    const/4 p5, 0x0

    invoke-virtual {p2, p5}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    :try_start_0
    invoke-virtual {p2, v4}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object p5

    invoke-direct {p0, p5}, Lcom/android/server/engineer/zta;->zta([Ljava/security/cert/Certificate;)V

    const/4 p0, 0x1

    invoke-static {p5, p0, p1, p3, p4}, Lcom/android/server/engineer/zta;->zta([Ljava/security/cert/Certificate;I[BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2, v4}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p2, v4}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    throw p0
.end method

.method private zta([BZLjava/lang/String;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    add-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    new-instance v2, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/32 v5, 0x1e8480

    add-long/2addr v3, v5

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    new-instance v3, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const-string v4, "test_key"

    invoke-direct {v3, v4, p5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    new-instance v5, Ljava/security/spec/ECGenParameterSpec;

    invoke-direct {v5, p3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAlgorithmParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p3

    const-string v3, "NONE"

    const-string v5, "SHA-256"

    const-string v6, "SHA-512"

    filled-new-array {v3, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAttestationChallenge([B)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p3

    if-eqz p2, :cond_0

    invoke-virtual {p3, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeyValidityStart(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeyValidityForOriginationEnd(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeyValidityForConsumptionEnd(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    :cond_0
    invoke-virtual {p3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object p2

    const-string p3, "EC"

    invoke-direct {p0, p3, p2}, Lcom/android/server/engineer/zta;->zta(Ljava/lang/String;Landroid/security/keystore/KeyGenParameterSpec;)V

    const-string p2, "AndroidKeyStore"

    invoke-static {p2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    :try_start_0
    invoke-virtual {p2, v4}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/android/server/engineer/zta;->zta([Ljava/security/cert/Certificate;)V

    const/4 p0, 0x3

    invoke-static {p3, p0, p1, p4, p5}, Lcom/android/server/engineer/zta;->zta([Ljava/security/cert/Certificate;I[BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2, v4}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p2, v4}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    throw p0
.end method

.method private zta([Ljava/security/cert/Certificate;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 p0, 0x1

    :goto_0
    array-length v0, p1

    if-ge p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x1

    :try_start_0
    aget-object v1, p1, v0

    aget-object v2, p1, p0

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/security/GeneralSecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to verify certificate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p1, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " with public key "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p1, p0

    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    return-void
.end method

.method public static zta([Ljava/security/cert/Certificate;I[BII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p4, 0x0

    aget-object p0, p0, p4

    invoke-static {p0}, Lcom/android/server/engineer/zta;->zta(Ljava/security/cert/Certificate;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-virtual {p0, p4}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p4

    invoke-static {p4}, Lcom/android/server/engineer/zta;->zta(Lorg/bouncycastle/asn1/ssp;)I

    move-result p4

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq p4, v2, :cond_1

    if-eq p4, v0, :cond_1

    if-ne p4, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Unexpected attestation version. Attestation version must be 1 or 2 or 3"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0, v2}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p4

    invoke-static {p4}, Lcom/android/server/engineer/zta;->zta(Lorg/bouncycastle/asn1/ssp;)I

    move-result p4

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/engineer/zta;->zta(Lorg/bouncycastle/asn1/ssp;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attestation security level: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lcom/android/server/engineer/zta;->Eb(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "KeyAttestationTest"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Keymaster security level: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/engineer/zta;->Eb(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p4, v2, :cond_7

    if-ne v3, v2, :cond_6

    const/4 p4, 0x4

    invoke-virtual {p0, p4}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p4

    check-cast p4, Lorg/bouncycastle/asn1/ibl;

    invoke-virtual {p4}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object p4

    invoke-static {p2, p4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 p2, 0x6

    invoke-virtual {p0, p2}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/asn1/obl;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/obl;->toArray()[Lorg/bouncycastle/asn1/ssp;

    const/4 p2, 0x7

    invoke-virtual {p0, p2}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/obl;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/obl;->toArray()[Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/android/server/engineer/zta;->zta([Lorg/bouncycastle/asn1/ssp;I)Lorg/bouncycastle/asn1/vdb;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/engineer/zta;->zta(Lorg/bouncycastle/asn1/ssp;)I

    move-result p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key size: "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v5, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, p3, :cond_4

    invoke-static {p0, v0}, Lcom/android/server/engineer/zta;->zta([Lorg/bouncycastle/asn1/ssp;I)Lorg/bouncycastle/asn1/vdb;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/engineer/zta;->zta(Lorg/bouncycastle/asn1/ssp;)I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Key cryptographic algorithm: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v5, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, p1, :cond_3

    const/16 p1, 0x2be

    invoke-static {p0, p1}, Lcom/android/server/engineer/zta;->zta([Lorg/bouncycastle/asn1/ssp;I)Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/engineer/zta;->zta(Lorg/bouncycastle/asn1/ssp;)I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Key origin: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "This key does not have the expected origin."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "This key is not an elliptic curve (EC) key, which was expected."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "The key does not have the expected size."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Incorrect challenge string; key is not fresh"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Unexpected keymaster security level value."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Unexpected attestation security level value."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public Fc()V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "secp224r1"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/16 v4, 0xe0

    aput v4, v2, v3

    new-array v4, v1, [[B

    const-string v5, "challenge"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    aput-object v5, v4, v3

    new-array v1, v1, [I

    const/4 v5, 0x2

    aput v5, v1, v3

    move v5, v3

    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_2

    move v6, v3

    :goto_1
    array-length v7, v4

    if-ge v6, v7, :cond_1

    move v7, v3

    :goto_2
    array-length v8, v1

    if-ge v7, v8, :cond_0

    :try_start_0
    aget-object v10, v4, v6

    const/4 v11, 0x1

    aget-object v12, v0, v5

    aget v13, v2, v5

    aget v14, v1, v7

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v14}, Lcom/android/server/engineer/zta;->zta([BZLjava/lang/String;II)V

    aget-object v16, v4, v6

    const/16 v17, 0x0

    aget-object v18, v0, v5

    aget v19, v2, v5

    aget v20, v1, v7

    move-object/from16 v15, p0

    invoke-direct/range {v15 .. v20}, Lcom/android/server/engineer/zta;->zta([BZLjava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed on curve "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and challege "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public Gc()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/16 v4, 0x200

    aput v4, v2, v3

    new-array v4, v1, [[B

    const-string v5, "challenge"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    aput-object v5, v4, v3

    new-array v5, v1, [I

    const/16 v6, 0xc

    aput v6, v5, v3

    new-array v6, v1, [[Ljava/lang/String;

    const-string v7, "NoPadding"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    new-array v1, v1, [[Ljava/lang/String;

    const-string v7, "PKCS1"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v3

    array-length v7, v2

    move v8, v3

    :goto_0
    if-ge v8, v7, :cond_3

    aget v9, v2, v8

    array-length v10, v4

    move v11, v3

    :goto_1
    if-ge v11, v10, :cond_2

    aget-object v12, v4, v11

    array-length v13, v5

    move v14, v3

    :goto_2
    if-ge v14, v13, :cond_1

    aget v15, v5, v14

    invoke-direct {v0, v15}, Lcom/android/server/engineer/zta;->Cb(I)Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-direct {v0, v9, v12, v15, v6}, Lcom/android/server/engineer/zta;->zta(I[BI[[Ljava/lang/String;)V

    goto :goto_3

    :cond_0
    invoke-direct {v0, v9, v12, v15, v1}, Lcom/android/server/engineer/zta;->zta(I[BI[[Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
