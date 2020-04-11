.class public Lorg/bouncycastle/jcajce/you/tsu/ssp$ywr;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/you/tsu/ssp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ywr"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/rtg/cno;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/rtg/cno;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>(Lorg/bouncycastle/crypto/ire;)V

    return-void
.end method
