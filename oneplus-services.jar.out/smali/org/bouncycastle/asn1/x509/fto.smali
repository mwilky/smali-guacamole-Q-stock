.class public Lorg/bouncycastle/asn1/x509/fto;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# static fields
.field public static final isa:I = 0x80

.field public static final jsa:I = 0x40

.field public static final ksa:I = 0x20

.field public static final lsa:I = 0x10

.field public static final msa:I = 0x8

.field public static final nsa:I = 0x4

.field public static final osa:I = 0x2

.field public static final psa:I = 0x1

.field public static final qsa:I = 0x8000


# instance fields
.field private hsa:Lorg/bouncycastle/asn1/n;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/n;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/n;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/fto;->hsa:Lorg/bouncycastle/asn1/n;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/n;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/fto;->hsa:Lorg/bouncycastle/asn1/n;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/fto;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/fto;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/x509/fto;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/fto;

    invoke-static {p0}, Lorg/bouncycastle/asn1/n;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/n;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/fto;-><init>(Lorg/bouncycastle/asn1/n;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zta(Lorg/bouncycastle/asn1/x509/ugm;)Lorg/bouncycastle/asn1/x509/fto;
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/x509/gwm;->keyUsage:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/x509/ugm;->cno(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/fto;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/fto;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public Y(I)Z
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/fto;->hsa:Lorg/bouncycastle/asn1/n;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/sis;->intValue()I

    move-result p0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getBytes()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/fto;->hsa:Lorg/bouncycastle/asn1/n;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/sis;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/fto;->hsa:Lorg/bouncycastle/asn1/n;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/fto;->hsa:Lorg/bouncycastle/asn1/n;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/sis;->getBytes()[B

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const-string v2, "KeyUsage: 0x"

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v2

    goto :goto_0
.end method

.method public ug()I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/fto;->hsa:Lorg/bouncycastle/asn1/n;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/sis;->ug()I

    move-result p0

    return p0
.end method
