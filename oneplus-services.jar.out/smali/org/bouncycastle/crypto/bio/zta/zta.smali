.class public Lorg/bouncycastle/crypto/bio/zta/zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/bio/zta/you;


# instance fields
.field private x:[J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init([B)V
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/crypto/bio/zta/tsu;->oif([B)[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/bio/zta/zta;->x:[J

    return-void
.end method

.method public zta(J[B)V
    .locals 5

    invoke-static {}, Lorg/bouncycastle/crypto/bio/zta/tsu;->gj()[J

    move-result-object v0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_2

    iget-object p0, p0, Lorg/bouncycastle/crypto/bio/zta/zta;->x:[J

    invoke-static {p0}, Lorg/bouncycastle/util/zta;->bio([J)[J

    move-result-object p0

    :cond_0
    const-wide/16 v3, 0x1

    and-long/2addr v3, p1

    cmp-long v3, v3, v1

    if-eqz v3, :cond_1

    invoke-static {v0, p0}, Lorg/bouncycastle/crypto/bio/zta/tsu;->sis([J[J)V

    :cond_1
    invoke-static {p0, p0}, Lorg/bouncycastle/crypto/bio/zta/tsu;->bio([J[J)V

    const/4 v3, 0x1

    ushr-long/2addr p1, v3

    cmp-long v3, p1, v1

    if-gtz v3, :cond_0

    :cond_2
    invoke-static {v0, p3}, Lorg/bouncycastle/crypto/bio/zta/tsu;->zta([J[B)V

    return-void
.end method
