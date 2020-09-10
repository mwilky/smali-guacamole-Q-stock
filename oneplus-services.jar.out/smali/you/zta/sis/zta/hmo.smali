.class Lyou/zta/sis/zta/hmo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lyou/zta/sis/zta/gwm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyou/zta/sis/zta/fto;->zta(Lyou/zta/sis/zta/wtn;IZ)Lyou/zta/sis/zta/ear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic _Ga:Lyou/zta/sis/zta/wtn;

.field final synthetic val$c:Lyou/zta/sis/zta/rtg;

.field final synthetic val$width:I

.field final synthetic zHa:Z


# direct methods
.method constructor <init>(IZLyou/zta/sis/zta/wtn;Lyou/zta/sis/zta/rtg;)V
    .locals 0

    iput p1, p0, Lyou/zta/sis/zta/hmo;->val$width:I

    iput-boolean p2, p0, Lyou/zta/sis/zta/hmo;->zHa:Z

    iput-object p3, p0, Lyou/zta/sis/zta/hmo;->_Ga:Lyou/zta/sis/zta/wtn;

    iput-object p4, p0, Lyou/zta/sis/zta/hmo;->val$c:Lyou/zta/sis/zta/rtg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private you([Lyou/zta/sis/zta/wtn;I)Z
    .locals 0

    if-eqz p1, :cond_0

    array-length p0, p1

    if-lt p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private zta(Lyou/zta/sis/zta/ear;IZ)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lyou/zta/sis/zta/ear;->Uk()[Lyou/zta/sis/zta/wtn;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lyou/zta/sis/zta/hmo;->you([Lyou/zta/sis/zta/wtn;I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lyou/zta/sis/zta/ear;->Vk()[Lyou/zta/sis/zta/wtn;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lyou/zta/sis/zta/hmo;->you([Lyou/zta/sis/zta/wtn;I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public zta(Lyou/zta/sis/zta/ugm;)Lyou/zta/sis/zta/ugm;
    .locals 11

    instance-of v0, p1, Lyou/zta/sis/zta/ear;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lyou/zta/sis/zta/ear;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iget v0, p0, Lyou/zta/sis/zta/hmo;->val$width:I

    const/4 v2, 0x2

    sub-int/2addr v0, v2

    const/4 v3, 0x0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v4, 0x1

    shl-int v0, v4, v0

    iget-boolean v5, p0, Lyou/zta/sis/zta/hmo;->zHa:Z

    invoke-direct {p0, p1, v0, v5}, Lyou/zta/sis/zta/hmo;->zta(Lyou/zta/sis/zta/ear;IZ)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object p1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lyou/zta/sis/zta/ear;->Uk()[Lyou/zta/sis/zta/wtn;

    move-result-object v5

    invoke-virtual {p1}, Lyou/zta/sis/zta/ear;->Vk()[Lyou/zta/sis/zta/wtn;

    move-result-object v6

    invoke-virtual {p1}, Lyou/zta/sis/zta/ear;->Wk()Lyou/zta/sis/zta/wtn;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v1

    move-object v5, p1

    move-object v6, v5

    :goto_1
    if-nez v5, :cond_3

    invoke-static {}, Lyou/zta/sis/zta/fto;->access$000()[Lyou/zta/sis/zta/wtn;

    move-result-object v5

    move v7, v3

    goto :goto_2

    :cond_3
    array-length v7, v5

    :goto_2
    if-ge v7, v0, :cond_b

    invoke-static {v5, v0}, Lyou/zta/sis/zta/fto;->zta([Lyou/zta/sis/zta/wtn;I)[Lyou/zta/sis/zta/wtn;

    move-result-object v5

    if-ne v0, v4, :cond_4

    iget-object v1, p0, Lyou/zta/sis/zta/hmo;->_Ga:Lyou/zta/sis/zta/wtn;

    invoke-virtual {v1}, Lyou/zta/sis/zta/wtn;->normalize()Lyou/zta/sis/zta/wtn;

    move-result-object v1

    aput-object v1, v5, v3

    goto/16 :goto_7

    :cond_4
    if-nez v7, :cond_5

    iget-object v8, p0, Lyou/zta/sis/zta/hmo;->_Ga:Lyou/zta/sis/zta/wtn;

    aput-object v8, v5, v3

    move v8, v4

    goto :goto_3

    :cond_5
    move v8, v7

    :goto_3
    if-ne v0, v2, :cond_6

    iget-object v2, p0, Lyou/zta/sis/zta/hmo;->_Ga:Lyou/zta/sis/zta/wtn;

    invoke-virtual {v2}, Lyou/zta/sis/zta/wtn;->Fk()Lyou/zta/sis/zta/wtn;

    move-result-object v2

    aput-object v2, v5, v4

    goto/16 :goto_6

    :cond_6
    add-int/lit8 v4, v8, -0x1

    aget-object v4, v5, v4

    if-nez p1, :cond_8

    aget-object p1, v5, v3

    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->Gk()Lyou/zta/sis/zta/wtn;

    move-result-object p1

    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->Ak()Z

    move-result v9

    if-nez v9, :cond_8

    iget-object v9, p0, Lyou/zta/sis/zta/hmo;->val$c:Lyou/zta/sis/zta/rtg;

    invoke-static {v9}, Lyou/zta/sis/zta/you;->tsu(Lyou/zta/sis/zta/rtg;)Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lyou/zta/sis/zta/hmo;->val$c:Lyou/zta/sis/zta/rtg;

    invoke-virtual {v9}, Lyou/zta/sis/zta/rtg;->getFieldSize()I

    move-result v9

    const/16 v10, 0x40

    if-lt v9, v10, :cond_8

    iget-object v9, p0, Lyou/zta/sis/zta/hmo;->val$c:Lyou/zta/sis/zta/rtg;

    invoke-virtual {v9}, Lyou/zta/sis/zta/rtg;->Yj()I

    move-result v9

    if-eq v9, v2, :cond_7

    const/4 v2, 0x3

    if-eq v9, v2, :cond_7

    const/4 v2, 0x4

    if-eq v9, v2, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p1, v3}, Lyou/zta/sis/zta/wtn;->sa(I)Lyou/zta/sis/zta/cno;

    move-result-object v1

    iget-object v2, p0, Lyou/zta/sis/zta/hmo;->val$c:Lyou/zta/sis/zta/rtg;

    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->wk()Lyou/zta/sis/zta/cno;

    move-result-object v9

    invoke-virtual {v9}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->xk()Lyou/zta/sis/zta/cno;

    move-result-object v10

    invoke-virtual {v10}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Lyou/zta/sis/zta/rtg;->ssp(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lyou/zta/sis/zta/wtn;

    move-result-object v2

    invoke-virtual {v1}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object v9

    invoke-virtual {v9, v1}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v10

    invoke-virtual {v4, v9}, Lyou/zta/sis/zta/wtn;->kth(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/wtn;

    move-result-object v4

    invoke-virtual {v4, v10}, Lyou/zta/sis/zta/wtn;->bio(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/wtn;

    move-result-object v4

    if-nez v7, :cond_9

    aput-object v4, v5, v3

    goto :goto_5

    :cond_8
    :goto_4
    move-object v2, p1

    :cond_9
    :goto_5
    if-ge v8, v0, :cond_a

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v4, v2}, Lyou/zta/sis/zta/wtn;->kth(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    move-result-object v4

    aput-object v4, v5, v8

    move v8, v9

    goto :goto_5

    :cond_a
    :goto_6
    iget-object v2, p0, Lyou/zta/sis/zta/hmo;->val$c:Lyou/zta/sis/zta/rtg;

    sub-int v4, v0, v7

    invoke-virtual {v2, v5, v7, v4, v1}, Lyou/zta/sis/zta/rtg;->zta([Lyou/zta/sis/zta/wtn;IILyou/zta/sis/zta/cno;)V

    :cond_b
    :goto_7
    iget-boolean p0, p0, Lyou/zta/sis/zta/hmo;->zHa:Z

    if-eqz p0, :cond_e

    if-nez v6, :cond_c

    new-array p0, v0, [Lyou/zta/sis/zta/wtn;

    :goto_8
    move-object v6, p0

    goto :goto_9

    :cond_c
    array-length v3, v6

    if-ge v3, v0, :cond_d

    invoke-static {v6, v0}, Lyou/zta/sis/zta/fto;->zta([Lyou/zta/sis/zta/wtn;I)[Lyou/zta/sis/zta/wtn;

    move-result-object p0

    goto :goto_8

    :cond_d
    :goto_9
    if-ge v3, v0, :cond_e

    aget-object p0, v5, v3

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->negate()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    aput-object p0, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_e
    new-instance p0, Lyou/zta/sis/zta/ear;

    invoke-direct {p0}, Lyou/zta/sis/zta/ear;-><init>()V

    invoke-virtual {p0, v5}, Lyou/zta/sis/zta/ear;->sis([Lyou/zta/sis/zta/wtn;)V

    invoke-virtual {p0, v6}, Lyou/zta/sis/zta/ear;->tsu([Lyou/zta/sis/zta/wtn;)V

    invoke-virtual {p0, p1}, Lyou/zta/sis/zta/ear;->ywr(Lyou/zta/sis/zta/wtn;)V

    return-object p0
.end method
