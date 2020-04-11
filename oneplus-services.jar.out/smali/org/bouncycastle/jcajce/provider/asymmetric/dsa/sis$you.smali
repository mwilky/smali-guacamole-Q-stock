.class public Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/sis$you;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/sis;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/sis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "you"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Lorg/bouncycastle/crypto/you/zta;->oxb()Lorg/bouncycastle/crypto/qbh;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/gck/sis;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/gck/sis;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/sis;-><init>(Lorg/bouncycastle/crypto/qbh;Lorg/bouncycastle/crypto/gck;)V

    return-void
.end method
