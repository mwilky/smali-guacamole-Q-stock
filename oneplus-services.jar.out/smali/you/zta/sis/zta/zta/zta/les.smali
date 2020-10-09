.class public Lyou/zta/sis/zta/zta/zta/les;
.super Lyou/zta/sis/zta/wtn$you;
.source ""


# direct methods
.method public constructor <init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lyou/zta/sis/zta/zta/zta/les;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Z)V

    return-void
.end method

.method public constructor <init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Z)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lyou/zta/sis/zta/wtn$you;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move p2, p1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    if-ne p2, p1, :cond_2

    iput-boolean p4, p0, Lyou/zta/sis/zta/wtn;->withCompression:Z

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Exactly one of the field elements is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method constructor <init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;[Lyou/zta/sis/zta/cno;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lyou/zta/sis/zta/wtn$you;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;[Lyou/zta/sis/zta/cno;)V

    iput-boolean p5, p0, Lyou/zta/sis/zta/wtn;->withCompression:Z

    return-void
.end method


# virtual methods
.method public Hk()Lyou/zta/sis/zta/wtn;
    .locals 1

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->Ck()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lyou/zta/sis/zta/wtn;->y:Lyou/zta/sis/zta/cno;

    invoke-virtual {v0}, Lyou/zta/sis/zta/cno;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lyou/zta/sis/zta/zta/zta/les;->Ik()Lyou/zta/sis/zta/wtn;

    move-result-object v0

    invoke-virtual {v0, p0}, Lyou/zta/sis/zta/wtn;->kth(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public Ik()Lyou/zta/sis/zta/wtn;
    .locals 13

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->Ck()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v2

    iget-object v0, p0, Lyou/zta/sis/zta/wtn;->y:Lyou/zta/sis/zta/cno;

    check-cast v0, Lyou/zta/sis/zta/zta/zta/bud;

    invoke-virtual {v0}, Lyou/zta/sis/zta/zta/zta/bud;->isZero()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Lyou/zta/sis/zta/rtg;->getInfinity()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v1, p0, Lyou/zta/sis/zta/wtn;->x:Lyou/zta/sis/zta/cno;

    check-cast v1, Lyou/zta/sis/zta/zta/zta/bud;

    iget-object v3, p0, Lyou/zta/sis/zta/wtn;->gHa:[Lyou/zta/sis/zta/cno;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    check-cast v3, Lyou/zta/sis/zta/zta/zta/bud;

    const/16 v5, 0xc

    invoke-static {v5}, Lyou/zta/sis/sis/kth;->create(I)[I

    move-result-object v6

    invoke-static {v5}, Lyou/zta/sis/sis/kth;->create(I)[I

    move-result-object v7

    invoke-static {v5}, Lyou/zta/sis/sis/kth;->create(I)[I

    move-result-object v8

    iget-object v9, v0, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    invoke-static {v9, v8}, Lyou/zta/sis/zta/zta/zta/vju;->igw([I[I)V

    invoke-static {v5}, Lyou/zta/sis/sis/kth;->create(I)[I

    move-result-object v9

    invoke-static {v8, v9}, Lyou/zta/sis/zta/zta/zta/vju;->igw([I[I)V

    invoke-virtual {v3}, Lyou/zta/sis/zta/zta/zta/bud;->jk()Z

    move-result v10

    iget-object v11, v3, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    if-nez v10, :cond_2

    invoke-static {v11, v7}, Lyou/zta/sis/zta/zta/zta/vju;->igw([I[I)V

    move-object v11, v7

    :cond_2
    iget-object v12, v1, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    invoke-static {v12, v11, v6}, Lyou/zta/sis/zta/zta/zta/vju;->ssp([I[I[I)V

    iget-object v12, v1, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    invoke-static {v12, v11, v7}, Lyou/zta/sis/zta/zta/zta/vju;->you([I[I[I)V

    invoke-static {v7, v6, v7}, Lyou/zta/sis/zta/zta/zta/vju;->tsu([I[I[I)V

    invoke-static {v5, v7, v7, v7}, Lyou/zta/sis/sis/kth;->you(I[I[I[I)I

    move-result v11

    invoke-static {v11, v7}, Lyou/zta/sis/zta/zta/zta/vju;->cno(I[I)V

    iget-object v1, v1, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    invoke-static {v8, v1, v8}, Lyou/zta/sis/zta/zta/zta/vju;->tsu([I[I[I)V

    const/4 v1, 0x2

    invoke-static {v5, v8, v1, v4}, Lyou/zta/sis/sis/kth;->ssp(I[III)I

    move-result v1

    invoke-static {v1, v8}, Lyou/zta/sis/zta/zta/zta/vju;->cno(I[I)V

    const/4 v1, 0x3

    invoke-static {v5, v9, v1, v4, v6}, Lyou/zta/sis/sis/kth;->you(I[III[I)I

    move-result v1

    invoke-static {v1, v6}, Lyou/zta/sis/zta/zta/zta/vju;->cno(I[I)V

    new-instance v5, Lyou/zta/sis/zta/zta/zta/bud;

    invoke-direct {v5, v9}, Lyou/zta/sis/zta/zta/zta/bud;-><init>([I)V

    iget-object v1, v5, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    invoke-static {v7, v1}, Lyou/zta/sis/zta/zta/zta/vju;->igw([I[I)V

    iget-object v1, v5, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    invoke-static {v1, v8, v1}, Lyou/zta/sis/zta/zta/zta/vju;->ssp([I[I[I)V

    iget-object v1, v5, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    invoke-static {v1, v8, v1}, Lyou/zta/sis/zta/zta/zta/vju;->ssp([I[I[I)V

    new-instance v9, Lyou/zta/sis/zta/zta/zta/bud;

    invoke-direct {v9, v8}, Lyou/zta/sis/zta/zta/zta/bud;-><init>([I)V

    iget-object v1, v5, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    iget-object v11, v9, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    invoke-static {v8, v1, v11}, Lyou/zta/sis/zta/zta/zta/vju;->ssp([I[I[I)V

    iget-object v1, v9, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    invoke-static {v1, v7, v1}, Lyou/zta/sis/zta/zta/zta/vju;->tsu([I[I[I)V

    iget-object v1, v9, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    invoke-static {v1, v6, v1}, Lyou/zta/sis/zta/zta/zta/vju;->ssp([I[I[I)V

    new-instance v1, Lyou/zta/sis/zta/zta/zta/bud;

    invoke-direct {v1, v7}, Lyou/zta/sis/zta/zta/zta/bud;-><init>([I)V

    iget-object v0, v0, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    iget-object v6, v1, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    invoke-static {v0, v6}, Lyou/zta/sis/zta/zta/zta/vju;->wtn([I[I)V

    if-nez v10, :cond_3

    iget-object v0, v1, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    iget-object v3, v3, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    invoke-static {v0, v3, v0}, Lyou/zta/sis/zta/zta/zta/vju;->tsu([I[I[I)V

    :cond_3
    new-instance v0, Lyou/zta/sis/zta/zta/zta/les;

    const/4 v3, 0x1

    new-array v6, v3, [Lyou/zta/sis/zta/cno;

    aput-object v1, v6, v4

    iget-boolean p0, p0, Lyou/zta/sis/zta/wtn;->withCompression:Z

    move-object v1, v0

    move-object v3, v5

    move-object v4, v9

    move-object v5, v6

    move v6, p0

    invoke-direct/range {v1 .. v6}, Lyou/zta/sis/zta/zta/zta/les;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;[Lyou/zta/sis/zta/cno;Z)V

    return-object v0
.end method

.method protected detach()Lyou/zta/sis/zta/wtn;
    .locals 3

    new-instance v0, Lyou/zta/sis/zta/zta/zta/les;

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->qk()Lyou/zta/sis/zta/cno;

    move-result-object v1

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->rk()Lyou/zta/sis/zta/cno;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0}, Lyou/zta/sis/zta/zta/zta/les;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;)V

    return-object v0
.end method

.method public kth(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lyou/zta/sis/zta/wtn;->Ck()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lyou/zta/sis/zta/wtn;->Ck()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    if-ne v0, v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lyou/zta/sis/zta/zta/zta/les;->Ik()Lyou/zta/sis/zta/wtn;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v2

    iget-object v3, v0, Lyou/zta/sis/zta/wtn;->x:Lyou/zta/sis/zta/cno;

    check-cast v3, Lyou/zta/sis/zta/zta/zta/bud;

    iget-object v4, v0, Lyou/zta/sis/zta/wtn;->y:Lyou/zta/sis/zta/cno;

    check-cast v4, Lyou/zta/sis/zta/zta/zta/bud;

    invoke-virtual/range {p1 .. p1}, Lyou/zta/sis/zta/wtn;->yk()Lyou/zta/sis/zta/cno;

    move-result-object v5

    check-cast v5, Lyou/zta/sis/zta/zta/zta/bud;

    invoke-virtual/range {p1 .. p1}, Lyou/zta/sis/zta/wtn;->zk()Lyou/zta/sis/zta/cno;

    move-result-object v6

    check-cast v6, Lyou/zta/sis/zta/zta/zta/bud;

    iget-object v7, v0, Lyou/zta/sis/zta/wtn;->gHa:[Lyou/zta/sis/zta/cno;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    check-cast v7, Lyou/zta/sis/zta/zta/zta/bud;

    invoke-virtual {v1, v8}, Lyou/zta/sis/zta/wtn;->sa(I)Lyou/zta/sis/zta/cno;

    move-result-object v1

    check-cast v1, Lyou/zta/sis/zta/zta/zta/bud;

    const/16 v9, 0x18

    invoke-static {v9}, Lyou/zta/sis/sis/kth;->create(I)[I

    move-result-object v10

    invoke-static {v9}, Lyou/zta/sis/sis/kth;->create(I)[I

    move-result-object v9

    const/16 v11, 0xc

    invoke-static {v11}, Lyou/zta/sis/sis/kth;->create(I)[I

    move-result-object v12

    invoke-static {v11}, Lyou/zta/sis/sis/kth;->create(I)[I

    move-result-object v13

    invoke-virtual {v7}, Lyou/zta/sis/zta/zta/zta/bud;->jk()Z

    move-result v14

    if-eqz v14, :cond_3

    iget-object v5, v5, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    iget-object v6, v6, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    goto :goto_0

    :cond_3
    iget-object v15, v7, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    invoke-static {v15, v12}, Lyou/zta/sis/zta/zta/zta/vju;->igw([I[I)V

    iget-object v5, v5, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    invoke-static {v12, v5, v9}, Lyou/zta/sis/zta/zta/zta/vju;->tsu([I[I[I)V

    iget-object v5, v7, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    invoke-static {v12, v5, v12}, Lyou/zta/sis/zta/zta/zta/vju;->tsu([I[I[I)V

    iget-object v5, v6, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    invoke-static {v12, v5, v12}, Lyou/zta/sis/zta/zta/zta/vju;->tsu([I[I[I)V

    move-object v5, v9

    move-object v6, v12

    :goto_0
    invoke-virtual {v1}, Lyou/zta/sis/zta/zta/zta/bud;->jk()Z

    move-result v15

    if-eqz v15, :cond_4

    iget-object v3, v3, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    iget-object v4, v4, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    goto :goto_1

    :cond_4
    iget-object v8, v1, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    invoke-static {v8, v13}, Lyou/zta/sis/zta/zta/zta/vju;->igw([I[I)V

    iget-object v3, v3, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    invoke-static {v13, v3, v10}, Lyou/zta/sis/zta/zta/zta/vju;->tsu([I[I[I)V

    iget-object v3, v1, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    invoke-static {v13, v3, v13}, Lyou/zta/sis/zta/zta/zta/vju;->tsu([I[I[I)V

    iget-object v3, v4, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    invoke-static {v13, v3, v13}, Lyou/zta/sis/zta/zta/zta/vju;->tsu([I[I[I)V

    move-object v3, v10

    move-object v4, v13

    :goto_1
    invoke-static {v11}, Lyou/zta/sis/sis/kth;->create(I)[I

    move-result-object v8

    invoke-static {v3, v5, v8}, Lyou/zta/sis/zta/zta/zta/vju;->ssp([I[I[I)V

    invoke-static {v11}, Lyou/zta/sis/sis/kth;->create(I)[I

    move-result-object v5

    invoke-static {v4, v6, v5}, Lyou/zta/sis/zta/zta/zta/vju;->ssp([I[I[I)V

    invoke-static {v11, v8}, Lyou/zta/sis/sis/kth;->dma(I[I)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v11, v5}, Lyou/zta/sis/sis/kth;->dma(I[I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lyou/zta/sis/zta/zta/zta/les;->Ik()Lyou/zta/sis/zta/wtn;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-virtual {v2}, Lyou/zta/sis/zta/rtg;->getInfinity()Lyou/zta/sis/zta/wtn;

    move-result-object v0

    return-object v0

    :cond_6
    invoke-static {v8, v12}, Lyou/zta/sis/zta/zta/zta/vju;->igw([I[I)V

    invoke-static {v11}, Lyou/zta/sis/sis/kth;->create(I)[I

    move-result-object v6

    invoke-static {v12, v8, v6}, Lyou/zta/sis/zta/zta/zta/vju;->tsu([I[I[I)V

    invoke-static {v12, v3, v12}, Lyou/zta/sis/zta/zta/zta/vju;->tsu([I[I[I)V

    invoke-static {v6, v6}, Lyou/zta/sis/zta/zta/zta/vju;->kth([I[I)V

    invoke-static {v4, v6, v10}, Lyou/zta/sis/sis/ssp;->wtn([I[I[I)V

    invoke-static {v11, v12, v12, v6}, Lyou/zta/sis/sis/kth;->you(I[I[I[I)I

    move-result v3

    invoke-static {v3, v6}, Lyou/zta/sis/zta/zta/zta/vju;->cno(I[I)V

    new-instance v3, Lyou/zta/sis/zta/zta/zta/bud;

    invoke-direct {v3, v13}, Lyou/zta/sis/zta/zta/zta/bud;-><init>([I)V

    iget-object v4, v3, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    invoke-static {v5, v4}, Lyou/zta/sis/zta/zta/zta/vju;->igw([I[I)V

    iget-object v4, v3, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    invoke-static {v4, v6, v4}, Lyou/zta/sis/zta/zta/zta/vju;->ssp([I[I[I)V

    new-instance v4, Lyou/zta/sis/zta/zta/zta/bud;

    invoke-direct {v4, v6}, Lyou/zta/sis/zta/zta/zta/bud;-><init>([I)V

    iget-object v6, v3, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    iget-object v11, v4, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    invoke-static {v12, v6, v11}, Lyou/zta/sis/zta/zta/zta/vju;->ssp([I[I[I)V

    iget-object v6, v4, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    invoke-static {v6, v5, v9}, Lyou/zta/sis/sis/ssp;->wtn([I[I[I)V

    invoke-static {v10, v9, v10}, Lyou/zta/sis/zta/zta/zta/vju;->sis([I[I[I)V

    iget-object v5, v4, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    invoke-static {v10, v5}, Lyou/zta/sis/zta/zta/zta/vju;->bio([I[I)V

    new-instance v5, Lyou/zta/sis/zta/zta/zta/bud;

    invoke-direct {v5, v8}, Lyou/zta/sis/zta/zta/zta/bud;-><init>([I)V

    if-nez v14, :cond_7

    iget-object v6, v5, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    iget-object v7, v7, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    invoke-static {v6, v7, v6}, Lyou/zta/sis/zta/zta/zta/vju;->tsu([I[I[I)V

    :cond_7
    if-nez v15, :cond_8

    iget-object v6, v5, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    iget-object v1, v1, Lyou/zta/sis/zta/zta/zta/bud;->x:[I

    invoke-static {v6, v1, v6}, Lyou/zta/sis/zta/zta/zta/vju;->tsu([I[I[I)V

    :cond_8
    const/4 v1, 0x1

    new-array v6, v1, [Lyou/zta/sis/zta/cno;

    const/4 v1, 0x0

    aput-object v5, v6, v1

    new-instance v7, Lyou/zta/sis/zta/zta/zta/les;

    iget-boolean v0, v0, Lyou/zta/sis/zta/wtn;->withCompression:Z

    move-object v1, v7

    move-object v5, v6

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lyou/zta/sis/zta/zta/zta/les;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;[Lyou/zta/sis/zta/cno;Z)V

    return-object v7
.end method

.method public negate()Lyou/zta/sis/zta/wtn;
    .locals 7

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->Ck()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lyou/zta/sis/zta/zta/zta/les;

    iget-object v2, p0, Lyou/zta/sis/zta/wtn;->curve:Lyou/zta/sis/zta/rtg;

    iget-object v3, p0, Lyou/zta/sis/zta/wtn;->x:Lyou/zta/sis/zta/cno;

    iget-object v1, p0, Lyou/zta/sis/zta/wtn;->y:Lyou/zta/sis/zta/cno;

    invoke-virtual {v1}, Lyou/zta/sis/zta/cno;->negate()Lyou/zta/sis/zta/cno;

    move-result-object v4

    iget-object v5, p0, Lyou/zta/sis/zta/wtn;->gHa:[Lyou/zta/sis/zta/cno;

    iget-boolean v6, p0, Lyou/zta/sis/zta/wtn;->withCompression:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lyou/zta/sis/zta/zta/zta/les;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;[Lyou/zta/sis/zta/cno;Z)V

    return-object v0
.end method

.method public wtn(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;
    .locals 1

    if-ne p0, p1, :cond_0

    invoke-virtual {p0}, Lyou/zta/sis/zta/zta/zta/les;->Hk()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->Ck()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->Ck()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lyou/zta/sis/zta/zta/zta/les;->Ik()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v0, p0, Lyou/zta/sis/zta/wtn;->y:Lyou/zta/sis/zta/cno;

    invoke-virtual {v0}, Lyou/zta/sis/zta/cno;->isZero()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p1

    :cond_3
    invoke-virtual {p0}, Lyou/zta/sis/zta/zta/zta/les;->Ik()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    invoke-virtual {p0, p1}, Lyou/zta/sis/zta/wtn;->kth(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0
.end method
