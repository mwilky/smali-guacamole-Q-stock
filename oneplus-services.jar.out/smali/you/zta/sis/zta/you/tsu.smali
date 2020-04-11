.class public Lyou/zta/sis/zta/you/tsu;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected final FEa:Ljava/math/BigInteger;

.field protected final GEa:Ljava/math/BigInteger;

.field protected final HEa:Ljava/math/BigInteger;

.field protected final IEa:Ljava/math/BigInteger;

.field protected final JEa:Ljava/math/BigInteger;

.field protected final KEa:Ljava/math/BigInteger;

.field protected final LEa:Ljava/math/BigInteger;

.field protected final MEa:Ljava/math/BigInteger;

.field protected final pAa:I


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "v1"

    invoke-static {p3, v0}, Lyou/zta/sis/zta/you/tsu;->zta([Ljava/math/BigInteger;Ljava/lang/String;)V

    const-string v0, "v2"

    invoke-static {p4, v0}, Lyou/zta/sis/zta/you/tsu;->zta([Ljava/math/BigInteger;Ljava/lang/String;)V

    iput-object p1, p0, Lyou/zta/sis/zta/you/tsu;->FEa:Ljava/math/BigInteger;

    iput-object p2, p0, Lyou/zta/sis/zta/you/tsu;->GEa:Ljava/math/BigInteger;

    const/4 p1, 0x0

    aget-object p2, p3, p1

    iput-object p2, p0, Lyou/zta/sis/zta/you/tsu;->HEa:Ljava/math/BigInteger;

    const/4 p2, 0x1

    aget-object p3, p3, p2

    iput-object p3, p0, Lyou/zta/sis/zta/you/tsu;->IEa:Ljava/math/BigInteger;

    aget-object p1, p4, p1

    iput-object p1, p0, Lyou/zta/sis/zta/you/tsu;->JEa:Ljava/math/BigInteger;

    aget-object p1, p4, p2

    iput-object p1, p0, Lyou/zta/sis/zta/you/tsu;->KEa:Ljava/math/BigInteger;

    iput-object p5, p0, Lyou/zta/sis/zta/you/tsu;->LEa:Ljava/math/BigInteger;

    iput-object p6, p0, Lyou/zta/sis/zta/you/tsu;->MEa:Ljava/math/BigInteger;

    iput p7, p0, Lyou/zta/sis/zta/you/tsu;->pAa:I

    return-void
.end method

.method private static zta([Ljava/math/BigInteger;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' must consist of exactly 2 (non-null) values"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public Lk()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/you/tsu;->FEa:Ljava/math/BigInteger;

    return-object p0
.end method

.method public Mk()I
    .locals 0

    iget p0, p0, Lyou/zta/sis/zta/you/tsu;->pAa:I

    return p0
.end method

.method public Nk()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/you/tsu;->LEa:Ljava/math/BigInteger;

    return-object p0
.end method

.method public Ok()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/you/tsu;->MEa:Ljava/math/BigInteger;

    return-object p0
.end method

.method public Pk()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/you/tsu;->GEa:Ljava/math/BigInteger;

    return-object p0
.end method

.method public Qk()[Ljava/math/BigInteger;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/math/BigInteger;

    iget-object v1, p0, Lyou/zta/sis/zta/you/tsu;->HEa:Ljava/math/BigInteger;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lyou/zta/sis/zta/you/tsu;->IEa:Ljava/math/BigInteger;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    return-object v0
.end method

.method public Rk()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/you/tsu;->HEa:Ljava/math/BigInteger;

    return-object p0
.end method

.method public Sk()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/you/tsu;->IEa:Ljava/math/BigInteger;

    return-object p0
.end method

.method public Tk()[Ljava/math/BigInteger;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/math/BigInteger;

    iget-object v1, p0, Lyou/zta/sis/zta/you/tsu;->JEa:Ljava/math/BigInteger;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lyou/zta/sis/zta/you/tsu;->KEa:Ljava/math/BigInteger;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    return-object v0
.end method

.method public Uk()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/you/tsu;->JEa:Ljava/math/BigInteger;

    return-object p0
.end method

.method public Vk()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/you/tsu;->KEa:Ljava/math/BigInteger;

    return-object p0
.end method
