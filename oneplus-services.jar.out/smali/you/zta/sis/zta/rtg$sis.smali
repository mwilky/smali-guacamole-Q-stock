.class public Lyou/zta/sis/zta/rtg$sis;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyou/zta/sis/zta/rtg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "sis"
.end annotation


# instance fields
.field protected gDa:Lyou/zta/sis/zta/bio;

.field final synthetic this$0:Lyou/zta/sis/zta/rtg;

.field protected xGa:I

.field protected yGa:Lyou/zta/sis/zta/you/zta;


# direct methods
.method constructor <init>(Lyou/zta/sis/zta/rtg;ILyou/zta/sis/zta/you/zta;Lyou/zta/sis/zta/bio;)V
    .locals 0

    iput-object p1, p0, Lyou/zta/sis/zta/rtg$sis;->this$0:Lyou/zta/sis/zta/rtg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lyou/zta/sis/zta/rtg$sis;->xGa:I

    iput-object p3, p0, Lyou/zta/sis/zta/rtg$sis;->yGa:Lyou/zta/sis/zta/you/zta;

    iput-object p4, p0, Lyou/zta/sis/zta/rtg$sis;->gDa:Lyou/zta/sis/zta/bio;

    return-void
.end method


# virtual methods
.method public create()Lyou/zta/sis/zta/rtg;
    .locals 2

    iget-object v0, p0, Lyou/zta/sis/zta/rtg$sis;->this$0:Lyou/zta/sis/zta/rtg;

    iget v1, p0, Lyou/zta/sis/zta/rtg$sis;->xGa:I

    invoke-virtual {v0, v1}, Lyou/zta/sis/zta/rtg;->qa(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lyou/zta/sis/zta/rtg$sis;->this$0:Lyou/zta/sis/zta/rtg;

    invoke-virtual {v0}, Lyou/zta/sis/zta/rtg;->Wj()Lyou/zta/sis/zta/rtg;

    move-result-object v0

    iget-object v1, p0, Lyou/zta/sis/zta/rtg$sis;->this$0:Lyou/zta/sis/zta/rtg;

    if-eq v0, v1, :cond_0

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lyou/zta/sis/zta/rtg$sis;->xGa:I

    iput v1, v0, Lyou/zta/sis/zta/rtg;->xGa:I

    iget-object v1, p0, Lyou/zta/sis/zta/rtg$sis;->yGa:Lyou/zta/sis/zta/you/zta;

    iput-object v1, v0, Lyou/zta/sis/zta/rtg;->yGa:Lyou/zta/sis/zta/you/zta;

    iget-object p0, p0, Lyou/zta/sis/zta/rtg$sis;->gDa:Lyou/zta/sis/zta/bio;

    iput-object p0, v0, Lyou/zta/sis/zta/rtg;->gDa:Lyou/zta/sis/zta/bio;

    monitor-exit v0

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "implementation returned current curve"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "unsupported coordinate system"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public pa(I)Lyou/zta/sis/zta/rtg$sis;
    .locals 0

    iput p1, p0, Lyou/zta/sis/zta/rtg$sis;->xGa:I

    return-object p0
.end method

.method public zta(Lyou/zta/sis/zta/bio;)Lyou/zta/sis/zta/rtg$sis;
    .locals 0

    iput-object p1, p0, Lyou/zta/sis/zta/rtg$sis;->gDa:Lyou/zta/sis/zta/bio;

    return-object p0
.end method

.method public zta(Lyou/zta/sis/zta/you/zta;)Lyou/zta/sis/zta/rtg$sis;
    .locals 0

    iput-object p1, p0, Lyou/zta/sis/zta/rtg$sis;->yGa:Lyou/zta/sis/zta/you/zta;

    return-object p0
.end method
