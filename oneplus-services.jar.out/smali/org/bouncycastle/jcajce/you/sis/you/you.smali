.class public Lorg/bouncycastle/jcajce/you/sis/you/you;
.super Ljava/security/KeyStoreSpi;
.source ""

# interfaces
.implements Lorg/bouncycastle/asn1/dma/gwm;
.implements Lorg/bouncycastle/asn1/x509/t;
.implements Lorg/bouncycastle/jce/interfaces/zta;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/you/sis/you/you$sis;,
        Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;,
        Lorg/bouncycastle/jcajce/you/sis/you/you$zta;,
        Lorg/bouncycastle/jcajce/you/sis/you/you$you;
    }
.end annotation


# static fields
.field static final KEY:I = 0x2

.field static final NULL:I = 0x0

.field static final SEALED:I = 0x4

.field static final SECRET:I = 0x3

.field private static final epa:I = 0xc800

.field static final fpa:I = 0x1

.field static final gpa:I = 0x0

.field static final hpa:I = 0x1

.field static final ipa:I = 0x2

.field static final spa:Ljava/lang/String; = "org.bouncycastle.pkcs12.max_it_count"

.field private static final tpa:I = 0x14

.field private static final upa:Lorg/bouncycastle/jcajce/you/sis/you/you$sis;


# instance fields
.field protected Moa:Ljava/security/SecureRandom;

.field private certs:Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

.field private final helper:Lorg/bouncycastle/jcajce/tsu/tsu;

.field private jpa:Ljava/util/Hashtable;

.field private keys:Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

.field private kpa:Ljava/util/Hashtable;

.field private lpa:Ljava/util/Hashtable;

.field private mpa:Ljava/security/cert/CertificateFactory;

.field private npa:Lorg/bouncycastle/asn1/bvj;

.field private opa:Lorg/bouncycastle/asn1/bvj;

.field private ppa:Lorg/bouncycastle/asn1/x509/zta;

.field private qpa:I

.field private rpa:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/jcajce/you/sis/you/you$sis;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/you/sis/you/you$sis;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->upa:Lorg/bouncycastle/jcajce/you/sis/you/you$sis;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/jcajce/tsu/tsu;Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/bvj;)V
    .locals 3

    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/tsu/sis;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/tsu/sis;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->helper:Lorg/bouncycastle/jcajce/tsu/tsu;

    new-instance v0, Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;-><init>(Lorg/bouncycastle/jcajce/you/sis/you/zta;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->keys:Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->jpa:Ljava/util/Hashtable;

    new-instance v0, Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;-><init>(Lorg/bouncycastle/jcajce/you/sis/you/zta;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->certs:Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->kpa:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->lpa:Ljava/util/Hashtable;

    invoke-static {}, Lorg/bouncycastle/crypto/igw;->fj()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->Moa:Ljava/security/SecureRandom;

    new-instance v0, Lorg/bouncycastle/asn1/x509/zta;

    sget-object v1, Lorg/bouncycastle/asn1/gck/zta;->gQa:Lorg/bouncycastle/asn1/bvj;

    sget-object v2, Lorg/bouncycastle/asn1/z;->INSTANCE:Lorg/bouncycastle/asn1/z;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/zta;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->ppa:Lorg/bouncycastle/asn1/x509/zta;

    const v0, 0x19000

    iput v0, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->qpa:I

    const/16 v0, 0x14

    iput v0, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->rpa:I

    iput-object p2, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->npa:Lorg/bouncycastle/asn1/bvj;

    iput-object p3, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->opa:Lorg/bouncycastle/asn1/bvj;

    :try_start_0
    const-string p2, "X.509"

    invoke-interface {p1, p2}, Lorg/bouncycastle/jcajce/tsu/tsu;->wtn(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->mpa:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "can\'t create cert factory - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private At()Ljava/util/Set;
    .locals 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->keys:Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/bouncycastle/jcajce/you/sis/you/you;->engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-eq v3, v4, :cond_0

    aget-object v4, v2, v3

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->certs:Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/bouncycastle/jcajce/you/sis/you/you;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private hmo(Ljava/math/BigInteger;)I
    .locals 3

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    if-ltz p0, :cond_2

    const-string p1, "org.bouncycastle.pkcs12.max_it_count"

    invoke-static {p1}, Lorg/bouncycastle/util/gck;->Ua(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-lt v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iteration count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " greater than "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "negative iteration count found"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static ssp(Lorg/bouncycastle/asn1/x509/c;)[B
    .locals 4

    invoke-static {}, Lorg/bouncycastle/crypto/you/zta;->e()Lorg/bouncycastle/crypto/qbh;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/qbh;->les()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/c;->uh()Lorg/bouncycastle/asn1/n;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/sis;->getBytes()[B

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    invoke-interface {v0, p0, v3, v2}, Lorg/bouncycastle/crypto/qbh;->update([BII)V

    invoke-interface {v0, v1, v3}, Lorg/bouncycastle/crypto/qbh;->doFinal([BI)I

    return-object v1
.end method

.method private tsu(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/b;
    .locals 0

    :try_start_0
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/c;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/c;

    move-result-object p0

    new-instance p1, Lorg/bouncycastle/asn1/x509/b;

    invoke-static {p0}, Lorg/bouncycastle/jcajce/you/sis/you/you;->ssp(Lorg/bouncycastle/asn1/x509/c;)[B

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/x509/b;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "error creating key"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private zta(I[CLorg/bouncycastle/asn1/x509/zta;)Ljavax/crypto/Cipher;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/x509/zta;->getParameters()Lorg/bouncycastle/asn1/ssp;

    move-result-object p3

    invoke-static {p3}, Lorg/bouncycastle/asn1/dma/oif;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/oif;

    move-result-object p3

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/dma/oif;->qh()Lorg/bouncycastle/asn1/dma/dma;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/dma/dma;->getParameters()Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/dma/bvj;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/bvj;

    move-result-object v0

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/dma/oif;->ph()Lorg/bouncycastle/asn1/dma/wtn;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/zta;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->helper:Lorg/bouncycastle/jcajce/tsu/tsu;

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/dma/oif;->qh()Lorg/bouncycastle/asn1/dma/dma;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/dma/dma;->getAlgorithm()Lorg/bouncycastle/asn1/bvj;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/bouncycastle/jcajce/tsu/tsu;->dma(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/dma/bvj;->yg()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/dma/bvj;->getSalt()[B

    move-result-object v4

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/dma/bvj;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/you/sis/you/you;->hmo(Ljava/math/BigInteger;)I

    move-result p0

    sget-object v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->upa:Lorg/bouncycastle/jcajce/you/sis/you/you$sis;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jcajce/you/sis/you/you$sis;->rtg(Lorg/bouncycastle/asn1/x509/zta;)I

    move-result v0

    invoke-direct {v3, p2, v4, p0, v0}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    invoke-virtual {v2, v3}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v9, Lorg/bouncycastle/jcajce/sis/sis;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/dma/bvj;->getSalt()[B

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/dma/bvj;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/bouncycastle/jcajce/you/sis/you/you;->hmo(Ljava/math/BigInteger;)I

    move-result v6

    sget-object p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->upa:Lorg/bouncycastle/jcajce/you/sis/you/you$sis;

    invoke-virtual {p0, v1}, Lorg/bouncycastle/jcajce/you/sis/you/you$sis;->rtg(Lorg/bouncycastle/asn1/x509/zta;)I

    move-result v7

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/dma/bvj;->xg()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v8

    move-object v3, v9

    move-object v4, p2

    invoke-direct/range {v3 .. v8}, Lorg/bouncycastle/jcajce/sis/sis;-><init>([C[BIILorg/bouncycastle/asn1/x509/zta;)V

    invoke-virtual {v2, v9}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p0

    :goto_0
    invoke-virtual {p3}, Lorg/bouncycastle/asn1/dma/oif;->ph()Lorg/bouncycastle/asn1/dma/wtn;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/dma/wtn;->getAlgorithm()Lorg/bouncycastle/asn1/bvj;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/dma/oif;->ph()Lorg/bouncycastle/asn1/dma/wtn;

    move-result-object p3

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/dma/wtn;->getParameters()Lorg/bouncycastle/asn1/ssp;

    move-result-object p3

    instance-of v0, p3, Lorg/bouncycastle/asn1/ibl;

    if-eqz v0, :cond_1

    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {p3}, Lorg/bouncycastle/asn1/ibl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ibl;

    move-result-object p3

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object p3

    invoke-direct {v0, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p2, p1, p0, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    :cond_1
    return-object p2
.end method

.method static synthetic zta(Lorg/bouncycastle/jcajce/you/sis/you/you;Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/b;
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/you/sis/you/you;->tsu(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/b;

    move-result-object p0

    return-object p0
.end method

.method private zta(Ljava/io/OutputStream;[CZ)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v7, p2

    if-eqz v7, :cond_1d

    new-instance v1, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/cno;-><init>()V

    iget-object v2, v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->keys:Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

    invoke-virtual {v2}, Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    const v4, 0xc800

    const/16 v5, 0x14

    if-eqz v3, :cond_6

    new-array v3, v5, [B

    iget-object v5, v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->Moa:Ljava/security/SecureRandom;

    invoke-virtual {v5, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->keys:Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

    invoke-virtual {v6, v5}, Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/PrivateKey;

    new-instance v11, Lorg/bouncycastle/asn1/dma/ibl;

    invoke-direct {v11, v3, v4}, Lorg/bouncycastle/asn1/dma/ibl;-><init>([BI)V

    iget-object v3, v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->npa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v6, v11, v7}, Lorg/bouncycastle/jcajce/you/sis/you/you;->zta(Ljava/lang/String;Ljava/security/Key;Lorg/bouncycastle/asn1/dma/ibl;[C)[B

    move-result-object v3

    new-instance v4, Lorg/bouncycastle/asn1/x509/zta;

    iget-object v12, v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->npa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/dma/ibl;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object v11

    invoke-direct {v4, v12, v11}, Lorg/bouncycastle/asn1/x509/zta;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    new-instance v11, Lorg/bouncycastle/asn1/dma/igw;

    invoke-direct {v11, v4, v3}, Lorg/bouncycastle/asn1/dma/igw;-><init>(Lorg/bouncycastle/asn1/x509/zta;[B)V

    new-instance v3, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/cno;-><init>()V

    instance-of v4, v6, Lorg/bouncycastle/jce/interfaces/tsu;

    if-eqz v4, :cond_3

    check-cast v6, Lorg/bouncycastle/jce/interfaces/tsu;

    sget-object v4, Lorg/bouncycastle/asn1/dma/gwm;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/bvj;

    invoke-interface {v6, v4}, Lorg/bouncycastle/jce/interfaces/tsu;->zta(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/ssp;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/m;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/m;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    sget-object v4, Lorg/bouncycastle/asn1/dma/gwm;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/bvj;

    new-instance v12, Lorg/bouncycastle/asn1/m;

    invoke-direct {v12, v5}, Lorg/bouncycastle/asn1/m;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v4, v12}, Lorg/bouncycastle/jce/interfaces/tsu;->zta(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    :cond_1
    sget-object v4, Lorg/bouncycastle/asn1/dma/gwm;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/bvj;

    invoke-interface {v6, v4}, Lorg/bouncycastle/jce/interfaces/tsu;->zta(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/ssp;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {v0, v5}, Lorg/bouncycastle/jcajce/you/sis/you/you;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v4

    sget-object v12, Lorg/bouncycastle/asn1/dma/gwm;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/bouncycastle/jcajce/you/sis/you/you;->tsu(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/b;

    move-result-object v4

    invoke-interface {v6, v12, v4}, Lorg/bouncycastle/jce/interfaces/tsu;->zta(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    :cond_2
    invoke-interface {v6}, Lorg/bouncycastle/jce/interfaces/tsu;->vdb()Ljava/util/Enumeration;

    move-result-object v4

    const/4 v10, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/bouncycastle/asn1/bvj;

    new-instance v12, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v12}, Lorg/bouncycastle/asn1/cno;-><init>()V

    invoke-virtual {v12, v10}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance v13, Lorg/bouncycastle/asn1/I;

    invoke-interface {v6, v10}, Lorg/bouncycastle/jce/interfaces/tsu;->zta(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/ssp;

    move-result-object v10

    invoke-direct {v13, v10}, Lorg/bouncycastle/asn1/I;-><init>(Lorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v12, v13}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance v10, Lorg/bouncycastle/asn1/G;

    invoke-direct {v10, v12}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    invoke-virtual {v3, v10}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    const/4 v10, 0x1

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    :cond_4
    if-nez v10, :cond_5

    new-instance v4, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v4}, Lorg/bouncycastle/asn1/cno;-><init>()V

    invoke-virtual {v0, v5}, Lorg/bouncycastle/jcajce/you/sis/you/you;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v6

    sget-object v9, Lorg/bouncycastle/asn1/dma/gwm;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v4, v9}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance v9, Lorg/bouncycastle/asn1/I;

    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/bouncycastle/jcajce/you/sis/you/you;->tsu(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/b;

    move-result-object v6

    invoke-direct {v9, v6}, Lorg/bouncycastle/asn1/I;-><init>(Lorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v4, v9}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance v6, Lorg/bouncycastle/asn1/G;

    invoke-direct {v6, v4}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    invoke-virtual {v3, v6}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance v4, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v4}, Lorg/bouncycastle/asn1/cno;-><init>()V

    sget-object v6, Lorg/bouncycastle/asn1/dma/gwm;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v4, v6}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance v6, Lorg/bouncycastle/asn1/I;

    new-instance v9, Lorg/bouncycastle/asn1/m;

    invoke-direct {v9, v5}, Lorg/bouncycastle/asn1/m;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v9}, Lorg/bouncycastle/asn1/I;-><init>(Lorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v4, v6}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance v5, Lorg/bouncycastle/asn1/G;

    invoke-direct {v5, v4}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    invoke-virtual {v3, v5}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_5
    new-instance v4, Lorg/bouncycastle/asn1/dma/ire;

    sget-object v5, Lorg/bouncycastle/asn1/dma/gwm;->pkcs8ShroudedKeyBag:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/dma/igw;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object v6

    new-instance v9, Lorg/bouncycastle/asn1/I;

    invoke-direct {v9, v3}, Lorg/bouncycastle/asn1/I;-><init>(Lorg/bouncycastle/asn1/cno;)V

    invoke-direct {v4, v5, v6, v9}, Lorg/bouncycastle/asn1/dma/ire;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;Lorg/bouncycastle/asn1/ear;)V

    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    goto/16 :goto_0

    :cond_6
    new-instance v2, Lorg/bouncycastle/asn1/G;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    const-string v1, "DER"

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/oif;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v11, Lorg/bouncycastle/asn1/ivd;

    invoke-direct {v11, v2}, Lorg/bouncycastle/asn1/ivd;-><init>([B)V

    new-array v2, v5, [B

    iget-object v3, v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->Moa:Ljava/security/SecureRandom;

    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v3, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/cno;-><init>()V

    new-instance v5, Lorg/bouncycastle/asn1/dma/ibl;

    invoke-direct {v5, v2, v4}, Lorg/bouncycastle/asn1/dma/ibl;-><init>([BI)V

    new-instance v12, Lorg/bouncycastle/asn1/x509/zta;

    iget-object v2, v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->opa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/dma/ibl;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object v4

    invoke-direct {v12, v2, v4}, Lorg/bouncycastle/asn1/x509/zta;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iget-object v4, v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->keys:Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

    invoke-virtual {v4}, Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;->keys()Ljava/util/Enumeration;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    const-string v6, "Error encoding certificate: "

    if-eqz v5, :cond_d

    :try_start_0
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Lorg/bouncycastle/jcajce/you/sis/you/you;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v13

    new-instance v14, Lorg/bouncycastle/asn1/dma/tsu;

    sget-object v15, Lorg/bouncycastle/asn1/dma/gwm;->x509Certificate:Lorg/bouncycastle/asn1/bvj;

    new-instance v9, Lorg/bouncycastle/asn1/C;

    invoke-virtual {v13}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/bouncycastle/asn1/C;-><init>([B)V

    invoke-direct {v14, v15, v9}, Lorg/bouncycastle/asn1/dma/tsu;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    new-instance v9, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v9}, Lorg/bouncycastle/asn1/cno;-><init>()V

    instance-of v10, v13, Lorg/bouncycastle/jce/interfaces/tsu;

    if-eqz v10, :cond_a

    move-object v10, v13

    check-cast v10, Lorg/bouncycastle/jce/interfaces/tsu;

    sget-object v15, Lorg/bouncycastle/asn1/dma/gwm;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/bvj;

    invoke-interface {v10, v15}, Lorg/bouncycastle/jce/interfaces/tsu;->zta(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/ssp;

    move-result-object v15

    check-cast v15, Lorg/bouncycastle/asn1/m;

    if-eqz v15, :cond_8

    invoke-virtual {v15}, Lorg/bouncycastle/asn1/m;->getString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    goto :goto_3

    :cond_7
    move-object/from16 v16, v4

    goto :goto_4

    :cond_8
    :goto_3
    sget-object v15, Lorg/bouncycastle/asn1/dma/gwm;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/bvj;

    move-object/from16 v16, v4

    new-instance v4, Lorg/bouncycastle/asn1/m;

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/m;-><init>(Ljava/lang/String;)V

    invoke-interface {v10, v15, v4}, Lorg/bouncycastle/jce/interfaces/tsu;->zta(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    :goto_4
    sget-object v4, Lorg/bouncycastle/asn1/dma/gwm;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/bvj;

    invoke-interface {v10, v4}, Lorg/bouncycastle/jce/interfaces/tsu;->zta(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/ssp;

    move-result-object v4

    if-nez v4, :cond_9

    sget-object v4, Lorg/bouncycastle/asn1/dma/gwm;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v13}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v15

    invoke-direct {v0, v15}, Lorg/bouncycastle/jcajce/you/sis/you/you;->tsu(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/b;

    move-result-object v15

    invoke-interface {v10, v4, v15}, Lorg/bouncycastle/jce/interfaces/tsu;->zta(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    :cond_9
    invoke-interface {v10}, Lorg/bouncycastle/jce/interfaces/tsu;->vdb()Ljava/util/Enumeration;

    move-result-object v4

    const/4 v15, 0x0

    :goto_5
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_b

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/bouncycastle/asn1/bvj;

    move-object/from16 v17, v4

    new-instance v4, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v4}, Lorg/bouncycastle/asn1/cno;-><init>()V

    invoke-virtual {v4, v15}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance v7, Lorg/bouncycastle/asn1/I;

    invoke-interface {v10, v15}, Lorg/bouncycastle/jce/interfaces/tsu;->zta(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/ssp;

    move-result-object v15

    invoke-direct {v7, v15}, Lorg/bouncycastle/asn1/I;-><init>(Lorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v4, v7}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance v7, Lorg/bouncycastle/asn1/G;

    invoke-direct {v7, v4}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    invoke-virtual {v9, v7}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    move-object/from16 v7, p2

    move-object/from16 v4, v17

    const/4 v15, 0x1

    goto :goto_5

    :cond_a
    move-object/from16 v16, v4

    const/4 v15, 0x0

    :cond_b
    if-nez v15, :cond_c

    new-instance v4, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v4}, Lorg/bouncycastle/asn1/cno;-><init>()V

    sget-object v7, Lorg/bouncycastle/asn1/dma/gwm;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v4, v7}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance v7, Lorg/bouncycastle/asn1/I;

    invoke-virtual {v13}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v10

    invoke-direct {v0, v10}, Lorg/bouncycastle/jcajce/you/sis/you/you;->tsu(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/b;

    move-result-object v10

    invoke-direct {v7, v10}, Lorg/bouncycastle/asn1/I;-><init>(Lorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v4, v7}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance v7, Lorg/bouncycastle/asn1/G;

    invoke-direct {v7, v4}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    invoke-virtual {v9, v7}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance v4, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v4}, Lorg/bouncycastle/asn1/cno;-><init>()V

    sget-object v7, Lorg/bouncycastle/asn1/dma/gwm;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v4, v7}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance v7, Lorg/bouncycastle/asn1/I;

    new-instance v10, Lorg/bouncycastle/asn1/m;

    invoke-direct {v10, v5}, Lorg/bouncycastle/asn1/m;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v10}, Lorg/bouncycastle/asn1/I;-><init>(Lorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v4, v7}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance v5, Lorg/bouncycastle/asn1/G;

    invoke-direct {v5, v4}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    invoke-virtual {v9, v5}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_c
    new-instance v4, Lorg/bouncycastle/asn1/dma/ire;

    sget-object v5, Lorg/bouncycastle/asn1/dma/gwm;->certBag:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v14}, Lorg/bouncycastle/asn1/dma/tsu;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object v7

    new-instance v10, Lorg/bouncycastle/asn1/I;

    invoke-direct {v10, v9}, Lorg/bouncycastle/asn1/I;-><init>(Lorg/bouncycastle/asn1/cno;)V

    invoke-direct {v4, v5, v7, v10}, Lorg/bouncycastle/asn1/dma/ire;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;Lorg/bouncycastle/asn1/ear;)V

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v2, v13, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v7, p2

    move-object/from16 v4, v16

    goto/16 :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    iget-object v4, v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->certs:Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

    invoke-virtual {v4}, Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;->keys()Ljava/util/Enumeration;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_15

    :try_start_1
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v7, v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->certs:Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

    invoke-virtual {v7, v5}, Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/Certificate;

    iget-object v9, v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->keys:Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

    invoke-virtual {v9, v5}, Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_e

    goto :goto_6

    :cond_e
    new-instance v9, Lorg/bouncycastle/asn1/dma/tsu;

    sget-object v10, Lorg/bouncycastle/asn1/dma/gwm;->x509Certificate:Lorg/bouncycastle/asn1/bvj;

    new-instance v13, Lorg/bouncycastle/asn1/C;

    invoke-virtual {v7}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/bouncycastle/asn1/C;-><init>([B)V

    invoke-direct {v9, v10, v13}, Lorg/bouncycastle/asn1/dma/tsu;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    new-instance v10, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v10}, Lorg/bouncycastle/asn1/cno;-><init>()V

    instance-of v13, v7, Lorg/bouncycastle/jce/interfaces/tsu;

    if-eqz v13, :cond_13

    move-object v13, v7

    check-cast v13, Lorg/bouncycastle/jce/interfaces/tsu;

    sget-object v14, Lorg/bouncycastle/asn1/dma/gwm;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/bvj;

    invoke-interface {v13, v14}, Lorg/bouncycastle/jce/interfaces/tsu;->zta(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/ssp;

    move-result-object v14

    check-cast v14, Lorg/bouncycastle/asn1/m;

    if-eqz v14, :cond_f

    invoke-virtual {v14}, Lorg/bouncycastle/asn1/m;->getString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_10

    :cond_f
    sget-object v14, Lorg/bouncycastle/asn1/dma/gwm;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/bvj;

    new-instance v15, Lorg/bouncycastle/asn1/m;

    invoke-direct {v15, v5}, Lorg/bouncycastle/asn1/m;-><init>(Ljava/lang/String;)V

    invoke-interface {v13, v14, v15}, Lorg/bouncycastle/jce/interfaces/tsu;->zta(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    :cond_10
    invoke-interface {v13}, Lorg/bouncycastle/jce/interfaces/tsu;->vdb()Ljava/util/Enumeration;

    move-result-object v14

    const/4 v15, 0x0

    :goto_7
    invoke-interface {v14}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v16

    if-eqz v16, :cond_12

    invoke-interface {v14}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v4

    move-object/from16 v4, v16

    check-cast v4, Lorg/bouncycastle/asn1/bvj;

    move-object/from16 v16, v14

    sget-object v14, Lorg/bouncycastle/asn1/dma/gwm;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v4, v14}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    move-object/from16 v14, v16

    move-object/from16 v4, v17

    goto :goto_7

    :cond_11
    new-instance v14, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v14}, Lorg/bouncycastle/asn1/cno;-><init>()V

    invoke-virtual {v14, v4}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance v15, Lorg/bouncycastle/asn1/I;

    invoke-interface {v13, v4}, Lorg/bouncycastle/jce/interfaces/tsu;->zta(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/ssp;

    move-result-object v4

    invoke-direct {v15, v4}, Lorg/bouncycastle/asn1/I;-><init>(Lorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v14, v15}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance v4, Lorg/bouncycastle/asn1/G;

    invoke-direct {v4, v14}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    invoke-virtual {v10, v4}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    move-object/from16 v14, v16

    move-object/from16 v4, v17

    const/4 v15, 0x1

    goto :goto_7

    :cond_12
    move-object/from16 v17, v4

    goto :goto_8

    :cond_13
    move-object/from16 v17, v4

    const/4 v15, 0x0

    :goto_8
    if-nez v15, :cond_14

    new-instance v4, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v4}, Lorg/bouncycastle/asn1/cno;-><init>()V

    sget-object v13, Lorg/bouncycastle/asn1/dma/gwm;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v4, v13}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance v13, Lorg/bouncycastle/asn1/I;

    new-instance v14, Lorg/bouncycastle/asn1/m;

    invoke-direct {v14, v5}, Lorg/bouncycastle/asn1/m;-><init>(Ljava/lang/String;)V

    invoke-direct {v13, v14}, Lorg/bouncycastle/asn1/I;-><init>(Lorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v4, v13}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance v5, Lorg/bouncycastle/asn1/G;

    invoke-direct {v5, v4}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    invoke-virtual {v10, v5}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_14
    new-instance v4, Lorg/bouncycastle/asn1/dma/ire;

    sget-object v5, Lorg/bouncycastle/asn1/dma/gwm;->certBag:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/dma/tsu;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object v9

    new-instance v13, Lorg/bouncycastle/asn1/I;

    invoke-direct {v13, v10}, Lorg/bouncycastle/asn1/I;-><init>(Lorg/bouncycastle/asn1/cno;)V

    invoke-direct {v4, v5, v9, v13}, Lorg/bouncycastle/asn1/dma/ire;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;Lorg/bouncycastle/asn1/ear;)V

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v2, v7, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v4, v17

    goto/16 :goto_6

    :catch_1
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    invoke-direct/range {p0 .. p0}, Lorg/bouncycastle/jcajce/you/sis/you/you;->At()Ljava/util/Set;

    move-result-object v4

    iget-object v5, v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->kpa:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_1a

    :try_start_2
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/jcajce/you/sis/you/you$you;

    iget-object v9, v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->kpa:Ljava/util/Hashtable;

    invoke-virtual {v9, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/Certificate;

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_16

    goto :goto_9

    :cond_16
    invoke-virtual {v2, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_17

    goto :goto_9

    :cond_17
    new-instance v9, Lorg/bouncycastle/asn1/dma/tsu;

    sget-object v10, Lorg/bouncycastle/asn1/dma/gwm;->x509Certificate:Lorg/bouncycastle/asn1/bvj;

    new-instance v13, Lorg/bouncycastle/asn1/C;

    invoke-virtual {v7}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/bouncycastle/asn1/C;-><init>([B)V

    invoke-direct {v9, v10, v13}, Lorg/bouncycastle/asn1/dma/tsu;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    new-instance v10, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v10}, Lorg/bouncycastle/asn1/cno;-><init>()V

    instance-of v13, v7, Lorg/bouncycastle/jce/interfaces/tsu;

    if-eqz v13, :cond_19

    check-cast v7, Lorg/bouncycastle/jce/interfaces/tsu;

    invoke-interface {v7}, Lorg/bouncycastle/jce/interfaces/tsu;->vdb()Ljava/util/Enumeration;

    move-result-object v13

    :goto_a
    invoke-interface {v13}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_19

    invoke-interface {v13}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/bouncycastle/asn1/bvj;

    sget-object v15, Lorg/bouncycastle/asn1/dma/gwm;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v14, v15}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_18

    goto :goto_a

    :cond_18
    new-instance v15, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v15}, Lorg/bouncycastle/asn1/cno;-><init>()V

    invoke-virtual {v15, v14}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    move-object/from16 v16, v2

    new-instance v2, Lorg/bouncycastle/asn1/I;

    invoke-interface {v7, v14}, Lorg/bouncycastle/jce/interfaces/tsu;->zta(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/ssp;

    move-result-object v14

    invoke-direct {v2, v14}, Lorg/bouncycastle/asn1/I;-><init>(Lorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v15, v2}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance v2, Lorg/bouncycastle/asn1/G;

    invoke-direct {v2, v15}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    invoke-virtual {v10, v2}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    move-object/from16 v2, v16

    goto :goto_a

    :cond_19
    move-object/from16 v16, v2

    new-instance v2, Lorg/bouncycastle/asn1/dma/ire;

    sget-object v7, Lorg/bouncycastle/asn1/dma/gwm;->certBag:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/dma/tsu;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object v9

    new-instance v13, Lorg/bouncycastle/asn1/I;

    invoke-direct {v13, v10}, Lorg/bouncycastle/asn1/I;-><init>(Lorg/bouncycastle/asn1/cno;)V

    invoke-direct {v2, v7, v9, v13}, Lorg/bouncycastle/asn1/dma/ire;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;Lorg/bouncycastle/asn1/ear;)V

    invoke-virtual {v3, v2}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V
    :try_end_2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v2, v16

    goto/16 :goto_9

    :catch_2
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a
    new-instance v2, Lorg/bouncycastle/asn1/G;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/oif;->getEncoded(Ljava/lang/String;)[B

    move-result-object v6

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object v3, v12

    move-object/from16 v4, p2

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/jcajce/you/sis/you/you;->zta(ZLorg/bouncycastle/asn1/x509/zta;[CZ[B)[B

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/asn1/dma/bio;

    sget-object v3, Lorg/bouncycastle/asn1/dma/gwm;->data:Lorg/bouncycastle/asn1/bvj;

    new-instance v4, Lorg/bouncycastle/asn1/ivd;

    invoke-direct {v4, v1}, Lorg/bouncycastle/asn1/ivd;-><init>([B)V

    invoke-direct {v2, v3, v12, v4}, Lorg/bouncycastle/asn1/dma/bio;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/x509/zta;Lorg/bouncycastle/asn1/ssp;)V

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/bouncycastle/asn1/dma/cno;

    new-instance v3, Lorg/bouncycastle/asn1/dma/cno;

    sget-object v4, Lorg/bouncycastle/asn1/dma/gwm;->data:Lorg/bouncycastle/asn1/bvj;

    invoke-direct {v3, v4, v11}, Lorg/bouncycastle/asn1/dma/cno;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-instance v3, Lorg/bouncycastle/asn1/dma/cno;

    sget-object v4, Lorg/bouncycastle/asn1/dma/gwm;->encryptedData:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/dma/bio;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lorg/bouncycastle/asn1/dma/cno;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    const/4 v2, 0x1

    aput-object v3, v1, v2

    new-instance v2, Lorg/bouncycastle/asn1/dma/you;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/dma/you;-><init>([Lorg/bouncycastle/asn1/dma/cno;)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz p3, :cond_1b

    new-instance v3, Lorg/bouncycastle/asn1/E;

    invoke-direct {v3, v1}, Lorg/bouncycastle/asn1/E;-><init>(Ljava/io/OutputStream;)V

    goto :goto_b

    :cond_1b
    new-instance v3, Lorg/bouncycastle/asn1/c;

    invoke-direct {v3, v1}, Lorg/bouncycastle/asn1/c;-><init>(Ljava/io/OutputStream;)V

    :goto_b
    invoke-virtual {v3, v2}, Lorg/bouncycastle/asn1/E;->sis(Lorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    new-instance v9, Lorg/bouncycastle/asn1/dma/cno;

    sget-object v2, Lorg/bouncycastle/asn1/dma/gwm;->data:Lorg/bouncycastle/asn1/bvj;

    new-instance v3, Lorg/bouncycastle/asn1/ivd;

    invoke-direct {v3, v1}, Lorg/bouncycastle/asn1/ivd;-><init>([B)V

    invoke-direct {v9, v2, v3}, Lorg/bouncycastle/asn1/dma/cno;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    iget v1, v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->rpa:I

    new-array v10, v1, [B

    iget-object v1, v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->Moa:Ljava/security/SecureRandom;

    invoke-virtual {v1, v10}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/dma/cno;->getContent()Lorg/bouncycastle/asn1/ssp;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ibl;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object v7

    :try_start_3
    iget-object v1, v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->ppa:Lorg/bouncycastle/asn1/x509/zta;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/zta;->getAlgorithm()Lorg/bouncycastle/asn1/bvj;

    move-result-object v2

    iget v4, v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->qpa:I

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v3, v10

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/jcajce/you/sis/you/you;->zta(Lorg/bouncycastle/asn1/bvj;[BI[CZ[B)[B

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/asn1/x509/qbh;

    iget-object v3, v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->ppa:Lorg/bouncycastle/asn1/x509/zta;

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/asn1/x509/qbh;-><init>(Lorg/bouncycastle/asn1/x509/zta;[B)V

    new-instance v1, Lorg/bouncycastle/asn1/dma/ywr;

    iget v0, v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->qpa:I

    invoke-direct {v1, v2, v10, v0}, Lorg/bouncycastle/asn1/dma/ywr;-><init>(Lorg/bouncycastle/asn1/x509/qbh;[BI)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    new-instance v0, Lorg/bouncycastle/asn1/dma/ugm;

    invoke-direct {v0, v9, v1}, Lorg/bouncycastle/asn1/dma/ugm;-><init>(Lorg/bouncycastle/asn1/dma/cno;Lorg/bouncycastle/asn1/dma/ywr;)V

    if-eqz p3, :cond_1c

    new-instance v1, Lorg/bouncycastle/asn1/E;

    invoke-direct {v1, v8}, Lorg/bouncycastle/asn1/E;-><init>(Ljava/io/OutputStream;)V

    goto :goto_c

    :cond_1c
    new-instance v1, Lorg/bouncycastle/asn1/c;

    invoke-direct {v1, v8}, Lorg/bouncycastle/asn1/c;-><init>(Ljava/io/OutputStream;)V

    :goto_c
    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/E;->sis(Lorg/bouncycastle/asn1/ssp;)V

    return-void

    :catch_3
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error constructing MAC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "No password supplied for PKCS#12 KeyStore."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private zta(Lorg/bouncycastle/asn1/bvj;[BI[CZ[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-direct {v0, p2, p3}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->helper:Lorg/bouncycastle/jcajce/tsu/tsu;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/bouncycastle/jcajce/tsu/tsu;->ibl(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p0

    new-instance p1, Lorg/bouncycastle/jcajce/PKCS12Key;

    invoke-direct {p1, p4, p5}, Lorg/bouncycastle/jcajce/PKCS12Key;-><init>([CZ)V

    invoke-virtual {p0, p1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p0, p6}, Ljavax/crypto/Mac;->update([B)V

    invoke-virtual {p0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public engineAliases()Ljava/util/Enumeration;
    .locals 4

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->certs:Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "cert"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->keys:Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;->keys()Ljava/util/Enumeration;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "key"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public engineContainsAlias(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->certs:Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->keys:Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

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

.method public engineDeleteEntry(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->keys:Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Key;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->certs:Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/Certificate;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->kpa:Ljava/util/Hashtable;

    new-instance v3, Lorg/bouncycastle/jcajce/you/sis/you/you$you;

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lorg/bouncycastle/jcajce/you/sis/you/you$you;-><init>(Lorg/bouncycastle/jcajce/you/sis/you/you;Ljava/security/PublicKey;)V

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->jpa:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->lpa:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/security/cert/Certificate;

    :cond_1
    if-eqz v1, :cond_2

    iget-object p1, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->kpa:Ljava/util/Hashtable;

    new-instance v0, Lorg/bouncycastle/jcajce/you/sis/you/you$you;

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/jcajce/you/sis/you/you$you;-><init>(Lorg/bouncycastle/jcajce/you/sis/you/you;Ljava/security/PublicKey;)V

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->certs:Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->jpa:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->lpa:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    move-object v0, p0

    check-cast v0, Ljava/security/cert/Certificate;

    :cond_1
    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null alias passed to getCertificate."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->certs:Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;->elements()Ljava/util/Enumeration;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->certs:Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v3

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->lpa:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->lpa:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object p0

    :cond_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/Certificate;

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v2

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 8

    if-eqz p1, :cond_9

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/you/sis/you/you;->engineIsKeyEntry(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/you/sis/you/you;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object p1

    if-eqz p1, :cond_8

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :goto_0
    if-eqz p1, :cond_6

    move-object v2, p1

    check-cast v2, Ljava/security/cert/X509Certificate;

    sget-object v3, Lorg/bouncycastle/asn1/x509/gwm;->oua:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_1

    :try_start_0
    new-instance v4, Lorg/bouncycastle/asn1/dma;

    invoke-direct {v4, v3}, Lorg/bouncycastle/asn1/dma;-><init>([B)V

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/dma;->readObject()Lorg/bouncycastle/asn1/vdb;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ibl;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object v3

    new-instance v4, Lorg/bouncycastle/asn1/dma;

    invoke-direct {v4, v3}, Lorg/bouncycastle/asn1/dma;-><init>([B)V

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/dma;->readObject()Lorg/bouncycastle/asn1/vdb;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/cno;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/cno;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/cno;->getKeyIdentifier()[B

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->kpa:Ljava/util/Hashtable;

    new-instance v5, Lorg/bouncycastle/jcajce/you/sis/you/you$you;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/cno;->getKeyIdentifier()[B

    move-result-object v3

    invoke-direct {v5, p0, v3}, Lorg/bouncycastle/jcajce/you/sis/you/you$you;-><init>(Lorg/bouncycastle/jcajce/you/sis/you/you;[B)V

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    move-object v3, v1

    :goto_1
    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v4

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->kpa:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v5

    :catch_1
    :cond_2
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->kpa:Ljava/util/Hashtable;

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :try_start_1
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v6

    :cond_3
    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move-object p1, v1

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    if-eq v3, p1, :cond_4

    move-object p1, v3

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p0

    new-array p0, p0, [Ljava/security/cert/Certificate;

    const/4 p1, 0x0

    :goto_2
    array-length v1, p0

    if-eq p1, v1, :cond_7

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/Certificate;

    aput-object v1, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_7
    return-object p0

    :cond_8
    return-object v1

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null alias passed to getCertificateChain."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->keys:Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->certs:Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "alias == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->keys:Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/Key;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null alias passed to getKey."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->certs:Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->keys:Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public engineIsKeyEntry(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->keys:Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz v8, :cond_34

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0xa

    invoke-virtual {v2, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v1

    const/16 v3, 0x30

    if-ne v1, v3, :cond_33

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->reset()V

    new-instance v1, Lorg/bouncycastle/asn1/dma;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/dma;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/dma;->readObject()Lorg/bouncycastle/asn1/vdb;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/dma/ugm;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/ugm;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/dma/ugm;->sh()Lorg/bouncycastle/asn1/dma/cno;

    move-result-object v9

    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/dma/ugm;->th()Lorg/bouncycastle/asn1/dma/ywr;

    move-result-object v2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/dma/ugm;->th()Lorg/bouncycastle/asn1/dma/ywr;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/dma/ywr;->getMac()Lorg/bouncycastle/asn1/x509/qbh;

    move-result-object v13

    invoke-virtual {v13}, Lorg/bouncycastle/asn1/x509/qbh;->Zh()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v2

    iput-object v2, v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->ppa:Lorg/bouncycastle/asn1/x509/zta;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/dma/ywr;->getSalt()[B

    move-result-object v14

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/dma/ywr;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/you/sis/you/you;->hmo(Ljava/math/BigInteger;)I

    move-result v1

    iput v1, v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->qpa:I

    array-length v1, v14

    iput v1, v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->rpa:I

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/dma/cno;->getContent()Lorg/bouncycastle/asn1/ssp;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ibl;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object v15

    :try_start_1
    iget-object v1, v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->ppa:Lorg/bouncycastle/asn1/x509/zta;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/zta;->getAlgorithm()Lorg/bouncycastle/asn1/bvj;

    move-result-object v2

    iget v4, v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->qpa:I

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v3, v14

    move-object/from16 v5, p2

    move-object v7, v15

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/jcajce/you/sis/you/you;->zta(Lorg/bouncycastle/asn1/bvj;[BI[CZ[B)[B

    move-result-object v1

    invoke-virtual {v13}, Lorg/bouncycastle/asn1/x509/qbh;->Sf()[B

    move-result-object v13

    invoke-static {v1, v13}, Lorg/bouncycastle/util/zta;->cno([B[B)Z

    move-result v1

    if-nez v1, :cond_3

    array-length v1, v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v7, "PKCS12 key store mac invalid - wrong password or corrupted file."

    if-gtz v1, :cond_2

    :try_start_2
    iget-object v1, v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->ppa:Lorg/bouncycastle/asn1/x509/zta;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/zta;->getAlgorithm()Lorg/bouncycastle/asn1/bvj;

    move-result-object v2

    iget v4, v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->qpa:I

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object v3, v14

    move-object/from16 v5, p2

    move-object v14, v7

    move-object v7, v15

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/jcajce/you/sis/you/you;->zta(Lorg/bouncycastle/asn1/bvj;[BI[CZ[B)[B

    move-result-object v1

    invoke-static {v1, v13}, Lorg/bouncycastle/util/zta;->cno([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v11

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v14, v7

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    move v1, v12

    :goto_0
    move v7, v1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error constructing MAC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    throw v0

    :cond_4
    move v7, v12

    :goto_1
    new-instance v1, Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

    const/4 v13, 0x0

    invoke-direct {v1, v13}, Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;-><init>(Lorg/bouncycastle/jcajce/you/sis/you/zta;)V

    iput-object v1, v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->keys:Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->jpa:Ljava/util/Hashtable;

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/dma/cno;->getContentType()Lorg/bouncycastle/asn1/bvj;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/asn1/dma/gwm;->data:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v14, "unmarked"

    const-string v15, "attempt to add existing attribute with different value"

    if-eqz v1, :cond_25

    new-instance v1, Lorg/bouncycastle/asn1/dma;

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/dma/cno;->getContent()Lorg/bouncycastle/asn1/ssp;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ibl;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/dma;-><init>([B)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/dma;->readObject()Lorg/bouncycastle/asn1/vdb;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/dma/you;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/you;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/dma/you;->getContentInfo()[Lorg/bouncycastle/asn1/dma/cno;

    move-result-object v9

    move v6, v12

    move/from16 v16, v6

    :goto_2
    array-length v1, v9

    if-eq v6, v1, :cond_26

    aget-object v1, v9, v6

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/dma/cno;->getContentType()Lorg/bouncycastle/asn1/bvj;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/asn1/dma/gwm;->data:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    new-instance v1, Lorg/bouncycastle/asn1/dma;

    aget-object v2, v9, v6

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/dma/cno;->getContent()Lorg/bouncycastle/asn1/ssp;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ibl;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/dma;-><init>([B)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/dma;->readObject()Lorg/bouncycastle/asn1/vdb;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/obl;

    move v2, v12

    :goto_3
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v3

    if-eq v2, v3, :cond_11

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/dma/ire;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/ire;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/dma/ire;->Gh()Lorg/bouncycastle/asn1/bvj;

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/asn1/dma/gwm;->pkcs8ShroudedKeyBag:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/dma/ire;->Hh()Lorg/bouncycastle/asn1/ssp;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/dma/igw;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/igw;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/dma/igw;->getEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v5

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/dma/igw;->getEncryptedData()[B

    move-result-object v4

    invoke-virtual {v0, v5, v4, v8, v7}, Lorg/bouncycastle/jcajce/you/sis/you/you;->zta(Lorg/bouncycastle/asn1/x509/zta;[B[CZ)Ljava/security/PrivateKey;

    move-result-object v4

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/dma/ire;->Fh()Lorg/bouncycastle/asn1/ear;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/dma/ire;->Fh()Lorg/bouncycastle/asn1/ear;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ear;->Rg()Ljava/util/Enumeration;

    move-result-object v3

    move-object v5, v13

    move-object/from16 v17, v5

    :goto_4
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v18

    if-eqz v18, :cond_c

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v13, v18

    check-cast v13, Lorg/bouncycastle/asn1/obl;

    invoke-virtual {v13, v12}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v18

    move-object/from16 v12, v18

    check-cast v12, Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v13, v11}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v13

    check-cast v13, Lorg/bouncycastle/asn1/ear;

    invoke-virtual {v13}, Lorg/bouncycastle/asn1/ear;->size()I

    move-result v18

    if-lez v18, :cond_7

    const/4 v11, 0x0

    invoke-virtual {v13, v11}, Lorg/bouncycastle/asn1/ear;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v13

    check-cast v13, Lorg/bouncycastle/asn1/vdb;

    instance-of v11, v4, Lorg/bouncycastle/jce/interfaces/tsu;

    if-eqz v11, :cond_8

    move-object v11, v4

    check-cast v11, Lorg/bouncycastle/jce/interfaces/tsu;

    invoke-interface {v11, v12}, Lorg/bouncycastle/jce/interfaces/tsu;->zta(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/ssp;

    move-result-object v20

    if-eqz v20, :cond_6

    invoke-interface/range {v20 .. v20}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object v11

    invoke-virtual {v11, v13}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_5

    :cond_5
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-interface {v11, v12, v13}, Lorg/bouncycastle/jce/interfaces/tsu;->zta(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    goto :goto_5

    :cond_7
    const/4 v13, 0x0

    :cond_8
    :goto_5
    sget-object v11, Lorg/bouncycastle/asn1/dma/gwm;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v12, v11}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    check-cast v13, Lorg/bouncycastle/asn1/m;

    invoke-virtual {v13}, Lorg/bouncycastle/asn1/m;->getString()Ljava/lang/String;

    move-result-object v5

    iget-object v11, v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->keys:Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

    invoke-virtual {v11, v5, v4}, Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    :cond_9
    sget-object v11, Lorg/bouncycastle/asn1/dma/gwm;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v12, v11}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    move-object/from16 v17, v13

    check-cast v17, Lorg/bouncycastle/asn1/ibl;

    :cond_a
    :goto_6
    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    goto :goto_4

    :cond_b
    const/4 v5, 0x0

    const/16 v17, 0x0

    :cond_c
    if-eqz v17, :cond_e

    new-instance v3, Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object v11

    invoke-static {v11}, Lorg/bouncycastle/util/encoders/tsu;->encode([B)[B

    move-result-object v11

    invoke-direct {v3, v11}, Ljava/lang/String;-><init>([B)V

    if-nez v5, :cond_d

    iget-object v5, v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->keys:Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

    invoke-virtual {v5, v3, v4}, Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7

    :cond_d
    iget-object v4, v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->jpa:Ljava/util/Hashtable;

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_e
    iget-object v3, v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->keys:Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

    invoke-virtual {v3, v14, v4}, Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v16, 0x1

    goto :goto_7

    :cond_f
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/dma/ire;->Gh()Lorg/bouncycastle/asn1/bvj;

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/asn1/dma/gwm;->certBag:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v10, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_7

    :cond_10
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "extra in data "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/dma/ire;->Gh()Lorg/bouncycastle/asn1/bvj;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v3}, Lorg/bouncycastle/asn1/oif/zta;->cno(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_7
    add-int/lit8 v2, v2, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    goto/16 :goto_3

    :cond_11
    move v12, v6

    goto/16 :goto_10

    :cond_12
    aget-object v1, v9, v6

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/dma/cno;->getContentType()Lorg/bouncycastle/asn1/bvj;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/asn1/dma/gwm;->encryptedData:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    aget-object v1, v9, v6

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/dma/cno;->getContent()Lorg/bouncycastle/asn1/ssp;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/dma/bio;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/bio;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/dma/bio;->getEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v3

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/dma/bio;->getContent()Lorg/bouncycastle/asn1/ibl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object v11

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move v5, v7

    move v12, v6

    move-object v6, v11

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/jcajce/you/sis/you/you;->zta(ZLorg/bouncycastle/asn1/x509/zta;[CZ[B)[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/vdb;->fromByteArray([B)Lorg/bouncycastle/asn1/vdb;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/obl;

    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v3

    if-eq v2, v3, :cond_24

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/dma/ire;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/ire;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/dma/ire;->Gh()Lorg/bouncycastle/asn1/bvj;

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/asn1/dma/gwm;->certBag:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {v10, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move-object/from16 v17, v1

    goto/16 :goto_f

    :cond_13
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/dma/ire;->Gh()Lorg/bouncycastle/asn1/bvj;

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/asn1/dma/gwm;->pkcs8ShroudedKeyBag:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/dma/ire;->Hh()Lorg/bouncycastle/asn1/ssp;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/dma/igw;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/igw;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/dma/igw;->getEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v5

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/dma/igw;->getEncryptedData()[B

    move-result-object v4

    invoke-virtual {v0, v5, v4, v8, v7}, Lorg/bouncycastle/jcajce/you/sis/you/you;->zta(Lorg/bouncycastle/asn1/x509/zta;[B[CZ)Ljava/security/PrivateKey;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lorg/bouncycastle/jce/interfaces/tsu;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/dma/ire;->Fh()Lorg/bouncycastle/asn1/ear;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ear;->Rg()Ljava/util/Enumeration;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v11, 0x0

    :goto_9
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v13

    if-eqz v13, :cond_19

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/bouncycastle/asn1/obl;

    move-object/from16 v17, v1

    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v19

    move-object/from16 v1, v19

    check-cast v1, Lorg/bouncycastle/asn1/bvj;

    move-object/from16 v21, v3

    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v13

    check-cast v13, Lorg/bouncycastle/asn1/ear;

    invoke-virtual {v13}, Lorg/bouncycastle/asn1/ear;->size()I

    move-result v3

    if-lez v3, :cond_16

    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Lorg/bouncycastle/asn1/ear;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v13

    check-cast v13, Lorg/bouncycastle/asn1/vdb;

    invoke-interface {v5, v1}, Lorg/bouncycastle/jce/interfaces/tsu;->zta(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/ssp;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-interface {v3}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object v3

    invoke-virtual {v3, v13}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    goto :goto_a

    :cond_14
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    invoke-interface {v5, v1, v13}, Lorg/bouncycastle/jce/interfaces/tsu;->zta(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    goto :goto_a

    :cond_16
    const/4 v13, 0x0

    :goto_a
    sget-object v3, Lorg/bouncycastle/asn1/dma/gwm;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    check-cast v13, Lorg/bouncycastle/asn1/m;

    invoke-virtual {v13}, Lorg/bouncycastle/asn1/m;->getString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->keys:Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

    invoke-virtual {v3, v1, v4}, Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;->put(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v11, v1

    goto :goto_b

    :cond_17
    sget-object v3, Lorg/bouncycastle/asn1/dma/gwm;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    check-cast v13, Lorg/bouncycastle/asn1/ibl;

    move-object v6, v13

    :cond_18
    :goto_b
    move-object/from16 v1, v17

    move-object/from16 v3, v21

    goto :goto_9

    :cond_19
    move-object/from16 v17, v1

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/util/encoders/tsu;->encode([B)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    if-nez v11, :cond_1a

    iget-object v3, v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->keys:Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

    invoke-virtual {v3, v1, v4}, Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_f

    :cond_1a
    iget-object v3, v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->jpa:Ljava/util/Hashtable;

    invoke-virtual {v3, v11, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    :cond_1b
    move-object/from16 v17, v1

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/dma/ire;->Gh()Lorg/bouncycastle/asn1/bvj;

    move-result-object v1

    sget-object v4, Lorg/bouncycastle/asn1/dma/gwm;->keyBag:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/dma/ire;->Hh()Lorg/bouncycastle/asn1/ssp;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/dma/vdb;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/vdb;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->you(Lorg/bouncycastle/asn1/dma/vdb;)Ljava/security/PrivateKey;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lorg/bouncycastle/jce/interfaces/tsu;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/dma/ire;->Fh()Lorg/bouncycastle/asn1/ear;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ear;->Rg()Ljava/util/Enumeration;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_c
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_20

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object v11

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lorg/bouncycastle/asn1/bvj;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bvj;

    move-result-object v13

    move-object/from16 v21, v3

    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v11

    invoke-static {v11}, Lorg/bouncycastle/asn1/ear;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ear;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ear;->size()I

    move-result v11

    if-lez v11, :cond_1f

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Lorg/bouncycastle/asn1/ear;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/vdb;

    invoke-interface {v4, v13}, Lorg/bouncycastle/jce/interfaces/tsu;->zta(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/ssp;

    move-result-object v11

    if-eqz v11, :cond_1d

    invoke-interface {v11}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object v11

    invoke-virtual {v11, v3}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c

    goto :goto_d

    :cond_1c
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    invoke-interface {v4, v13, v3}, Lorg/bouncycastle/jce/interfaces/tsu;->zta(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    :goto_d
    sget-object v11, Lorg/bouncycastle/asn1/dma/gwm;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v13, v11}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1e

    check-cast v3, Lorg/bouncycastle/asn1/m;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/m;->getString()Ljava/lang/String;

    move-result-object v3

    iget-object v6, v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->keys:Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

    invoke-virtual {v6, v3, v1}, Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;->put(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v6, v3

    goto :goto_e

    :cond_1e
    sget-object v11, Lorg/bouncycastle/asn1/dma/gwm;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v13, v11}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1f

    check-cast v3, Lorg/bouncycastle/asn1/ibl;

    move-object v5, v3

    :cond_1f
    :goto_e
    move-object/from16 v3, v21

    goto :goto_c

    :cond_20
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/util/encoders/tsu;->encode([B)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    if-nez v6, :cond_21

    iget-object v4, v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->keys:Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

    invoke-virtual {v4, v3, v1}, Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_f

    :cond_21
    iget-object v1, v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->jpa:Ljava/util/Hashtable;

    invoke-virtual {v1, v6, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_22
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extra in encryptedData "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/dma/ire;->Gh()Lorg/bouncycastle/asn1/bvj;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v3}, Lorg/bouncycastle/asn1/oif/zta;->cno(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_f
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, v17

    goto/16 :goto_8

    :cond_23
    move v12, v6

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extra "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v9, v12

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/dma/cno;->getContentType()Lorg/bouncycastle/asn1/bvj;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v9, v12

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/dma/cno;->getContent()Lorg/bouncycastle/asn1/ssp;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/oif/zta;->cno(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_24
    :goto_10
    add-int/lit8 v6, v12, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    goto/16 :goto_2

    :cond_25
    const/16 v16, 0x0

    :cond_26
    new-instance v1, Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;-><init>(Lorg/bouncycastle/jcajce/you/sis/you/zta;)V

    iput-object v1, v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->certs:Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->kpa:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->lpa:Ljava/util/Hashtable;

    const/4 v1, 0x0

    :goto_11
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v3

    if-eq v1, v3, :cond_32

    invoke-virtual {v10, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/dma/ire;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/dma/ire;->Hh()Lorg/bouncycastle/asn1/ssp;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/dma/tsu;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/tsu;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/dma/tsu;->lh()Lorg/bouncycastle/asn1/bvj;

    move-result-object v5

    sget-object v6, Lorg/bouncycastle/asn1/dma/gwm;->x509Certificate:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    :try_start_3
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/dma/tsu;->mh()Lorg/bouncycastle/asn1/ssp;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ibl;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v4, v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->mpa:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v4, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/dma/ire;->Fh()Lorg/bouncycastle/asn1/ear;

    move-result-object v5

    if-eqz v5, :cond_2d

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/dma/ire;->Fh()Lorg/bouncycastle/asn1/ear;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ear;->Rg()Ljava/util/Enumeration;

    move-result-object v3

    move-object v5, v2

    move-object v13, v5

    :cond_27
    :goto_12
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2c

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v8

    invoke-static {v8}, Lorg/bouncycastle/asn1/bvj;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bvj;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/ear;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ear;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ear;->size()I

    move-result v11

    if-lez v11, :cond_27

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/ear;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/vdb;

    instance-of v11, v4, Lorg/bouncycastle/jce/interfaces/tsu;

    if-eqz v11, :cond_2a

    move-object v11, v4

    check-cast v11, Lorg/bouncycastle/jce/interfaces/tsu;

    invoke-interface {v11, v8}, Lorg/bouncycastle/jce/interfaces/tsu;->zta(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/ssp;

    move-result-object v12

    if-eqz v12, :cond_29

    invoke-interface {v12}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object v11

    invoke-virtual {v11, v6}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_28

    goto :goto_13

    :cond_28
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    invoke-interface {v11, v8, v6}, Lorg/bouncycastle/jce/interfaces/tsu;->zta(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    :cond_2a
    :goto_13
    sget-object v11, Lorg/bouncycastle/asn1/dma/gwm;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v8, v11}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2b

    check-cast v6, Lorg/bouncycastle/asn1/m;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/m;->getString()Ljava/lang/String;

    move-result-object v13

    goto :goto_12

    :cond_2b
    sget-object v11, Lorg/bouncycastle/asn1/dma/gwm;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v8, v11}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_27

    move-object v5, v6

    check-cast v5, Lorg/bouncycastle/asn1/ibl;

    goto :goto_12

    :cond_2c
    const/4 v7, 0x0

    const/4 v9, 0x1

    goto :goto_14

    :cond_2d
    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object v5, v2

    move-object v13, v5

    :goto_14
    iget-object v3, v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->kpa:Ljava/util/Hashtable;

    new-instance v6, Lorg/bouncycastle/jcajce/you/sis/you/you$you;

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v8

    invoke-direct {v6, v0, v8}, Lorg/bouncycastle/jcajce/you/sis/you/you$you;-><init>(Lorg/bouncycastle/jcajce/you/sis/you/you;Ljava/security/PublicKey;)V

    invoke-virtual {v3, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v16, :cond_2e

    iget-object v3, v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->lpa:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_30

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/bouncycastle/jcajce/you/sis/you/you;->tsu(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/b;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/b;->getKeyIdentifier()[B

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/util/encoders/tsu;->encode([B)[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    iget-object v5, v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->lpa:Ljava/util/Hashtable;

    invoke-virtual {v5, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->keys:Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

    invoke-virtual {v4, v14}, Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_15

    :cond_2e
    if-eqz v5, :cond_2f

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/util/encoders/tsu;->encode([B)[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    iget-object v5, v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->lpa:Ljava/util/Hashtable;

    invoke-virtual {v5, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    if-eqz v13, :cond_30

    iget-object v3, v0, Lorg/bouncycastle/jcajce/you/sis/you/you;->certs:Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

    invoke-virtual {v3, v13, v4}, Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_30
    :goto_15
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_11

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_31
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported certificate type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/dma/tsu;->lh()Lorg/bouncycastle/asn1/bvj;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    return-void

    :catch_3
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_33
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream does not represent a PKCS12 key store"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "No password supplied for PKCS#12 KeyStore."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->keys:Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->certs:Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->kpa:Ljava/util/Hashtable;

    new-instance v0, Lorg/bouncycastle/jcajce/you/sis/you/you$you;

    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/jcajce/you/sis/you/you$you;-><init>(Lorg/bouncycastle/jcajce/you/sis/you/you;Ljava/security/PublicKey;)V

    invoke-virtual {p1, v0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/security/KeyStoreException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "There is a key entry with the name "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    instance-of p3, p2, Ljava/security/PrivateKey;

    if-eqz p3, :cond_4

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/KeyStoreException;

    const-string p1, "no certificate chain for private key"

    invoke-direct {p0, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p3, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->keys:Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

    invoke-virtual {p3, p1}, Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/you/sis/you/you;->engineDeleteEntry(Ljava/lang/String;)V

    :cond_2
    iget-object p3, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->keys:Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

    invoke-virtual {p3, p1, p2}, Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;->put(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p4, :cond_3

    iget-object p2, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->certs:Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

    const/4 p3, 0x0

    aget-object v0, p4, p3

    invoke-virtual {p2, p1, v0}, Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    array-length p1, p4

    if-eq p3, p1, :cond_3

    iget-object p1, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->kpa:Ljava/util/Hashtable;

    new-instance p2, Lorg/bouncycastle/jcajce/you/sis/you/you$you;

    aget-object v0, p4, p3

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lorg/bouncycastle/jcajce/you/sis/you/you$you;-><init>(Lorg/bouncycastle/jcajce/you/sis/you/you;Ljava/security/PublicKey;)V

    aget-object v0, p4, p3

    invoke-virtual {p1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    new-instance p0, Ljava/security/KeyStoreException;

    const-string p1, "PKCS12 does not support non-PrivateKeys"

    invoke-direct {p0, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "operation not supported"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineSize()I
    .locals 4

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->certs:Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "cert"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->keys:Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/you/sis/you/you$tsu;->keys()Ljava/util/Enumeration;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "key"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result p0

    return p0
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/jcajce/you/sis/you/you;->zta(Ljava/io/OutputStream;[CZ)V

    return-void
.end method

.method public engineStore(Ljava/security/KeyStore$LoadStoreParameter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-eqz p1, :cond_5

    instance-of v0, p1, Lorg/bouncycastle/jcajce/zta;

    if-nez v0, :cond_1

    instance-of v1, p1, Lorg/bouncycastle/jce/provider/kth;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No support for \'param\' of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/jcajce/zta;

    goto :goto_1

    :cond_2
    new-instance v0, Lorg/bouncycastle/jcajce/zta;

    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/jce/provider/kth;

    invoke-virtual {v1}, Lorg/bouncycastle/jce/provider/kth;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-interface {p1}, Ljava/security/KeyStore$LoadStoreParameter;->getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v3

    invoke-virtual {v1}, Lorg/bouncycastle/jce/provider/kth;->Nj()Z

    move-result v1

    invoke-direct {v0, v2, v3, v1}, Lorg/bouncycastle/jcajce/zta;-><init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;Z)V

    :goto_1
    invoke-interface {p1}, Ljava/security/KeyStore$LoadStoreParameter;->getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;

    move-result-object p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    instance-of v1, p1, Ljava/security/KeyStore$PasswordProtection;

    if-eqz v1, :cond_4

    check-cast p1, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {p1}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object p1

    :goto_2
    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/zta;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/zta;->zj()Z

    move-result v0

    invoke-direct {p0, v1, p1, v0}, Lorg/bouncycastle/jcajce/you/sis/you/you;->zta(Ljava/io/OutputStream;[CZ)V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No support for protection parameter of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'param\' arg cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected zta(Lorg/bouncycastle/asn1/x509/zta;[B[CZ)Ljava/security/PrivateKey;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/zta;->getAlgorithm()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    :try_start_0
    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->pkcs_12PbeIds:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/bvj;->tsu(Lorg/bouncycastle/asn1/bvj;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x2

    const-string v3, ""

    const/4 v4, 0x4

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/zta;->getParameters()Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/dma/ibl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/ibl;

    move-result-object p1

    new-instance v1, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma/ibl;->getIV()[B

    move-result-object v5

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma/ibl;->rh()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/you/sis/you/you;->hmo(Ljava/math/BigInteger;)I

    move-result p1

    invoke-direct {v1, v5, p1}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->helper:Lorg/bouncycastle/jcajce/tsu/tsu;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/bouncycastle/jcajce/tsu/tsu;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    new-instance p1, Lorg/bouncycastle/jcajce/PKCS12Key;

    invoke-direct {p1, p3, p4}, Lorg/bouncycastle/jcajce/PKCS12Key;-><init>([CZ)V

    invoke-virtual {p0, v4, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p0, p2, v3, v2}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object p0

    check-cast p0, Ljava/security/PrivateKey;

    return-object p0

    :cond_0
    sget-object p4, Lorg/bouncycastle/asn1/dma/gwm;->id_PBES2:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, p4}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-direct {p0, v4, p3, p1}, Lorg/bouncycastle/jcajce/you/sis/you/you;->zta(I[CLorg/bouncycastle/asn1/x509/zta;)Ljavax/crypto/Cipher;

    move-result-object p0

    invoke-virtual {p0, p2, v3, v2}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object p0

    check-cast p0, Ljava/security/PrivateKey;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "exception unwrapping private key - cannot recognise: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "exception unwrapping private key - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public zta(Ljava/security/SecureRandom;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->Moa:Ljava/security/SecureRandom;

    return-void
.end method

.method protected zta(Ljava/lang/String;Ljava/security/Key;Lorg/bouncycastle/asn1/dma/ibl;[C)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v0, p4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    :try_start_0
    iget-object p4, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->helper:Lorg/bouncycastle/jcajce/tsu/tsu;

    invoke-interface {p4, p1}, Lorg/bouncycastle/jcajce/tsu/tsu;->dma(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p4

    new-instance v1, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/dma/ibl;->getIV()[B

    move-result-object v2

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/dma/ibl;->rh()Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p3}, Ljava/math/BigInteger;->intValue()I

    move-result p3

    invoke-direct {v1, v2, p3}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->helper:Lorg/bouncycastle/jcajce/tsu/tsu;

    invoke-interface {p0, p1}, Lorg/bouncycastle/jcajce/tsu/tsu;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p4, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p3

    invoke-virtual {p0, p1, p3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p0, p2}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "exception encrypting data - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected zta(ZLorg/bouncycastle/asn1/x509/zta;[CZ[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/zta;->getAlgorithm()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->pkcs_12PbeIds:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/bvj;->tsu(Lorg/bouncycastle/asn1/bvj;)Z

    move-result v1

    const-string v2, "exception decrypting data - "

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/zta;->getParameters()Lorg/bouncycastle/asn1/ssp;

    move-result-object p2

    invoke-static {p2}, Lorg/bouncycastle/asn1/dma/ibl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/ibl;

    move-result-object p2

    :try_start_0
    new-instance v1, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/dma/ibl;->getIV()[B

    move-result-object v3

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/dma/ibl;->rh()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    move-result p2

    invoke-direct {v1, v3, p2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    new-instance p2, Lorg/bouncycastle/jcajce/PKCS12Key;

    invoke-direct {p2, p3, p4}, Lorg/bouncycastle/jcajce/PKCS12Key;-><init>([CZ)V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/you/sis/you/you;->helper:Lorg/bouncycastle/jcajce/tsu/tsu;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p0, p3}, Lorg/bouncycastle/jcajce/tsu/tsu;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    invoke-virtual {p0, p1, p2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p0, p5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sget-object p4, Lorg/bouncycastle/asn1/dma/gwm;->id_PBES2:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, p4}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    :try_start_1
    invoke-direct {p0, p1, p3, p2}, Lorg/bouncycastle/jcajce/you/sis/you/you;->zta(I[CLorg/bouncycastle/asn1/x509/zta;)Ljavax/crypto/Cipher;

    move-result-object p0

    invoke-virtual {p0, p5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "unknown PBE algorithm: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
