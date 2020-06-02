.class public Lyou/zta/sis/zta/zta/zta/sis;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final DHa:[I

.field private static final EHa:[I

.field private static final FHa:I = -0x1

.field private static final GHa:I = -0x1

.field private static final HHa:I = 0x11c9

.field static final P:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lyou/zta/sis/zta/zta/zta/sis;->P:[I

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lyou/zta/sis/zta/zta/zta/sis;->DHa:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lyou/zta/sis/zta/zta/zta/sis;->EHa:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x11c9
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x13c4fd1
        0x2392
        0x1
        0x0
        0x0
        0x0
        -0x2392
        -0x3
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0x13c4fd1
        -0x2393
        -0x2
        -0x1
        -0x1
        -0x1
        0x2391
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bio([I[I)V
    .locals 7

    const/16 v0, 0x11c9

    const/4 v2, 0x6

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p0

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lyou/zta/sis/sis/sis;->zta(I[II[II[II)J

    move-result-wide v0

    const/16 p0, 0x11c9

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p1, v2}, Lyou/zta/sis/sis/sis;->zta(IJ[II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    aget v0, p1, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lyou/zta/sis/zta/zta/zta/sis;->P:[I

    invoke-static {p1, v0}, Lyou/zta/sis/sis/sis;->qbh([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lyou/zta/sis/sis/kth;->you(II[I)I

    :cond_1
    return-void
.end method

.method public static cno(I[I)V
    .locals 2

    const/16 v0, 0x11c9

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lyou/zta/sis/sis/sis;->zta(II[II)I

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x5

    aget p0, p1, p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_2

    sget-object p0, Lyou/zta/sis/zta/zta/zta/sis;->P:[I

    invoke-static {p1, p0}, Lyou/zta/sis/sis/sis;->qbh([I[I)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x6

    invoke-static {p0, v0, p1}, Lyou/zta/sis/sis/kth;->you(II[I)I

    :cond_2
    return-void
.end method

.method public static cno([I[I)V
    .locals 3

    const/4 v0, 0x0

    aget v1, p0, v0

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x6

    if-nez v1, :cond_0

    invoke-static {v2, p0, v0, p1}, Lyou/zta/sis/sis/kth;->zta(I[II[I)I

    goto :goto_0

    :cond_0
    sget-object v0, Lyou/zta/sis/zta/zta/zta/sis;->P:[I

    invoke-static {p0, v0, p1}, Lyou/zta/sis/sis/sis;->you([I[I[I)I

    move-result p0

    invoke-static {v2, p1, p0}, Lyou/zta/sis/sis/kth;->sis(I[II)I

    :goto_0
    return-void
.end method

.method public static cno([I[I[I)V
    .locals 1

    const/16 v0, 0xc

    invoke-static {v0, p0, p1, p2}, Lyou/zta/sis/sis/kth;->rtg(I[I[I[I)I

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lyou/zta/sis/zta/zta/zta/sis;->EHa:[I

    array-length p1, p0

    invoke-static {p1, p0, p2}, Lyou/zta/sis/sis/kth;->bio(I[I[I)I

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lyou/zta/sis/zta/zta/zta/sis;->EHa:[I

    array-length p0, p0

    invoke-static {v0, p2, p0}, Lyou/zta/sis/sis/kth;->zta(I[II)I

    :cond_0
    return-void
.end method

.method public static dma(Ljava/math/BigInteger;)[I
    .locals 2

    invoke-static {p0}, Lyou/zta/sis/sis/sis;->dma(Ljava/math/BigInteger;)[I

    move-result-object p0

    const/4 v0, 0x5

    aget v0, p0, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lyou/zta/sis/zta/zta/zta/sis;->P:[I

    invoke-static {p0, v0}, Lyou/zta/sis/sis/sis;->qbh([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lyou/zta/sis/zta/zta/zta/sis;->P:[I

    invoke-static {v0, p0}, Lyou/zta/sis/sis/sis;->oif([I[I)I

    :cond_0
    return-object p0
.end method

.method public static igw([I[I)V
    .locals 1

    invoke-static {}, Lyou/zta/sis/sis/sis;->jl()[I

    move-result-object v0

    invoke-static {p0, v0}, Lyou/zta/sis/sis/sis;->igw([I[I)V

    invoke-static {v0, p1}, Lyou/zta/sis/zta/zta/zta/sis;->bio([I[I)V

    return-void
.end method

.method public static kth([I[I)V
    .locals 1

    invoke-static {p0}, Lyou/zta/sis/sis/sis;->dma([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lyou/zta/sis/sis/sis;->qbh([I)V

    goto :goto_0

    :cond_0
    sget-object v0, Lyou/zta/sis/zta/zta/zta/sis;->P:[I

    invoke-static {v0, p0, p1}, Lyou/zta/sis/sis/sis;->dma([I[I[I)I

    :goto_0
    return-void
.end method

.method public static rtg([I[I[I)V
    .locals 1

    invoke-static {p0, p1, p2}, Lyou/zta/sis/sis/sis;->gck([I[I[I)I

    move-result p0

    const/16 p1, 0xc

    if-nez p0, :cond_0

    const/16 p0, 0xb

    aget p0, p2, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    sget-object p0, Lyou/zta/sis/zta/zta/zta/sis;->DHa:[I

    invoke-static {p1, p2, p0}, Lyou/zta/sis/sis/kth;->ssp(I[I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    sget-object p0, Lyou/zta/sis/zta/zta/zta/sis;->EHa:[I

    array-length v0, p0

    invoke-static {v0, p0, p2}, Lyou/zta/sis/sis/kth;->you(I[I[I)I

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lyou/zta/sis/zta/zta/zta/sis;->EHa:[I

    array-length p0, p0

    invoke-static {p1, p2, p0}, Lyou/zta/sis/sis/kth;->you(I[II)I

    :cond_1
    return-void
.end method

.method public static sis([I[I[I)V
    .locals 1

    const/16 v0, 0xc

    invoke-static {v0, p0, p1, p2}, Lyou/zta/sis/sis/kth;->zta(I[I[I[I)I

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, 0xb

    aget p0, p2, p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1

    sget-object p0, Lyou/zta/sis/zta/zta/zta/sis;->DHa:[I

    invoke-static {v0, p2, p0}, Lyou/zta/sis/sis/kth;->ssp(I[I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    sget-object p0, Lyou/zta/sis/zta/zta/zta/sis;->EHa:[I

    array-length p1, p0

    invoke-static {p1, p0, p2}, Lyou/zta/sis/sis/kth;->you(I[I[I)I

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lyou/zta/sis/zta/zta/zta/sis;->EHa:[I

    array-length p0, p0

    invoke-static {v0, p2, p0}, Lyou/zta/sis/sis/kth;->you(I[II)I

    :cond_1
    return-void
.end method

.method public static ssp([I[I)V
    .locals 2

    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lyou/zta/sis/sis/kth;->cno(I[I[I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x5

    aget p0, p1, p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    sget-object p0, Lyou/zta/sis/zta/zta/zta/sis;->P:[I

    invoke-static {p1, p0}, Lyou/zta/sis/sis/sis;->qbh([I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/16 p0, 0x11c9

    invoke-static {v0, p0, p1}, Lyou/zta/sis/sis/kth;->you(II[I)I

    :cond_1
    return-void
.end method

.method public static ssp([I[I[I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lyou/zta/sis/sis/sis;->dma([I[I[I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    const/16 p1, 0x11c9

    invoke-static {p0, p1, p2}, Lyou/zta/sis/sis/kth;->tsu(II[I)I

    :cond_0
    return-void
.end method

.method public static tsu([I[I[I)V
    .locals 1

    invoke-static {}, Lyou/zta/sis/sis/sis;->jl()[I

    move-result-object v0

    invoke-static {p0, p1, v0}, Lyou/zta/sis/sis/sis;->wtn([I[I[I)V

    invoke-static {v0, p2}, Lyou/zta/sis/zta/zta/zta/sis;->bio([I[I)V

    return-void
.end method

.method public static wtn([I[I)V
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lyou/zta/sis/sis/kth;->you(I[II[I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x5

    aget p0, p1, p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    sget-object p0, Lyou/zta/sis/zta/zta/zta/sis;->P:[I

    invoke-static {p1, p0}, Lyou/zta/sis/sis/sis;->qbh([I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/16 p0, 0x11c9

    invoke-static {v0, p0, p1}, Lyou/zta/sis/sis/kth;->you(II[I)I

    :cond_1
    return-void
.end method

.method public static you([I[I[I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lyou/zta/sis/sis/sis;->you([I[I[I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x5

    aget p0, p2, p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1

    sget-object p0, Lyou/zta/sis/zta/zta/zta/sis;->P:[I

    invoke-static {p2, p0}, Lyou/zta/sis/sis/sis;->qbh([I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x6

    const/16 p1, 0x11c9

    invoke-static {p0, p1, p2}, Lyou/zta/sis/sis/kth;->you(II[I)I

    :cond_1
    return-void
.end method

.method public static zta([II[I)V
    .locals 1

    invoke-static {}, Lyou/zta/sis/sis/sis;->jl()[I

    move-result-object v0

    invoke-static {p0, v0}, Lyou/zta/sis/sis/sis;->igw([I[I)V

    :goto_0
    invoke-static {v0, p2}, Lyou/zta/sis/zta/zta/zta/sis;->bio([I[I)V

    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    invoke-static {p2, v0}, Lyou/zta/sis/sis/sis;->igw([I[I)V

    goto :goto_0

    :cond_0
    return-void
.end method
