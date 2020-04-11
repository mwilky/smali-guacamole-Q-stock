.class public Lorg/bouncycastle/jcajce/you/tsu/tsu$sis;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/you/tsu/tsu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "sis"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/rtg/tsu;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/rtg/tsu;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/sis;-><init>(Lorg/bouncycastle/crypto/rtg;)V

    return-void
.end method
