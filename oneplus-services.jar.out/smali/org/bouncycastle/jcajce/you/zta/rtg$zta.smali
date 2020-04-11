.class public Lorg/bouncycastle/jcajce/you/zta/rtg$zta;
.super Lorg/bouncycastle/jcajce/provider/util/you;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/you/zta/rtg;
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
    .locals 1

    const-string p0, "CertificateFactory.X.509"

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.x509.CertificateFactory"

    invoke-interface {p1, p0, v0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.CertificateFactory.X509"

    const-string v0, "X.509"

    invoke-interface {p1, p0, v0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
