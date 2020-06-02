.class public Lorg/bouncycastle/jce/provider/JCEECPublicKey;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/interfaces/ECPublicKey;
.implements Lorg/bouncycastle/jce/interfaces/ECPublicKey;
.implements Lorg/bouncycastle/jce/interfaces/sis;


# instance fields
.field private algorithm:Ljava/lang/String;

.field private ecSpec:Ljava/security/spec/ECParameterSpec;

.field private q:Lyou/zta/sis/zta/wtn;

.field private withCompression:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/ECPublicKeySpec;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/security/spec/ECPublicKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iget-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p2}, Ljava/security/spec/ECPublicKeySpec;->getW()Ljava/security/spec/ECPoint;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;Z)Lyou/zta/sis/zta/wtn;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lyou/zta/sis/zta/wtn;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/crypto/wtn/obl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/obl;->getQ()Lyou/zta/sis/zta/wtn;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lyou/zta/sis/zta/wtn;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/crypto/wtn/obl;Ljava/security/spec/ECParameterSpec;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/ugm;->getParameters()Lorg/bouncycastle/crypto/wtn/ibl;

    move-result-object v0

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/obl;->getQ()Lyou/zta/sis/zta/wtn;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lyou/zta/sis/zta/wtn;

    if-nez p3, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/ibl;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object p1

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/ibl;->getSeed()[B

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Lyou/zta/sis/zta/rtg;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->zta(Ljava/security/spec/EllipticCurve;Lorg/bouncycastle/crypto/wtn/ibl;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/crypto/wtn/obl;Lyou/zta/you/you/rtg;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/ugm;->getParameters()Lorg/bouncycastle/crypto/wtn/ibl;

    move-result-object v0

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/obl;->getQ()Lyou/zta/sis/zta/wtn;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lyou/zta/sis/zta/wtn;

    if-nez p3, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/ibl;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object p1

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/ibl;->getSeed()[B

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Lyou/zta/sis/zta/rtg;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->zta(Ljava/security/spec/EllipticCurve;Lorg/bouncycastle/crypto/wtn/ibl;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lyou/zta/you/you/rtg;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object p1

    invoke-virtual {p3}, Lyou/zta/you/you/rtg;->getSeed()[B

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Lyou/zta/sis/zta/rtg;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-static {p1, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Ljava/security/spec/EllipticCurve;Lyou/zta/you/you/rtg;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/jce/provider/JCEECPublicKey;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    iget-object p1, p2, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lyou/zta/sis/zta/wtn;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lyou/zta/sis/zta/wtn;

    iget-object p1, p2, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iget-boolean p1, p2, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    iput-boolean p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lyou/zta/you/you/cno;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lyou/zta/you/you/cno;->getQ()Lyou/zta/sis/zta/wtn;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lyou/zta/sis/zta/wtn;

    invoke-virtual {p2}, Lyou/zta/you/you/zta;->getParams()Lyou/zta/you/you/rtg;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lyou/zta/you/you/zta;->getParams()Lyou/zta/you/you/rtg;

    move-result-object p1

    invoke-virtual {p1}, Lyou/zta/you/you/rtg;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object p1

    invoke-virtual {p2}, Lyou/zta/you/you/zta;->getParams()Lyou/zta/you/you/rtg;

    move-result-object v0

    invoke-virtual {v0}, Lyou/zta/you/you/rtg;->getSeed()[B

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Lyou/zta/sis/zta/rtg;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-virtual {p2}, Lyou/zta/you/you/zta;->getParams()Lyou/zta/you/you/rtg;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Ljava/security/spec/EllipticCurve;Lyou/zta/you/you/rtg;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lyou/zta/sis/zta/wtn;

    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/sis;

    invoke-interface {p1}, Lorg/bouncycastle/jcajce/provider/config/sis;->gwm()Lyou/zta/you/you/rtg;

    move-result-object p1

    invoke-virtual {p1}, Lyou/zta/you/you/rtg;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lyou/zta/sis/zta/wtn;

    invoke-virtual {p2}, Lyou/zta/sis/zta/wtn;->pk()Lyou/zta/sis/zta/cno;

    move-result-object p2

    invoke-virtual {p2}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p2

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lyou/zta/sis/zta/wtn;

    invoke-virtual {v0}, Lyou/zta/sis/zta/wtn;->qk()Lyou/zta/sis/zta/cno;

    move-result-object v0

    invoke-virtual {v0}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lyou/zta/sis/zta/rtg;->zta(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lyou/zta/sis/zta/wtn;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lyou/zta/sis/zta/wtn;

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPublicKey;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;Z)Lyou/zta/sis/zta/wtn;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lyou/zta/sis/zta/wtn;

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/asn1/x509/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->cno(Lorg/bouncycastle/asn1/x509/c;)V

    return-void
.end method

.method private cno(Lorg/bouncycastle/asn1/x509/c;)V
    .locals 10

    new-instance v0, Lorg/bouncycastle/asn1/ibl/veq;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/c;->_h()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/zta;->getParameters()Lorg/bouncycastle/asn1/ssp;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/vdb;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ibl/veq;-><init>(Lorg/bouncycastle/asn1/vdb;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ibl/veq;->Mi()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ibl/veq;->getParameters()Lorg/bouncycastle/asn1/vdb;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/bvj;

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/bio;->bvj(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/ibl/vju;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ibl/vju;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v2

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ibl/vju;->getSeed()[B

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Lyou/zta/sis/zta/rtg;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v6

    new-instance v3, Lyou/zta/you/you/tsu;

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/bio;->oif(Lorg/bouncycastle/asn1/bvj;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ibl/vju;->getG()Lyou/zta/sis/zta/wtn;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->you(Lyou/zta/sis/zta/wtn;)Ljava/security/spec/ECPoint;

    move-result-object v7

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ibl/vju;->Ri()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ibl/vju;->Qi()Ljava/math/BigInteger;

    move-result-object v9

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lyou/zta/you/you/tsu;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :goto_0
    iput-object v3, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ibl/veq;->Li()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/sis;

    invoke-interface {v0}, Lorg/bouncycastle/jcajce/provider/config/sis;->gwm()Lyou/zta/you/you/rtg;

    move-result-object v0

    invoke-virtual {v0}, Lyou/zta/you/you/rtg;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ibl/veq;->getParameters()Lorg/bouncycastle/asn1/vdb;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ibl/vju;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ibl/vju;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ibl/vju;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ibl/vju;->getSeed()[B

    move-result-object v1

    invoke-static {v2, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Lyou/zta/sis/zta/rtg;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    new-instance v3, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ibl/vju;->getG()Lyou/zta/sis/zta/wtn;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->you(Lyou/zta/sis/zta/wtn;)Ljava/security/spec/ECPoint;

    move-result-object v4

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ibl/vju;->Ri()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ibl/vju;->Qi()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-direct {v3, v1, v4, v5, v0}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/c;->vh()Lorg/bouncycastle/asn1/n;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/sis;->getBytes()[B

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/asn1/C;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/C;-><init>([B)V

    const/4 v1, 0x0

    aget-byte v1, p1, v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    array-length v3, p1

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    if-ne v1, v3, :cond_3

    aget-byte v1, p1, v4

    const/4 v3, 0x3

    if-eq v1, v4, :cond_2

    aget-byte v1, p1, v4

    if-ne v1, v3, :cond_3

    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/ibl/qeg;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ibl/qeg;-><init>()V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ibl/qeg;->you(Lyou/zta/sis/zta/rtg;)I

    move-result v1

    array-length v4, p1

    sub-int/2addr v4, v3

    if-lt v1, v4, :cond_3

    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/asn1/vdb;->fromByteArray([B)Lorg/bouncycastle/asn1/vdb;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/asn1/ibl;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "error recovering public key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    new-instance p1, Lorg/bouncycastle/asn1/ibl/les;

    invoke-direct {p1, v2, v0}, Lorg/bouncycastle/asn1/ibl/les;-><init>(Lyou/zta/sis/zta/rtg;Lorg/bouncycastle/asn1/ibl;)V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ibl/les;->Si()Lyou/zta/sis/zta/wtn;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lyou/zta/sis/zta/wtn;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lorg/bouncycastle/asn1/vdb;->fromByteArray([B)Lorg/bouncycastle/asn1/vdb;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/c;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->cno(Lorg/bouncycastle/asn1/x509/c;)V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-boolean p0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    return-void
.end method

.method private zta(Ljava/security/spec/EllipticCurve;Lorg/bouncycastle/crypto/wtn/ibl;)Ljava/security/spec/ECParameterSpec;
    .locals 2

    new-instance p0, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/ibl;->getG()Lyou/zta/sis/zta/wtn;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->you(Lyou/zta/sis/zta/wtn;)Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/ibl;->Ri()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/ibl;->Qi()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    move-result p2

    invoke-direct {p0, p1, v0, v1, p2}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    return-object p0
.end method

.method private zta([BILjava/math/BigInteger;)V
    .locals 4

    invoke-virtual {p3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    array-length p3, p0

    const/4 v0, 0x0

    const/16 v1, 0x20

    if-ge p3, v1, :cond_0

    new-array p3, v1, [B

    array-length v2, p3

    array-length v3, p0

    sub-int/2addr v2, v3

    array-length v3, p0

    invoke-static {p0, v0, p3, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, p3

    :cond_0
    :goto_0
    if-eq v0, v1, :cond_1

    add-int p3, p2, v0

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    aget-byte v2, p0, v2

    aput-byte v2, p1, p3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method Hj()Lyou/zta/you/you/rtg;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    invoke-static {v0, p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->you(Ljava/security/spec/ECParameterSpec;Z)Lyou/zta/you/you/rtg;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/sis;

    invoke-interface {p0}, Lorg/bouncycastle/jcajce/provider/config/sis;->gwm()Lyou/zta/you/you/rtg;

    move-result-object p0

    return-object p0
.end method

.method public Nj()Lyou/zta/sis/zta/wtn;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lyou/zta/sis/zta/wtn;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/bouncycastle/jce/provider/JCEECPublicKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/bouncycastle/jce/provider/JCEECPublicKey;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->Nj()Lyou/zta/sis/zta/wtn;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->Nj()Lyou/zta/sis/zta/wtn;

    move-result-object v2

    invoke-virtual {v0, v2}, Lyou/zta/sis/zta/wtn;->bio(Lyou/zta/sis/zta/wtn;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->Hj()Lyou/zta/you/you/rtg;

    move-result-object p0

    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->Hj()Lyou/zta/you/you/rtg;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyou/zta/you/you/rtg;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public gck(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UNCOMPRESSED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    return-void
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    return-object p0
.end method

.method public getEncoded()[B
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    instance-of v1, v0, Lyou/zta/you/you/tsu;

    if-eqz v1, :cond_1

    check-cast v0, Lyou/zta/you/you/tsu;

    invoke-virtual {v0}, Lyou/zta/you/you/tsu;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/bio;->La(Ljava/lang/String;)Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    check-cast v1, Lyou/zta/you/you/tsu;

    invoke-virtual {v1}, Lyou/zta/you/you/tsu;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/ibl/veq;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/ibl/veq;-><init>(Lorg/bouncycastle/asn1/bvj;)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    new-instance v1, Lorg/bouncycastle/asn1/ibl/veq;

    sget-object v0, Lorg/bouncycastle/asn1/z;->INSTANCE:Lorg/bouncycastle/asn1/z;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/ibl/veq;-><init>(Lorg/bouncycastle/asn1/qbh;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Ljava/security/spec/EllipticCurve;)Lyou/zta/sis/zta/rtg;

    move-result-object v2

    new-instance v0, Lorg/bouncycastle/asn1/ibl/vju;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v1

    iget-boolean v3, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Lyou/zta/sis/zta/rtg;Ljava/security/spec/ECPoint;Z)Lyou/zta/sis/zta/wtn;

    move-result-object v3

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v1

    int-to-long v5, v1

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/asn1/ibl/vju;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    new-instance v1, Lorg/bouncycastle/asn1/ibl/veq;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/ibl/veq;-><init>(Lorg/bouncycastle/asn1/ibl/vju;)V

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->Nj()Lyou/zta/sis/zta/wtn;

    move-result-object v0

    invoke-virtual {v0}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v0

    new-instance v2, Lorg/bouncycastle/asn1/ibl/les;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->getQ()Lyou/zta/sis/zta/wtn;

    move-result-object v3

    invoke-virtual {v3}, Lyou/zta/sis/zta/wtn;->pk()Lyou/zta/sis/zta/cno;

    move-result-object v3

    invoke-virtual {v3}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->getQ()Lyou/zta/sis/zta/wtn;

    move-result-object v4

    invoke-virtual {v4}, Lyou/zta/sis/zta/wtn;->qk()Lyou/zta/sis/zta/cno;

    move-result-object v4

    invoke-virtual {v4}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    iget-boolean p0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    invoke-virtual {v0, v3, v4, p0}, Lyou/zta/sis/zta/rtg;->zta(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    invoke-direct {v2, p0}, Lorg/bouncycastle/asn1/ibl/les;-><init>(Lyou/zta/sis/zta/wtn;)V

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ibl/les;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ibl;

    new-instance v0, Lorg/bouncycastle/asn1/x509/c;

    new-instance v2, Lorg/bouncycastle/asn1/x509/zta;

    sget-object v3, Lorg/bouncycastle/asn1/ibl/ivd;->id_ecPublicKey:Lorg/bouncycastle/asn1/bvj;

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/asn1/x509/zta;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object p0

    invoke-direct {v0, v2, p0}, Lorg/bouncycastle/asn1/x509/c;-><init>(Lorg/bouncycastle/asn1/x509/zta;[B)V

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/igw;->rtg(Lorg/bouncycastle/asn1/x509/c;)[B

    move-result-object p0

    return-object p0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    const-string p0, "X.509"

    return-object p0
.end method

.method public getParameters()Lyou/zta/you/you/rtg;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-boolean p0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    invoke-static {v0, p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->you(Ljava/security/spec/ECParameterSpec;Z)Lyou/zta/you/you/rtg;

    move-result-object p0

    return-object p0
.end method

.method public getParams()Ljava/security/spec/ECParameterSpec;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-object p0
.end method

.method public getQ()Lyou/zta/sis/zta/wtn;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lyou/zta/sis/zta/wtn;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->tk()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getW()Ljava/security/spec/ECPoint;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lyou/zta/sis/zta/wtn;

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->you(Lyou/zta/sis/zta/wtn;)Ljava/security/spec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->Nj()Lyou/zta/sis/zta/wtn;

    move-result-object v0

    invoke-virtual {v0}, Lyou/zta/sis/zta/wtn;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->Hj()Lyou/zta/you/you/rtg;

    move-result-object p0

    invoke-virtual {p0}, Lyou/zta/you/you/rtg;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lorg/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EC Public Key"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "            X: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lyou/zta/sis/zta/wtn;

    invoke-virtual {v2}, Lyou/zta/sis/zta/wtn;->pk()Lyou/zta/sis/zta/cno;

    move-result-object v2

    invoke-virtual {v2}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "            Y: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lyou/zta/sis/zta/wtn;

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->qk()Lyou/zta/sis/zta/cno;

    move-result-object p0

    invoke-virtual {p0}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
