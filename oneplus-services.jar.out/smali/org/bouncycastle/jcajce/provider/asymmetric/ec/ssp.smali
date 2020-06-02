.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/ssp;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/util/ssp;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/ssp$tsu;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/ssp$sis;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/ssp$you;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/ssp$zta;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/ssp$ssp;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/ssp$rtg;
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/bouncycastle/crypto/qbh;Lorg/bouncycastle/crypto/gck;Lorg/bouncycastle/crypto/gck/zta;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/ssp;-><init>(Lorg/bouncycastle/crypto/qbh;Lorg/bouncycastle/crypto/gck;Lorg/bouncycastle/crypto/gck/zta;)V

    return-void
.end method


# virtual methods
.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/bio;->you(Ljava/security/PrivateKey;)Lorg/bouncycastle/crypto/wtn/you;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/ssp;->digest:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/qbh;->reset()V

    iget-object v0, p0, Ljava/security/SignatureSpi;->appRandom:Ljava/security/SecureRandom;

    const/4 v1, 0x1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/ssp;->Fpa:Lorg/bouncycastle/crypto/gck;

    if-eqz v0, :cond_0

    new-instance v2, Lorg/bouncycastle/crypto/wtn/hmo;

    invoke-direct {v2, p1, v0}, Lorg/bouncycastle/crypto/wtn/hmo;-><init>(Lorg/bouncycastle/crypto/kth;Ljava/security/SecureRandom;)V

    invoke-interface {p0, v1, v2}, Lorg/bouncycastle/crypto/wtn;->zta(ZLorg/bouncycastle/crypto/kth;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0, v1, p1}, Lorg/bouncycastle/crypto/wtn;->zta(ZLorg/bouncycastle/crypto/kth;)V

    :goto_0
    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/you;->zta(Ljava/security/PublicKey;)Lorg/bouncycastle/crypto/wtn/you;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/ssp;->digest:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/qbh;->reset()V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/ssp;->Fpa:Lorg/bouncycastle/crypto/gck;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/bouncycastle/crypto/wtn;->zta(ZLorg/bouncycastle/crypto/kth;)V

    return-void
.end method
