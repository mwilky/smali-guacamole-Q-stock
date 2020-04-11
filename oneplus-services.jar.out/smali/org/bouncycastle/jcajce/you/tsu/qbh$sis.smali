.class public Lorg/bouncycastle/jcajce/you/tsu/qbh$sis;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/dma;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/you/tsu/qbh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "sis"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 8

    const-string v1, "PBEwithSHAandTwofish-CBC"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v6, 0x100

    const/16 v7, 0x80

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/jcajce/provider/symmetric/util/dma;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;ZIIII)V

    return-void
.end method
