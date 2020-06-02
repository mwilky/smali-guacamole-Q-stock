.class public Lyou/zta/sis/zta/wtn$sis;
.super Lyou/zta/sis/zta/wtn$zta;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyou/zta/sis/zta/wtn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "sis"
.end annotation


# direct methods
.method public constructor <init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Z)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lyou/zta/sis/zta/wtn$zta;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-ne v2, v0, :cond_3

    if-eqz p2, :cond_2

    iget-object p2, p0, Lyou/zta/sis/zta/wtn;->x:Lyou/zta/sis/zta/cno;

    iget-object p3, p0, Lyou/zta/sis/zta/wtn;->y:Lyou/zta/sis/zta/cno;

    invoke-static {p2, p3}, Lyou/zta/sis/zta/cno$sis;->sis(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;)V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lyou/zta/sis/zta/wtn;->x:Lyou/zta/sis/zta/cno;

    iget-object p2, p0, Lyou/zta/sis/zta/wtn;->curve:Lyou/zta/sis/zta/rtg;

    invoke-virtual {p2}, Lyou/zta/sis/zta/rtg;->getA()Lyou/zta/sis/zta/cno;

    move-result-object p2

    invoke-static {p1, p2}, Lyou/zta/sis/zta/cno$sis;->sis(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;)V

    :cond_2
    iput-boolean p4, p0, Lyou/zta/sis/zta/wtn;->withCompression:Z

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Exactly one of the field elements is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method constructor <init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;[Lyou/zta/sis/zta/cno;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lyou/zta/sis/zta/wtn$zta;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;[Lyou/zta/sis/zta/cno;)V

    iput-boolean p5, p0, Lyou/zta/sis/zta/wtn;->withCompression:Z

    return-void
.end method


# virtual methods
.method public Hk()Lyou/zta/sis/zta/wtn;
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lyou/zta/sis/zta/wtn;->Bk()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v3

    iget-object v1, v0, Lyou/zta/sis/zta/wtn;->x:Lyou/zta/sis/zta/cno;

    invoke-virtual {v1}, Lyou/zta/sis/zta/cno;->isZero()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Lyou/zta/sis/zta/rtg;->getInfinity()Lyou/zta/sis/zta/wtn;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {v3}, Lyou/zta/sis/zta/rtg;->Zj()I

    move-result v2

    if-eqz v2, :cond_10

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v5, :cond_d

    const/4 v6, 0x6

    if-ne v2, v6, :cond_c

    iget-object v2, v0, Lyou/zta/sis/zta/wtn;->y:Lyou/zta/sis/zta/cno;

    iget-object v6, v0, Lyou/zta/sis/zta/wtn;->WGa:[Lyou/zta/sis/zta/cno;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lyou/zta/sis/zta/cno;->ik()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v8, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v6}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v8

    :goto_0
    if-eqz v7, :cond_3

    move-object v9, v6

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object v9

    :goto_1
    invoke-virtual {v3}, Lyou/zta/sis/zta/rtg;->getA()Lyou/zta/sis/zta/cno;

    move-result-object v10

    if-eqz v7, :cond_4

    move-object v11, v10

    goto :goto_2

    :cond_4
    invoke-virtual {v10, v9}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v11

    :goto_2
    invoke-virtual {v2}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object v12

    invoke-virtual {v12, v8}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v12

    invoke-virtual {v12, v11}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v12

    invoke-virtual {v12}, Lyou/zta/sis/zta/cno;->isZero()Z

    move-result v13

    if-eqz v13, :cond_5

    new-instance v1, Lyou/zta/sis/zta/wtn$sis;

    invoke-virtual {v3}, Lyou/zta/sis/zta/rtg;->getB()Lyou/zta/sis/zta/cno;

    move-result-object v2

    invoke-virtual {v2}, Lyou/zta/sis/zta/cno;->jk()Lyou/zta/sis/zta/cno;

    move-result-object v2

    iget-boolean v0, v0, Lyou/zta/sis/zta/wtn;->withCompression:Z

    invoke-direct {v1, v3, v12, v2, v0}, Lyou/zta/sis/zta/wtn$sis;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Z)V

    return-object v1

    :cond_5
    invoke-virtual {v12}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object v13

    if-eqz v7, :cond_6

    move-object v14, v12

    goto :goto_3

    :cond_6
    invoke-virtual {v12, v9}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v14

    :goto_3
    invoke-virtual {v3}, Lyou/zta/sis/zta/rtg;->getB()Lyou/zta/sis/zta/cno;

    move-result-object v15

    invoke-virtual {v15}, Lyou/zta/sis/zta/cno;->bitLength()I

    move-result v4

    invoke-virtual {v3}, Lyou/zta/sis/zta/rtg;->getFieldSize()I

    move-result v16

    move-object/from16 v17, v3

    shr-int/lit8 v3, v16, 0x1

    if-ge v4, v3, :cond_9

    invoke-virtual {v2, v1}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v1

    invoke-virtual {v1}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object v1

    invoke-virtual {v15}, Lyou/zta/sis/zta/cno;->ik()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v11, v9}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v2

    invoke-virtual {v2}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object v2

    goto :goto_4

    :cond_7
    invoke-virtual {v9}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object v2

    invoke-virtual {v11, v15, v2}, Lyou/zta/sis/zta/cno;->you(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v2

    :goto_4
    invoke-virtual {v1, v12}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v3

    invoke-virtual {v3, v9}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v3

    invoke-virtual {v3, v1}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v1

    invoke-virtual {v1, v2}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v1

    invoke-virtual {v1, v13}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v1

    invoke-virtual {v10}, Lyou/zta/sis/zta/cno;->isZero()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {v10}, Lyou/zta/sis/zta/cno;->ik()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v10}, Lyou/zta/sis/zta/cno;->gk()Lyou/zta/sis/zta/cno;

    move-result-object v2

    invoke-virtual {v2, v14}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v2

    invoke-virtual {v1, v2}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v1

    goto :goto_7

    :cond_9
    if-eqz v7, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v1, v6}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v1

    :goto_5
    invoke-virtual {v1, v12, v8}, Lyou/zta/sis/zta/cno;->you(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v1

    invoke-virtual {v1, v13}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v1

    :goto_6
    invoke-virtual {v1, v14}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v1

    :cond_b
    :goto_7
    new-instance v8, Lyou/zta/sis/zta/wtn$sis;

    new-array v6, v5, [Lyou/zta/sis/zta/cno;

    const/4 v2, 0x0

    aput-object v14, v6, v2

    iget-boolean v7, v0, Lyou/zta/sis/zta/wtn;->withCompression:Z

    move-object v2, v8

    move-object/from16 v3, v17

    move-object v4, v13

    move-object v5, v1

    invoke-direct/range {v2 .. v7}, Lyou/zta/sis/zta/wtn$sis;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;[Lyou/zta/sis/zta/cno;Z)V

    return-object v8

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unsupported coordinate system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    move-object/from16 v17, v3

    iget-object v2, v0, Lyou/zta/sis/zta/wtn;->y:Lyou/zta/sis/zta/cno;

    iget-object v3, v0, Lyou/zta/sis/zta/wtn;->WGa:[Lyou/zta/sis/zta/cno;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lyou/zta/sis/zta/cno;->ik()Z

    move-result v4

    if-eqz v4, :cond_e

    move-object v6, v1

    goto :goto_8

    :cond_e
    invoke-virtual {v1, v3}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v6

    :goto_8
    if-eqz v4, :cond_f

    goto :goto_9

    :cond_f
    invoke-virtual {v2, v3}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v2

    :goto_9
    invoke-virtual {v1}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object v1

    invoke-virtual {v1, v2}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v2

    invoke-virtual {v6}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object v3

    invoke-virtual {v2, v6}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Lyou/zta/sis/zta/rtg;->getA()Lyou/zta/sis/zta/cno;

    move-result-object v7

    invoke-virtual {v4, v2, v3, v7}, Lyou/zta/sis/zta/cno;->you(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v2

    invoke-virtual {v6, v2}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v7

    invoke-virtual {v1}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object v1

    invoke-virtual {v1, v6, v2, v4}, Lyou/zta/sis/zta/cno;->you(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v1

    invoke-virtual {v6, v3}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v2

    new-instance v8, Lyou/zta/sis/zta/wtn$sis;

    new-array v6, v5, [Lyou/zta/sis/zta/cno;

    const/4 v3, 0x0

    aput-object v2, v6, v3

    iget-boolean v0, v0, Lyou/zta/sis/zta/wtn;->withCompression:Z

    move-object v2, v8

    move-object/from16 v3, v17

    move-object v4, v7

    move-object v5, v1

    move v7, v0

    invoke-direct/range {v2 .. v7}, Lyou/zta/sis/zta/wtn$sis;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;[Lyou/zta/sis/zta/cno;Z)V

    return-object v8

    :cond_10
    move-object/from16 v17, v3

    iget-object v2, v0, Lyou/zta/sis/zta/wtn;->y:Lyou/zta/sis/zta/cno;

    invoke-virtual {v2, v1}, Lyou/zta/sis/zta/cno;->tsu(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v2

    invoke-virtual {v2, v1}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v2

    invoke-virtual {v2}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object v3

    invoke-virtual {v3, v2}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Lyou/zta/sis/zta/rtg;->getA()Lyou/zta/sis/zta/cno;

    move-result-object v4

    invoke-virtual {v3, v4}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v3

    invoke-virtual {v2}, Lyou/zta/sis/zta/cno;->gk()Lyou/zta/sis/zta/cno;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lyou/zta/sis/zta/cno;->you(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v1

    new-instance v2, Lyou/zta/sis/zta/wtn$sis;

    iget-boolean v0, v0, Lyou/zta/sis/zta/wtn;->withCompression:Z

    move-object/from16 v4, v17

    invoke-direct {v2, v4, v3, v1, v0}, Lyou/zta/sis/zta/wtn$sis;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Z)V

    return-object v2
.end method

.method protected detach()Lyou/zta/sis/zta/wtn;
    .locals 4

    new-instance v0, Lyou/zta/sis/zta/wtn$sis;

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->pk()Lyou/zta/sis/zta/cno;

    move-result-object v1

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->qk()Lyou/zta/sis/zta/cno;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, p0, v3}, Lyou/zta/sis/zta/wtn$sis;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Z)V

    return-object v0
.end method

.method public kth(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lyou/zta/sis/zta/wtn;->Bk()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lyou/zta/sis/zta/wtn;->Bk()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v4

    invoke-virtual {v4}, Lyou/zta/sis/zta/rtg;->Zj()I

    move-result v2

    iget-object v3, v0, Lyou/zta/sis/zta/wtn;->x:Lyou/zta/sis/zta/cno;

    iget-object v5, v1, Lyou/zta/sis/zta/wtn;->x:Lyou/zta/sis/zta/cno;

    if-eqz v2, :cond_15

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v2, v6, :cond_e

    const/4 v8, 0x6

    if-ne v2, v8, :cond_d

    invoke-virtual {v3}, Lyou/zta/sis/zta/cno;->isZero()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v5}, Lyou/zta/sis/zta/cno;->isZero()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v4}, Lyou/zta/sis/zta/rtg;->getInfinity()Lyou/zta/sis/zta/wtn;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {v1, v0}, Lyou/zta/sis/zta/wtn;->kth(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v2, v0, Lyou/zta/sis/zta/wtn;->y:Lyou/zta/sis/zta/cno;

    iget-object v8, v0, Lyou/zta/sis/zta/wtn;->WGa:[Lyou/zta/sis/zta/cno;

    aget-object v8, v8, v7

    iget-object v9, v1, Lyou/zta/sis/zta/wtn;->y:Lyou/zta/sis/zta/cno;

    iget-object v1, v1, Lyou/zta/sis/zta/wtn;->WGa:[Lyou/zta/sis/zta/cno;

    aget-object v1, v1, v7

    invoke-virtual {v8}, Lyou/zta/sis/zta/cno;->ik()Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {v5, v8}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v11

    invoke-virtual {v9, v8}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v12

    goto :goto_0

    :cond_4
    move-object v11, v5

    move-object v12, v9

    :goto_0
    invoke-virtual {v1}, Lyou/zta/sis/zta/cno;->ik()Z

    move-result v13

    if-nez v13, :cond_5

    invoke-virtual {v3, v1}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v3

    invoke-virtual {v2, v1}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v14

    goto :goto_1

    :cond_5
    move-object v14, v2

    :goto_1
    invoke-virtual {v14, v12}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v12

    invoke-virtual {v3, v11}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v14

    invoke-virtual {v14}, Lyou/zta/sis/zta/cno;->isZero()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-virtual {v12}, Lyou/zta/sis/zta/cno;->isZero()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lyou/zta/sis/zta/wtn$sis;->Hk()Lyou/zta/sis/zta/wtn;

    move-result-object v0

    return-object v0

    :cond_6
    invoke-virtual {v4}, Lyou/zta/sis/zta/rtg;->getInfinity()Lyou/zta/sis/zta/wtn;

    move-result-object v0

    return-object v0

    :cond_7
    invoke-virtual {v5}, Lyou/zta/sis/zta/cno;->isZero()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual/range {p0 .. p0}, Lyou/zta/sis/zta/wtn;->normalize()Lyou/zta/sis/zta/wtn;

    move-result-object v1

    invoke-virtual {v1}, Lyou/zta/sis/zta/wtn;->xk()Lyou/zta/sis/zta/cno;

    move-result-object v2

    invoke-virtual {v1}, Lyou/zta/sis/zta/wtn;->yk()Lyou/zta/sis/zta/cno;

    move-result-object v1

    invoke-virtual {v1, v9}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v3

    invoke-virtual {v3, v2}, Lyou/zta/sis/zta/cno;->tsu(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v3

    invoke-virtual {v3}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object v5

    invoke-virtual {v5, v3}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v5

    invoke-virtual {v5, v2}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v5

    invoke-virtual {v4}, Lyou/zta/sis/zta/rtg;->getA()Lyou/zta/sis/zta/cno;

    move-result-object v8

    invoke-virtual {v5, v8}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v5

    invoke-virtual {v5}, Lyou/zta/sis/zta/cno;->isZero()Z

    move-result v8

    if-eqz v8, :cond_8

    new-instance v1, Lyou/zta/sis/zta/wtn$sis;

    invoke-virtual {v4}, Lyou/zta/sis/zta/rtg;->getB()Lyou/zta/sis/zta/cno;

    move-result-object v2

    invoke-virtual {v2}, Lyou/zta/sis/zta/cno;->jk()Lyou/zta/sis/zta/cno;

    move-result-object v2

    iget-boolean v0, v0, Lyou/zta/sis/zta/wtn;->withCompression:Z

    invoke-direct {v1, v4, v5, v2, v0}, Lyou/zta/sis/zta/wtn$sis;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Z)V

    return-object v1

    :cond_8
    invoke-virtual {v2, v5}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v2

    invoke-virtual {v3, v2}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v2

    invoke-virtual {v2, v5}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v2

    invoke-virtual {v2, v1}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v1

    invoke-virtual {v1, v5}, Lyou/zta/sis/zta/cno;->tsu(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v1

    invoke-virtual {v1, v5}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v1

    sget-object v2, Lyou/zta/sis/zta/sis;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v2}, Lyou/zta/sis/zta/rtg;->dma(Ljava/math/BigInteger;)Lyou/zta/sis/zta/cno;

    move-result-object v2

    move-object/from16 v16, v2

    move-object v2, v1

    move-object/from16 v1, v16

    goto :goto_3

    :cond_9
    invoke-virtual {v14}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object v5

    invoke-virtual {v12, v3}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v3

    invoke-virtual {v12, v11}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v9

    invoke-virtual {v3, v9}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v3

    invoke-virtual {v3}, Lyou/zta/sis/zta/cno;->isZero()Z

    move-result v11

    if-eqz v11, :cond_a

    new-instance v1, Lyou/zta/sis/zta/wtn$sis;

    invoke-virtual {v4}, Lyou/zta/sis/zta/rtg;->getB()Lyou/zta/sis/zta/cno;

    move-result-object v2

    invoke-virtual {v2}, Lyou/zta/sis/zta/cno;->jk()Lyou/zta/sis/zta/cno;

    move-result-object v2

    iget-boolean v0, v0, Lyou/zta/sis/zta/wtn;->withCompression:Z

    invoke-direct {v1, v4, v3, v2, v0}, Lyou/zta/sis/zta/wtn$sis;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Z)V

    return-object v1

    :cond_a
    invoke-virtual {v12, v5}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v11

    if-nez v13, :cond_b

    invoke-virtual {v11, v1}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v1

    goto :goto_2

    :cond_b
    move-object v1, v11

    :goto_2
    invoke-virtual {v9, v5}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v5

    invoke-virtual {v2, v8}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lyou/zta/sis/zta/cno;->you(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v2

    if-nez v10, :cond_c

    invoke-virtual {v1, v8}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v1

    :cond_c
    move-object v5, v3

    :goto_3
    new-instance v9, Lyou/zta/sis/zta/wtn$sis;

    new-array v8, v6, [Lyou/zta/sis/zta/cno;

    aput-object v1, v8, v7

    iget-boolean v0, v0, Lyou/zta/sis/zta/wtn;->withCompression:Z

    move-object v3, v9

    move-object v6, v2

    move-object v7, v8

    move v8, v0

    invoke-direct/range {v3 .. v8}, Lyou/zta/sis/zta/wtn$sis;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;[Lyou/zta/sis/zta/cno;Z)V

    return-object v9

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unsupported coordinate system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v2, v0, Lyou/zta/sis/zta/wtn;->y:Lyou/zta/sis/zta/cno;

    iget-object v8, v0, Lyou/zta/sis/zta/wtn;->WGa:[Lyou/zta/sis/zta/cno;

    aget-object v8, v8, v7

    iget-object v9, v1, Lyou/zta/sis/zta/wtn;->y:Lyou/zta/sis/zta/cno;

    iget-object v1, v1, Lyou/zta/sis/zta/wtn;->WGa:[Lyou/zta/sis/zta/cno;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Lyou/zta/sis/zta/cno;->ik()Z

    move-result v10

    invoke-virtual {v8, v9}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v9

    if-eqz v10, :cond_f

    move-object v11, v2

    goto :goto_4

    :cond_f
    invoke-virtual {v2, v1}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v11

    :goto_4
    invoke-virtual {v9, v11}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v9

    invoke-virtual {v8, v5}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v5

    if-eqz v10, :cond_10

    move-object v11, v3

    goto :goto_5

    :cond_10
    invoke-virtual {v3, v1}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v11

    :goto_5
    invoke-virtual {v5, v11}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v5

    invoke-virtual {v5}, Lyou/zta/sis/zta/cno;->isZero()Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-virtual {v9}, Lyou/zta/sis/zta/cno;->isZero()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual/range {p0 .. p0}, Lyou/zta/sis/zta/wtn$sis;->Hk()Lyou/zta/sis/zta/wtn;

    move-result-object v0

    return-object v0

    :cond_11
    invoke-virtual {v4}, Lyou/zta/sis/zta/rtg;->getInfinity()Lyou/zta/sis/zta/wtn;

    move-result-object v0

    return-object v0

    :cond_12
    invoke-virtual {v5}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object v11

    invoke-virtual {v11, v5}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v12

    if-eqz v10, :cond_13

    goto :goto_6

    :cond_13
    invoke-virtual {v8, v1}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v8

    :goto_6
    invoke-virtual {v9, v5}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v13

    invoke-virtual {v4}, Lyou/zta/sis/zta/rtg;->getA()Lyou/zta/sis/zta/cno;

    move-result-object v14

    invoke-virtual {v13, v9, v11, v14}, Lyou/zta/sis/zta/cno;->you(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v14

    invoke-virtual {v14, v8}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v14

    invoke-virtual {v14, v12}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v14

    invoke-virtual {v5, v14}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v15

    if-eqz v10, :cond_14

    goto :goto_7

    :cond_14
    invoke-virtual {v11, v1}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v11

    :goto_7
    invoke-virtual {v9, v3, v5, v2}, Lyou/zta/sis/zta/cno;->you(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v1

    invoke-virtual {v1, v11, v13, v14}, Lyou/zta/sis/zta/cno;->you(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v1

    invoke-virtual {v12, v8}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v2

    new-instance v9, Lyou/zta/sis/zta/wtn$sis;

    new-array v8, v6, [Lyou/zta/sis/zta/cno;

    aput-object v2, v8, v7

    iget-boolean v0, v0, Lyou/zta/sis/zta/wtn;->withCompression:Z

    move-object v3, v9

    move-object v5, v15

    move-object v6, v1

    move-object v7, v8

    move v8, v0

    invoke-direct/range {v3 .. v8}, Lyou/zta/sis/zta/wtn$sis;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;[Lyou/zta/sis/zta/cno;Z)V

    return-object v9

    :cond_15
    iget-object v2, v0, Lyou/zta/sis/zta/wtn;->y:Lyou/zta/sis/zta/cno;

    iget-object v1, v1, Lyou/zta/sis/zta/wtn;->y:Lyou/zta/sis/zta/cno;

    invoke-virtual {v3, v5}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v5

    invoke-virtual {v2, v1}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v1

    invoke-virtual {v5}, Lyou/zta/sis/zta/cno;->isZero()Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-virtual {v1}, Lyou/zta/sis/zta/cno;->isZero()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual/range {p0 .. p0}, Lyou/zta/sis/zta/wtn$sis;->Hk()Lyou/zta/sis/zta/wtn;

    move-result-object v0

    return-object v0

    :cond_16
    invoke-virtual {v4}, Lyou/zta/sis/zta/rtg;->getInfinity()Lyou/zta/sis/zta/wtn;

    move-result-object v0

    return-object v0

    :cond_17
    invoke-virtual {v1, v5}, Lyou/zta/sis/zta/cno;->tsu(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v1

    invoke-virtual {v1}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object v6

    invoke-virtual {v6, v1}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v6

    invoke-virtual {v6, v5}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v5

    invoke-virtual {v4}, Lyou/zta/sis/zta/rtg;->getA()Lyou/zta/sis/zta/cno;

    move-result-object v6

    invoke-virtual {v5, v6}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v5

    invoke-virtual {v3, v5}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v3

    invoke-virtual {v1, v3}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v1

    invoke-virtual {v1, v5}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v1

    invoke-virtual {v1, v2}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v1

    new-instance v2, Lyou/zta/sis/zta/wtn$sis;

    iget-boolean v0, v0, Lyou/zta/sis/zta/wtn;->withCompression:Z

    invoke-direct {v2, v4, v5, v1, v0}, Lyou/zta/sis/zta/wtn$sis;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Z)V

    return-object v2
.end method

.method public negate()Lyou/zta/sis/zta/wtn;
    .locals 8

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->Bk()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v3, p0, Lyou/zta/sis/zta/wtn;->x:Lyou/zta/sis/zta/cno;

    invoke-virtual {v3}, Lyou/zta/sis/zta/cno;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->sk()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v4, 0x5

    if-eq v0, v4, :cond_3

    const/4 v4, 0x6

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lyou/zta/sis/zta/wtn;->y:Lyou/zta/sis/zta/cno;

    iget-object v4, p0, Lyou/zta/sis/zta/wtn;->WGa:[Lyou/zta/sis/zta/cno;

    aget-object v4, v4, v2

    new-instance v7, Lyou/zta/sis/zta/wtn$sis;

    iget-object v5, p0, Lyou/zta/sis/zta/wtn;->curve:Lyou/zta/sis/zta/rtg;

    invoke-virtual {v0, v4}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v0

    new-array v6, v1, [Lyou/zta/sis/zta/cno;

    aput-object v4, v6, v2

    iget-boolean p0, p0, Lyou/zta/sis/zta/wtn;->withCompression:Z

    move-object v1, v7

    move-object v2, v5

    move-object v4, v0

    move-object v5, v6

    move v6, p0

    invoke-direct/range {v1 .. v6}, Lyou/zta/sis/zta/wtn$sis;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;[Lyou/zta/sis/zta/cno;Z)V

    return-object v7

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "unsupported coordinate system"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-object v0, p0, Lyou/zta/sis/zta/wtn;->y:Lyou/zta/sis/zta/cno;

    new-instance v1, Lyou/zta/sis/zta/wtn$sis;

    iget-object v2, p0, Lyou/zta/sis/zta/wtn;->curve:Lyou/zta/sis/zta/rtg;

    invoke-virtual {v0}, Lyou/zta/sis/zta/cno;->gk()Lyou/zta/sis/zta/cno;

    move-result-object v0

    iget-boolean p0, p0, Lyou/zta/sis/zta/wtn;->withCompression:Z

    invoke-direct {v1, v2, v3, v0, p0}, Lyou/zta/sis/zta/wtn$sis;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Z)V

    return-object v1

    :cond_4
    iget-object v0, p0, Lyou/zta/sis/zta/wtn;->y:Lyou/zta/sis/zta/cno;

    iget-object v4, p0, Lyou/zta/sis/zta/wtn;->WGa:[Lyou/zta/sis/zta/cno;

    aget-object v4, v4, v2

    new-instance v7, Lyou/zta/sis/zta/wtn$sis;

    iget-object v5, p0, Lyou/zta/sis/zta/wtn;->curve:Lyou/zta/sis/zta/rtg;

    invoke-virtual {v0, v3}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v0

    new-array v6, v1, [Lyou/zta/sis/zta/cno;

    aput-object v4, v6, v2

    iget-boolean p0, p0, Lyou/zta/sis/zta/wtn;->withCompression:Z

    move-object v1, v7

    move-object v2, v5

    move-object v4, v0

    move-object v5, v6

    move v6, p0

    invoke-direct/range {v1 .. v6}, Lyou/zta/sis/zta/wtn$sis;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;[Lyou/zta/sis/zta/cno;Z)V

    return-object v7

    :cond_5
    iget-object v0, p0, Lyou/zta/sis/zta/wtn;->y:Lyou/zta/sis/zta/cno;

    new-instance v1, Lyou/zta/sis/zta/wtn$sis;

    iget-object v2, p0, Lyou/zta/sis/zta/wtn;->curve:Lyou/zta/sis/zta/rtg;

    invoke-virtual {v0, v3}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v0

    iget-boolean p0, p0, Lyou/zta/sis/zta/wtn;->withCompression:Z

    invoke-direct {v1, v2, v3, v0, p0}, Lyou/zta/sis/zta/wtn$sis;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Z)V

    return-object v1
.end method

.method protected rk()Z
    .locals 4

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->uk()Lyou/zta/sis/zta/cno;

    move-result-object v0

    invoke-virtual {v0}, Lyou/zta/sis/zta/cno;->isZero()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->vk()Lyou/zta/sis/zta/cno;

    move-result-object v1

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->sk()I

    move-result p0

    const/4 v3, 0x5

    if-eq p0, v3, :cond_1

    const/4 v3, 0x6

    if-eq p0, v3, :cond_1

    invoke-virtual {v1, v0}, Lyou/zta/sis/zta/cno;->tsu(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object p0

    invoke-virtual {p0}, Lyou/zta/sis/zta/cno;->kk()Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {v1}, Lyou/zta/sis/zta/cno;->kk()Z

    move-result p0

    invoke-virtual {v0}, Lyou/zta/sis/zta/cno;->kk()Z

    move-result v0

    if-eq p0, v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public wtn(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;
    .locals 9

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->Bk()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->Bk()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn$sis;->Hk()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v1

    iget-object v0, p0, Lyou/zta/sis/zta/wtn;->x:Lyou/zta/sis/zta/cno;

    invoke-virtual {v0}, Lyou/zta/sis/zta/cno;->isZero()Z

    move-result v2

    if-eqz v2, :cond_2

    return-object p1

    :cond_2
    invoke-virtual {v1}, Lyou/zta/sis/zta/rtg;->Zj()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_4

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn$sis;->Hk()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    invoke-virtual {p0, p1}, Lyou/zta/sis/zta/wtn;->kth(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0

    :cond_4
    iget-object v2, p1, Lyou/zta/sis/zta/wtn;->x:Lyou/zta/sis/zta/cno;

    iget-object v3, p1, Lyou/zta/sis/zta/wtn;->WGa:[Lyou/zta/sis/zta/cno;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2}, Lyou/zta/sis/zta/cno;->isZero()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v3}, Lyou/zta/sis/zta/cno;->ik()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lyou/zta/sis/zta/wtn;->y:Lyou/zta/sis/zta/cno;

    iget-object v5, p0, Lyou/zta/sis/zta/wtn;->WGa:[Lyou/zta/sis/zta/cno;

    aget-object v5, v5, v4

    iget-object v6, p1, Lyou/zta/sis/zta/wtn;->y:Lyou/zta/sis/zta/cno;

    invoke-virtual {v0}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object v0

    invoke-virtual {v3}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object v7

    invoke-virtual {v5}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object v8

    invoke-virtual {v3, v5}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v3

    invoke-virtual {v1}, Lyou/zta/sis/zta/rtg;->getA()Lyou/zta/sis/zta/cno;

    move-result-object v5

    invoke-virtual {v5, v8}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v5

    invoke-virtual {v5, v7}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v5

    invoke-virtual {v5, v3}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v3

    invoke-virtual {v6}, Lyou/zta/sis/zta/cno;->gk()Lyou/zta/sis/zta/cno;

    move-result-object v5

    invoke-virtual {v1}, Lyou/zta/sis/zta/rtg;->getA()Lyou/zta/sis/zta/cno;

    move-result-object v6

    invoke-virtual {v6, v5}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v6

    invoke-virtual {v6, v8}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v6

    invoke-virtual {v6, v7}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v6

    invoke-virtual {v6, v3, v0, v8}, Lyou/zta/sis/zta/cno;->you(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v0

    invoke-virtual {v2, v8}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v2

    invoke-virtual {v2, v3}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v6

    invoke-virtual {v6}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object v6

    invoke-virtual {v6}, Lyou/zta/sis/zta/cno;->isZero()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v0}, Lyou/zta/sis/zta/cno;->isZero()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->Hk()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-virtual {v1}, Lyou/zta/sis/zta/rtg;->getInfinity()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-virtual {v0}, Lyou/zta/sis/zta/cno;->isZero()Z

    move-result p1

    if-eqz p1, :cond_8

    new-instance p1, Lyou/zta/sis/zta/wtn$sis;

    invoke-virtual {v1}, Lyou/zta/sis/zta/rtg;->getB()Lyou/zta/sis/zta/cno;

    move-result-object v2

    invoke-virtual {v2}, Lyou/zta/sis/zta/cno;->jk()Lyou/zta/sis/zta/cno;

    move-result-object v2

    iget-boolean p0, p0, Lyou/zta/sis/zta/wtn;->withCompression:Z

    invoke-direct {p1, v1, v0, v2, p0}, Lyou/zta/sis/zta/wtn$sis;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Z)V

    return-object p1

    :cond_8
    invoke-virtual {v0}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object p1

    invoke-virtual {p1, v2}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v2

    invoke-virtual {v0, v6}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object p1

    invoke-virtual {p1, v8}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object p1

    invoke-virtual {v0, v6}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v0

    invoke-virtual {v0}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object v0

    invoke-virtual {v0, v3, v5, p1}, Lyou/zta/sis/zta/cno;->you(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v3

    new-instance v6, Lyou/zta/sis/zta/wtn$sis;

    const/4 v0, 0x1

    new-array v5, v0, [Lyou/zta/sis/zta/cno;

    aput-object p1, v5, v4

    iget-boolean p0, p0, Lyou/zta/sis/zta/wtn;->withCompression:Z

    move-object v0, v6

    move-object v4, v5

    move v5, p0

    invoke-direct/range {v0 .. v5}, Lyou/zta/sis/zta/wtn$sis;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;[Lyou/zta/sis/zta/cno;Z)V

    return-object v6
.end method

.method public yk()Lyou/zta/sis/zta/cno;
    .locals 5

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->sk()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x6

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    iget-object p0, p0, Lyou/zta/sis/zta/wtn;->y:Lyou/zta/sis/zta/cno;

    return-object p0

    :cond_0
    iget-object v1, p0, Lyou/zta/sis/zta/wtn;->x:Lyou/zta/sis/zta/cno;

    iget-object v3, p0, Lyou/zta/sis/zta/wtn;->y:Lyou/zta/sis/zta/cno;

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->Bk()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1}, Lyou/zta/sis/zta/cno;->isZero()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v1}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v3

    invoke-virtual {v3, v1}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v1

    if-ne v2, v0, :cond_2

    iget-object p0, p0, Lyou/zta/sis/zta/wtn;->WGa:[Lyou/zta/sis/zta/cno;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lyou/zta/sis/zta/cno;->ik()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1, p0}, Lyou/zta/sis/zta/cno;->tsu(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v1

    :cond_2
    return-object v1

    :cond_3
    :goto_0
    return-object v3
.end method
