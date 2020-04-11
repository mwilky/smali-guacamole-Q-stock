.class public Lorg/bouncycastle/asn1/ibl/qeg;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public you(Lyou/zta/sis/zta/rtg;)I
    .locals 0

    invoke-virtual {p1}, Lyou/zta/sis/zta/rtg;->getFieldSize()I

    move-result p0

    add-int/lit8 p0, p0, 0x7

    div-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public zta(Lyou/zta/sis/zta/cno;)I
    .locals 0

    invoke-virtual {p1}, Lyou/zta/sis/zta/cno;->getFieldSize()I

    move-result p0

    add-int/lit8 p0, p0, 0x7

    div-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public zta(Ljava/math/BigInteger;I)[B
    .locals 2

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    array-length p1, p0

    const/4 v0, 0x0

    if-ge p2, p1, :cond_0

    new-array p1, p2, [B

    array-length p2, p0

    array-length v1, p1

    sub-int/2addr p2, v1

    array-length v1, p1

    invoke-static {p0, p2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_0
    array-length p1, p0

    if-le p2, p1, :cond_1

    new-array p1, p2, [B

    array-length p2, p1

    array-length v1, p0

    sub-int/2addr p2, v1

    array-length v1, p0

    invoke-static {p0, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_1
    return-object p0
.end method
