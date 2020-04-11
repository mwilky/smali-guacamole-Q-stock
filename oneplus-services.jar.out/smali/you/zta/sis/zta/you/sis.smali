.class public Lyou/zta/sis/zta/you/sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lyou/zta/sis/zta/you/you;


# instance fields
.field protected final CFa:Lyou/zta/sis/zta/gck;

.field protected final curve:Lyou/zta/sis/zta/rtg;

.field protected final parameters:Lyou/zta/sis/zta/you/tsu;


# direct methods
.method public constructor <init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/you/tsu;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyou/zta/sis/zta/you/sis;->curve:Lyou/zta/sis/zta/rtg;

    iput-object p2, p0, Lyou/zta/sis/zta/you/sis;->parameters:Lyou/zta/sis/zta/you/tsu;

    new-instance v0, Lyou/zta/sis/zta/vdb;

    invoke-virtual {p2}, Lyou/zta/sis/zta/you/tsu;->Pk()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Lyou/zta/sis/zta/rtg;->dma(Ljava/math/BigInteger;)Lyou/zta/sis/zta/cno;

    move-result-object p1

    invoke-direct {v0, p1}, Lyou/zta/sis/zta/vdb;-><init>(Lyou/zta/sis/zta/cno;)V

    iput-object v0, p0, Lyou/zta/sis/zta/you/sis;->CFa:Lyou/zta/sis/zta/gck;

    return-void
.end method


# virtual methods
.method public c()Lyou/zta/sis/zta/gck;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/you/sis;->CFa:Lyou/zta/sis/zta/gck;

    return-object p0
.end method

.method public qeg()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected zta(Ljava/math/BigInteger;Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .locals 0

    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    add-int/lit8 p2, p3, -0x1

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result p2

    invoke-virtual {p1, p3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    if-eqz p2, :cond_1

    sget-object p2, Lyou/zta/sis/zta/sis;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public zta(Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 4

    iget-object v0, p0, Lyou/zta/sis/zta/you/sis;->parameters:Lyou/zta/sis/zta/you/tsu;

    invoke-virtual {v0}, Lyou/zta/sis/zta/you/tsu;->Qk()I

    move-result v0

    iget-object v1, p0, Lyou/zta/sis/zta/you/sis;->parameters:Lyou/zta/sis/zta/you/tsu;

    invoke-virtual {v1}, Lyou/zta/sis/zta/you/tsu;->Rk()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Lyou/zta/sis/zta/you/sis;->zta(Ljava/math/BigInteger;Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lyou/zta/sis/zta/you/sis;->parameters:Lyou/zta/sis/zta/you/tsu;

    invoke-virtual {v2}, Lyou/zta/sis/zta/you/tsu;->Sk()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, p1, v2, v0}, Lyou/zta/sis/zta/you/sis;->zta(Ljava/math/BigInteger;Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v0

    iget-object p0, p0, Lyou/zta/sis/zta/you/sis;->parameters:Lyou/zta/sis/zta/you/tsu;

    invoke-virtual {p0}, Lyou/zta/sis/zta/you/tsu;->Vk()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lyou/zta/sis/zta/you/tsu;->Yk()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0}, Lyou/zta/sis/zta/you/tsu;->Wk()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lyou/zta/sis/zta/you/tsu;->Zk()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/math/BigInteger;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    return-object v0
.end method
