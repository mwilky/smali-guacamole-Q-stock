.class public Lorg/bouncycastle/jcajce/you/tsu/sis$zta;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/you/tsu/sis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zta"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/rtg/bio;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/rtg/bio;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/cno;-><init>(Lorg/bouncycastle/crypto/ear;I)V

    return-void
.end method
