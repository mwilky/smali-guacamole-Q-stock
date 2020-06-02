.class public Lorg/bouncycastle/asn1/x509/cgv;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# static fields
.field public static final Iva:I = 0x1

.field public static final Jva:I = 0x2

.field public static final publicKey:I


# instance fields
.field Fva:Lorg/bouncycastle/asn1/bio;

.field Gva:Lorg/bouncycastle/asn1/bvj;

.field Hva:Lorg/bouncycastle/asn1/n;

.field digestAlgorithm:Lorg/bouncycastle/asn1/x509/zta;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/x509/zta;[B)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/bio;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/bio;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/cgv;->Fva:Lorg/bouncycastle/asn1/bio;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/cgv;->Gva:Lorg/bouncycastle/asn1/bvj;

    :cond_0
    iput-object p3, p0, Lorg/bouncycastle/asn1/x509/cgv;->digestAlgorithm:Lorg/bouncycastle/asn1/x509/zta;

    new-instance p1, Lorg/bouncycastle/asn1/n;

    invoke-direct {p1, p4}, Lorg/bouncycastle/asn1/n;-><init>([B)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/cgv;->Hva:Lorg/bouncycastle/asn1/n;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/bio;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bio;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/cgv;->Fva:Lorg/bouncycastle/asn1/bio;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v1, :cond_0

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/bvj;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/cgv;->Gva:Lorg/bouncycastle/asn1/bvj;

    move v0, v3

    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/zta;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/cgv;->digestAlgorithm:Lorg/bouncycastle/asn1/x509/zta;

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/n;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/n;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/cgv;->Hva:Lorg/bouncycastle/asn1/n;

    return-void

    :cond_1
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

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/cgv;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/cgv;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/x509/cgv;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/cgv;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/cgv;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/x509/cgv;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/obl;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/cgv;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/cgv;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/zta;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/cgv;->digestAlgorithm:Lorg/bouncycastle/asn1/x509/zta;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/cgv;->Fva:Lorg/bouncycastle/asn1/bio;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/cgv;->Gva:Lorg/bouncycastle/asn1/bvj;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/cgv;->digestAlgorithm:Lorg/bouncycastle/asn1/x509/zta;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/cgv;->Hva:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance p0, Lorg/bouncycastle/asn1/G;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object p0
.end method

.method public wi()Lorg/bouncycastle/asn1/bio;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/cgv;->Fva:Lorg/bouncycastle/asn1/bio;

    return-object p0
.end method

.method public xi()Lorg/bouncycastle/asn1/n;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/cgv;->Hva:Lorg/bouncycastle/asn1/n;

    return-object p0
.end method

.method public yi()Lorg/bouncycastle/asn1/bvj;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/cgv;->Gva:Lorg/bouncycastle/asn1/bvj;

    return-object p0
.end method
