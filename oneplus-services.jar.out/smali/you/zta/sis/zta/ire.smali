.class Lyou/zta/sis/zta/ire;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lyou/zta/sis/zta/gwm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyou/zta/sis/zta/fto;->zta(Lyou/zta/sis/zta/wtn;IZLyou/zta/sis/zta/gck;)Lyou/zta/sis/zta/wtn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic lEa:Lyou/zta/sis/zta/ear;

.field final synthetic mEa:Lyou/zta/sis/zta/gck;

.field final synthetic nEa:Z


# direct methods
.method constructor <init>(Lyou/zta/sis/zta/ear;Lyou/zta/sis/zta/gck;Z)V
    .locals 0

    iput-object p1, p0, Lyou/zta/sis/zta/ire;->lEa:Lyou/zta/sis/zta/ear;

    iput-object p2, p0, Lyou/zta/sis/zta/ire;->mEa:Lyou/zta/sis/zta/gck;

    iput-boolean p3, p0, Lyou/zta/sis/zta/ire;->nEa:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zta(Lyou/zta/sis/zta/ugm;)Lyou/zta/sis/zta/ugm;
    .locals 6

    new-instance p1, Lyou/zta/sis/zta/ear;

    invoke-direct {p1}, Lyou/zta/sis/zta/ear;-><init>()V

    iget-object v0, p0, Lyou/zta/sis/zta/ire;->lEa:Lyou/zta/sis/zta/ear;

    invoke-virtual {v0}, Lyou/zta/sis/zta/ear;->Kk()Lyou/zta/sis/zta/wtn;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lyou/zta/sis/zta/ire;->mEa:Lyou/zta/sis/zta/gck;

    invoke-interface {v1, v0}, Lyou/zta/sis/zta/gck;->zta(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lyou/zta/sis/zta/ear;->ywr(Lyou/zta/sis/zta/wtn;)V

    :cond_0
    iget-object v0, p0, Lyou/zta/sis/zta/ire;->lEa:Lyou/zta/sis/zta/ear;

    invoke-virtual {v0}, Lyou/zta/sis/zta/ear;->Ik()[Lyou/zta/sis/zta/wtn;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Lyou/zta/sis/zta/wtn;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lyou/zta/sis/zta/ire;->mEa:Lyou/zta/sis/zta/gck;

    aget-object v5, v0, v3

    invoke-interface {v4, v5}, Lyou/zta/sis/zta/gck;->zta(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Lyou/zta/sis/zta/ear;->sis([Lyou/zta/sis/zta/wtn;)V

    iget-boolean p0, p0, Lyou/zta/sis/zta/ire;->nEa:Z

    if-eqz p0, :cond_3

    array-length p0, v1

    new-array p0, p0, [Lyou/zta/sis/zta/wtn;

    :goto_1
    array-length v0, p0

    if-ge v2, v0, :cond_2

    aget-object v0, v1, v2

    invoke-virtual {v0}, Lyou/zta/sis/zta/wtn;->negate()Lyou/zta/sis/zta/wtn;

    move-result-object v0

    aput-object v0, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1, p0}, Lyou/zta/sis/zta/ear;->tsu([Lyou/zta/sis/zta/wtn;)V

    :cond_3
    return-object p1
.end method
