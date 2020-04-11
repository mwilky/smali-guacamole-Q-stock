.class public Lorg/bouncycastle/asn1/ibl/vju;
.super Lorg/bouncycastle/asn1/oif;
.source ""

# interfaces
.implements Lorg/bouncycastle/asn1/ibl/ivd;


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field private Wua:[B

.field private _ua:Lorg/bouncycastle/asn1/ibl/vdw;

.field private curve:Lyou/zta/sis/zta/rtg;

.field private g:Lorg/bouncycastle/asn1/ibl/les;

.field private h:Ljava/math/BigInteger;

.field private n:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/ibl/vju;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/ywr;

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/asn1/ibl/vju;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ibl/vju;->n:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ibl/vju;->h:Ljava/math/BigInteger;

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/ibl/cgv;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ibl/vdw;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ibl/vdw;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/asn1/ibl/vju;->n:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/asn1/ibl/vju;->h:Ljava/math/BigInteger;

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/asn1/ibl/cgv;-><init>(Lorg/bouncycastle/asn1/ibl/vdw;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/asn1/obl;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ibl/cgv;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/ibl/vju;->curve:Lyou/zta/sis/zta/rtg;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    instance-of v1, p1, Lorg/bouncycastle/asn1/ibl/les;

    if-eqz v1, :cond_1

    check-cast p1, Lorg/bouncycastle/asn1/ibl/les;

    iput-object p1, p0, Lorg/bouncycastle/asn1/ibl/vju;->g:Lorg/bouncycastle/asn1/ibl/les;

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/ibl/les;

    iget-object v2, p0, Lorg/bouncycastle/asn1/ibl/vju;->curve:Lyou/zta/sis/zta/rtg;

    check-cast p1, Lorg/bouncycastle/asn1/ibl;

    invoke-direct {v1, v2, p1}, Lorg/bouncycastle/asn1/ibl/les;-><init>(Lyou/zta/sis/zta/rtg;Lorg/bouncycastle/asn1/ibl;)V

    iput-object v1, p0, Lorg/bouncycastle/asn1/ibl/vju;->g:Lorg/bouncycastle/asn1/ibl/les;

    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ibl/cgv;->getSeed()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/ibl/vju;->Wua:[B

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bad version in X9ECParameters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lyou/zta/sis/zta/rtg;Lorg/bouncycastle/asn1/ibl/les;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/ibl/vju;-><init>(Lyou/zta/sis/zta/rtg;Lorg/bouncycastle/asn1/ibl/les;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor <init>(Lyou/zta/sis/zta/rtg;Lorg/bouncycastle/asn1/ibl/les;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/ibl/vju;->curve:Lyou/zta/sis/zta/rtg;

    iput-object p2, p0, Lorg/bouncycastle/asn1/ibl/vju;->g:Lorg/bouncycastle/asn1/ibl/les;

    iput-object p3, p0, Lorg/bouncycastle/asn1/ibl/vju;->n:Ljava/math/BigInteger;

    iput-object p4, p0, Lorg/bouncycastle/asn1/ibl/vju;->h:Ljava/math/BigInteger;

    invoke-static {p5}, Lorg/bouncycastle/util/zta;->vdb([B)[B

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/asn1/ibl/vju;->Wua:[B

    invoke-static {p1}, Lyou/zta/sis/zta/you;->tsu(Lyou/zta/sis/zta/rtg;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lorg/bouncycastle/asn1/ibl/vdw;

    invoke-virtual {p1}, Lyou/zta/sis/zta/rtg;->getField()Lyou/zta/sis/you/you;

    move-result-object p1

    invoke-interface {p1}, Lyou/zta/sis/you/you;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/bouncycastle/asn1/ibl/vdw;-><init>(Ljava/math/BigInteger;)V

    :goto_0
    iput-object p2, p0, Lorg/bouncycastle/asn1/ibl/vju;->_ua:Lorg/bouncycastle/asn1/ibl/vdw;

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lyou/zta/sis/zta/you;->sis(Lyou/zta/sis/zta/rtg;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lyou/zta/sis/zta/rtg;->getField()Lyou/zta/sis/you/you;

    move-result-object p1

    check-cast p1, Lyou/zta/sis/you/cno;

    invoke-interface {p1}, Lyou/zta/sis/you/cno;->j()Lyou/zta/sis/you/ssp;

    move-result-object p1

    invoke-interface {p1}, Lyou/zta/sis/you/ssp;->k()[I

    move-result-object p1

    array-length p2, p1

    const/4 p3, 0x1

    const/4 p4, 0x2

    const/4 p5, 0x3

    if-ne p2, p5, :cond_1

    new-instance p2, Lorg/bouncycastle/asn1/ibl/vdw;

    aget p4, p1, p4

    aget p1, p1, p3

    invoke-direct {p2, p4, p1}, Lorg/bouncycastle/asn1/ibl/vdw;-><init>(II)V

    goto :goto_0

    :cond_1
    array-length p2, p1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    new-instance p2, Lorg/bouncycastle/asn1/ibl/vdw;

    const/4 v0, 0x4

    aget v0, p1, v0

    aget p3, p1, p3

    aget p4, p1, p4

    aget p1, p1, p5

    invoke-direct {p2, v0, p3, p4, p1}, Lorg/bouncycastle/asn1/ibl/vdw;-><init>(IIII)V

    goto :goto_0

    :goto_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only trinomial and pentomial curves are supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'curve\' is of an unsupported type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/ibl/vju;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor <init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/ibl/vju;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor <init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 6

    new-instance v2, Lorg/bouncycastle/asn1/ibl/les;

    invoke-direct {v2, p2}, Lorg/bouncycastle/asn1/ibl/les;-><init>(Lyou/zta/sis/zta/wtn;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/ibl/vju;-><init>(Lyou/zta/sis/zta/rtg;Lorg/bouncycastle/asn1/ibl/les;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ibl/vju;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/ibl/vju;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/ibl/vju;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/ibl/vju;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ibl/vju;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public Ei()Lorg/bouncycastle/asn1/ibl/les;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/ibl/vju;->g:Lorg/bouncycastle/asn1/ibl/les;

    return-object p0
.end method

.method public Fi()Lorg/bouncycastle/asn1/ibl/cgv;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/ibl/cgv;

    iget-object v1, p0, Lorg/bouncycastle/asn1/ibl/vju;->curve:Lyou/zta/sis/zta/rtg;

    iget-object p0, p0, Lorg/bouncycastle/asn1/ibl/vju;->Wua:[B

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/asn1/ibl/cgv;-><init>(Lyou/zta/sis/zta/rtg;[B)V

    return-object v0
.end method

.method public Gi()Lorg/bouncycastle/asn1/ibl/vdw;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/ibl/vju;->_ua:Lorg/bouncycastle/asn1/ibl/vdw;

    return-object p0
.end method

.method public Hi()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/ibl/vju;->h:Ljava/math/BigInteger;

    return-object p0
.end method

.method public Ii()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/ibl/vju;->n:Ljava/math/BigInteger;

    return-object p0
.end method

.method public getCurve()Lyou/zta/sis/zta/rtg;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/ibl/vju;->curve:Lyou/zta/sis/zta/rtg;

    return-object p0
.end method

.method public getG()Lyou/zta/sis/zta/wtn;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/ibl/vju;->g:Lorg/bouncycastle/asn1/ibl/les;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl/les;->Ji()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0
.end method

.method public getSeed()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/ibl/vju;->Wua:[B

    invoke-static {p0}, Lorg/bouncycastle/util/zta;->vdb([B)[B

    move-result-object p0

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/ywr;

    sget-object v2, Lorg/bouncycastle/asn1/ibl/vju;->ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ywr;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/ibl/vju;->_ua:Lorg/bouncycastle/asn1/ibl/vdw;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance v1, Lorg/bouncycastle/asn1/ibl/cgv;

    iget-object v2, p0, Lorg/bouncycastle/asn1/ibl/vju;->curve:Lyou/zta/sis/zta/rtg;

    iget-object v3, p0, Lorg/bouncycastle/asn1/ibl/vju;->Wua:[B

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ibl/cgv;-><init>(Lyou/zta/sis/zta/rtg;[B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/ibl/vju;->g:Lorg/bouncycastle/asn1/ibl/les;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance v1, Lorg/bouncycastle/asn1/ywr;

    iget-object v2, p0, Lorg/bouncycastle/asn1/ibl/vju;->n:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ywr;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object p0, p0, Lorg/bouncycastle/asn1/ibl/vju;->h:Ljava/math/BigInteger;

    if-eqz p0, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/ywr;

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/ywr;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_0
    new-instance p0, Lorg/bouncycastle/asn1/G;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object p0
.end method
