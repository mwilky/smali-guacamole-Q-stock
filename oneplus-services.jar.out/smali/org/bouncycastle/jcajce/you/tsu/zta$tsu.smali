.class public Lorg/bouncycastle/jcajce/you/tsu/zta$tsu;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/you/tsu/zta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "tsu"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, Lorg/bouncycastle/crypto/ssp;

    new-instance v1, Lorg/bouncycastle/crypto/bio/tsu;

    new-instance v2, Lorg/bouncycastle/crypto/rtg/zta;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/rtg/zta;-><init>()V

    const/16 v3, 0x80

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/crypto/bio/tsu;-><init>(Lorg/bouncycastle/crypto/rtg;I)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/ssp;-><init>(Lorg/bouncycastle/crypto/rtg;)V

    invoke-direct {p0, v0, v3}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;-><init>(Lorg/bouncycastle/crypto/ssp;I)V

    return-void
.end method
