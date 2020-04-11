.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/tsu$zta;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ec/tsu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/ec/tsu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zta"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/sis;

    const-string v1, "EC"

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/tsu;-><init>(Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/sis;)V

    return-void
.end method
