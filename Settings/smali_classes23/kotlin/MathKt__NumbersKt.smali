.class Lkotlin/MathKt__NumbersKt;
.super Lkotlin/MathKt__BigIntegersKt;
.source "Numbers.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNumbers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Numbers.kt\nkotlin/MathKt__NumbersKt\n*L\n1#1,95:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0010\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0008\u001a\u0015\u0010\u0000\u001a\u00020\u0005*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0007H\u0087\u0008\u001a\r\u0010\u0008\u001a\u00020\t*\u00020\u0001H\u0087\u0008\u001a\r\u0010\u0008\u001a\u00020\t*\u00020\u0005H\u0087\u0008\u001a\r\u0010\n\u001a\u00020\t*\u00020\u0001H\u0087\u0008\u001a\r\u0010\n\u001a\u00020\t*\u00020\u0005H\u0087\u0008\u001a\r\u0010\u000b\u001a\u00020\t*\u00020\u0001H\u0087\u0008\u001a\r\u0010\u000b\u001a\u00020\t*\u00020\u0005H\u0087\u0008\u001a\r\u0010\u000c\u001a\u00020\u0004*\u00020\u0001H\u0087\u0008\u001a\r\u0010\u000c\u001a\u00020\u0007*\u00020\u0005H\u0087\u0008\u001a\r\u0010\r\u001a\u00020\u0004*\u00020\u0001H\u0087\u0008\u001a\r\u0010\r\u001a\u00020\u0007*\u00020\u0005H\u0087\u0008\u00a8\u0006\u000e"
    }
    d2 = {
        "fromBits",
        "",
        "Lkotlin/Double$Companion;",
        "bits",
        "",
        "",
        "Lkotlin/Float$Companion;",
        "",
        "isFinite",
        "",
        "isInfinite",
        "isNaN",
        "toBits",
        "toRawBits",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x1,
        0xd
    }
    xi = 0x1
    xs = "kotlin/MathKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/MathKt__BigIntegersKt;-><init>()V

    return-void
.end method

.method private static final fromBits(Lkotlin/jvm/internal/DoubleCompanionObject;J)D
    .locals 3
    .param p0    # Lkotlin/jvm/internal/DoubleCompanionObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    return-wide v1
.end method

.method private static final fromBits(Lkotlin/jvm/internal/FloatCompanionObject;I)F
    .locals 2
    .param p0    # Lkotlin/jvm/internal/FloatCompanionObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1
.end method

.method private static final isFinite(D)Z
    .locals 2
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static final isFinite(F)Z
    .locals 2
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static final isInfinite(D)Z
    .locals 2
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    return v1
.end method

.method private static final isInfinite(F)Z
    .locals 2
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    return v1
.end method

.method private static final isNaN(D)Z
    .locals 2
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    return v1
.end method

.method private static final isNaN(F)Z
    .locals 2
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    return v1
.end method

.method private static final toBits(F)I
    .locals 2
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    return v1
.end method

.method private static final toBits(D)J
    .locals 3
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    return-wide v1
.end method

.method private static final toRawBits(F)I
    .locals 2
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    return v1
.end method

.method private static final toRawBits(D)J
    .locals 3
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    return-wide v1
.end method
