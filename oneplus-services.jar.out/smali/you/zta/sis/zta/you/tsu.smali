.class public Lyou/zta/sis/zta/you/tsu;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected final BDa:I

.field protected final RHa:Ljava/math/BigInteger;

.field protected final SHa:Ljava/math/BigInteger;

.field protected final THa:Ljava/math/BigInteger;

.field protected final UHa:Ljava/math/BigInteger;

.field protected final VHa:Ljava/math/BigInteger;

.field protected final WHa:Ljava/math/BigInteger;

.field protected final XHa:Ljava/math/BigInteger;

.field protected final YHa:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "v1"

    invoke-static {p3, v0}, Lyou/zta/sis/zta/you/tsu;->zta([Ljava/math/BigInteger;Ljava/lang/String;)V

    const-string v0, "v2"

    invoke-static {p4, v0}, Lyou/zta/sis/zta/you/tsu;->zta([Ljava/math/BigInteger;Ljava/lang/String;)V

    iput-object p1, p0, Lyou/zta/sis/zta/you/tsu;->RHa:Ljava/math/BigInteger;

    iput-object p2, p0, Lyou/zta/sis/zta/you/tsu;->SHa:Ljava/math/BigInteger;

    const/4 p1, 0x0

    aget-object p2, p3, p1

    iput-object p2, p0, Lyou/zta/sis/zta/you/tsu;->THa:Ljava/math/BigInteger;

    const/4 p2, 0x1

    aget-object p3, p3, p2

    iput-object p3, p0, Lyou/zta/sis/zta/you/tsu;->UHa:Ljava/math/BigInteger;

    aget-object p1, p4, p1

    iput-object p1, p0, Lyou/zta/sis/zta/you/tsu;->VHa:Ljava/math/BigInteger;

    aget-object p1, p4, p2

    iput-object p1, p0, Lyou/zta/sis/zta/you/tsu;->WHa:Ljava/math/BigInteger;

    iput-object p5, p0, Lyou/zta/sis/zta/you/tsu;->XHa:Ljava/math/BigInteger;

    iput-object p6, p0, Lyou/zta/sis/zta/you/tsu;->YHa:Ljava/math/BigInteger;

    iput p7, p0, Lyou/zta/sis/zta/you/tsu;->BDa:I

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
.method public Xk()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/you/tsu;->RHa:Ljava/math/BigInteger;

    return-object p0
.end method

.method public Yk()I
    .locals 0

    iget p0, p0, Lyou/zta/sis/zta/you/tsu;->BDa:I

    return p0
.end method

.method public Zk()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/you/tsu;->XHa:Ljava/math/BigInteger;

    return-object p0
.end method

.method public _k()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/you/tsu;->YHa:Ljava/math/BigInteger;

    return-object p0
.end method

.method public al()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/you/tsu;->SHa:Ljava/math/BigInteger;

    return-object p0
.end method

.method public bl()[Ljava/math/BigInteger;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/math/BigInteger;

    iget-object v1, p0, Lyou/zta/sis/zta/you/tsu;->THa:Ljava/math/BigInteger;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lyou/zta/sis/zta/you/tsu;->UHa:Ljava/math/BigInteger;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    return-object v0
.end method

.method public cl()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/you/tsu;->THa:Ljava/math/BigInteger;

    return-object p0
.end method

.method public dl()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/you/tsu;->UHa:Ljava/math/BigInteger;

    return-object p0
.end method

.method public el()[Ljava/math/BigInteger;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/math/BigInteger;

    iget-object v1, p0, Lyou/zta/sis/zta/you/tsu;->VHa:Ljava/math/BigInteger;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lyou/zta/sis/zta/you/tsu;->WHa:Ljava/math/BigInteger;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    return-object v0
.end method

.method public fl()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/you/tsu;->VHa:Ljava/math/BigInteger;

    return-object p0
.end method

.method public gl()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/you/tsu;->WHa:Ljava/math/BigInteger;

    return-object p0
.end method
