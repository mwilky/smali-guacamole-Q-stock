.class Lorg/bouncycastle/jce/provider/bvj;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final kGa:Lorg/bouncycastle/jce/provider/bvj;


# instance fields
.field private jGa:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/jce/provider/bvj;

    const v1, 0x80ff

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/provider/bvj;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/jce/provider/bvj;->kGa:Lorg/bouncycastle/jce/provider/bvj;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/bvj;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/jce/provider/bvj;->jGa:I

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/asn1/x509/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/sis;->intValue()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/jce/provider/bvj;->jGa:I

    return-void
.end method


# virtual methods
.method Qj()Z
    .locals 1

    iget p0, p0, Lorg/bouncycastle/jce/provider/bvj;->jGa:I

    sget-object v0, Lorg/bouncycastle/jce/provider/bvj;->kGa:Lorg/bouncycastle/jce/provider/bvj;

    iget v0, v0, Lorg/bouncycastle/jce/provider/bvj;->jGa:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method di()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/jce/provider/bvj;->jGa:I

    return p0
.end method

.method sis(Lorg/bouncycastle/jce/provider/bvj;)Lorg/bouncycastle/jce/provider/bvj;
    .locals 2

    new-instance v0, Lorg/bouncycastle/jce/provider/bvj;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/bvj;-><init>()V

    new-instance v1, Lorg/bouncycastle/jce/provider/bvj;

    iget p0, p0, Lorg/bouncycastle/jce/provider/bvj;->jGa:I

    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/bvj;->di()I

    move-result p1

    and-int/2addr p0, p1

    invoke-direct {v1, p0}, Lorg/bouncycastle/jce/provider/bvj;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jce/provider/bvj;->zta(Lorg/bouncycastle/jce/provider/bvj;)V

    return-object v0
.end method

.method you(Lorg/bouncycastle/jce/provider/bvj;)Z
    .locals 1

    iget v0, p0, Lorg/bouncycastle/jce/provider/bvj;->jGa:I

    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/bvj;->di()I

    move-result p1

    iget p0, p0, Lorg/bouncycastle/jce/provider/bvj;->jGa:I

    xor-int/2addr p0, p1

    or-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method zta(Lorg/bouncycastle/jce/provider/bvj;)V
    .locals 1

    iget v0, p0, Lorg/bouncycastle/jce/provider/bvj;->jGa:I

    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/bvj;->di()I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/jce/provider/bvj;->jGa:I

    return-void
.end method
