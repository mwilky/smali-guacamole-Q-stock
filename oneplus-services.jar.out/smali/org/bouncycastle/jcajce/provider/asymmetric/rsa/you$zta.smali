.class public Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you$zta;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zta"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/rtg/wtn;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/rtg/wtn;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/you;-><init>(Lorg/bouncycastle/crypto/zta;)V

    return-void
.end method
