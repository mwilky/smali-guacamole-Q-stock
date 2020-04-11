.class public Lyou/zta/you/you/rtg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private Yta:[B

.field private curve:Lyou/zta/sis/zta/rtg;

.field private h:Ljava/math/BigInteger;

.field private jAa:Lyou/zta/sis/zta/wtn;

.field private n:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyou/zta/you/you/rtg;->curve:Lyou/zta/sis/zta/rtg;

    invoke-virtual {p2}, Lyou/zta/sis/zta/wtn;->normalize()Lyou/zta/sis/zta/wtn;

    move-result-object p1

    iput-object p1, p0, Lyou/zta/you/you/rtg;->jAa:Lyou/zta/sis/zta/wtn;

    iput-object p3, p0, Lyou/zta/you/you/rtg;->n:Ljava/math/BigInteger;

    const-wide/16 p1, 0x1

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lyou/zta/you/you/rtg;->h:Ljava/math/BigInteger;

    const/4 p1, 0x0

    iput-object p1, p0, Lyou/zta/you/you/rtg;->Yta:[B

    return-void
.end method

.method public constructor <init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyou/zta/you/you/rtg;->curve:Lyou/zta/sis/zta/rtg;

    invoke-virtual {p2}, Lyou/zta/sis/zta/wtn;->normalize()Lyou/zta/sis/zta/wtn;

    move-result-object p1

    iput-object p1, p0, Lyou/zta/you/you/rtg;->jAa:Lyou/zta/sis/zta/wtn;

    iput-object p3, p0, Lyou/zta/you/you/rtg;->n:Ljava/math/BigInteger;

    iput-object p4, p0, Lyou/zta/you/you/rtg;->h:Ljava/math/BigInteger;

    const/4 p1, 0x0

    iput-object p1, p0, Lyou/zta/you/you/rtg;->Yta:[B

    return-void
.end method

.method public constructor <init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyou/zta/you/you/rtg;->curve:Lyou/zta/sis/zta/rtg;

    invoke-virtual {p2}, Lyou/zta/sis/zta/wtn;->normalize()Lyou/zta/sis/zta/wtn;

    move-result-object p1

    iput-object p1, p0, Lyou/zta/you/you/rtg;->jAa:Lyou/zta/sis/zta/wtn;

    iput-object p3, p0, Lyou/zta/you/you/rtg;->n:Ljava/math/BigInteger;

    iput-object p4, p0, Lyou/zta/you/you/rtg;->h:Ljava/math/BigInteger;

    iput-object p5, p0, Lyou/zta/you/you/rtg;->Yta:[B

    return-void
.end method


# virtual methods
.method public Di()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lyou/zta/you/you/rtg;->h:Ljava/math/BigInteger;

    return-object p0
.end method

.method public Ei()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lyou/zta/you/you/rtg;->n:Ljava/math/BigInteger;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lyou/zta/you/you/rtg;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lyou/zta/you/you/rtg;

    invoke-virtual {p0}, Lyou/zta/you/you/rtg;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v0

    invoke-virtual {p1}, Lyou/zta/you/you/rtg;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v2

    invoke-virtual {v0, v2}, Lyou/zta/sis/zta/rtg;->rtg(Lyou/zta/sis/zta/rtg;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lyou/zta/you/you/rtg;->getG()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    invoke-virtual {p1}, Lyou/zta/you/you/rtg;->getG()Lyou/zta/sis/zta/wtn;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyou/zta/sis/zta/wtn;->bio(Lyou/zta/sis/zta/wtn;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getCurve()Lyou/zta/sis/zta/rtg;
    .locals 0

    iget-object p0, p0, Lyou/zta/you/you/rtg;->curve:Lyou/zta/sis/zta/rtg;

    return-object p0
.end method

.method public getG()Lyou/zta/sis/zta/wtn;
    .locals 0

    iget-object p0, p0, Lyou/zta/you/you/rtg;->jAa:Lyou/zta/sis/zta/wtn;

    return-object p0
.end method

.method public getSeed()[B
    .locals 0

    iget-object p0, p0, Lyou/zta/you/you/rtg;->Yta:[B

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lyou/zta/you/you/rtg;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v0

    invoke-virtual {v0}, Lyou/zta/sis/zta/rtg;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lyou/zta/you/you/rtg;->getG()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
