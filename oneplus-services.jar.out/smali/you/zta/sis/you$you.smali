.class public Lyou/zta/sis/you$you;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyou/zta/sis/you;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "you"
.end annotation


# instance fields
.field private PDa:Ljava/math/BigInteger;

.field private QDa:[B

.field private RDa:I


# direct methods
.method private constructor <init>(Ljava/math/BigInteger;[BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyou/zta/sis/you$you;->PDa:Ljava/math/BigInteger;

    iput-object p2, p0, Lyou/zta/sis/you$you;->QDa:[B

    iput p3, p0, Lyou/zta/sis/you$you;->RDa:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/math/BigInteger;[BILyou/zta/sis/zta;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lyou/zta/sis/you$you;-><init>(Ljava/math/BigInteger;[BI)V

    return-void
.end method


# virtual methods
.method public Kj()I
    .locals 0

    iget p0, p0, Lyou/zta/sis/you$you;->RDa:I

    return p0
.end method

.method public Lj()[B
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/you$you;->QDa:[B

    return-object p0
.end method

.method public getPrime()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/you$you;->PDa:Ljava/math/BigInteger;

    return-object p0
.end method
