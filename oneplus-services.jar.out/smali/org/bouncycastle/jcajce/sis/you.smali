.class public Lorg/bouncycastle/jcajce/sis/you;
.super Ljavax/crypto/spec/DHParameterSpec;
.source ""


# instance fields
.field private final koa:Ljava/math/BigInteger;

.field private final loa:I

.field private moa:Lorg/bouncycastle/crypto/wtn/igw;

.field private final q:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/jcajce/sis/you;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/jcajce/sis/you;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/jcajce/sis/you;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;II)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;II)V
    .locals 0

    invoke-direct {p0, p1, p3, p6}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    iput-object p2, p0, Lorg/bouncycastle/jcajce/sis/you;->q:Ljava/math/BigInteger;

    iput-object p4, p0, Lorg/bouncycastle/jcajce/sis/you;->koa:Ljava/math/BigInteger;

    iput p5, p0, Lorg/bouncycastle/jcajce/sis/you;->loa:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/wtn/cno;)V
    .locals 7

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/cno;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/cno;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/cno;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/cno;->ig()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/cno;->getM()I

    move-result v5

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/cno;->getL()I

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/jcajce/sis/you;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;II)V

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/cno;->ij()Lorg/bouncycastle/crypto/wtn/igw;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/sis/you;->moa:Lorg/bouncycastle/crypto/wtn/igw;

    return-void
.end method


# virtual methods
.method public getM()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/jcajce/sis/you;->loa:I

    return p0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/sis/you;->q:Ljava/math/BigInteger;

    return-object p0
.end method

.method public hg()Lorg/bouncycastle/crypto/wtn/cno;
    .locals 9

    new-instance v8, Lorg/bouncycastle/crypto/wtn/cno;

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/jcajce/sis/you;->q:Ljava/math/BigInteger;

    iget v4, p0, Lorg/bouncycastle/jcajce/sis/you;->loa:I

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v5

    iget-object v6, p0, Lorg/bouncycastle/jcajce/sis/you;->koa:Ljava/math/BigInteger;

    iget-object v7, p0, Lorg/bouncycastle/jcajce/sis/you;->moa:Lorg/bouncycastle/crypto/wtn/igw;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/crypto/wtn/cno;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Lorg/bouncycastle/crypto/wtn/igw;)V

    return-object v8
.end method

.method public ig()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/sis/you;->koa:Ljava/math/BigInteger;

    return-object p0
.end method
