.class Lyou/zta/sis/zta/zta/zta/irq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lyou/zta/sis/zta/kth;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyou/zta/sis/zta/zta/zta/vdw;->you([Lyou/zta/sis/zta/wtn;II)Lyou/zta/sis/zta/kth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic WDa:I

.field final synthetic YDa:[I

.field final synthetic this$0:Lyou/zta/sis/zta/zta/zta/vdw;


# direct methods
.method constructor <init>(Lyou/zta/sis/zta/zta/zta/vdw;I[I)V
    .locals 0

    iput-object p1, p0, Lyou/zta/sis/zta/zta/zta/irq;->this$0:Lyou/zta/sis/zta/zta/zta/vdw;

    iput p2, p0, Lyou/zta/sis/zta/zta/zta/irq;->WDa:I

    iput-object p3, p0, Lyou/zta/sis/zta/zta/zta/irq;->YDa:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 0

    iget p0, p0, Lyou/zta/sis/zta/zta/zta/irq;->WDa:I

    return p0
.end method

.method public rtg(I)Lyou/zta/sis/zta/wtn;
    .locals 11

    const/16 v0, 0x11

    invoke-static {v0}, Lyou/zta/sis/sis/kth;->create(I)[I

    move-result-object v1

    invoke-static {v0}, Lyou/zta/sis/sis/kth;->create(I)[I

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    iget v6, p0, Lyou/zta/sis/zta/zta/zta/irq;->WDa:I

    if-ge v4, v6, :cond_1

    xor-int v6, v4, p1

    add-int/lit8 v6, v6, -0x1

    shr-int/lit8 v6, v6, 0x1f

    move v7, v3

    :goto_1
    if-ge v7, v0, :cond_0

    aget v8, v1, v7

    iget-object v9, p0, Lyou/zta/sis/zta/zta/zta/irq;->YDa:[I

    add-int v10, v5, v7

    aget v10, v9, v10

    and-int/2addr v10, v6

    xor-int/2addr v8, v10

    aput v8, v1, v7

    aget v8, v2, v7

    add-int/lit8 v10, v5, 0x11

    add-int/2addr v10, v7

    aget v9, v9, v10

    and-int/2addr v9, v6

    xor-int/2addr v8, v9

    aput v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x22

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/irq;->this$0:Lyou/zta/sis/zta/zta/zta/vdw;

    new-instance p1, Lyou/zta/sis/zta/zta/zta/ivd;

    invoke-direct {p1, v1}, Lyou/zta/sis/zta/zta/zta/ivd;-><init>([I)V

    new-instance v0, Lyou/zta/sis/zta/zta/zta/ivd;

    invoke-direct {v0, v2}, Lyou/zta/sis/zta/zta/zta/ivd;-><init>([I)V

    invoke-virtual {p0, p1, v0, v3}, Lyou/zta/sis/zta/zta/zta/vdw;->zta(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Z)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0
.end method
