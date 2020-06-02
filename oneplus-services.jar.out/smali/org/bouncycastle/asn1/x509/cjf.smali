.class public Lorg/bouncycastle/asn1/x509/cjf;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# static fields
.field public static final Oua:I = 0x0

.field public static final Pua:I = 0x1


# instance fields
.field Lua:Lorg/bouncycastle/asn1/x509/ear;

.field Mua:Lorg/bouncycastle/asn1/x509/obl;

.field Nua:Lorg/bouncycastle/asn1/x509/cgv;

.field private version:I


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/lqr;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/asn1/x509/cjf;->version:I

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/lqr;->getTagNo()I

    move-result v1

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/x509/obl;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/x509/obl;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/cjf;->Mua:Lorg/bouncycastle/asn1/x509/obl;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown tag in Holder"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/x509/ear;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/x509/ear;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/cjf;->Lua:Lorg/bouncycastle/asn1/x509/ear;

    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/asn1/x509/cjf;->version:I

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 6

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/asn1/x509/cjf;->version:I

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_4

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/lqr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/lqr;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/lqr;->getTagNo()I

    move-result v4

    if-eqz v4, :cond_2

    if-eq v4, v0, :cond_1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-static {v3, v1}, Lorg/bouncycastle/asn1/x509/cgv;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/x509/cgv;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/x509/cjf;->Nua:Lorg/bouncycastle/asn1/x509/cgv;

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown tag in Holder"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {v3, v1}, Lorg/bouncycastle/asn1/x509/obl;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/x509/obl;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/x509/cjf;->Mua:Lorg/bouncycastle/asn1/x509/obl;

    goto :goto_1

    :cond_2
    invoke-static {v3, v1}, Lorg/bouncycastle/asn1/x509/ear;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/x509/ear;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/x509/cjf;->Lua:Lorg/bouncycastle/asn1/x509/ear;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iput v0, p0, Lorg/bouncycastle/asn1/x509/cjf;->version:I

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

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/cgv;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/asn1/x509/cjf;->version:I

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/cjf;->Nua:Lorg/bouncycastle/asn1/x509/cgv;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/ear;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/x509/cjf;-><init>(Lorg/bouncycastle/asn1/x509/ear;I)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/ear;I)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/asn1/x509/cjf;->version:I

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/cjf;->Lua:Lorg/bouncycastle/asn1/x509/ear;

    iput p2, p0, Lorg/bouncycastle/asn1/x509/cjf;->version:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/obl;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/x509/cjf;-><init>(Lorg/bouncycastle/asn1/x509/obl;I)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/obl;I)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/asn1/x509/cjf;->version:I

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/cjf;->Mua:Lorg/bouncycastle/asn1/x509/obl;

    iput p2, p0, Lorg/bouncycastle/asn1/x509/cjf;->version:I

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/cjf;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/cjf;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/x509/cjf;

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/lqr;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/cjf;

    invoke-static {p0}, Lorg/bouncycastle/asn1/lqr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/lqr;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/cjf;-><init>(Lorg/bouncycastle/asn1/lqr;)V

    return-object v0

    :cond_1
    if-eqz p0, :cond_2

    new-instance v0, Lorg/bouncycastle/asn1/x509/cjf;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/cjf;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getVersion()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/asn1/x509/cjf;->version:I

    return p0
.end method

.method public ji()Lorg/bouncycastle/asn1/x509/ear;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/cjf;->Lua:Lorg/bouncycastle/asn1/x509/ear;

    return-object p0
.end method

.method public ki()Lorg/bouncycastle/asn1/x509/obl;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/cjf;->Mua:Lorg/bouncycastle/asn1/x509/obl;

    return-object p0
.end method

.method public li()Lorg/bouncycastle/asn1/x509/cgv;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/cjf;->Nua:Lorg/bouncycastle/asn1/x509/cgv;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 5

    iget v0, p0, Lorg/bouncycastle/asn1/x509/cjf;->version:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/cjf;->Lua:Lorg/bouncycastle/asn1/x509/ear;

    if-eqz v3, :cond_0

    new-instance v4, Lorg/bouncycastle/asn1/L;

    invoke-direct {v4, v1, v1, v3}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_0
    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/cjf;->Mua:Lorg/bouncycastle/asn1/x509/obl;

    if-eqz v3, :cond_1

    new-instance v4, Lorg/bouncycastle/asn1/L;

    invoke-direct {v4, v1, v2, v3}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_1
    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/cjf;->Nua:Lorg/bouncycastle/asn1/x509/cgv;

    if-eqz p0, :cond_2

    new-instance v2, Lorg/bouncycastle/asn1/L;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v3, p0}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_2
    new-instance p0, Lorg/bouncycastle/asn1/G;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object p0

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/cjf;->Mua:Lorg/bouncycastle/asn1/x509/obl;

    if-eqz v0, :cond_4

    new-instance p0, Lorg/bouncycastle/asn1/L;

    invoke-direct {p0, v2, v2, v0}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    return-object p0

    :cond_4
    new-instance v0, Lorg/bouncycastle/asn1/L;

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/cjf;->Lua:Lorg/bouncycastle/asn1/x509/ear;

    invoke-direct {v0, v2, v1, p0}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    return-object v0
.end method
