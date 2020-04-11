.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/sis;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/sis$zta;
    }
.end annotation


# static fields
.field private static final aoa:Lorg/bouncycastle/asn1/ibl/qeg;


# instance fields
.field private Rna:Ljava/lang/String;

.field private _na:Ljava/lang/Object;

.field private parameters:Lorg/bouncycastle/crypto/wtn/ibl;

.field private result:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/ibl/qeg;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ibl/qeg;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/sis;->aoa:Lorg/bouncycastle/asn1/ibl/qeg;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lorg/bouncycastle/crypto/tsu;Lorg/bouncycastle/crypto/dma;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/dma;)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/sis;->Rna:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/sis;->_na:Ljava/lang/Object;

    return-void
.end method

.method private static sis(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private zta(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    instance-of v0, p1, Ljava/security/PrivateKey;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Dla:Lorg/bouncycastle/crypto/dma;

    if-nez v0, :cond_1

    instance-of v0, p2, Lorg/bouncycastle/jcajce/sis/tsu;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "no KDF specified for UserKeyingMaterialSpec"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    check-cast p1, Ljava/security/PrivateKey;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/bio;->you(Ljava/security/PrivateKey;)Lorg/bouncycastle/crypto/wtn/you;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/crypto/wtn/zgw;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/ugm;->getParameters()Lorg/bouncycastle/crypto/wtn/ibl;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/sis;->parameters:Lorg/bouncycastle/crypto/wtn/ibl;

    instance-of v0, p2, Lorg/bouncycastle/jcajce/sis/tsu;

    if-eqz v0, :cond_2

    check-cast p2, Lorg/bouncycastle/jcajce/sis/tsu;

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/sis/tsu;->yj()[B

    move-result-object p2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/zta;->Sna:[B

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/sis;->_na:Ljava/lang/Object;

    check-cast p0, Lorg/bouncycastle/crypto/tsu;

    invoke-interface {p0, p1}, Lorg/bouncycastle/crypto/tsu;->you(Lorg/bouncycastle/crypto/kth;)V

    return-void

    :cond_3
    new-instance p1, Ljava/security/InvalidKeyException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/sis;->Rna:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " key agreement requires "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p0, Lorg/bouncycastle/jce/interfaces/ECPrivateKey;

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/sis;->sis(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " for initialisation"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/sis;->parameters:Lorg/bouncycastle/crypto/wtn/ibl;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    instance-of p2, p1, Ljava/security/PublicKey;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/security/PublicKey;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/you;->zta(Ljava/security/PublicKey;)Lorg/bouncycastle/crypto/wtn/you;

    move-result-object p1

    :try_start_0
    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/sis;->_na:Ljava/lang/Object;

    check-cast p2, Lorg/bouncycastle/crypto/tsu;

    invoke-interface {p2, p1}, Lorg/bouncycastle/crypto/tsu;->zta(Lorg/bouncycastle/crypto/kth;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/sis;->tsu(Ljava/math/BigInteger;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/sis;->result:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$1;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calculation failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p0, v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$1;-><init>(Lorg/bouncycastle/jcajce/provider/asymmetric/ec/sis;Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :cond_0
    new-instance p1, Ljava/security/InvalidKeyException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/sis;->Rna:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " key agreement requires "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p0, Lorg/bouncycastle/jce/interfaces/ECPublicKey;

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/sis;->sis(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " for doPhase"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/sis;->Rna:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " can only be between two parties."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/sis;->Rna:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not initialised."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 p2, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/sis;->zta(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-virtual {p0}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    if-eqz p2, :cond_1

    instance-of p3, p2, Lorg/bouncycastle/jcajce/sis/tsu;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "No algorithm parameters supported"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/sis;->zta(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-void
.end method

.method protected gg()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/sis;->result:[B

    invoke-static {p0}, Lorg/bouncycastle/util/zta;->vdb([B)[B

    move-result-object p0

    return-object p0
.end method

.method protected tsu(Ljava/math/BigInteger;)[B
    .locals 1

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/sis;->aoa:Lorg/bouncycastle/asn1/ibl/qeg;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/sis;->parameters:Lorg/bouncycastle/crypto/wtn/ibl;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/wtn/ibl;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ibl/qeg;->you(Lyou/zta/sis/zta/rtg;)I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lorg/bouncycastle/asn1/ibl/qeg;->zta(Ljava/math/BigInteger;I)[B

    move-result-object p0

    return-object p0
.end method
