.class public Lyou/zta/sis/zta/ywr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lyou/zta/sis/zta/ugm;


# instance fields
.field protected jHa:Lyou/zta/sis/zta/kth;

.field protected offset:Lyou/zta/sis/zta/wtn;

.field protected width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lyou/zta/sis/zta/ywr;->offset:Lyou/zta/sis/zta/wtn;

    iput-object v0, p0, Lyou/zta/sis/zta/ywr;->jHa:Lyou/zta/sis/zta/kth;

    const/4 v0, -0x1

    iput v0, p0, Lyou/zta/sis/zta/ywr;->width:I

    return-void
.end method


# virtual methods
.method public Lk()Lyou/zta/sis/zta/kth;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/ywr;->jHa:Lyou/zta/sis/zta/kth;

    return-object p0
.end method

.method public gck(Lyou/zta/sis/zta/wtn;)V
    .locals 0

    iput-object p1, p0, Lyou/zta/sis/zta/ywr;->offset:Lyou/zta/sis/zta/wtn;

    return-void
.end method

.method public getOffset()Lyou/zta/sis/zta/wtn;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/ywr;->offset:Lyou/zta/sis/zta/wtn;

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lyou/zta/sis/zta/ywr;->width:I

    return p0
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lyou/zta/sis/zta/ywr;->width:I

    return-void
.end method

.method public zta(Lyou/zta/sis/zta/kth;)V
    .locals 0

    iput-object p1, p0, Lyou/zta/sis/zta/ywr;->jHa:Lyou/zta/sis/zta/kth;

    return-void
.end method
