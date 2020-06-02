.class public Lorg/bouncycastle/asn1/x509/j;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# instance fields
.field Lua:Lorg/bouncycastle/asn1/x509/ear;

.field Nua:Lorg/bouncycastle/asn1/x509/cgv;

.field bwa:Lorg/bouncycastle/asn1/x509/obl;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/lqr;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/obl;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/j;->bwa:Lorg/bouncycastle/asn1/x509/obl;

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v3

    if-eq v1, v3, :cond_3

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/lqr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/lqr;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/lqr;->getTagNo()I

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3, v0}, Lorg/bouncycastle/asn1/x509/ear;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/x509/ear;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/x509/j;->Lua:Lorg/bouncycastle/asn1/x509/ear;

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/lqr;->getTagNo()I

    move-result v4

    if-ne v4, v2, :cond_2

    invoke-static {v3, v0}, Lorg/bouncycastle/asn1/x509/cgv;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/x509/cgv;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/x509/j;->Nua:Lorg/bouncycastle/asn1/x509/cgv;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad tag number: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/lqr;->getTagNo()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void

    :cond_4
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

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/obl;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/bouncycastle/asn1/x509/j;-><init>(Lorg/bouncycastle/asn1/x509/obl;Lorg/bouncycastle/asn1/x509/ear;Lorg/bouncycastle/asn1/x509/cgv;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/obl;Lorg/bouncycastle/asn1/x509/cgv;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/asn1/x509/j;-><init>(Lorg/bouncycastle/asn1/x509/obl;Lorg/bouncycastle/asn1/x509/ear;Lorg/bouncycastle/asn1/x509/cgv;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/obl;Lorg/bouncycastle/asn1/x509/ear;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/asn1/x509/j;-><init>(Lorg/bouncycastle/asn1/x509/obl;Lorg/bouncycastle/asn1/x509/ear;Lorg/bouncycastle/asn1/x509/cgv;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/obl;Lorg/bouncycastle/asn1/x509/ear;Lorg/bouncycastle/asn1/x509/cgv;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/j;->bwa:Lorg/bouncycastle/asn1/x509/obl;

    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/j;->Lua:Lorg/bouncycastle/asn1/x509/ear;

    iput-object p3, p0, Lorg/bouncycastle/asn1/x509/j;->Nua:Lorg/bouncycastle/asn1/x509/cgv;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/j;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/j;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/x509/j;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/j;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/j;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/x509/j;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/obl;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/j;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/j;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public Hi()Lorg/bouncycastle/asn1/x509/obl;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/j;->bwa:Lorg/bouncycastle/asn1/x509/obl;

    return-object p0
.end method

.method public ji()Lorg/bouncycastle/asn1/x509/ear;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/j;->Lua:Lorg/bouncycastle/asn1/x509/ear;

    return-object p0
.end method

.method public li()Lorg/bouncycastle/asn1/x509/cgv;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/j;->Nua:Lorg/bouncycastle/asn1/x509/cgv;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/j;->bwa:Lorg/bouncycastle/asn1/x509/obl;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/j;->Lua:Lorg/bouncycastle/asn1/x509/ear;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v3, Lorg/bouncycastle/asn1/L;

    invoke-direct {v3, v2, v2, v1}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_1
    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/j;->Nua:Lorg/bouncycastle/asn1/x509/cgv;

    if-eqz p0, :cond_2

    new-instance v1, Lorg/bouncycastle/asn1/L;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p0}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_2
    new-instance p0, Lorg/bouncycastle/asn1/G;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object p0
.end method
