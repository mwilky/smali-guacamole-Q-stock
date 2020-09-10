.class public abstract Lyou/zta/sis/zta/cno$zta;
.super Lyou/zta/sis/zta/cno;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyou/zta/sis/zta/cno;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zta"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyou/zta/sis/zta/cno;-><init>()V

    return-void
.end method


# virtual methods
.method public kk()Lyou/zta/sis/zta/cno;
    .locals 4

    invoke-virtual {p0}, Lyou/zta/sis/zta/cno;->getFieldSize()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    move-object v2, p0

    move-object v3, v2

    move p0, v1

    :goto_0
    if-ge p0, v0, :cond_0

    invoke-virtual {v3, v1}, Lyou/zta/sis/zta/cno;->ra(I)Lyou/zta/sis/zta/cno;

    move-result-object v3

    invoke-virtual {v2, v3}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v2

    add-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_0
    return-object v2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Half-trace only defined for odd m"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public lk()I
    .locals 4

    invoke-virtual {p0}, Lyou/zta/sis/zta/cno;->getFieldSize()I

    move-result v0

    const/4 v1, 0x1

    move-object v2, p0

    move-object v3, v2

    move p0, v1

    :goto_0
    if-ge p0, v0, :cond_0

    invoke-virtual {v3}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object v3

    invoke-virtual {v2, v3}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v2

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lyou/zta/sis/zta/cno;->isZero()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {v2}, Lyou/zta/sis/zta/cno;->hk()Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Internal error in trace calculation"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
