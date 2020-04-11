.class public Lyou/zta/you/you/ssp;
.super Lyou/zta/you/you/zta;
.source ""


# instance fields
.field private d:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lyou/zta/you/you/rtg;)V
    .locals 0

    invoke-direct {p0, p2}, Lyou/zta/you/you/zta;-><init>(Lyou/zta/you/you/rtg;)V

    iput-object p1, p0, Lyou/zta/you/you/ssp;->d:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public tsu()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lyou/zta/you/you/ssp;->d:Ljava/math/BigInteger;

    return-object p0
.end method
