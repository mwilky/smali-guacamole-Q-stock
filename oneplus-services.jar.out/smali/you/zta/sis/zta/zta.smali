.class public abstract Lyou/zta/sis/zta/zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lyou/zta/sis/zta/bio;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected sis(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;
    .locals 0

    invoke-static {p1}, Lyou/zta/sis/zta/you;->tsu(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    return-object p1
.end method

.method protected abstract you(Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;)Lyou/zta/sis/zta/wtn;
.end method

.method public zta(Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;)Lyou/zta/sis/zta/wtn;
    .locals 2

    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->ok()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lyou/zta/sis/zta/zta;->you(Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;)Lyou/zta/sis/zta/wtn;

    move-result-object p1

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->negate()Lyou/zta/sis/zta/wtn;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lyou/zta/sis/zta/zta;->sis(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object p0

    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg;->getInfinity()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0
.end method
