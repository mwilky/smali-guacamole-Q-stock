.class public Lorg/bouncycastle/jcajce/you/tsu/bio$qbh;
.super Lorg/bouncycastle/jcajce/you/tsu/bio$zta;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/you/tsu/bio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "qbh"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 7

    const-string v1, "PBEWithHmacSHA384AndAES_256"

    const/4 v2, 0x5

    const/16 v3, 0x8

    const/16 v4, 0x100

    const/16 v5, 0x80

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/jcajce/you/tsu/bio$zta;-><init>(Ljava/lang/String;IIIILorg/bouncycastle/jcajce/you/tsu/kth;)V

    return-void
.end method
