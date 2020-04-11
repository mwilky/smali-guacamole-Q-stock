.class public Lorg/bouncycastle/asn1/bvj/zta/you;
.super Lorg/bouncycastle/asn1/bvj/zta/sis;
.source ""


# static fields
.field public static final INSTANCE:Lorg/bouncycastle/asn1/bvj/ssp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/bvj/zta/you;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/bvj/zta/you;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/bvj/zta/you;->INSTANCE:Lorg/bouncycastle/asn1/bvj/ssp;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/bvj/zta/sis;-><init>()V

    return-void
.end method


# virtual methods
.method public zta(Lorg/bouncycastle/asn1/bvj/tsu;Lorg/bouncycastle/asn1/bvj/tsu;)Z
    .locals 4

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/bvj/tsu;->Ah()[Lorg/bouncycastle/asn1/bvj/sis;

    move-result-object p1

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/bvj/tsu;->Ah()[Lorg/bouncycastle/asn1/bvj/sis;

    move-result-object p2

    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_2

    aget-object v1, p1, v0

    aget-object v3, p2, v0

    invoke-virtual {p0, v1, v3}, Lorg/bouncycastle/asn1/bvj/zta/zta;->zta(Lorg/bouncycastle/asn1/bvj/sis;Lorg/bouncycastle/asn1/bvj/sis;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
