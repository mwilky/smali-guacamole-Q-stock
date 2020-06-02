.class public Lorg/bouncycastle/asn1/ibl/irq;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# static fields
.field private static nra:Lorg/bouncycastle/asn1/ibl/qeg;


# instance fields
.field protected f:Lyou/zta/sis/zta/cno;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/ibl/qeg;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ibl/qeg;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/ibl/irq;->nra:Lorg/bouncycastle/asn1/ibl/qeg;

    return-void
.end method

.method public constructor <init>(IIIILorg/bouncycastle/asn1/ibl;)V
    .locals 7

    new-instance v6, Lyou/zta/sis/zta/cno$sis;

    new-instance v5, Ljava/math/BigInteger;

    invoke-virtual {p5}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object p5

    const/4 v0, 0x1

    invoke-direct {v5, v0, p5}, Ljava/math/BigInteger;-><init>(I[B)V

    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lyou/zta/sis/zta/cno$sis;-><init>(IIIILjava/math/BigInteger;)V

    invoke-direct {p0, v6}, Lorg/bouncycastle/asn1/ibl/irq;-><init>(Lyou/zta/sis/zta/cno;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Lorg/bouncycastle/asn1/ibl;)V
    .locals 3

    new-instance v0, Lyou/zta/sis/zta/cno$tsu;

    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object p2

    const/4 v2, 0x1

    invoke-direct {v1, v2, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v0, p1, v1}, Lyou/zta/sis/zta/cno$tsu;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/ibl/irq;-><init>(Lyou/zta/sis/zta/cno;)V

    return-void
.end method

.method public constructor <init>(Lyou/zta/sis/zta/cno;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/ibl/irq;->f:Lyou/zta/sis/zta/cno;

    return-void
.end method


# virtual methods
.method public getValue()Lyou/zta/sis/zta/cno;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/ibl/irq;->f:Lyou/zta/sis/zta/cno;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 2

    sget-object v0, Lorg/bouncycastle/asn1/ibl/irq;->nra:Lorg/bouncycastle/asn1/ibl/qeg;

    iget-object v1, p0, Lorg/bouncycastle/asn1/ibl/irq;->f:Lyou/zta/sis/zta/cno;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ibl/qeg;->zta(Lyou/zta/sis/zta/cno;)I

    move-result v0

    sget-object v1, Lorg/bouncycastle/asn1/ibl/irq;->nra:Lorg/bouncycastle/asn1/ibl/qeg;

    iget-object p0, p0, Lorg/bouncycastle/asn1/ibl/irq;->f:Lyou/zta/sis/zta/cno;

    invoke-virtual {p0}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lorg/bouncycastle/asn1/ibl/qeg;->zta(Ljava/math/BigInteger;I)[B

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/asn1/C;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/C;-><init>([B)V

    return-object v0
.end method
