.class public Lyou/zta/sis/zta/ear;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lyou/zta/sis/zta/ugm;


# instance fields
.field protected uHa:[Lyou/zta/sis/zta/wtn;

.field protected vHa:[Lyou/zta/sis/zta/wtn;

.field protected wHa:Lyou/zta/sis/zta/wtn;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lyou/zta/sis/zta/ear;->uHa:[Lyou/zta/sis/zta/wtn;

    iput-object v0, p0, Lyou/zta/sis/zta/ear;->vHa:[Lyou/zta/sis/zta/wtn;

    iput-object v0, p0, Lyou/zta/sis/zta/ear;->wHa:Lyou/zta/sis/zta/wtn;

    return-void
.end method


# virtual methods
.method public Uk()[Lyou/zta/sis/zta/wtn;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/ear;->uHa:[Lyou/zta/sis/zta/wtn;

    return-object p0
.end method

.method public Vk()[Lyou/zta/sis/zta/wtn;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/ear;->vHa:[Lyou/zta/sis/zta/wtn;

    return-object p0
.end method

.method public Wk()Lyou/zta/sis/zta/wtn;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/ear;->wHa:Lyou/zta/sis/zta/wtn;

    return-object p0
.end method

.method public sis([Lyou/zta/sis/zta/wtn;)V
    .locals 0

    iput-object p1, p0, Lyou/zta/sis/zta/ear;->uHa:[Lyou/zta/sis/zta/wtn;

    return-void
.end method

.method public tsu([Lyou/zta/sis/zta/wtn;)V
    .locals 0

    iput-object p1, p0, Lyou/zta/sis/zta/ear;->vHa:[Lyou/zta/sis/zta/wtn;

    return-void
.end method

.method public ywr(Lyou/zta/sis/zta/wtn;)V
    .locals 0

    iput-object p1, p0, Lyou/zta/sis/zta/ear;->wHa:Lyou/zta/sis/zta/wtn;

    return-void
.end method
