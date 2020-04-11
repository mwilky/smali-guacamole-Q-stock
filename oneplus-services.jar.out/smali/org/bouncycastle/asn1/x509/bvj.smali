.class public Lorg/bouncycastle/asn1/x509/bvj;
.super Lorg/bouncycastle/asn1/oif;
.source ""

# interfaces
.implements Lorg/bouncycastle/asn1/rtg;


# static fields
.field public static final Mqa:I = 0x0

.field public static final Nqa:I = 0x1


# instance fields
.field name:Lorg/bouncycastle/asn1/ssp;

.field type:I


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/ssp;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    iput p1, p0, Lorg/bouncycastle/asn1/x509/bvj;->type:I

    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/bvj;->name:Lorg/bouncycastle/asn1/ssp;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/lqr;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/lqr;->getTagNo()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/asn1/x509/bvj;->type:I

    iget v0, p0, Lorg/bouncycastle/asn1/x509/bvj;->type:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/x509/obl;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/x509/obl;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/ear;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/ear;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/bvj;->name:Lorg/bouncycastle/asn1/ssp;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/obl;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/x509/bvj;-><init>(ILorg/bouncycastle/asn1/ssp;)V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/bvj;
    .locals 3

    if-eqz p0, :cond_2

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/bvj;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/lqr;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/bvj;

    check-cast p0, Lorg/bouncycastle/asn1/lqr;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/bvj;-><init>(Lorg/bouncycastle/asn1/lqr;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    check-cast p0, Lorg/bouncycastle/asn1/x509/bvj;

    return-object p0
.end method

.method public static zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/x509/bvj;
    .locals 0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/lqr;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/lqr;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/bvj;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/bvj;

    move-result-object p0

    return-object p0
.end method

.method private zta(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p0, "    "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, ":"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public getName()Lorg/bouncycastle/asn1/ssp;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/bvj;->name:Lorg/bouncycastle/asn1/ssp;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/asn1/x509/bvj;->type:I

    return p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/L;

    iget v1, p0, Lorg/bouncycastle/asn1/x509/bvj;->type:I

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/bvj;->name:Lorg/bouncycastle/asn1/ssp;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lorg/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "DistributionPointName: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/bouncycastle/asn1/x509/bvj;->type:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/bvj;->name:Lorg/bouncycastle/asn1/ssp;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fullName"

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/bvj;->name:Lorg/bouncycastle/asn1/ssp;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "nameRelativeToCRLIssuer"

    :goto_0
    invoke-direct {p0, v1, v0, v3, v2}, Lorg/bouncycastle/asn1/x509/bvj;->zta(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
