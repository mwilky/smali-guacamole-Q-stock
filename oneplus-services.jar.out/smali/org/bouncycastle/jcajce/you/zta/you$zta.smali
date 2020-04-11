.class public Lorg/bouncycastle/jcajce/you/zta/you$zta;
.super Lorg/bouncycastle/jcajce/provider/util/you;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/you/zta/you;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zta"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/util/you;-><init>()V

    return-void
.end method


# virtual methods
.method public zta(Lorg/bouncycastle/jcajce/provider/config/zta;)V
    .locals 7

    const-string v0, "AlgorithmParameters.DSA"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.dsa.AlgorithmParametersSpi"

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AlgorithmParameterGenerator.DSA"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.dsa.AlgorithmParameterGeneratorSpi"

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyPairGenerator.DSA"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.dsa.KeyPairGeneratorSpi"

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyFactory.DSA"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.dsa.KeyFactorySpi"

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Signature.SHA1withDSA"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$stdDSA"

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "SHA1withDSA"

    const-string v0, "Alg.Alias.Signature.DSA"

    invoke-interface {p1, v0, v6}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Signature.NONEWITHDSA"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$noneDSA"

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.RAWDSA"

    const-string v1, "NONEWITHDSA"

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lorg/bouncycastle/asn1/bio/you;->FLa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "SHA224"

    const-string v3, "DSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$dsa224"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/util/you;->zta(Lorg/bouncycastle/jcajce/provider/config/zta;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;)V

    sget-object v5, Lorg/bouncycastle/asn1/bio/you;->GLa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "SHA256"

    const-string v3, "DSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$dsa256"

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/util/you;->zta(Lorg/bouncycastle/jcajce/provider/config/zta;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;)V

    const-string v0, "Alg.Alias.Signature.SHA/DSA"

    invoke-interface {p1, v0, v6}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.SHA1withDSA"

    invoke-interface {p1, v0, v6}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.SHA1WITHDSA"

    invoke-interface {p1, v0, v6}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.10040.4.1"

    invoke-interface {p1, v0, v6}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.10040.4.3"

    invoke-interface {p1, v0, v6}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.DSAwithSHA1"

    invoke-interface {p1, v0, v6}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.DSAWITHSHA1"

    invoke-interface {p1, v0, v6}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.SHA1WithDSA"

    invoke-interface {p1, v0, v6}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.DSAWithSHA1"

    invoke-interface {p1, v0, v6}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/rtg;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/rtg;-><init>()V

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/tsu;->rBa:[Lorg/bouncycastle/asn1/bvj;

    array-length v2, v2

    if-eq v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Alg.Alias.Signature."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/tsu;->rBa:[Lorg/bouncycastle/asn1/bvj;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v6}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/tsu;->rBa:[Lorg/bouncycastle/asn1/bvj;

    aget-object v2, v2, v1

    const-string v3, "DSA"

    invoke-virtual {p0, p1, v2, v3, v0}, Lorg/bouncycastle/jcajce/provider/util/you;->zta(Lorg/bouncycastle/jcajce/provider/config/zta;Lorg/bouncycastle/asn1/bvj;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/sis;)V

    sget-object v2, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/tsu;->rBa:[Lorg/bouncycastle/asn1/bvj;

    aget-object v2, v2, v1

    invoke-virtual {p0, p1, v2, v3}, Lorg/bouncycastle/jcajce/provider/util/you;->zta(Lorg/bouncycastle/jcajce/provider/config/zta;Lorg/bouncycastle/asn1/bvj;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
