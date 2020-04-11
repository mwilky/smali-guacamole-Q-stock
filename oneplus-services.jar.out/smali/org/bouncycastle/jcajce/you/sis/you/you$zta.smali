.class public Lorg/bouncycastle/jcajce/you/sis/you/you$zta;
.super Lorg/bouncycastle/jcajce/you/sis/you/you;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/you/sis/you/you;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zta"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/jcajce/tsu/sis;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/tsu/sis;-><init>()V

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->pbeWithSHAAnd3_KeyTripleDES_CBC:Lorg/bouncycastle/asn1/bvj;

    sget-object v2, Lorg/bouncycastle/asn1/dma/gwm;->pbeWithSHAAnd40BitRC2_CBC:Lorg/bouncycastle/asn1/bvj;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/jcajce/you/sis/you/you;-><init>(Lorg/bouncycastle/jcajce/tsu/tsu;Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/bvj;)V

    return-void
.end method
