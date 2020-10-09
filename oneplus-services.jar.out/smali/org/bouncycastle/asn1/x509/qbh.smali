.class public Lorg/bouncycastle/asn1/x509/qbh;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# instance fields
.field private Spa:Lorg/bouncycastle/asn1/x509/zta;

.field private digest:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->Tg()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/zta;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/qbh;->Spa:Lorg/bouncycastle/asn1/x509/zta;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ibl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ibl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/qbh;->digest:[B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/zta;[B)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    invoke-static {p2}, Lorg/bouncycastle/util/zta;->vdb([B)[B

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/qbh;->digest:[B

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/qbh;->Spa:Lorg/bouncycastle/asn1/x509/zta;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/qbh;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/qbh;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/x509/qbh;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/qbh;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/qbh;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/x509/qbh;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/obl;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/qbh;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/qbh;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public Uf()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/qbh;->digest:[B

    invoke-static {p0}, Lorg/bouncycastle/util/zta;->vdb([B)[B

    move-result-object p0

    return-object p0
.end method

.method public ai()Lorg/bouncycastle/asn1/x509/zta;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/qbh;->Spa:Lorg/bouncycastle/asn1/x509/zta;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/qbh;->Spa:Lorg/bouncycastle/asn1/x509/zta;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance v1, Lorg/bouncycastle/asn1/C;

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/qbh;->digest:[B

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/C;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance p0, Lorg/bouncycastle/asn1/G;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object p0
.end method
