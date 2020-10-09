.class public Lorg/bouncycastle/asn1/you/tsu;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# static fields
.field public static final MAC:I = 0x2

.field public static final SIGNATURE:I = 0x1


# instance fields
.field private final Apa:Lorg/bouncycastle/asn1/x509/zta;

.field private final Isa:Lorg/bouncycastle/asn1/x509/zta;

.field private final digestAlgorithm:Lorg/bouncycastle/asn1/x509/zta;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/zta;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/you/tsu;->digestAlgorithm:Lorg/bouncycastle/asn1/x509/zta;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/lqr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/lqr;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/lqr;->getTagNo()I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, v2, :cond_0

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/x509/zta;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/x509/zta;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/you/tsu;->Isa:Lorg/bouncycastle/asn1/x509/zta;

    iput-object v4, p0, Lorg/bouncycastle/asn1/you/tsu;->Apa:Lorg/bouncycastle/asn1/x509/zta;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/lqr;->getTagNo()I

    move-result v2

    if-ne v2, v1, :cond_1

    iput-object v4, p0, Lorg/bouncycastle/asn1/you/tsu;->Isa:Lorg/bouncycastle/asn1/x509/zta;

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/x509/zta;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/x509/zta;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/you/tsu;->Apa:Lorg/bouncycastle/asn1/x509/zta;

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown tag found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/lqr;->getTagNo()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Sequence wrong size: One of signatureAlgorithm or macAlgorithm must be present"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/zta;ILorg/bouncycastle/asn1/x509/zta;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    iput-object p1, p0, Lorg/bouncycastle/asn1/you/tsu;->digestAlgorithm:Lorg/bouncycastle/asn1/x509/zta;

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-ne p2, p1, :cond_0

    iput-object p3, p0, Lorg/bouncycastle/asn1/you/tsu;->Isa:Lorg/bouncycastle/asn1/x509/zta;

    iput-object v0, p0, Lorg/bouncycastle/asn1/you/tsu;->Apa:Lorg/bouncycastle/asn1/x509/zta;

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    iput-object v0, p0, Lorg/bouncycastle/asn1/you/tsu;->Isa:Lorg/bouncycastle/asn1/x509/zta;

    iput-object p3, p0, Lorg/bouncycastle/asn1/you/tsu;->Apa:Lorg/bouncycastle/asn1/x509/zta;

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown type: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "AlgorithmIdentifiers cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/you/tsu;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/you/tsu;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/you/tsu;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/you/tsu;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/you/tsu;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public _g()Lorg/bouncycastle/asn1/x509/zta;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/you/tsu;->Apa:Lorg/bouncycastle/asn1/x509/zta;

    return-object p0
.end method

.method public ah()Lorg/bouncycastle/asn1/x509/zta;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/you/tsu;->Isa:Lorg/bouncycastle/asn1/x509/zta;

    return-object p0
.end method

.method public getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/zta;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/you/tsu;->digestAlgorithm:Lorg/bouncycastle/asn1/x509/zta;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 5

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/you/tsu;->digestAlgorithm:Lorg/bouncycastle/asn1/x509/zta;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/you/tsu;->Isa:Lorg/bouncycastle/asn1/x509/zta;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v3, Lorg/bouncycastle/asn1/L;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4, v1}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_0
    iget-object p0, p0, Lorg/bouncycastle/asn1/you/tsu;->Apa:Lorg/bouncycastle/asn1/x509/zta;

    if-eqz p0, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/L;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, p0}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_1
    new-instance p0, Lorg/bouncycastle/asn1/G;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object p0
.end method
