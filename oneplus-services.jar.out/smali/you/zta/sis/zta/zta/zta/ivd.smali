.class public Lyou/zta/sis/zta/zta/zta/ivd;
.super Lyou/zta/sis/zta/cno$you;
.source ""


# static fields
.field public static final Q:Ljava/math/BigInteger;


# instance fields
.field protected x:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lyou/zta/sis/zta/zta/zta/vdw;->q:Ljava/math/BigInteger;

    sput-object v0, Lyou/zta/sis/zta/zta/zta/ivd;->Q:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lyou/zta/sis/zta/cno$you;-><init>()V

    const/16 v0, 0x11

    invoke-static {v0}, Lyou/zta/sis/sis/kth;->create(I)[I

    move-result-object v0

    iput-object v0, p0, Lyou/zta/sis/zta/zta/zta/ivd;->x:[I

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct {p0}, Lyou/zta/sis/zta/cno$you;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lyou/zta/sis/zta/zta/zta/ivd;->Q:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {p1}, Lyou/zta/sis/zta/zta/zta/qeg;->dma(Ljava/math/BigInteger;)[I

    move-result-object p1

    iput-object p1, p0, Lyou/zta/sis/zta/zta/zta/ivd;->x:[I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "x value invalid for SecP521R1FieldElement"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Lyou/zta/sis/zta/cno$you;-><init>()V

    iput-object p1, p0, Lyou/zta/sis/zta/zta/zta/ivd;->x:[I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lyou/zta/sis/zta/zta/zta/ivd;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lyou/zta/sis/zta/zta/zta/ivd;

    const/16 v0, 0x11

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/ivd;->x:[I

    iget-object p1, p1, Lyou/zta/sis/zta/zta/zta/ivd;->x:[I

    invoke-static {v0, p0, p1}, Lyou/zta/sis/sis/kth;->rtg(I[I[I)Z

    move-result p0

    return p0
.end method

.method public getFieldSize()I
    .locals 0

    sget-object p0, Lyou/zta/sis/zta/zta/zta/ivd;->Q:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 3

    sget-object v0, Lyou/zta/sis/zta/zta/zta/ivd;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/ivd;->x:[I

    const/4 v1, 0x0

    const/16 v2, 0x11

    invoke-static {p0, v1, v2}, Lorg/bouncycastle/util/zta;->you([III)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public hk()Lyou/zta/sis/zta/cno;
    .locals 1

    const/16 v0, 0x11

    invoke-static {v0}, Lyou/zta/sis/sis/kth;->create(I)[I

    move-result-object v0

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/ivd;->x:[I

    invoke-static {p0, v0}, Lyou/zta/sis/zta/zta/zta/qeg;->ssp([I[I)V

    new-instance p0, Lyou/zta/sis/zta/zta/zta/ivd;

    invoke-direct {p0, v0}, Lyou/zta/sis/zta/zta/zta/ivd;-><init>([I)V

    return-object p0
.end method

.method public ik()Ljava/lang/String;
    .locals 0

    const-string p0, "SecP521R1Field"

    return-object p0
.end method

.method public invert()Lyou/zta/sis/zta/cno;
    .locals 2

    const/16 v0, 0x11

    invoke-static {v0}, Lyou/zta/sis/sis/kth;->create(I)[I

    move-result-object v0

    sget-object v1, Lyou/zta/sis/zta/zta/zta/qeg;->P:[I

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/ivd;->x:[I

    invoke-static {v1, p0, v0}, Lyou/zta/sis/sis/you;->bio([I[I[I)V

    new-instance p0, Lyou/zta/sis/zta/zta/zta/ivd;

    invoke-direct {p0, v0}, Lyou/zta/sis/zta/zta/zta/ivd;-><init>([I)V

    return-object p0
.end method

.method public isZero()Z
    .locals 1

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/ivd;->x:[I

    const/16 v0, 0x11

    invoke-static {v0, p0}, Lyou/zta/sis/sis/kth;->dma(I[I)Z

    move-result p0

    return p0
.end method

.method public jk()Z
    .locals 1

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/ivd;->x:[I

    const/16 v0, 0x11

    invoke-static {v0, p0}, Lyou/zta/sis/sis/kth;->gck(I[I)Z

    move-result p0

    return p0
.end method

.method public kk()Lyou/zta/sis/zta/cno;
    .locals 4

    iget-object v0, p0, Lyou/zta/sis/zta/zta/zta/ivd;->x:[I

    const/16 v1, 0x11

    invoke-static {v1, v0}, Lyou/zta/sis/sis/kth;->dma(I[I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1, v0}, Lyou/zta/sis/sis/kth;->gck(I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v1}, Lyou/zta/sis/sis/kth;->create(I)[I

    move-result-object p0

    invoke-static {v1}, Lyou/zta/sis/sis/kth;->create(I)[I

    move-result-object v2

    const/16 v3, 0x207

    invoke-static {v0, v3, p0}, Lyou/zta/sis/zta/zta/zta/qeg;->zta([II[I)V

    invoke-static {p0, v2}, Lyou/zta/sis/zta/zta/zta/qeg;->igw([I[I)V

    invoke-static {v1, v0, v2}, Lyou/zta/sis/sis/kth;->rtg(I[I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lyou/zta/sis/zta/zta/zta/ivd;

    invoke-direct {v0, p0}, Lyou/zta/sis/zta/zta/zta/ivd;-><init>([I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public lk()Z
    .locals 2

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/ivd;->x:[I

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lyou/zta/sis/sis/kth;->zta([II)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public negate()Lyou/zta/sis/zta/cno;
    .locals 1

    const/16 v0, 0x11

    invoke-static {v0}, Lyou/zta/sis/sis/kth;->create(I)[I

    move-result-object v0

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/ivd;->x:[I

    invoke-static {p0, v0}, Lyou/zta/sis/zta/zta/zta/qeg;->kth([I[I)V

    new-instance p0, Lyou/zta/sis/zta/zta/zta/ivd;

    invoke-direct {p0, v0}, Lyou/zta/sis/zta/zta/zta/ivd;-><init>([I)V

    return-object p0
.end method

.method public rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;
    .locals 1

    const/16 v0, 0x11

    invoke-static {v0}, Lyou/zta/sis/sis/kth;->create(I)[I

    move-result-object v0

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/ivd;->x:[I

    check-cast p1, Lyou/zta/sis/zta/zta/zta/ivd;

    iget-object p1, p1, Lyou/zta/sis/zta/zta/zta/ivd;->x:[I

    invoke-static {p0, p1, v0}, Lyou/zta/sis/zta/zta/zta/qeg;->tsu([I[I[I)V

    new-instance p0, Lyou/zta/sis/zta/zta/zta/ivd;

    invoke-direct {p0, v0}, Lyou/zta/sis/zta/zta/zta/ivd;-><init>([I)V

    return-object p0
.end method

.method public sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;
    .locals 1

    const/16 v0, 0x11

    invoke-static {v0}, Lyou/zta/sis/sis/kth;->create(I)[I

    move-result-object v0

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/ivd;->x:[I

    check-cast p1, Lyou/zta/sis/zta/zta/zta/ivd;

    iget-object p1, p1, Lyou/zta/sis/zta/zta/zta/ivd;->x:[I

    invoke-static {p0, p1, v0}, Lyou/zta/sis/zta/zta/zta/qeg;->you([I[I[I)V

    new-instance p0, Lyou/zta/sis/zta/zta/zta/ivd;

    invoke-direct {p0, v0}, Lyou/zta/sis/zta/zta/zta/ivd;-><init>([I)V

    return-object p0
.end method

.method public square()Lyou/zta/sis/zta/cno;
    .locals 1

    const/16 v0, 0x11

    invoke-static {v0}, Lyou/zta/sis/sis/kth;->create(I)[I

    move-result-object v0

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/ivd;->x:[I

    invoke-static {p0, v0}, Lyou/zta/sis/zta/zta/zta/qeg;->igw([I[I)V

    new-instance p0, Lyou/zta/sis/zta/zta/zta/ivd;

    invoke-direct {p0, v0}, Lyou/zta/sis/zta/zta/zta/ivd;-><init>([I)V

    return-object p0
.end method

.method public ssp(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;
    .locals 1

    const/16 v0, 0x11

    invoke-static {v0}, Lyou/zta/sis/sis/kth;->create(I)[I

    move-result-object v0

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/ivd;->x:[I

    check-cast p1, Lyou/zta/sis/zta/zta/zta/ivd;

    iget-object p1, p1, Lyou/zta/sis/zta/zta/zta/ivd;->x:[I

    invoke-static {p0, p1, v0}, Lyou/zta/sis/zta/zta/zta/qeg;->ssp([I[I[I)V

    new-instance p0, Lyou/zta/sis/zta/zta/zta/ivd;

    invoke-direct {p0, v0}, Lyou/zta/sis/zta/zta/zta/ivd;-><init>([I)V

    return-object p0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 1

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/ivd;->x:[I

    const/16 v0, 0x11

    invoke-static {v0, p0}, Lyou/zta/sis/sis/kth;->ywr(I[I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public tsu(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;
    .locals 2

    const/16 v0, 0x11

    invoke-static {v0}, Lyou/zta/sis/sis/kth;->create(I)[I

    move-result-object v0

    sget-object v1, Lyou/zta/sis/zta/zta/zta/qeg;->P:[I

    check-cast p1, Lyou/zta/sis/zta/zta/zta/ivd;

    iget-object p1, p1, Lyou/zta/sis/zta/zta/zta/ivd;->x:[I

    invoke-static {v1, p1, v0}, Lyou/zta/sis/sis/you;->bio([I[I[I)V

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/ivd;->x:[I

    invoke-static {v0, p0, v0}, Lyou/zta/sis/zta/zta/zta/qeg;->tsu([I[I[I)V

    new-instance p0, Lyou/zta/sis/zta/zta/zta/ivd;

    invoke-direct {p0, v0}, Lyou/zta/sis/zta/zta/zta/ivd;-><init>([I)V

    return-object p0
.end method
