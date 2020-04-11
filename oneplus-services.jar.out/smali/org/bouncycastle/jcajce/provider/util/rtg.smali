.class public Lorg/bouncycastle/jcajce/provider/util/rtg;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static Toa:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/util/rtg;->Toa:Ljava/util/Map;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/rtg;->Toa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->des_EDE3_CBC:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc0

    invoke-static {v2}, Lorg/bouncycastle/util/cno;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/rtg;->Toa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->eMa:Lorg/bouncycastle/asn1/bvj;

    const/16 v3, 0x80

    invoke-static {v3}, Lorg/bouncycastle/util/cno;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/rtg;->Toa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->mMa:Lorg/bouncycastle/asn1/bvj;

    invoke-static {v2}, Lorg/bouncycastle/util/cno;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/rtg;->Toa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/bio/you;->uMa:Lorg/bouncycastle/asn1/bvj;

    const/16 v4, 0x100

    invoke-static {v4}, Lorg/bouncycastle/util/cno;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/rtg;->Toa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/wtn/zta;->FNa:Lorg/bouncycastle/asn1/bvj;

    invoke-static {v3}, Lorg/bouncycastle/util/cno;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/rtg;->Toa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/wtn/zta;->GNa:Lorg/bouncycastle/asn1/bvj;

    invoke-static {v2}, Lorg/bouncycastle/util/cno;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/rtg;->Toa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/wtn/zta;->HNa:Lorg/bouncycastle/asn1/bvj;

    invoke-static {v4}, Lorg/bouncycastle/util/cno;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ibl(Lorg/bouncycastle/asn1/bvj;)I
    .locals 1

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/rtg;->Toa:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method
