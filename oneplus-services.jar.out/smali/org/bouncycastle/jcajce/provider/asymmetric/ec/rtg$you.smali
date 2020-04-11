.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$you;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "you"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/sis;

    const-string v1, "ECDH"

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/rtg$zta;-><init>(Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/sis;)V

    return-void
.end method
