.class public abstract Lyou/zta/sis/zta/rtg$you;
.super Lyou/zta/sis/zta/rtg;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyou/zta/sis/zta/rtg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "you"
.end annotation


# direct methods
.method protected constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    invoke-static {p1}, Lyou/zta/sis/you/sis;->oxb(Ljava/math/BigInteger;)Lyou/zta/sis/you/you;

    move-result-object p1

    invoke-direct {p0, p1}, Lyou/zta/sis/zta/rtg;-><init>(Lyou/zta/sis/you/you;)V

    return-void
.end method


# virtual methods
.method public ywr(Ljava/math/BigInteger;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg;->getField()Lyou/zta/sis/you/you;

    move-result-object p0

    invoke-interface {p0}, Lyou/zta/sis/you/you;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected zta(ILjava/math/BigInteger;)Lyou/zta/sis/zta/wtn;
    .locals 3

    invoke-virtual {p0, p2}, Lyou/zta/sis/zta/rtg;->dma(Ljava/math/BigInteger;)Lyou/zta/sis/zta/cno;

    move-result-object p2

    invoke-virtual {p2}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object v0

    iget-object v1, p0, Lyou/zta/sis/zta/rtg;->a:Lyou/zta/sis/zta/cno;

    invoke-virtual {v0, v1}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v0

    invoke-virtual {v0, p2}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v0

    iget-object v1, p0, Lyou/zta/sis/zta/rtg;->b:Lyou/zta/sis/zta/cno;

    invoke-virtual {v0, v1}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v0

    invoke-virtual {v0}, Lyou/zta/sis/zta/cno;->ik()Lyou/zta/sis/zta/cno;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lyou/zta/sis/zta/cno;->jk()Z

    move-result v1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eq v1, p1, :cond_1

    invoke-virtual {v0}, Lyou/zta/sis/zta/cno;->negate()Lyou/zta/sis/zta/cno;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, p2, v0, v2}, Lyou/zta/sis/zta/rtg;->zta(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Z)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid point compression"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
