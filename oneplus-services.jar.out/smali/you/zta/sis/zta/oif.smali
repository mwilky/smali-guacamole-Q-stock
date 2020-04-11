.class public Lyou/zta/sis/zta/oif;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final VDa:Ljava/lang/String; = "bc_fixed_point"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cno(Lyou/zta/sis/zta/rtg;)I
    .locals 1

    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg;->getFieldSize()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static dma(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/ywr;
    .locals 3

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v0

    new-instance v1, Lyou/zta/sis/zta/qbh;

    invoke-direct {v1, v0, p0}, Lyou/zta/sis/zta/qbh;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;)V

    const-string v2, "bc_fixed_point"

    invoke-virtual {v0, p0, v2, v1}, Lyou/zta/sis/zta/rtg;->zta(Lyou/zta/sis/zta/wtn;Ljava/lang/String;Lyou/zta/sis/zta/gwm;)Lyou/zta/sis/zta/ugm;

    move-result-object p0

    check-cast p0, Lyou/zta/sis/zta/ywr;

    return-object p0
.end method

.method public static you(Lyou/zta/sis/zta/ugm;)Lyou/zta/sis/zta/ywr;
    .locals 1

    instance-of v0, p0, Lyou/zta/sis/zta/ywr;

    if-eqz v0, :cond_0

    check-cast p0, Lyou/zta/sis/zta/ywr;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
