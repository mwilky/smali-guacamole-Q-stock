.class public Lorg/bouncycastle/jcajce/you/tsu/sis$you;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/tsu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/you/tsu/sis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "you"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/cno;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/cno;-><init>()V

    const-string v1, "ARC4"

    const/16 v2, 0x80

    invoke-direct {p0, v1, v2, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/tsu;-><init>(Ljava/lang/String;ILorg/bouncycastle/crypto/cno;)V

    return-void
.end method
