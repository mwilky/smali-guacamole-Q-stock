.class public Lorg/bouncycastle/crypto/you/oif;
.super Lorg/bouncycastle/crypto/you/cno;
.source ""


# static fields
.field private static final aAa:I = 0x40


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/you/cno;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/you/oif;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/you/cno;-><init>(Lorg/bouncycastle/crypto/you/cno;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/you/cno;-><init>()V

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/you/cno;->ywr([B)V

    return-void
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/bio;
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/you/oif;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/you/oif;-><init>(Lorg/bouncycastle/crypto/you/oif;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/you/cno;->finish()V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/you/cno;->Yza:J

    invoke-static {v0, v1, p1, p2}, Lorg/bouncycastle/util/igw;->zta(J[BI)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/you/cno;->H2:J

    add-int/lit8 v2, p2, 0x8

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/util/igw;->zta(J[BI)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/you/cno;->H3:J

    add-int/lit8 v2, p2, 0x10

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/util/igw;->zta(J[BI)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/you/cno;->Zza:J

    add-int/lit8 v2, p2, 0x18

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/util/igw;->zta(J[BI)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/you/cno;->rAa:J

    add-int/lit8 v2, p2, 0x20

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/util/igw;->zta(J[BI)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/you/cno;->wAa:J

    add-int/lit8 v2, p2, 0x28

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/util/igw;->zta(J[BI)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/you/cno;->xAa:J

    add-int/lit8 v2, p2, 0x30

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/util/igw;->zta(J[BI)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/you/cno;->yAa:J

    add-int/lit8 p2, p2, 0x38

    invoke-static {v0, v1, p1, p2}, Lorg/bouncycastle/util/igw;->zta(J[BI)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/you/oif;->reset()V

    const/16 p0, 0x40

    return p0
.end method

.method public ire()[B
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/you/cno;->jj()I

    move-result v0

    new-array v0, v0, [B

    invoke-super {p0, v0}, Lorg/bouncycastle/crypto/you/cno;->dma([B)V

    return-object v0
.end method

.method public les()I
    .locals 0

    const/16 p0, 0x40

    return p0
.end method

.method public reset()V
    .locals 2

    invoke-super {p0}, Lorg/bouncycastle/crypto/you/cno;->reset()V

    const-wide v0, 0x6a09e667f3bcc908L    # 6.344059688352415E202

    iput-wide v0, p0, Lorg/bouncycastle/crypto/you/cno;->Yza:J

    const-wide v0, -0x4498517a7b3558c5L    # -1.5671250923562117E-22

    iput-wide v0, p0, Lorg/bouncycastle/crypto/you/cno;->H2:J

    const-wide v0, 0x3c6ef372fe94f82bL    # 1.342284505169847E-17

    iput-wide v0, p0, Lorg/bouncycastle/crypto/you/cno;->H3:J

    const-wide v0, -0x5ab00ac5a0e2c90fL

    iput-wide v0, p0, Lorg/bouncycastle/crypto/you/cno;->Zza:J

    const-wide v0, 0x510e527fade682d1L    # 2.876275032471325E82

    iput-wide v0, p0, Lorg/bouncycastle/crypto/you/cno;->rAa:J

    const-wide v0, -0x64fa9773d4c193e1L

    iput-wide v0, p0, Lorg/bouncycastle/crypto/you/cno;->wAa:J

    const-wide v0, 0x1f83d9abfb41bd6bL    # 7.229011495228878E-157

    iput-wide v0, p0, Lorg/bouncycastle/crypto/you/cno;->xAa:J

    const-wide v0, 0x5be0cd19137e2179L    # 3.816167663240759E134

    iput-wide v0, p0, Lorg/bouncycastle/crypto/you/cno;->yAa:J

    return-void
.end method

.method public vju()Ljava/lang/String;
    .locals 0

    const-string p0, "SHA-512"

    return-object p0
.end method

.method public zta(Lorg/bouncycastle/util/bio;)V
    .locals 0

    check-cast p1, Lorg/bouncycastle/crypto/you/oif;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/you/cno;->zta(Lorg/bouncycastle/crypto/you/cno;)V

    return-void
.end method
