.class public Lorg/bouncycastle/jcajce/you/zta/sis$zta;
.super Lorg/bouncycastle/jcajce/provider/util/you;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/you/zta/sis;
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
    .locals 14

    const-string v0, "AlgorithmParameters.EC"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.AlgorithmParametersSpi"

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/bouncycastle/jcajce/you/zta/sis;->access$000()Ljava/util/Map;

    move-result-object v0

    const-string v1, "KeyAgreement.ECDH"

    invoke-interface {p1, v1, v0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DH"

    invoke-interface {p1, v1, v0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/ibl/ivd;->id_ecPublicKey:Lorg/bouncycastle/asn1/bvj;

    new-instance v1, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/tsu$zta;

    invoke-direct {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/tsu$zta;-><init>()V

    const-string v2, "EC"

    invoke-virtual {p0, p1, v0, v2, v1}, Lorg/bouncycastle/jcajce/provider/util/you;->zta(Lorg/bouncycastle/jcajce/provider/config/zta;Lorg/bouncycastle/asn1/bvj;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/sis;)V

    sget-object v0, Lorg/bouncycastle/asn1/ibl/ivd;->dhSinglePass_stdDH_sha1kdf_scheme:Lorg/bouncycastle/asn1/bvj;

    new-instance v1, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/tsu$zta;

    invoke-direct {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/tsu$zta;-><init>()V

    invoke-virtual {p0, p1, v0, v2, v1}, Lorg/bouncycastle/jcajce/provider/util/you;->zta(Lorg/bouncycastle/jcajce/provider/config/zta;Lorg/bouncycastle/asn1/bvj;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/sis;)V

    const-string v0, "KeyFactory.EC"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyFactorySpi$EC"

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyPairGenerator.EC"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyPairGeneratorSpi$EC"

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Signature.SHA1withECDSA"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSA"

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Signature.NONEwithECDSA"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSAnone"

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SHA1withECDSA"

    const-string v1, "Alg.Alias.Signature.ECDSA"

    invoke-interface {p1, v1, v0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.Signature.ECDSAwithSHA1"

    invoke-interface {p1, v1, v0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.Signature.SHA1WITHECDSA"

    invoke-interface {p1, v1, v0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.Signature.ECDSAWITHSHA1"

    invoke-interface {p1, v1, v0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.Signature.SHA1WithECDSA"

    invoke-interface {p1, v1, v0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.Signature.ECDSAWithSHA1"

    invoke-interface {p1, v1, v0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.Signature.1.2.840.10045.4.1"

    invoke-interface {p1, v1, v0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lorg/bouncycastle/asn1/ibl/ivd;->ecdsa_with_SHA224:Lorg/bouncycastle/asn1/bvj;

    const-string v4, "SHA224"

    const-string v5, "ECDSA"

    const-string v6, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSA224"

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/jcajce/provider/util/you;->zta(Lorg/bouncycastle/jcajce/provider/config/zta;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;)V

    sget-object v13, Lorg/bouncycastle/asn1/ibl/ivd;->ecdsa_with_SHA256:Lorg/bouncycastle/asn1/bvj;

    const-string v10, "SHA256"

    const-string v11, "ECDSA"

    const-string v12, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSA256"

    move-object v8, p0

    move-object v9, p1

    invoke-virtual/range {v8 .. v13}, Lorg/bouncycastle/jcajce/provider/util/you;->zta(Lorg/bouncycastle/jcajce/provider/config/zta;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;)V

    sget-object v5, Lorg/bouncycastle/asn1/ibl/ivd;->ecdsa_with_SHA384:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "SHA384"

    const-string v3, "ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSA384"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/util/you;->zta(Lorg/bouncycastle/jcajce/provider/config/zta;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;)V

    sget-object v11, Lorg/bouncycastle/asn1/ibl/ivd;->ecdsa_with_SHA512:Lorg/bouncycastle/asn1/bvj;

    const-string v8, "SHA512"

    const-string v9, "ECDSA"

    const-string v10, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSA512"

    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lorg/bouncycastle/jcajce/provider/util/you;->zta(Lorg/bouncycastle/jcajce/provider/config/zta;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;)V

    return-void
.end method
