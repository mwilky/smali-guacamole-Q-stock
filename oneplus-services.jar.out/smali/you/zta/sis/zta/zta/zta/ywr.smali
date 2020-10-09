.class public Lyou/zta/sis/zta/zta/zta/ywr;
.super Lyou/zta/sis/zta/cno$you;
.source ""


# static fields
.field public static final Q:Ljava/math/BigInteger;

.field private static final dHa:[I


# instance fields
.field protected x:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lyou/zta/sis/zta/zta/zta/gck;->q:Ljava/math/BigInteger;

    sput-object v0, Lyou/zta/sis/zta/zta/zta/ywr;->Q:Ljava/math/BigInteger;

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lyou/zta/sis/zta/zta/zta/ywr;->dHa:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x33bfd202
        -0x23052ecd
        0x2287624a
        -0x3c7ee458
        -0x57aaa704
        0x1eaef5d7
        -0x7120eab4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lyou/zta/sis/zta/cno$you;-><init>()V

    invoke-static {}, Lyou/zta/sis/sis/tsu;->create()[I

    move-result-object v0

    iput-object v0, p0, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct {p0}, Lyou/zta/sis/zta/cno$you;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lyou/zta/sis/zta/zta/zta/ywr;->Q:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {p1}, Lyou/zta/sis/zta/zta/zta/dma;->dma(Ljava/math/BigInteger;)[I

    move-result-object p1

    iput-object p1, p0, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "x value invalid for SecP224K1FieldElement"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Lyou/zta/sis/zta/cno$you;-><init>()V

    iput-object p1, p0, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lyou/zta/sis/zta/zta/zta/ywr;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lyou/zta/sis/zta/zta/zta/ywr;

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    iget-object p1, p1, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    invoke-static {p0, p1}, Lyou/zta/sis/sis/tsu;->ywr([I[I)Z

    move-result p0

    return p0
.end method

.method public getFieldSize()I
    .locals 0

    sget-object p0, Lyou/zta/sis/zta/zta/zta/ywr;->Q:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 3

    sget-object v0, Lyou/zta/sis/zta/zta/zta/ywr;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-static {p0, v1, v2}, Lorg/bouncycastle/util/zta;->you([III)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public hk()Lyou/zta/sis/zta/cno;
    .locals 1

    invoke-static {}, Lyou/zta/sis/sis/tsu;->create()[I

    move-result-object v0

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    invoke-static {p0, v0}, Lyou/zta/sis/zta/zta/zta/dma;->ssp([I[I)V

    new-instance p0, Lyou/zta/sis/zta/zta/zta/ywr;

    invoke-direct {p0, v0}, Lyou/zta/sis/zta/zta/zta/ywr;-><init>([I)V

    return-object p0
.end method

.method public ik()Ljava/lang/String;
    .locals 0

    const-string p0, "SecP224K1Field"

    return-object p0
.end method

.method public invert()Lyou/zta/sis/zta/cno;
    .locals 2

    invoke-static {}, Lyou/zta/sis/sis/tsu;->create()[I

    move-result-object v0

    sget-object v1, Lyou/zta/sis/zta/zta/zta/dma;->P:[I

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    invoke-static {v1, p0, v0}, Lyou/zta/sis/sis/you;->bio([I[I[I)V

    new-instance p0, Lyou/zta/sis/zta/zta/zta/ywr;

    invoke-direct {p0, v0}, Lyou/zta/sis/zta/zta/zta/ywr;-><init>([I)V

    return-object p0
.end method

.method public isZero()Z
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    invoke-static {p0}, Lyou/zta/sis/sis/tsu;->dma([I)Z

    move-result p0

    return p0
.end method

.method public jk()Z
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    invoke-static {p0}, Lyou/zta/sis/sis/tsu;->gck([I)Z

    move-result p0

    return p0
.end method

.method public kk()Lyou/zta/sis/zta/cno;
    .locals 8

    iget-object v0, p0, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    invoke-static {v0}, Lyou/zta/sis/sis/tsu;->dma([I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lyou/zta/sis/sis/tsu;->gck([I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lyou/zta/sis/sis/tsu;->create()[I

    move-result-object p0

    invoke-static {v0, p0}, Lyou/zta/sis/zta/zta/zta/dma;->igw([I[I)V

    invoke-static {p0, v0, p0}, Lyou/zta/sis/zta/zta/zta/dma;->tsu([I[I[I)V

    invoke-static {p0, p0}, Lyou/zta/sis/zta/zta/zta/dma;->igw([I[I)V

    invoke-static {p0, v0, p0}, Lyou/zta/sis/zta/zta/zta/dma;->tsu([I[I[I)V

    invoke-static {}, Lyou/zta/sis/sis/tsu;->create()[I

    move-result-object v1

    invoke-static {p0, v1}, Lyou/zta/sis/zta/zta/zta/dma;->igw([I[I)V

    invoke-static {v1, v0, v1}, Lyou/zta/sis/zta/zta/zta/dma;->tsu([I[I[I)V

    invoke-static {}, Lyou/zta/sis/sis/tsu;->create()[I

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v1, v3, v2}, Lyou/zta/sis/zta/zta/zta/dma;->zta([II[I)V

    invoke-static {v2, v1, v2}, Lyou/zta/sis/zta/zta/zta/dma;->tsu([I[I[I)V

    invoke-static {}, Lyou/zta/sis/sis/tsu;->create()[I

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v2, v5, v4}, Lyou/zta/sis/zta/zta/zta/dma;->zta([II[I)V

    invoke-static {v4, p0, v4}, Lyou/zta/sis/zta/zta/zta/dma;->tsu([I[I[I)V

    const/16 v6, 0x8

    invoke-static {v4, v6, v4}, Lyou/zta/sis/zta/zta/zta/dma;->zta([II[I)V

    invoke-static {v4, v2, v4}, Lyou/zta/sis/zta/zta/zta/dma;->tsu([I[I[I)V

    invoke-static {v4, v3, v2}, Lyou/zta/sis/zta/zta/zta/dma;->zta([II[I)V

    invoke-static {v2, v1, v2}, Lyou/zta/sis/zta/zta/zta/dma;->tsu([I[I[I)V

    const/16 v6, 0x13

    invoke-static {v2, v6, v1}, Lyou/zta/sis/zta/zta/zta/dma;->zta([II[I)V

    invoke-static {v1, v4, v1}, Lyou/zta/sis/zta/zta/zta/dma;->tsu([I[I[I)V

    invoke-static {}, Lyou/zta/sis/sis/tsu;->create()[I

    move-result-object v6

    const/16 v7, 0x2a

    invoke-static {v1, v7, v6}, Lyou/zta/sis/zta/zta/zta/dma;->zta([II[I)V

    invoke-static {v6, v1, v6}, Lyou/zta/sis/zta/zta/zta/dma;->tsu([I[I[I)V

    const/16 v7, 0x17

    invoke-static {v6, v7, v1}, Lyou/zta/sis/zta/zta/zta/dma;->zta([II[I)V

    invoke-static {v1, v2, v1}, Lyou/zta/sis/zta/zta/zta/dma;->tsu([I[I[I)V

    const/16 v7, 0x54

    invoke-static {v1, v7, v2}, Lyou/zta/sis/zta/zta/zta/dma;->zta([II[I)V

    invoke-static {v2, v6, v2}, Lyou/zta/sis/zta/zta/zta/dma;->tsu([I[I[I)V

    const/16 v1, 0x14

    invoke-static {v2, v1, v2}, Lyou/zta/sis/zta/zta/zta/dma;->zta([II[I)V

    invoke-static {v2, v4, v2}, Lyou/zta/sis/zta/zta/zta/dma;->tsu([I[I[I)V

    invoke-static {v2, v5, v2}, Lyou/zta/sis/zta/zta/zta/dma;->zta([II[I)V

    invoke-static {v2, v0, v2}, Lyou/zta/sis/zta/zta/zta/dma;->tsu([I[I[I)V

    const/4 v1, 0x2

    invoke-static {v2, v1, v2}, Lyou/zta/sis/zta/zta/zta/dma;->zta([II[I)V

    invoke-static {v2, v0, v2}, Lyou/zta/sis/zta/zta/zta/dma;->tsu([I[I[I)V

    invoke-static {v2, v3, v2}, Lyou/zta/sis/zta/zta/zta/dma;->zta([II[I)V

    invoke-static {v2, p0, v2}, Lyou/zta/sis/zta/zta/zta/dma;->tsu([I[I[I)V

    invoke-static {v2, v2}, Lyou/zta/sis/zta/zta/zta/dma;->igw([I[I)V

    invoke-static {v2, v6}, Lyou/zta/sis/zta/zta/zta/dma;->igw([I[I)V

    invoke-static {v0, v6}, Lyou/zta/sis/sis/tsu;->ywr([I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lyou/zta/sis/zta/zta/zta/ywr;

    invoke-direct {p0, v2}, Lyou/zta/sis/zta/zta/zta/ywr;-><init>([I)V

    return-object p0

    :cond_1
    sget-object p0, Lyou/zta/sis/zta/zta/zta/ywr;->dHa:[I

    invoke-static {v2, p0, v2}, Lyou/zta/sis/zta/zta/zta/dma;->tsu([I[I[I)V

    invoke-static {v2, v6}, Lyou/zta/sis/zta/zta/zta/dma;->igw([I[I)V

    invoke-static {v0, v6}, Lyou/zta/sis/sis/tsu;->ywr([I[I)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lyou/zta/sis/zta/zta/zta/ywr;

    invoke-direct {p0, v2}, Lyou/zta/sis/zta/zta/zta/ywr;-><init>([I)V

    return-object p0

    :cond_2
    const/4 p0, 0x0

    :cond_3
    :goto_0
    return-object p0
.end method

.method public lk()Z
    .locals 2

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

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

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    invoke-static {p0, v0}, Lyou/zta/sis/zta/zta/zta/dma;->kth([I[I)V

    new-instance p0, Lyou/zta/sis/zta/zta/zta/ywr;

    invoke-direct {p0, v0}, Lyou/zta/sis/zta/zta/zta/ywr;-><init>([I)V

    return-object p0
.end method

.method public rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;
    .locals 1

    invoke-static {}, Lyou/zta/sis/sis/tsu;->create()[I

    move-result-object v0

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    check-cast p1, Lyou/zta/sis/zta/zta/zta/ywr;

    iget-object p1, p1, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    invoke-static {p0, p1, v0}, Lyou/zta/sis/zta/zta/zta/dma;->tsu([I[I[I)V

    new-instance p0, Lyou/zta/sis/zta/zta/zta/ywr;

    invoke-direct {p0, v0}, Lyou/zta/sis/zta/zta/zta/ywr;-><init>([I)V

    return-object p0
.end method

.method public sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;
    .locals 1

    invoke-static {}, Lyou/zta/sis/sis/tsu;->create()[I

    move-result-object v0

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    check-cast p1, Lyou/zta/sis/zta/zta/zta/ywr;

    iget-object p1, p1, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    invoke-static {p0, p1, v0}, Lyou/zta/sis/zta/zta/zta/dma;->you([I[I[I)V

    new-instance p0, Lyou/zta/sis/zta/zta/zta/ywr;

    invoke-direct {p0, v0}, Lyou/zta/sis/zta/zta/zta/ywr;-><init>([I)V

    return-object p0
.end method

.method public square()Lyou/zta/sis/zta/cno;
    .locals 1

    invoke-static {}, Lyou/zta/sis/sis/tsu;->create()[I

    move-result-object v0

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    invoke-static {p0, v0}, Lyou/zta/sis/zta/zta/zta/dma;->igw([I[I)V

    new-instance p0, Lyou/zta/sis/zta/zta/zta/ywr;

    invoke-direct {p0, v0}, Lyou/zta/sis/zta/zta/zta/ywr;-><init>([I)V

    return-object p0
.end method

.method public ssp(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;
    .locals 1

    invoke-static {}, Lyou/zta/sis/sis/tsu;->create()[I

    move-result-object v0

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    check-cast p1, Lyou/zta/sis/zta/zta/zta/ywr;

    iget-object p1, p1, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    invoke-static {p0, p1, v0}, Lyou/zta/sis/zta/zta/zta/dma;->ssp([I[I[I)V

    new-instance p0, Lyou/zta/sis/zta/zta/zta/ywr;

    invoke-direct {p0, v0}, Lyou/zta/sis/zta/zta/zta/ywr;-><init>([I)V

    return-object p0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    invoke-static {p0}, Lyou/zta/sis/sis/tsu;->ywr([I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public tsu(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;
    .locals 2

    invoke-static {}, Lyou/zta/sis/sis/tsu;->create()[I

    move-result-object v0

    sget-object v1, Lyou/zta/sis/zta/zta/zta/dma;->P:[I

    check-cast p1, Lyou/zta/sis/zta/zta/zta/ywr;

    iget-object p1, p1, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    invoke-static {v1, p1, v0}, Lyou/zta/sis/sis/you;->bio([I[I[I)V

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/ywr;->x:[I

    invoke-static {v0, p0, v0}, Lyou/zta/sis/zta/zta/zta/dma;->tsu([I[I[I)V

    new-instance p0, Lyou/zta/sis/zta/zta/zta/ywr;

    invoke-direct {p0, v0}, Lyou/zta/sis/zta/zta/zta/ywr;-><init>([I)V

    return-object p0
.end method
