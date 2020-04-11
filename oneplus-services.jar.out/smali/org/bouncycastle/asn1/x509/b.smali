.class public Lorg/bouncycastle/asn1/x509/b;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# instance fields
.field private Aqa:[B


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/asn1/ibl;)V
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/x509/b;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/util/zta;->vdb([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/b;->Aqa:[B

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/b;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/b;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/x509/b;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/b;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ibl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ibl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/b;-><init>(Lorg/bouncycastle/asn1/ibl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/x509/b;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ibl;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/ibl;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/b;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/b;

    move-result-object p0

    return-object p0
.end method

.method public static zta(Lorg/bouncycastle/asn1/x509/ugm;)Lorg/bouncycastle/asn1/x509/b;
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/x509/gwm;->Rqa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/x509/ugm;->cno(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/b;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getKeyIdentifier()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/b;->Aqa:[B

    invoke-static {p0}, Lorg/bouncycastle/util/zta;->vdb([B)[B

    move-result-object p0

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/C;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/b;->getKeyIdentifier()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/C;-><init>([B)V

    return-object v0
.end method
