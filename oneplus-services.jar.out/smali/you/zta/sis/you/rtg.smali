.class Lyou/zta/sis/you/rtg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lyou/zta/sis/you/cno;


# instance fields
.field protected final QEa:Lyou/zta/sis/you/you;

.field protected final REa:Lyou/zta/sis/you/ssp;


# direct methods
.method constructor <init>(Lyou/zta/sis/you/you;Lyou/zta/sis/you/ssp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyou/zta/sis/you/rtg;->QEa:Lyou/zta/sis/you/you;

    iput-object p2, p0, Lyou/zta/sis/you/rtg;->REa:Lyou/zta/sis/you/ssp;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyou/zta/sis/you/rtg;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyou/zta/sis/you/rtg;

    iget-object v1, p0, Lyou/zta/sis/you/rtg;->QEa:Lyou/zta/sis/you/you;

    iget-object v3, p1, Lyou/zta/sis/you/rtg;->QEa:Lyou/zta/sis/you/you;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lyou/zta/sis/you/rtg;->REa:Lyou/zta/sis/you/ssp;

    iget-object p1, p1, Lyou/zta/sis/you/rtg;->REa:Lyou/zta/sis/you/ssp;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getCharacteristic()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/you/rtg;->QEa:Lyou/zta/sis/you/you;

    invoke-interface {p0}, Lyou/zta/sis/you/you;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public h()Lyou/zta/sis/you/you;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/you/rtg;->QEa:Lyou/zta/sis/you/you;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lyou/zta/sis/you/rtg;->QEa:Lyou/zta/sis/you/you;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object p0, p0, Lyou/zta/sis/you/rtg;->REa:Lyou/zta/sis/you/ssp;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    const/16 v1, 0x10

    invoke-static {p0, v1}, Lorg/bouncycastle/util/cno;->rotateLeft(II)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public j()Lyou/zta/sis/you/ssp;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/you/rtg;->REa:Lyou/zta/sis/you/ssp;

    return-object p0
.end method

.method public l()I
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/you/rtg;->REa:Lyou/zta/sis/you/ssp;

    invoke-interface {p0}, Lyou/zta/sis/you/ssp;->l()I

    move-result p0

    return p0
.end method

.method public vdw()I
    .locals 1

    iget-object v0, p0, Lyou/zta/sis/you/rtg;->QEa:Lyou/zta/sis/you/you;

    invoke-interface {v0}, Lyou/zta/sis/you/you;->vdw()I

    move-result v0

    iget-object p0, p0, Lyou/zta/sis/you/rtg;->REa:Lyou/zta/sis/you/ssp;

    invoke-interface {p0}, Lyou/zta/sis/you/ssp;->l()I

    move-result p0

    mul-int/2addr v0, p0

    return v0
.end method
