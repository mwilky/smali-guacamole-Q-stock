.class Lorg/bouncycastle/jcajce/tsu$you;
.super Ljava/security/cert/X509CRLSelector;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/tsu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "you"
.end annotation


# instance fields
.field private final selector:Lorg/bouncycastle/jcajce/tsu;


# direct methods
.method constructor <init>(Lorg/bouncycastle/jcajce/tsu;)V
    .locals 1

    invoke-direct {p0}, Ljava/security/cert/X509CRLSelector;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/tsu$you;->selector:Lorg/bouncycastle/jcajce/tsu;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/tsu;->zta(Lorg/bouncycastle/jcajce/tsu;)Ljava/security/cert/CRLSelector;

    move-result-object v0

    instance-of v0, v0, Ljava/security/cert/X509CRLSelector;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/jcajce/tsu;->zta(Lorg/bouncycastle/jcajce/tsu;)Ljava/security/cert/CRLSelector;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509CRLSelector;

    invoke-virtual {p1}, Ljava/security/cert/X509CRLSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/cert/X509CRLSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {p1}, Ljava/security/cert/X509CRLSelector;->getDateAndTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/cert/X509CRLSelector;->setDateAndTime(Ljava/util/Date;)V

    invoke-virtual {p1}, Ljava/security/cert/X509CRLSelector;->getIssuers()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/cert/X509CRLSelector;->setIssuers(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/security/cert/X509CRLSelector;->getMinCRL()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/cert/X509CRLSelector;->setMinCRLNumber(Ljava/math/BigInteger;)V

    invoke-virtual {p1}, Ljava/security/cert/X509CRLSelector;->getMaxCRL()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/cert/X509CRLSelector;->setMaxCRLNumber(Ljava/math/BigInteger;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public match(Ljava/security/cert/CRL;)Z
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/tsu$you;->selector:Lorg/bouncycastle/jcajce/tsu;

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/tsu;->match(Ljava/security/cert/CRL;)Z

    move-result p0

    :goto_0
    return p0
.end method
