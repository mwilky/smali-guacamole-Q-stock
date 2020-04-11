.class public Lorg/bouncycastle/jcajce/you/tsu/ssp$dma;
.super Lorg/bouncycastle/jcajce/you/tsu/rtg$rtg;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/you/tsu/ssp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dma"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 8

    sget-object v2, Lorg/bouncycastle/asn1/dma/gwm;->pbeWithSHAAnd3_KeyTripleDES_CBC:Lorg/bouncycastle/asn1/bvj;

    const-string v1, "PBEwithSHAandDES3Key-CBC"

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v6, 0xc0

    const/16 v7, 0x40

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/jcajce/you/tsu/rtg$rtg;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;ZIIII)V

    return-void
.end method
