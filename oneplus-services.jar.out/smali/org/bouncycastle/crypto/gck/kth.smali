.class public Lorg/bouncycastle/crypto/gck/kth;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/gck/zta;


# static fields
.field public static final INSTANCE:Lorg/bouncycastle/crypto/gck/kth;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/gck/kth;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/gck/kth;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/gck/kth;->INSTANCE:Lorg/bouncycastle/crypto/gck/kth;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected tsu(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 0

    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result p0

    if-ltz p0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gez p0, :cond_1

    :cond_0
    return-object p2

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Value out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected zta(Ljava/math/BigInteger;Lorg/bouncycastle/asn1/obl;I)Ljava/math/BigInteger;
    .locals 0

    invoke-virtual {p2, p3}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/gck/kth;->tsu(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method protected zta(Ljava/math/BigInteger;Lorg/bouncycastle/asn1/cno;Ljava/math/BigInteger;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {p0, p1, p3}, Lorg/bouncycastle/crypto/gck/kth;->tsu(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ywr;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p2, v0}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    return-void
.end method

.method public zta(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lorg/bouncycastle/crypto/gck/kth;->zta(Ljava/math/BigInteger;Lorg/bouncycastle/asn1/cno;Ljava/math/BigInteger;)V

    invoke-virtual {p0, p1, v0, p3}, Lorg/bouncycastle/crypto/gck/kth;->zta(Ljava/math/BigInteger;Lorg/bouncycastle/asn1/cno;Ljava/math/BigInteger;)V

    new-instance p0, Lorg/bouncycastle/asn1/G;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    const-string p1, "DER"

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/oif;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public zta(Ljava/math/BigInteger;[B)[Ljava/math/BigInteger;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lorg/bouncycastle/asn1/vdb;->fromByteArray([B)Lorg/bouncycastle/asn1/vdb;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/obl;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/bouncycastle/crypto/gck/kth;->zta(Ljava/math/BigInteger;Lorg/bouncycastle/asn1/obl;I)Ljava/math/BigInteger;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, p1, v0, v4}, Lorg/bouncycastle/crypto/gck/kth;->zta(Ljava/math/BigInteger;Lorg/bouncycastle/asn1/obl;I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, p1, v3, v0}, Lorg/bouncycastle/crypto/gck/kth;->zta(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object p0

    invoke-static {p0, p2}, Lorg/bouncycastle/util/zta;->sis([B[B)Z

    move-result p0

    if-eqz p0, :cond_0

    new-array p0, v2, [Ljava/math/BigInteger;

    aput-object v3, p0, v1

    aput-object v0, p0, v4

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Malformed signature"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
