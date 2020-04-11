.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/sis$zta;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ec/sis;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/ec/sis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zta"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/zta/you;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/zta/you;-><init>()V

    const-string v1, "ECDH"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/sis;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/tsu;Lorg/bouncycastle/crypto/dma;)V

    return-void
.end method
