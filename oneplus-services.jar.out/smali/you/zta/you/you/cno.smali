.class public Lyou/zta/you/you/cno;
.super Lyou/zta/you/you/zta;
.source ""


# instance fields
.field private q:Lyou/zta/sis/zta/wtn;


# direct methods
.method public constructor <init>(Lyou/zta/sis/zta/wtn;Lyou/zta/you/you/rtg;)V
    .locals 0

    invoke-direct {p0, p2}, Lyou/zta/you/you/zta;-><init>(Lyou/zta/you/you/rtg;)V

    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->normalize()Lyou/zta/sis/zta/wtn;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lyou/zta/you/you/cno;->q:Lyou/zta/sis/zta/wtn;

    return-void
.end method


# virtual methods
.method public getQ()Lyou/zta/sis/zta/wtn;
    .locals 0

    iget-object p0, p0, Lyou/zta/you/you/cno;->q:Lyou/zta/sis/zta/wtn;

    return-object p0
.end method
