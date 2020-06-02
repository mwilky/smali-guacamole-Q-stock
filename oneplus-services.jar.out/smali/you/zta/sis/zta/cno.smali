.class public abstract Lyou/zta/sis/zta/cno;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lyou/zta/sis/zta/sis;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyou/zta/sis/zta/cno$sis;,
        Lyou/zta/sis/zta/cno$zta;,
        Lyou/zta/sis/zta/cno$tsu;,
        Lyou/zta/sis/zta/cno$you;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bitLength()I
    .locals 0

    invoke-virtual {p0}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method

.method public getEncoded()[B
    .locals 1

    invoke-virtual {p0}, Lyou/zta/sis/zta/cno;->getFieldSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/bouncycastle/util/you;->rtg(ILjava/math/BigInteger;)[B

    move-result-object p0

    return-object p0
.end method

.method public abstract getFieldSize()I
.end method

.method public abstract gk()Lyou/zta/sis/zta/cno;
.end method

.method public abstract hk()Ljava/lang/String;
.end method

.method public ik()Z
    .locals 1

    invoke-virtual {p0}, Lyou/zta/sis/zta/cno;->bitLength()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract invert()Lyou/zta/sis/zta/cno;
.end method

.method public isZero()Z
    .locals 0

    invoke-virtual {p0}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract jk()Lyou/zta/sis/zta/cno;
.end method

.method public kk()Z
    .locals 1

    invoke-virtual {p0}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result p0

    return p0
.end method

.method public abstract negate()Lyou/zta/sis/zta/cno;
.end method

.method public ra(I)Lyou/zta/sis/zta/cno;
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-virtual {p0}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public abstract rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;
.end method

.method public abstract sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;
.end method

.method public abstract square()Lyou/zta/sis/zta/cno;
.end method

.method public abstract ssp(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;
.end method

.method public abstract toBigInteger()Ljava/math/BigInteger;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract tsu(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;
.end method

.method public you(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;
    .locals 0

    invoke-virtual {p0}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object p0

    invoke-virtual {p1, p2}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object p0

    return-object p0
.end method

.method public you(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;
    .locals 0

    invoke-virtual {p0, p1}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object p0

    invoke-virtual {p2, p3}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object p0

    return-object p0
.end method

.method public zta(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;
    .locals 0

    invoke-virtual {p0}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object p0

    invoke-virtual {p1, p2}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyou/zta/sis/zta/cno;->ssp(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object p0

    return-object p0
.end method

.method public zta(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;
    .locals 0

    invoke-virtual {p0, p1}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object p0

    invoke-virtual {p2, p3}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyou/zta/sis/zta/cno;->ssp(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object p0

    return-object p0
.end method
