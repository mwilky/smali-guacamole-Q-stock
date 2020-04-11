.class public Lorg/bouncycastle/jcajce/you/tsu/bio;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/you/tsu/bio$cno;,
        Lorg/bouncycastle/jcajce/you/tsu/bio$bvj;,
        Lorg/bouncycastle/jcajce/you/tsu/bio$qbh;,
        Lorg/bouncycastle/jcajce/you/tsu/bio$dma;,
        Lorg/bouncycastle/jcajce/you/tsu/bio$wtn;,
        Lorg/bouncycastle/jcajce/you/tsu/bio$bio;,
        Lorg/bouncycastle/jcajce/you/tsu/bio$oif;,
        Lorg/bouncycastle/jcajce/you/tsu/bio$ywr;,
        Lorg/bouncycastle/jcajce/you/tsu/bio$gck;,
        Lorg/bouncycastle/jcajce/you/tsu/bio$igw;,
        Lorg/bouncycastle/jcajce/you/tsu/bio$kth;,
        Lorg/bouncycastle/jcajce/you/tsu/bio$obl;,
        Lorg/bouncycastle/jcajce/you/tsu/bio$ssp;,
        Lorg/bouncycastle/jcajce/you/tsu/bio$zgw;,
        Lorg/bouncycastle/jcajce/you/tsu/bio$rtg;,
        Lorg/bouncycastle/jcajce/you/tsu/bio$vdb;,
        Lorg/bouncycastle/jcajce/you/tsu/bio$tsu;,
        Lorg/bouncycastle/jcajce/you/tsu/bio$ugm;,
        Lorg/bouncycastle/jcajce/you/tsu/bio$sis;,
        Lorg/bouncycastle/jcajce/you/tsu/bio$ibl;,
        Lorg/bouncycastle/jcajce/you/tsu/bio$gwm;,
        Lorg/bouncycastle/jcajce/you/tsu/bio$you;,
        Lorg/bouncycastle/jcajce/you/tsu/bio$zta;
    }
.end annotation


# static fields
.field private static final JCa:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/you/tsu/bio;->JCa:Ljava/util/Map;

    sget-object v0, Lorg/bouncycastle/jcajce/you/tsu/bio;->JCa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->id_hmacWithSHA1:Lorg/bouncycastle/asn1/bvj;

    const/4 v2, 0x1

    invoke-static {v2}, Lorg/bouncycastle/util/cno;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/you/tsu/bio;->JCa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->id_hmacWithSHA256:Lorg/bouncycastle/asn1/bvj;

    const/4 v2, 0x4

    invoke-static {v2}, Lorg/bouncycastle/util/cno;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/you/tsu/bio;->JCa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->id_hmacWithSHA224:Lorg/bouncycastle/asn1/bvj;

    const/4 v2, 0x7

    invoke-static {v2}, Lorg/bouncycastle/util/cno;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/you/tsu/bio;->JCa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->id_hmacWithSHA384:Lorg/bouncycastle/asn1/bvj;

    const/16 v2, 0x8

    invoke-static {v2}, Lorg/bouncycastle/util/cno;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/you/tsu/bio;->JCa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->id_hmacWithSHA512:Lorg/bouncycastle/asn1/bvj;

    const/16 v2, 0x9

    invoke-static {v2}, Lorg/bouncycastle/util/cno;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jcajce/you/tsu/bio;->JCa:Ljava/util/Map;

    return-object v0
.end method
