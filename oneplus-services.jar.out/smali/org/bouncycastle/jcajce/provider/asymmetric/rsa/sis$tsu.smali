.class public Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/sis$tsu;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/sis;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/sis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "tsu"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    sget-object v0, Lorg/bouncycastle/asn1/bio/you;->lOa:Lorg/bouncycastle/asn1/bvj;

    invoke-static {}, Lorg/bouncycastle/crypto/you/zta;->oxb()Lorg/bouncycastle/crypto/qbh;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/crypto/tsu/tsu;

    new-instance v3, Lorg/bouncycastle/crypto/rtg/wtn;

    invoke-direct {v3}, Lorg/bouncycastle/crypto/rtg/wtn;-><init>()V

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/tsu/tsu;-><init>(Lorg/bouncycastle/crypto/zta;)V

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/sis;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/crypto/qbh;Lorg/bouncycastle/crypto/zta;)V

    return-void
.end method
