.class public Lorg/bouncycastle/jcajce/you/tsu/rtg$sis;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/rtg;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/you/tsu/rtg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "sis"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/kth/zta;

    new-instance v1, Lorg/bouncycastle/crypto/rtg/rtg;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/rtg/rtg;-><init>()V

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/kth/zta;-><init>(Lorg/bouncycastle/crypto/rtg;I)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/rtg;-><init>(Lorg/bouncycastle/crypto/ibl;)V

    return-void
.end method
