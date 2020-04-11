.class public Lorg/bouncycastle/jcajce/you/tsu/zta$cno;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/tsu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/you/tsu/zta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "cno"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/you/tsu/zta$cno;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/cno;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/cno;-><init>()V

    const-string v1, "AES"

    invoke-direct {p0, v1, p1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/tsu;-><init>(Ljava/lang/String;ILorg/bouncycastle/crypto/cno;)V

    return-void
.end method
