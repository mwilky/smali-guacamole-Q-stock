.class Lyou/zta/sis/you/kth;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lyou/zta/sis/you/you;


# instance fields
.field protected final SEa:Ljava/math/BigInteger;


# direct methods
.method constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyou/zta/sis/you/kth;->SEa:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lyou/zta/sis/you/kth;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lyou/zta/sis/you/kth;

    iget-object p0, p0, Lyou/zta/sis/you/kth;->SEa:Ljava/math/BigInteger;

    iget-object p1, p1, Lyou/zta/sis/you/kth;->SEa:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getCharacteristic()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/you/kth;->SEa:Ljava/math/BigInteger;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/you/kth;->SEa:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->hashCode()I

    move-result p0

    return p0
.end method

.method public vdw()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
