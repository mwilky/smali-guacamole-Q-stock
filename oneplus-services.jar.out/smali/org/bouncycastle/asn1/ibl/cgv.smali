.class public Lorg/bouncycastle/asn1/ibl/cgv;
.super Lorg/bouncycastle/asn1/oif;
.source ""

# interfaces
.implements Lorg/bouncycastle/asn1/ibl/ivd;


# instance fields
.field private curve:Lyou/zta/sis/zta/rtg;

.field private jxa:[B

.field private mxa:Lorg/bouncycastle/asn1/bvj;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ibl/vdw;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/asn1/obl;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct/range {p0 .. p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/bouncycastle/asn1/ibl/cgv;->mxa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/asn1/ibl/vdw;->getIdentifier()Lorg/bouncycastle/asn1/bvj;

    move-result-object v2

    iput-object v2, v0, Lorg/bouncycastle/asn1/ibl/cgv;->mxa:Lorg/bouncycastle/asn1/bvj;

    iget-object v2, v0, Lorg/bouncycastle/asn1/ibl/cgv;->mxa:Lorg/bouncycastle/asn1/bvj;

    sget-object v3, Lorg/bouncycastle/asn1/ibl/ivd;->prime_field:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/asn1/ibl/vdw;->getParameters()Lorg/bouncycastle/asn1/vdb;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    new-instance v8, Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ibl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ibl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object v2

    invoke-direct {v8, v5, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v9, Ljava/math/BigInteger;

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ibl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ibl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object v2

    invoke-direct {v9, v5, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v2, Lyou/zta/sis/zta/rtg$rtg;

    move-object v6, v2

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v6 .. v11}, Lyou/zta/sis/zta/rtg$rtg;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :goto_0
    iput-object v2, v0, Lorg/bouncycastle/asn1/ibl/cgv;->curve:Lyou/zta/sis/zta/rtg;

    goto/16 :goto_2

    :cond_0
    iget-object v2, v0, Lorg/bouncycastle/asn1/ibl/cgv;->mxa:Lorg/bouncycastle/asn1/bvj;

    sget-object v6, Lorg/bouncycastle/asn1/ibl/ivd;->characteristic_two_field:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v2, v6}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/asn1/ibl/vdw;->getParameters()Lorg/bouncycastle/asn1/vdb;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    invoke-virtual {v2, v5}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/bvj;

    sget-object v7, Lorg/bouncycastle/asn1/ibl/ivd;->tpBasis:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ywr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ywr;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    move v9, v2

    move v10, v4

    move v11, v10

    goto :goto_1

    :cond_1
    sget-object v7, Lorg/bouncycastle/asn1/ibl/ivd;->ppBasis:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/ywr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ywr;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    invoke-virtual {v2, v5}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/asn1/ywr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ywr;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ywr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ywr;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    move v11, v2

    move v9, v6

    move v10, v7

    :goto_1
    new-instance v12, Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ibl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ibl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object v2

    invoke-direct {v12, v5, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v13, Ljava/math/BigInteger;

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ibl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ibl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object v2

    invoke-direct {v13, v5, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v2, Lyou/zta/sis/zta/rtg$tsu;

    move-object v7, v2

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-direct/range {v7 .. v15}, Lyou/zta/sis/zta/rtg$tsu;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto/16 :goto_0

    :goto_2
    invoke-virtual/range {p4 .. p4}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/n;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/sis;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/zta;->vdb([B)[B

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/asn1/ibl/cgv;->jxa:[B

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This type of EC basis is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This type of ECCurve is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lyou/zta/sis/zta/rtg;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/ibl/cgv;-><init>(Lyou/zta/sis/zta/rtg;[B)V

    return-void
.end method

.method public constructor <init>(Lyou/zta/sis/zta/rtg;[B)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ibl/cgv;->mxa:Lorg/bouncycastle/asn1/bvj;

    iput-object p1, p0, Lorg/bouncycastle/asn1/ibl/cgv;->curve:Lyou/zta/sis/zta/rtg;

    invoke-static {p2}, Lorg/bouncycastle/util/zta;->vdb([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/ibl/cgv;->jxa:[B

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ibl/cgv;->Jt()V

    return-void
.end method

.method private Jt()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ibl/cgv;->curve:Lyou/zta/sis/zta/rtg;

    invoke-static {v0}, Lyou/zta/sis/zta/you;->tsu(Lyou/zta/sis/zta/rtg;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/bouncycastle/asn1/ibl/ivd;->prime_field:Lorg/bouncycastle/asn1/bvj;

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/asn1/ibl/cgv;->mxa:Lorg/bouncycastle/asn1/bvj;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/ibl/cgv;->curve:Lyou/zta/sis/zta/rtg;

    invoke-static {v0}, Lyou/zta/sis/zta/you;->sis(Lyou/zta/sis/zta/rtg;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/bouncycastle/asn1/ibl/ivd;->characteristic_two_field:Lorg/bouncycastle/asn1/bvj;

    goto :goto_0

    :goto_1
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "This type of ECCurve is not implemented"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getCurve()Lyou/zta/sis/zta/rtg;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/ibl/cgv;->curve:Lyou/zta/sis/zta/rtg;

    return-object p0
.end method

.method public getSeed()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/ibl/cgv;->jxa:[B

    invoke-static {p0}, Lorg/bouncycastle/util/zta;->vdb([B)[B

    move-result-object p0

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/ibl/cgv;->mxa:Lorg/bouncycastle/asn1/bvj;

    sget-object v2, Lorg/bouncycastle/asn1/ibl/ivd;->prime_field:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/ibl/irq;

    iget-object v2, p0, Lorg/bouncycastle/asn1/ibl/cgv;->curve:Lyou/zta/sis/zta/rtg;

    invoke-virtual {v2}, Lyou/zta/sis/zta/rtg;->getA()Lyou/zta/sis/zta/cno;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ibl/irq;-><init>(Lyou/zta/sis/zta/cno;)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ibl/irq;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance v1, Lorg/bouncycastle/asn1/ibl/irq;

    iget-object v2, p0, Lorg/bouncycastle/asn1/ibl/cgv;->curve:Lyou/zta/sis/zta/rtg;

    invoke-virtual {v2}, Lyou/zta/sis/zta/rtg;->getB()Lyou/zta/sis/zta/cno;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ibl/irq;-><init>(Lyou/zta/sis/zta/cno;)V

    :goto_0
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ibl/irq;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/ibl/cgv;->mxa:Lorg/bouncycastle/asn1/bvj;

    sget-object v2, Lorg/bouncycastle/asn1/ibl/ivd;->characteristic_two_field:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/ibl/irq;

    iget-object v2, p0, Lorg/bouncycastle/asn1/ibl/cgv;->curve:Lyou/zta/sis/zta/rtg;

    invoke-virtual {v2}, Lyou/zta/sis/zta/rtg;->getA()Lyou/zta/sis/zta/cno;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ibl/irq;-><init>(Lyou/zta/sis/zta/cno;)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ibl/irq;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance v1, Lorg/bouncycastle/asn1/ibl/irq;

    iget-object v2, p0, Lorg/bouncycastle/asn1/ibl/cgv;->curve:Lyou/zta/sis/zta/rtg;

    invoke-virtual {v2}, Lyou/zta/sis/zta/rtg;->getB()Lyou/zta/sis/zta/cno;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ibl/irq;-><init>(Lyou/zta/sis/zta/cno;)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p0, p0, Lorg/bouncycastle/asn1/ibl/cgv;->jxa:[B

    if-eqz p0, :cond_2

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/n;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_2
    new-instance p0, Lorg/bouncycastle/asn1/G;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object p0
.end method
