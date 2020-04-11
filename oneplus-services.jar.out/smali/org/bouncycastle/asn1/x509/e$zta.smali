.class public Lorg/bouncycastle/asn1/x509/e$zta;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/asn1/x509/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zta"
.end annotation


# instance fields
.field Eta:Lorg/bouncycastle/asn1/x509/ugm;

.field seq:Lorg/bouncycastle/asn1/obl;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/e$zta;->seq:Lorg/bouncycastle/asn1/obl;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad sequence size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/e$zta;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/e$zta;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/x509/e$zta;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/e$zta;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/e$zta;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getExtensions()Lorg/bouncycastle/asn1/x509/ugm;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/e$zta;->Eta:Lorg/bouncycastle/asn1/x509/ugm;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/e$zta;->seq:Lorg/bouncycastle/asn1/obl;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/e$zta;->seq:Lorg/bouncycastle/asn1/obl;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/ugm;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/ugm;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/e$zta;->Eta:Lorg/bouncycastle/asn1/x509/ugm;

    :cond_0
    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/e$zta;->Eta:Lorg/bouncycastle/asn1/x509/ugm;

    return-object p0
.end method

.method public getRevocationDate()Lorg/bouncycastle/asn1/x509/h;
    .locals 1

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/e$zta;->seq:Lorg/bouncycastle/asn1/obl;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/h;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/h;

    move-result-object p0

    return-object p0
.end method

.method public hasExtensions()Z
    .locals 1

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/e$zta;->seq:Lorg/bouncycastle/asn1/obl;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/e$zta;->seq:Lorg/bouncycastle/asn1/obl;

    return-object p0
.end method

.method public vi()Lorg/bouncycastle/asn1/ywr;
    .locals 1

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/e$zta;->seq:Lorg/bouncycastle/asn1/obl;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ywr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ywr;

    move-result-object p0

    return-object p0
.end method
