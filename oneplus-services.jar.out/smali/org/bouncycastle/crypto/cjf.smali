.class public abstract Lorg/bouncycastle/crypto/cjf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/rtg;
.implements Lorg/bouncycastle/crypto/ear;


# instance fields
.field private final tma:Lorg/bouncycastle/crypto/rtg;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/crypto/rtg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/cjf;->tma:Lorg/bouncycastle/crypto/rtg;

    return-void
.end method


# virtual methods
.method public b()Lorg/bouncycastle/crypto/rtg;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/cjf;->tma:Lorg/bouncycastle/crypto/rtg;

    return-object p0
.end method

.method protected abstract sis(B)B
.end method

.method public final you(B)B
    .locals 0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/cjf;->sis(B)B

    move-result p0

    return p0
.end method

.method public zta([BII[BI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2

    add-int v1, p5, p3

    array-length v2, p4

    if-gt v1, v2, :cond_1

    :goto_0
    if-ge p2, v0, :cond_0

    add-int/lit8 v1, p5, 0x1

    add-int/lit8 v2, p2, 0x1

    aget-byte p2, p1, p2

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/cjf;->sis(B)B

    move-result p2

    aput-byte p2, p4, p5

    move p5, v1

    move p2, v2

    goto :goto_0

    :cond_0
    return p3

    :cond_1
    new-instance p0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p1, "output buffer too short"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p1, "input buffer too small"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
