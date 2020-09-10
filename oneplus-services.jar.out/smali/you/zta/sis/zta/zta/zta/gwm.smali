.class public Lyou/zta/sis/zta/zta/zta/gwm;
.super Lyou/zta/sis/zta/cno$you;
.source ""


# static fields
.field public static final Q:Ljava/math/BigInteger;


# instance fields
.field protected x:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lyou/zta/sis/zta/zta/zta/bvj;->q:Ljava/math/BigInteger;

    sput-object v0, Lyou/zta/sis/zta/zta/zta/gwm;->Q:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lyou/zta/sis/zta/cno$you;-><init>()V

    invoke-static {}, Lyou/zta/sis/sis/tsu;->create()[I

    move-result-object v0

    iput-object v0, p0, Lyou/zta/sis/zta/zta/zta/gwm;->x:[I

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct {p0}, Lyou/zta/sis/zta/cno$you;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lyou/zta/sis/zta/zta/zta/gwm;->Q:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {p1}, Lyou/zta/sis/zta/zta/zta/ibl;->dma(Ljava/math/BigInteger;)[I

    move-result-object p1

    iput-object p1, p0, Lyou/zta/sis/zta/zta/zta/gwm;->x:[I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "x value invalid for SecP224R1FieldElement"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Lyou/zta/sis/zta/cno$you;-><init>()V

    iput-object p1, p0, Lyou/zta/sis/zta/zta/zta/gwm;->x:[I

    return-void
.end method

.method private static qbh([I[I[I)Z
    .locals 7

    invoke-static {}, Lyou/zta/sis/sis/tsu;->create()[I

    move-result-object v0

    invoke-static {p1, v0}, Lyou/zta/sis/sis/tsu;->zta([I[I)V

    invoke-static {}, Lyou/zta/sis/sis/tsu;->create()[I

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, p1, v1

    invoke-static {}, Lyou/zta/sis/sis/tsu;->create()[I

    move-result-object v3

    invoke-static {p0, v0, p1, v3, p2}, Lyou/zta/sis/zta/zta/zta/gwm;->zta([I[I[I[I[I)V

    invoke-static {}, Lyou/zta/sis/sis/tsu;->create()[I

    move-result-object p0

    invoke-static {}, Lyou/zta/sis/sis/tsu;->create()[I

    move-result-object v4

    move v5, v2

    :goto_0
    const/16 v6, 0x60

    if-ge v5, v6, :cond_1

    invoke-static {v0, p0}, Lyou/zta/sis/sis/tsu;->zta([I[I)V

    invoke-static {p1, v4}, Lyou/zta/sis/sis/tsu;->zta([I[I)V

    invoke-static {v0, p1, v3, p2}, Lyou/zta/sis/zta/zta/zta/gwm;->sis([I[I[I[I)V

    invoke-static {v0}, Lyou/zta/sis/sis/tsu;->dma([I)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object p1, Lyou/zta/sis/zta/zta/zta/ibl;->P:[I

    invoke-static {p1, v4, p2}, Lyou/zta/sis/sis/you;->bio([I[I[I)V

    invoke-static {p2, p0, p2}, Lyou/zta/sis/zta/zta/zta/ibl;->tsu([I[I[I)V

    return v2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static sis([I[I[I[I)V
    .locals 0

    invoke-static {p1, p0, p1}, Lyou/zta/sis/zta/zta/zta/ibl;->tsu([I[I[I)V

    invoke-static {p1, p1}, Lyou/zta/sis/zta/zta/zta/ibl;->wtn([I[I)V

    invoke-static {p0, p3}, Lyou/zta/sis/zta/zta/zta/ibl;->igw([I[I)V

    invoke-static {p2, p3, p0}, Lyou/zta/sis/zta/zta/zta/ibl;->you([I[I[I)V

    invoke-static {p2, p3, p2}, Lyou/zta/sis/zta/zta/zta/ibl;->tsu([I[I[I)V

    const/4 p0, 0x7

    const/4 p1, 0x2

    const/4 p3, 0x0

    invoke-static {p0, p2, p1, p3}, Lyou/zta/sis/sis/kth;->ssp(I[III)I

    move-result p0

    invoke-static {p0, p2}, Lyou/zta/sis/zta/zta/zta/ibl;->cno(I[I)V

    return-void
.end method

.method private static zgw([I)Z
    .locals 3

    invoke-static {}, Lyou/zta/sis/sis/tsu;->create()[I

    move-result-object v0

    invoke-static {}, Lyou/zta/sis/sis/tsu;->create()[I

    move-result-object v1

    invoke-static {p0, v0}, Lyou/zta/sis/sis/tsu;->zta([I[I)V

    const/4 p0, 0x0

    :goto_0
    const/4 v2, 0x7

    if-ge p0, v2, :cond_0

    invoke-static {v0, v1}, Lyou/zta/sis/sis/tsu;->zta([I[I)V

    const/4 v2, 0x1

    shl-int/2addr v2, p0

    invoke-static {v0, v2, v0}, Lyou/zta/sis/zta/zta/zta/ibl;->zta([II[I)V

    invoke-static {v0, v1, v0}, Lyou/zta/sis/zta/zta/zta/ibl;->tsu([I[I[I)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0x5f

    invoke-static {v0, p0, v0}, Lyou/zta/sis/zta/zta/zta/ibl;->zta([II[I)V

    invoke-static {v0}, Lyou/zta/sis/sis/tsu;->gck([I)Z

    move-result p0

    return p0
.end method

.method private static zta([I[I[I[I[I)V
    .locals 10

    invoke-static {p0, p3}, Lyou/zta/sis/sis/tsu;->zta([I[I)V

    invoke-static {}, Lyou/zta/sis/sis/tsu;->create()[I

    move-result-object v7

    invoke-static {}, Lyou/zta/sis/sis/tsu;->create()[I

    move-result-object v8

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    const/4 v0, 0x7

    if-ge v9, v0, :cond_1

    invoke-static {p1, v7}, Lyou/zta/sis/sis/tsu;->zta([I[I)V

    invoke-static {p2, v8}, Lyou/zta/sis/sis/tsu;->zta([I[I)V

    const/4 v0, 0x1

    shl-int/2addr v0, v9

    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lyou/zta/sis/zta/zta/zta/gwm;->sis([I[I[I[I)V

    goto :goto_1

    :cond_0
    move-object v0, p0

    move-object v1, v7

    move-object v2, v8

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lyou/zta/sis/zta/zta/zta/gwm;->zta([I[I[I[I[I[I[I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static zta([I[I[I[I[I[I[I)V
    .locals 0

    invoke-static {p4, p2, p6}, Lyou/zta/sis/zta/zta/zta/ibl;->tsu([I[I[I)V

    invoke-static {p6, p0, p6}, Lyou/zta/sis/zta/zta/zta/ibl;->tsu([I[I[I)V

    invoke-static {p3, p1, p5}, Lyou/zta/sis/zta/zta/zta/ibl;->tsu([I[I[I)V

    invoke-static {p5, p6, p5}, Lyou/zta/sis/zta/zta/zta/ibl;->you([I[I[I)V

    invoke-static {p3, p2, p6}, Lyou/zta/sis/zta/zta/zta/ibl;->tsu([I[I[I)V

    invoke-static {p5, p3}, Lyou/zta/sis/sis/tsu;->zta([I[I)V

    invoke-static {p4, p1, p4}, Lyou/zta/sis/zta/zta/zta/ibl;->tsu([I[I[I)V

    invoke-static {p4, p6, p4}, Lyou/zta/sis/zta/zta/zta/ibl;->you([I[I[I)V

    invoke-static {p4, p5}, Lyou/zta/sis/zta/zta/zta/ibl;->igw([I[I)V

    invoke-static {p5, p0, p5}, Lyou/zta/sis/zta/zta/zta/ibl;->tsu([I[I[I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lyou/zta/sis/zta/zta/zta/gwm;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lyou/zta/sis/zta/zta/zta/gwm;

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/gwm;->x:[I

    iget-object p1, p1, Lyou/zta/sis/zta/zta/zta/gwm;->x:[I

    invoke-static {p0, p1}, Lyou/zta/sis/sis/tsu;->ywr([I[I)Z

    move-result p0

    return p0
.end method

.method public fk()Lyou/zta/sis/zta/cno;
    .locals 1

    invoke-static {}, Lyou/zta/sis/sis/tsu;->create()[I

    move-result-object v0

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/gwm;->x:[I

    invoke-static {p0, v0}, Lyou/zta/sis/zta/zta/zta/ibl;->ssp([I[I)V

    new-instance p0, Lyou/zta/sis/zta/zta/zta/gwm;

    invoke-direct {p0, v0}, Lyou/zta/sis/zta/zta/zta/gwm;-><init>([I)V

    return-object p0
.end method

.method public getFieldSize()I
    .locals 0

    sget-object p0, Lyou/zta/sis/zta/zta/zta/gwm;->Q:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method

.method public gk()Ljava/lang/String;
    .locals 0

    const-string p0, "SecP224R1Field"

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    sget-object v0, Lyou/zta/sis/zta/zta/zta/gwm;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/gwm;->x:[I

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-static {p0, v1, v2}, Lorg/bouncycastle/util/zta;->you([III)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public hk()Z
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/gwm;->x:[I

    invoke-static {p0}, Lyou/zta/sis/sis/tsu;->gck([I)Z

    move-result p0

    return p0
.end method

.method public ik()Lyou/zta/sis/zta/cno;
    .locals 5

    iget-object v0, p0, Lyou/zta/sis/zta/zta/zta/gwm;->x:[I

    invoke-static {v0}, Lyou/zta/sis/sis/tsu;->dma([I)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Lyou/zta/sis/sis/tsu;->gck([I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lyou/zta/sis/sis/tsu;->create()[I

    move-result-object p0

    invoke-static {v0, p0}, Lyou/zta/sis/zta/zta/zta/ibl;->kth([I[I)V

    sget-object v1, Lyou/zta/sis/zta/zta/zta/ibl;->P:[I

    invoke-static {v1}, Lyou/zta/sis/sis/you;->wtn([I)[I

    move-result-object v1

    invoke-static {}, Lyou/zta/sis/sis/tsu;->create()[I

    move-result-object v2

    invoke-static {v0}, Lyou/zta/sis/zta/zta/zta/gwm;->zgw([I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    return-object v4

    :cond_1
    :goto_0
    invoke-static {p0, v1, v2}, Lyou/zta/sis/zta/zta/zta/gwm;->qbh([I[I[I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1, v1}, Lyou/zta/sis/zta/zta/zta/ibl;->ssp([I[I)V

    goto :goto_0

    :cond_2
    invoke-static {v2, v1}, Lyou/zta/sis/zta/zta/zta/ibl;->igw([I[I)V

    invoke-static {v0, v1}, Lyou/zta/sis/sis/tsu;->ywr([I[I)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance v4, Lyou/zta/sis/zta/zta/zta/gwm;

    invoke-direct {v4, v2}, Lyou/zta/sis/zta/zta/zta/gwm;-><init>([I)V

    :cond_3
    return-object v4

    :cond_4
    :goto_1
    return-object p0
.end method

.method public invert()Lyou/zta/sis/zta/cno;
    .locals 2

    invoke-static {}, Lyou/zta/sis/sis/tsu;->create()[I

    move-result-object v0

    sget-object v1, Lyou/zta/sis/zta/zta/zta/ibl;->P:[I

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/gwm;->x:[I

    invoke-static {v1, p0, v0}, Lyou/zta/sis/sis/you;->bio([I[I[I)V

    new-instance p0, Lyou/zta/sis/zta/zta/zta/gwm;

    invoke-direct {p0, v0}, Lyou/zta/sis/zta/zta/zta/gwm;-><init>([I)V

    return-object p0
.end method

.method public isZero()Z
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/gwm;->x:[I

    invoke-static {p0}, Lyou/zta/sis/sis/tsu;->dma([I)Z

    move-result p0

    return p0
.end method

.method public jk()Z
    .locals 2

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/gwm;->x:[I

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lyou/zta/sis/sis/tsu;->zta([II)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public negate()Lyou/zta/sis/zta/cno;
    .locals 1

    invoke-static {}, Lyou/zta/sis/sis/tsu;->create()[I

    move-result-object v0

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/gwm;->x:[I

    invoke-static {p0, v0}, Lyou/zta/sis/zta/zta/zta/ibl;->kth([I[I)V

    new-instance p0, Lyou/zta/sis/zta/zta/zta/gwm;

    invoke-direct {p0, v0}, Lyou/zta/sis/zta/zta/zta/gwm;-><init>([I)V

    return-object p0
.end method

.method public rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;
    .locals 1

    invoke-static {}, Lyou/zta/sis/sis/tsu;->create()[I

    move-result-object v0

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/gwm;->x:[I

    check-cast p1, Lyou/zta/sis/zta/zta/zta/gwm;

    iget-object p1, p1, Lyou/zta/sis/zta/zta/zta/gwm;->x:[I

    invoke-static {p0, p1, v0}, Lyou/zta/sis/zta/zta/zta/ibl;->tsu([I[I[I)V

    new-instance p0, Lyou/zta/sis/zta/zta/zta/gwm;

    invoke-direct {p0, v0}, Lyou/zta/sis/zta/zta/zta/gwm;-><init>([I)V

    return-object p0
.end method

.method public sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;
    .locals 1

    invoke-static {}, Lyou/zta/sis/sis/tsu;->create()[I

    move-result-object v0

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/gwm;->x:[I

    check-cast p1, Lyou/zta/sis/zta/zta/zta/gwm;

    iget-object p1, p1, Lyou/zta/sis/zta/zta/zta/gwm;->x:[I

    invoke-static {p0, p1, v0}, Lyou/zta/sis/zta/zta/zta/ibl;->you([I[I[I)V

    new-instance p0, Lyou/zta/sis/zta/zta/zta/gwm;

    invoke-direct {p0, v0}, Lyou/zta/sis/zta/zta/zta/gwm;-><init>([I)V

    return-object p0
.end method

.method public square()Lyou/zta/sis/zta/cno;
    .locals 1

    invoke-static {}, Lyou/zta/sis/sis/tsu;->create()[I

    move-result-object v0

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/gwm;->x:[I

    invoke-static {p0, v0}, Lyou/zta/sis/zta/zta/zta/ibl;->igw([I[I)V

    new-instance p0, Lyou/zta/sis/zta/zta/zta/gwm;

    invoke-direct {p0, v0}, Lyou/zta/sis/zta/zta/zta/gwm;-><init>([I)V

    return-object p0
.end method

.method public ssp(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;
    .locals 1

    invoke-static {}, Lyou/zta/sis/sis/tsu;->create()[I

    move-result-object v0

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/gwm;->x:[I

    check-cast p1, Lyou/zta/sis/zta/zta/zta/gwm;

    iget-object p1, p1, Lyou/zta/sis/zta/zta/zta/gwm;->x:[I

    invoke-static {p0, p1, v0}, Lyou/zta/sis/zta/zta/zta/ibl;->ssp([I[I[I)V

    new-instance p0, Lyou/zta/sis/zta/zta/zta/gwm;

    invoke-direct {p0, v0}, Lyou/zta/sis/zta/zta/zta/gwm;-><init>([I)V

    return-object p0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/gwm;->x:[I

    invoke-static {p0}, Lyou/zta/sis/sis/tsu;->ywr([I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public tsu(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;
    .locals 2

    invoke-static {}, Lyou/zta/sis/sis/tsu;->create()[I

    move-result-object v0

    sget-object v1, Lyou/zta/sis/zta/zta/zta/ibl;->P:[I

    check-cast p1, Lyou/zta/sis/zta/zta/zta/gwm;

    iget-object p1, p1, Lyou/zta/sis/zta/zta/zta/gwm;->x:[I

    invoke-static {v1, p1, v0}, Lyou/zta/sis/sis/you;->bio([I[I[I)V

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/gwm;->x:[I

    invoke-static {v0, p0, v0}, Lyou/zta/sis/zta/zta/zta/ibl;->tsu([I[I[I)V

    new-instance p0, Lyou/zta/sis/zta/zta/zta/gwm;

    invoke-direct {p0, v0}, Lyou/zta/sis/zta/zta/zta/gwm;-><init>([I)V

    return-object p0
.end method
