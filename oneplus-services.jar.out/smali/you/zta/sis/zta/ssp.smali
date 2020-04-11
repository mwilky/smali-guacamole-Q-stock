.class Lyou/zta/sis/zta/ssp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lyou/zta/sis/zta/kth;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyou/zta/sis/zta/rtg$tsu;->you([Lyou/zta/sis/zta/wtn;II)Lyou/zta/sis/zta/kth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic WDa:I

.field final synthetic YDa:[J

.field final synthetic aEa:I

.field final synthetic bEa:[I

.field final synthetic this$0:Lyou/zta/sis/zta/rtg$tsu;


# direct methods
.method constructor <init>(Lyou/zta/sis/zta/rtg$tsu;II[J[I)V
    .locals 0

    iput-object p1, p0, Lyou/zta/sis/zta/ssp;->this$0:Lyou/zta/sis/zta/rtg$tsu;

    iput p2, p0, Lyou/zta/sis/zta/ssp;->WDa:I

    iput p3, p0, Lyou/zta/sis/zta/ssp;->aEa:I

    iput-object p4, p0, Lyou/zta/sis/zta/ssp;->YDa:[J

    iput-object p5, p0, Lyou/zta/sis/zta/ssp;->bEa:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 0

    iget p0, p0, Lyou/zta/sis/zta/ssp;->WDa:I

    return p0
.end method

.method public rtg(I)Lyou/zta/sis/zta/wtn;
    .locals 14

    iget v0, p0, Lyou/zta/sis/zta/ssp;->aEa:I

    invoke-static {v0}, Lyou/zta/sis/sis/kth;->Da(I)[J

    move-result-object v0

    iget v1, p0, Lyou/zta/sis/zta/ssp;->aEa:I

    invoke-static {v1}, Lyou/zta/sis/sis/kth;->Da(I)[J

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    iget v5, p0, Lyou/zta/sis/zta/ssp;->WDa:I

    if-ge v3, v5, :cond_1

    xor-int v5, v3, p1

    add-int/lit8 v5, v5, -0x1

    shr-int/lit8 v5, v5, 0x1f

    int-to-long v5, v5

    move v7, v2

    :goto_1
    iget v8, p0, Lyou/zta/sis/zta/ssp;->aEa:I

    if-ge v7, v8, :cond_0

    aget-wide v9, v0, v7

    iget-object v11, p0, Lyou/zta/sis/zta/ssp;->YDa:[J

    add-int v12, v4, v7

    aget-wide v12, v11, v12

    and-long/2addr v12, v5

    xor-long/2addr v9, v12

    aput-wide v9, v0, v7

    aget-wide v9, v1, v7

    add-int/2addr v8, v4

    add-int/2addr v8, v7

    aget-wide v11, v11, v8

    and-long/2addr v11, v5

    xor-long v8, v9, v11

    aput-wide v8, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v4, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lyou/zta/sis/zta/ssp;->this$0:Lyou/zta/sis/zta/rtg$tsu;

    new-instance v3, Lyou/zta/sis/zta/cno$sis;

    invoke-static {p1}, Lyou/zta/sis/zta/rtg$tsu;->zta(Lyou/zta/sis/zta/rtg$tsu;)I

    move-result v4

    iget-object v5, p0, Lyou/zta/sis/zta/ssp;->bEa:[I

    new-instance v6, Lyou/zta/sis/zta/ibl;

    invoke-direct {v6, v0}, Lyou/zta/sis/zta/ibl;-><init>([J)V

    invoke-direct {v3, v4, v5, v6}, Lyou/zta/sis/zta/cno$sis;-><init>(I[ILyou/zta/sis/zta/ibl;)V

    new-instance v0, Lyou/zta/sis/zta/cno$sis;

    iget-object v4, p0, Lyou/zta/sis/zta/ssp;->this$0:Lyou/zta/sis/zta/rtg$tsu;

    invoke-static {v4}, Lyou/zta/sis/zta/rtg$tsu;->zta(Lyou/zta/sis/zta/rtg$tsu;)I

    move-result v4

    iget-object p0, p0, Lyou/zta/sis/zta/ssp;->bEa:[I

    new-instance v5, Lyou/zta/sis/zta/ibl;

    invoke-direct {v5, v1}, Lyou/zta/sis/zta/ibl;-><init>([J)V

    invoke-direct {v0, v4, p0, v5}, Lyou/zta/sis/zta/cno$sis;-><init>(I[ILyou/zta/sis/zta/ibl;)V

    invoke-virtual {p1, v3, v0, v2}, Lyou/zta/sis/zta/rtg$tsu;->zta(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Z)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0
.end method
