.class public Lorg/bouncycastle/jcajce/tsu/ssp;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static UCa:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/bouncycastle/asn1/bvj;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/tsu/ssp;->UCa:Ljava/util/Map;

    sget-object v0, Lorg/bouncycastle/jcajce/tsu/ssp;->UCa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->md5:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "MD5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/tsu/ssp;->UCa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/gck/zta;->TNa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "SHA-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/tsu/ssp;->UCa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->QLa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "SHA-224"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/tsu/ssp;->UCa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->NLa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "SHA-256"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/tsu/ssp;->UCa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->OLa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "SHA-384"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/tsu/ssp;->UCa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->PLa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "SHA-512"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ugm(Lorg/bouncycastle/asn1/bvj;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jcajce/tsu/ssp;->UCa:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
