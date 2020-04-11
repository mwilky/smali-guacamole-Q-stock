.class public Lyou/zta/you/you/sis;
.super Lyou/zta/you/you/rtg;
.source ""


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lyou/zta/you/you/rtg;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;)V

    iput-object p1, p0, Lyou/zta/you/you/sis;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4, p5}, Lyou/zta/you/you/rtg;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object p1, p0, Lyou/zta/you/you/sis;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lyou/zta/you/you/rtg;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    iput-object p1, p0, Lyou/zta/you/you/sis;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyou/zta/you/you/sis;->name:Ljava/lang/String;

    return-object p0
.end method
