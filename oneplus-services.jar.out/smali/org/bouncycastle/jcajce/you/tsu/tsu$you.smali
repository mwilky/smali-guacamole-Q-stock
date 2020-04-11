.class public Lorg/bouncycastle/jcajce/you/tsu/tsu$you;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/you/tsu/tsu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "you"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/bio/you;

    new-instance v1, Lorg/bouncycastle/crypto/rtg/tsu;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/rtg/tsu;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/bio/you;-><init>(Lorg/bouncycastle/crypto/rtg;)V

    const/16 v1, 0x40

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;-><init>(Lorg/bouncycastle/crypto/rtg;I)V

    return-void
.end method
