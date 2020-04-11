.class public Lorg/bouncycastle/jcajce/you/tsu/zta$ywr;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/you/tsu/zta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ywr"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 6

    new-instance v1, Lorg/bouncycastle/crypto/bio/you;

    new-instance v0, Lorg/bouncycastle/crypto/rtg/zta;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/rtg/zta;-><init>()V

    invoke-direct {v1, v0}, Lorg/bouncycastle/crypto/bio/you;-><init>(Lorg/bouncycastle/crypto/rtg;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x80

    const/16 v5, 0x10

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;-><init>(Lorg/bouncycastle/crypto/rtg;IIII)V

    return-void
.end method
