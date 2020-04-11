.class public Lyou/zta/sis/you$zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyou/zta/sis/you;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zta"
.end annotation


# instance fields
.field private QCa:Z

.field private factor:Ljava/math/BigInteger;


# direct methods
.method private constructor <init>(ZLjava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lyou/zta/sis/you$zta;->QCa:Z

    iput-object p2, p0, Lyou/zta/sis/you$zta;->factor:Ljava/math/BigInteger;

    return-void
.end method

.method static synthetic access$000()Lyou/zta/sis/you$zta;
    .locals 1

    invoke-static {}, Lyou/zta/sis/you$zta;->pt()Lyou/zta/sis/you$zta;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Lyou/zta/sis/you$zta;
    .locals 1

    invoke-static {}, Lyou/zta/sis/you$zta;->qt()Lyou/zta/sis/you$zta;

    move-result-object v0

    return-object v0
.end method

.method private static lqr(Ljava/math/BigInteger;)Lyou/zta/sis/you$zta;
    .locals 2

    new-instance v0, Lyou/zta/sis/you$zta;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lyou/zta/sis/you$zta;-><init>(ZLjava/math/BigInteger;)V

    return-object v0
.end method

.method private static pt()Lyou/zta/sis/you$zta;
    .locals 3

    new-instance v0, Lyou/zta/sis/you$zta;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyou/zta/sis/you$zta;-><init>(ZLjava/math/BigInteger;)V

    return-object v0
.end method

.method private static qt()Lyou/zta/sis/you$zta;
    .locals 3

    new-instance v0, Lyou/zta/sis/you$zta;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyou/zta/sis/you$zta;-><init>(ZLjava/math/BigInteger;)V

    return-object v0
.end method

.method static synthetic wtn(Ljava/math/BigInteger;)Lyou/zta/sis/you$zta;
    .locals 0

    invoke-static {p0}, Lyou/zta/sis/you$zta;->lqr(Ljava/math/BigInteger;)Lyou/zta/sis/you$zta;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public Dj()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/you$zta;->factor:Ljava/math/BigInteger;

    return-object p0
.end method

.method public Ej()Z
    .locals 1

    iget-boolean v0, p0, Lyou/zta/sis/you$zta;->QCa:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyou/zta/sis/you$zta;->factor:Ljava/math/BigInteger;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public Fj()Z
    .locals 0

    iget-boolean p0, p0, Lyou/zta/sis/you$zta;->QCa:Z

    return p0
.end method
