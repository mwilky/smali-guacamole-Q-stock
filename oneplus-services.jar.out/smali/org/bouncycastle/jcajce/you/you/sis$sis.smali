.class public Lorg/bouncycastle/jcajce/you/you/sis$sis;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/tsu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/you/you/sis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "sis"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/cno;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/cno;-><init>()V

    const-string v1, "HMACMD5"

    const/16 v2, 0x80

    invoke-direct {p0, v1, v2, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/tsu;-><init>(Ljava/lang/String;ILorg/bouncycastle/crypto/cno;)V

    return-void
.end method
