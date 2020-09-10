.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/interfaces/ECPublicKey;
.implements Lorg/bouncycastle/jce/interfaces/ECPublicKey;
.implements Lorg/bouncycastle/jce/interfaces/sis;


# static fields
.field static final serialVersionUID:J = 0x219f7a8aa3ea4824L


# instance fields
.field private transient EEa:Lorg/bouncycastle/crypto/wtn/obl;

.field private algorithm:Ljava/lang/String;

.field private transient configuration:Lorg/bouncycastle/jcajce/provider/config/sis;

.field private transient ecSpec:Ljava/security/spec/ECParameterSpec;

.field private withCompression:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/ECPublicKeySpec;Lorg/bouncycastle/jcajce/provider/config/sis;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/security/spec/ECPublicKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    new-instance p1, Lorg/bouncycastle/crypto/wtn/obl;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p2}, Ljava/security/spec/ECPublicKeySpec;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;Z)Lyou/zta/sis/zta/wtn;

    move-result-object v0

    invoke-virtual {p2}, Ljava/security/spec/ECPublicKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p2

    invoke-static {p3, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Lorg/bouncycastle/jcajce/provider/config/sis;Ljava/security/spec/ECParameterSpec;)Lorg/bouncycastle/crypto/wtn/ibl;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lorg/bouncycastle/crypto/wtn/obl;-><init>(Lyou/zta/sis/zta/wtn;Lorg/bouncycastle/crypto/wtn/ibl;)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->EEa:Lorg/bouncycastle/crypto/wtn/obl;

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->configuration:Lorg/bouncycastle/jcajce/provider/config/sis;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/c;Lorg/bouncycastle/jcajce/provider/config/sis;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->configuration:Lorg/bouncycastle/jcajce/provider/config/sis;

    invoke-direct {p0, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->cno(Lorg/bouncycastle/asn1/x509/c;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/crypto/wtn/obl;Ljava/security/spec/ECParameterSpec;Lorg/bouncycastle/jcajce/provider/config/sis;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/ugm;->getParameters()Lorg/bouncycastle/crypto/wtn/ibl;

    move-result-object v0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->EEa:Lorg/bouncycastle/crypto/wtn/obl;

    if-nez p3, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/ibl;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object p1

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/ibl;->getSeed()[B

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Lyou/zta/sis/zta/rtg;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->zta(Ljava/security/spec/EllipticCurve;Lorg/bouncycastle/crypto/wtn/ibl;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    :goto_0
    iput-object p4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->configuration:Lorg/bouncycastle/jcajce/provider/config/sis;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/crypto/wtn/obl;Lorg/bouncycastle/jcajce/provider/config/sis;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->EEa:Lorg/bouncycastle/crypto/wtn/obl;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->configuration:Lorg/bouncycastle/jcajce/provider/config/sis;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/crypto/wtn/obl;Lyou/zta/you/you/rtg;Lorg/bouncycastle/jcajce/provider/config/sis;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/ugm;->getParameters()Lorg/bouncycastle/crypto/wtn/ibl;

    move-result-object v0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    if-nez p3, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/ibl;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object p1

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/ibl;->getSeed()[B

    move-result-object p3

    invoke-static {p1, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Lyou/zta/sis/zta/rtg;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->zta(Ljava/security/spec/EllipticCurve;Lorg/bouncycastle/crypto/wtn/ibl;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lyou/zta/you/you/rtg;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object p1

    invoke-virtual {p3}, Lyou/zta/you/you/rtg;->getSeed()[B

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Lyou/zta/sis/zta/rtg;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-static {p1, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Ljava/security/spec/EllipticCurve;Lyou/zta/you/you/rtg;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->EEa:Lorg/bouncycastle/crypto/wtn/obl;

    iput-object p4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->configuration:Lorg/bouncycastle/jcajce/provider/config/sis;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    iget-object p1, p2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->EEa:Lorg/bouncycastle/crypto/wtn/obl;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->EEa:Lorg/bouncycastle/crypto/wtn/obl;

    iget-object p1, p2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iget-boolean p1, p2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->withCompression:Z

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->withCompression:Z

    iget-object p1, p2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->configuration:Lorg/bouncycastle/jcajce/provider/config/sis;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->configuration:Lorg/bouncycastle/jcajce/provider/config/sis;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lyou/zta/you/you/cno;Lorg/bouncycastle/jcajce/provider/config/sis;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

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

    new-instance v0, Lorg/bouncycastle/crypto/wtn/obl;

    invoke-virtual {p2}, Lyou/zta/you/you/cno;->getQ()Lyou/zta/sis/zta/wtn;

    move-result-object v1

    invoke-virtual {p2}, Lyou/zta/you/you/zta;->getParams()Lyou/zta/you/you/rtg;

    move-result-object v2

    invoke-static {p3, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/bio;->zta(Lorg/bouncycastle/jcajce/provider/config/sis;Lyou/zta/you/you/rtg;)Lorg/bouncycastle/crypto/wtn/ibl;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/wtn/obl;-><init>(Lyou/zta/sis/zta/wtn;Lorg/bouncycastle/crypto/wtn/ibl;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->EEa:Lorg/bouncycastle/crypto/wtn/obl;

    invoke-virtual {p2}, Lyou/zta/you/you/zta;->getParams()Lyou/zta/you/you/rtg;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Ljava/security/spec/EllipticCurve;Lyou/zta/you/you/rtg;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Lorg/bouncycastle/jcajce/provider/config/sis;->gwm()Lyou/zta/you/you/rtg;

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/crypto/wtn/obl;

    invoke-virtual {p1}, Lyou/zta/you/you/rtg;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object p1

    invoke-virtual {p2}, Lyou/zta/you/you/cno;->getQ()Lyou/zta/sis/zta/wtn;

    move-result-object v1

    invoke-virtual {v1}, Lyou/zta/sis/zta/wtn;->ok()Lyou/zta/sis/zta/cno;

    move-result-object v1

    invoke-virtual {v1}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2}, Lyou/zta/you/you/cno;->getQ()Lyou/zta/sis/zta/wtn;

    move-result-object p2

    invoke-virtual {p2}, Lyou/zta/sis/zta/wtn;->pk()Lyou/zta/sis/zta/cno;

    move-result-object p2

    invoke-virtual {p2}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lyou/zta/sis/zta/rtg;->ssp(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lyou/zta/sis/zta/wtn;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p3, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Lorg/bouncycastle/jcajce/provider/config/sis;Ljava/security/spec/ECParameterSpec;)Lorg/bouncycastle/crypto/wtn/ibl;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/crypto/wtn/obl;-><init>(Lyou/zta/sis/zta/wtn;Lorg/bouncycastle/crypto/wtn/ibl;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->EEa:Lorg/bouncycastle/crypto/wtn/obl;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    :goto_0
    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->configuration:Lorg/bouncycastle/jcajce/provider/config/sis;

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPublicKey;Lorg/bouncycastle/jcajce/provider/config/sis;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    new-instance v0, Lorg/bouncycastle/crypto/wtn/obl;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;Z)Lyou/zta/sis/zta/wtn;

    move-result-object v1

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Lorg/bouncycastle/jcajce/provider/config/sis;Ljava/security/spec/ECParameterSpec;)Lorg/bouncycastle/crypto/wtn/ibl;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/crypto/wtn/obl;-><init>(Lyou/zta/sis/zta/wtn;Lorg/bouncycastle/crypto/wtn/ibl;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->EEa:Lorg/bouncycastle/crypto/wtn/obl;

    return-void
.end method

.method private cno(Lorg/bouncycastle/asn1/x509/c;)V
    .locals 6

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/c;->getAlgorithm()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/zta;->getParameters()Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ibl/veq;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ibl/veq;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->configuration:Lorg/bouncycastle/jcajce/provider/config/sis;

    invoke-static {v1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Lorg/bouncycastle/jcajce/provider/config/sis;Lorg/bouncycastle/asn1/ibl/veq;)Lyou/zta/sis/zta/rtg;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Lorg/bouncycastle/asn1/ibl/veq;Lyou/zta/sis/zta/rtg;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/c;->uh()Lorg/bouncycastle/asn1/n;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/sis;->getBytes()[B

    move-result-object p1

    new-instance v2, Lorg/bouncycastle/asn1/C;

    invoke-direct {v2, p1}, Lorg/bouncycastle/asn1/C;-><init>([B)V

    const/4 v3, 0x0

    aget-byte v3, p1, v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    array-length v4, p1

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    if-ne v3, v4, :cond_1

    aget-byte v3, p1, v5

    const/4 v4, 0x3

    if-eq v3, v5, :cond_0

    aget-byte v3, p1, v5

    if-ne v3, v4, :cond_1

    :cond_0
    new-instance v3, Lorg/bouncycastle/asn1/ibl/qeg;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ibl/qeg;-><init>()V

    invoke-virtual {v3, v1}, Lorg/bouncycastle/asn1/ibl/qeg;->you(Lyou/zta/sis/zta/rtg;)I

    move-result v3

    array-length v5, p1

    sub-int/2addr v5, v4

    if-lt v3, v5, :cond_1

    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/asn1/vdb;->fromByteArray([B)Lorg/bouncycastle/asn1/vdb;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lorg/bouncycastle/asn1/ibl;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "error recovering public key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance p1, Lorg/bouncycastle/asn1/ibl/les;

    invoke-direct {p1, v1, v2}, Lorg/bouncycastle/asn1/ibl/les;-><init>(Lyou/zta/sis/zta/rtg;Lorg/bouncycastle/asn1/ibl;)V

    new-instance v1, Lorg/bouncycastle/crypto/wtn/obl;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ibl/les;->Ri()Lyou/zta/sis/zta/wtn;

    move-result-object p1

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->configuration:Lorg/bouncycastle/jcajce/provider/config/sis;

    invoke-static {v2, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/bio;->you(Lorg/bouncycastle/jcajce/provider/config/sis;Lorg/bouncycastle/asn1/ibl/veq;)Lorg/bouncycastle/crypto/wtn/ibl;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lorg/bouncycastle/crypto/wtn/obl;-><init>(Lyou/zta/sis/zta/wtn;Lorg/bouncycastle/crypto/wtn/ibl;)V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->EEa:Lorg/bouncycastle/crypto/wtn/obl;

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

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/sis;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->configuration:Lorg/bouncycastle/jcajce/provider/config/sis;

    invoke-static {p1}, Lorg/bouncycastle/asn1/vdb;->fromByteArray([B)Lorg/bouncycastle/asn1/vdb;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/c;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/c;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->cno(Lorg/bouncycastle/asn1/x509/c;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

.method private zta(Ljava/security/spec/EllipticCurve;Lorg/bouncycastle/crypto/wtn/ibl;)Ljava/security/spec/ECParameterSpec;
    .locals 2

    new-instance p0, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/ibl;->getG()Lyou/zta/sis/zta/wtn;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->you(Lyou/zta/sis/zta/wtn;)Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/ibl;->Qi()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/ibl;->Pi()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    move-result p2

    invoke-direct {p0, p1, v0, v1, p2}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    return-object p0
.end method


# virtual methods
.method Fj()Lorg/bouncycastle/crypto/wtn/obl;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->EEa:Lorg/bouncycastle/crypto/wtn/obl;

    return-object p0
.end method

.method Gj()Lyou/zta/you/you/rtg;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->withCompression:Z

    invoke-static {v0, p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->you(Ljava/security/spec/ECParameterSpec;Z)Lyou/zta/you/you/rtg;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->configuration:Lorg/bouncycastle/jcajce/provider/config/sis;

    invoke-interface {p0}, Lorg/bouncycastle/jcajce/provider/config/sis;->gwm()Lyou/zta/you/you/rtg;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->EEa:Lorg/bouncycastle/crypto/wtn/obl;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/obl;->getQ()Lyou/zta/sis/zta/wtn;

    move-result-object v0

    iget-object v2, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->EEa:Lorg/bouncycastle/crypto/wtn/obl;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/wtn/obl;->getQ()Lyou/zta/sis/zta/wtn;

    move-result-object v2

    invoke-virtual {v0, v2}, Lyou/zta/sis/zta/wtn;->bio(Lyou/zta/sis/zta/wtn;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->Gj()Lyou/zta/you/you/rtg;

    move-result-object p0

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->Gj()Lyou/zta/you/you/rtg;

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

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->withCompression:Z

    return-void
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    return-object p0
.end method

.method public getEncoded()[B
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iget-boolean v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->withCompression:Z

    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/you;->zta(Ljava/security/spec/ECParameterSpec;Z)Lorg/bouncycastle/asn1/ibl/veq;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/asn1/ibl/les;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->EEa:Lorg/bouncycastle/crypto/wtn/obl;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/wtn/obl;->getQ()Lyou/zta/sis/zta/wtn;

    move-result-object v2

    iget-boolean p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->withCompression:Z

    invoke-direct {v1, v2, p0}, Lorg/bouncycastle/asn1/ibl/les;-><init>(Lyou/zta/sis/zta/wtn;Z)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ibl/les;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ibl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ibl;

    move-result-object p0

    new-instance v1, Lorg/bouncycastle/asn1/x509/c;

    new-instance v2, Lorg/bouncycastle/asn1/x509/zta;

    sget-object v3, Lorg/bouncycastle/asn1/ibl/ivd;->id_ecPublicKey:Lorg/bouncycastle/asn1/bvj;

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/asn1/x509/zta;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lorg/bouncycastle/asn1/x509/c;-><init>(Lorg/bouncycastle/asn1/x509/zta;[B)V

    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/igw;->rtg(Lorg/bouncycastle/asn1/x509/c;)[B

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

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-boolean p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->withCompression:Z

    invoke-static {v0, p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->you(Ljava/security/spec/ECParameterSpec;Z)Lyou/zta/you/you/rtg;

    move-result-object p0

    return-object p0
.end method

.method public getParams()Ljava/security/spec/ECParameterSpec;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-object p0
.end method

.method public getQ()Lyou/zta/sis/zta/wtn;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->EEa:Lorg/bouncycastle/crypto/wtn/obl;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/obl;->getQ()Lyou/zta/sis/zta/wtn;

    move-result-object v0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-nez p0, :cond_0

    invoke-virtual {v0}, Lyou/zta/sis/zta/wtn;->sk()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public getW()Ljava/security/spec/ECPoint;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->EEa:Lorg/bouncycastle/crypto/wtn/obl;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/wtn/obl;->getQ()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->you(Lyou/zta/sis/zta/wtn;)Ljava/security/spec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->EEa:Lorg/bouncycastle/crypto/wtn/obl;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/obl;->getQ()Lyou/zta/sis/zta/wtn;

    move-result-object v0

    invoke-virtual {v0}, Lyou/zta/sis/zta/wtn;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->Gj()Lyou/zta/you/you/rtg;

    move-result-object p0

    invoke-virtual {p0}, Lyou/zta/you/you/rtg;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->EEa:Lorg/bouncycastle/crypto/wtn/obl;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/obl;->getQ()Lyou/zta/sis/zta/wtn;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->Gj()Lyou/zta/you/you/rtg;

    move-result-object p0

    const-string v1, "EC"

    invoke-static {v1, v0, p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/bio;->zta(Ljava/lang/String;Lyou/zta/sis/zta/wtn;Lyou/zta/you/you/rtg;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
