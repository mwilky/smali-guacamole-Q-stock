.class public Lyou/zta/sis/zta/bvj;
.super Lyou/zta/sis/zta/zta;
.source ""


# instance fields
.field protected final UDa:Lyou/zta/sis/zta/you/you;

.field protected final curve:Lyou/zta/sis/zta/rtg;


# direct methods
.method public constructor <init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/you/you;)V
    .locals 1

    invoke-direct {p0}, Lyou/zta/sis/zta/zta;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lyou/zta/sis/zta/rtg;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lyou/zta/sis/zta/bvj;->curve:Lyou/zta/sis/zta/rtg;

    iput-object p2, p0, Lyou/zta/sis/zta/bvj;->UDa:Lyou/zta/sis/zta/you/you;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Need curve with known group order"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected you(Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;)Lyou/zta/sis/zta/wtn;
    .locals 2

    iget-object v0, p0, Lyou/zta/sis/zta/bvj;->curve:Lyou/zta/sis/zta/rtg;

    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lyou/zta/sis/zta/rtg;->rtg(Lyou/zta/sis/zta/rtg;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v0

    invoke-virtual {v0}, Lyou/zta/sis/zta/rtg;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lyou/zta/sis/zta/bvj;->UDa:Lyou/zta/sis/zta/you/you;

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-interface {v1, p2}, Lyou/zta/sis/zta/you/you;->zta(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object p2

    const/4 v0, 0x0

    aget-object v0, p2, v0

    const/4 v1, 0x1

    aget-object p2, p2, v1

    iget-object v1, p0, Lyou/zta/sis/zta/bvj;->UDa:Lyou/zta/sis/zta/you/you;

    invoke-interface {v1}, Lyou/zta/sis/zta/you/zta;->c()Lyou/zta/sis/zta/gck;

    move-result-object v1

    iget-object p0, p0, Lyou/zta/sis/zta/bvj;->UDa:Lyou/zta/sis/zta/you/you;

    invoke-interface {p0}, Lyou/zta/sis/zta/you/zta;->qeg()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1, v0, v1, p2}, Lyou/zta/sis/zta/you;->zta(Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Lyou/zta/sis/zta/gck;Ljava/math/BigInteger;)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {v1, p1}, Lyou/zta/sis/zta/gck;->zta(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    invoke-static {p1, v0, p0, p2}, Lyou/zta/sis/zta/you;->you(Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
