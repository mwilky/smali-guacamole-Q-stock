.class public Lorg/bouncycastle/jcajce/you/tsu/ssp$cno;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/tsu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/you/tsu/ssp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "cno"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/ssp/you;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/ssp/you;-><init>()V

    const-string v1, "DESede3"

    const/16 v2, 0xc0

    invoke-direct {p0, v1, v2, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/tsu;-><init>(Ljava/lang/String;ILorg/bouncycastle/crypto/cno;)V

    return-void
.end method
