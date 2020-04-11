.class public Lorg/bouncycastle/jcajce/you/tsu/ssp$you;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/rtg;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/you/tsu/ssp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "you"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/kth/zta;

    new-instance v1, Lorg/bouncycastle/crypto/rtg/ssp;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/rtg/ssp;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/kth/zta;-><init>(Lorg/bouncycastle/crypto/rtg;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/rtg;-><init>(Lorg/bouncycastle/crypto/ibl;)V

    return-void
.end method
