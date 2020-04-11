.class public Lorg/bouncycastle/jcajce/you/zta/zta$zta;
.super Lorg/bouncycastle/jcajce/provider/util/you;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/you/zta/zta;
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
    .locals 3

    const-string v0, "KeyPairGenerator.DH"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.dh.KeyPairGeneratorSpi"

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DH"

    const-string v1, "Alg.Alias.KeyPairGenerator.DIFFIEHELLMAN"

    invoke-interface {p1, v1, v0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/bouncycastle/jcajce/you/zta/zta;->access$000()Ljava/util/Map;

    move-result-object v1

    const-string v2, "KeyAgreement.DH"

    invoke-interface {p1, v2, v1}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/util/Map;)V

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.dh.KeyAgreementSpi"

    invoke-interface {p1, v2, v1}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.KeyAgreement.DIFFIEHELLMAN"

    invoke-interface {p1, v1, v0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "KeyFactory.DH"

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.dh.KeyFactorySpi"

    invoke-interface {p1, v1, v2}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.KeyFactory.DIFFIEHELLMAN"

    invoke-interface {p1, v1, v0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "AlgorithmParameters.DH"

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.dh.AlgorithmParametersSpi"

    invoke-interface {p1, v1, v2}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.AlgorithmParameters.DIFFIEHELLMAN"

    invoke-interface {p1, v1, v0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.AlgorithmParameterGenerator.DIFFIEHELLMAN"

    invoke-interface {p1, v1, v0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "AlgorithmParameterGenerator.DH"

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.dh.AlgorithmParameterGeneratorSpi"

    invoke-interface {p1, v1, v2}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->dhKeyAgreement:Lorg/bouncycastle/asn1/bvj;

    new-instance v2, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/rtg;

    invoke-direct {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/rtg;-><init>()V

    invoke-virtual {p0, p1, v1, v0, v2}, Lorg/bouncycastle/jcajce/provider/util/you;->zta(Lorg/bouncycastle/jcajce/provider/config/zta;Lorg/bouncycastle/asn1/bvj;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/sis;)V

    sget-object v1, Lorg/bouncycastle/asn1/ibl/ivd;->dhpublicnumber:Lorg/bouncycastle/asn1/bvj;

    new-instance v2, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/rtg;

    invoke-direct {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/rtg;-><init>()V

    invoke-virtual {p0, p1, v1, v0, v2}, Lorg/bouncycastle/jcajce/provider/util/you;->zta(Lorg/bouncycastle/jcajce/provider/config/zta;Lorg/bouncycastle/asn1/bvj;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/sis;)V

    return-void
.end method
