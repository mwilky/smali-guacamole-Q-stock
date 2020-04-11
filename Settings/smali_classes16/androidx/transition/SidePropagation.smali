.class public Landroidx/transition/SidePropagation;
.super Landroidx/transition/VisibilityPropagation;
.source "SidePropagation.java"


# instance fields
.field private mPropagationSpeed:F

.field private mSide:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/transition/VisibilityPropagation;-><init>()V

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Landroidx/transition/SidePropagation;->mPropagationSpeed:F

    const/16 v0, 0x50

    iput v0, p0, Landroidx/transition/SidePropagation;->mSide:I

    return-void
.end method

.method private distance(Landroid/view/View;IIIIIIII)I
    .locals 6

    iget v0, p0, Landroidx/transition/SidePropagation;->mSide:I

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x1

    const v5, 0x800003

    if-ne v0, v5, :cond_2

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    if-ne v0, v4, :cond_0

    move v1, v4

    :cond_0
    move v0, v1

    if-eqz v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    move v0, v1

    goto :goto_2

    :cond_2
    const v5, 0x800005

    if-ne v0, v5, :cond_5

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    if-ne v0, v4, :cond_3

    move v1, v4

    :cond_3
    move v0, v1

    if-eqz v0, :cond_4

    move v1, v3

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    move v0, v1

    goto :goto_2

    :cond_5
    iget v0, p0, Landroidx/transition/SidePropagation;->mSide:I

    :goto_2
    const/4 v1, 0x0

    if-eq v0, v3, :cond_9

    if-eq v0, v2, :cond_8

    const/16 v2, 0x30

    if-eq v0, v2, :cond_7

    const/16 v2, 0x50

    if-eq v0, v2, :cond_6

    goto :goto_3

    :cond_6
    sub-int v2, p3, p7

    sub-int v3, p4, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int v1, v2, v3

    goto :goto_3

    :cond_7
    sub-int v2, p9, p3

    sub-int v3, p4, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int v1, v2, v3

    goto :goto_3

    :cond_8
    sub-int v2, p2, p6

    sub-int v3, p5, p3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int v1, v2, v3

    goto :goto_3

    :cond_9
    sub-int v2, p8, p2

    sub-int v3, p5, p3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int v1, v2, v3

    nop

    :goto_3
    return v1
.end method

.method private getMaxDistance(Landroid/view/ViewGroup;)I
    .locals 2

    iget v0, p0, Landroidx/transition/SidePropagation;->mSide:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const v1, 0x800003

    if-eq v0, v1, :cond_0

    const v1, 0x800005

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    return v0
.end method


# virtual methods
.method public getStartDelay(Landroid/view/ViewGroup;Landroidx/transition/Transition;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)J
    .locals 26

    move-object/from16 v10, p0

    move-object/from16 v11, p3

    const-wide/16 v12, 0x0

    if-nez v11, :cond_0

    if-nez p4, :cond_0

    return-wide v12

    :cond_0
    const/4 v0, 0x1

    invoke-virtual/range {p2 .. p2}, Landroidx/transition/Transition;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v14

    if-eqz p4, :cond_2

    invoke-virtual {v10, v11}, Landroidx/transition/SidePropagation;->getViewVisibility(Landroidx/transition/TransitionValues;)I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object/from16 v1, p4

    move v9, v0

    move-object v15, v1

    goto :goto_1

    :cond_2
    :goto_0
    move-object/from16 v1, p3

    const/4 v0, -0x1

    move v9, v0

    move-object v15, v1

    :goto_1
    invoke-virtual {v10, v15}, Landroidx/transition/SidePropagation;->getViewX(Landroidx/transition/TransitionValues;)I

    move-result v16

    invoke-virtual {v10, v15}, Landroidx/transition/SidePropagation;->getViewY(Landroidx/transition/TransitionValues;)I

    move-result v17

    const/4 v0, 0x2

    new-array v8, v0, [I

    move-object/from16 v7, p1

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v1, v8, v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int v18, v1, v2

    const/4 v1, 0x1

    aget v1, v8, v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int v19, v1, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    add-int v20, v18, v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    add-int v21, v19, v1

    if-eqz v14, :cond_3

    invoke-virtual {v14}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {v14}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    move/from16 v22, v0

    move/from16 v23, v1

    goto :goto_2

    :cond_3
    add-int v1, v18, v20

    div-int/2addr v1, v0

    add-int v2, v19, v21

    div-int/2addr v2, v0

    move/from16 v22, v1

    move/from16 v23, v2

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v22

    move/from16 v5, v23

    move/from16 v6, v18

    move/from16 v7, v19

    move-object/from16 v24, v8

    move/from16 v8, v20

    move/from16 v25, v9

    move/from16 v9, v21

    invoke-direct/range {v0 .. v9}, Landroidx/transition/SidePropagation;->distance(Landroid/view/View;IIIIIIII)I

    move-result v0

    int-to-float v0, v0

    invoke-direct/range {p0 .. p1}, Landroidx/transition/SidePropagation;->getMaxDistance(Landroid/view/ViewGroup;)I

    move-result v1

    int-to-float v1, v1

    div-float v2, v0, v1

    invoke-virtual/range {p2 .. p2}, Landroidx/transition/Transition;->getDuration()J

    move-result-wide v3

    cmp-long v5, v3, v12

    if-gez v5, :cond_4

    const-wide/16 v3, 0x12c

    :cond_4
    move/from16 v5, v25

    int-to-long v6, v5

    mul-long/2addr v6, v3

    long-to-float v6, v6

    iget v7, v10, Landroidx/transition/SidePropagation;->mPropagationSpeed:F

    div-float/2addr v6, v7

    mul-float/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-long v6, v6

    return-wide v6
.end method

.method public setPropagationSpeed(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroidx/transition/SidePropagation;->mPropagationSpeed:F

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "propagationSpeed may not be 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSide(I)V
    .locals 0

    iput p1, p0, Landroidx/transition/SidePropagation;->mSide:I

    return-void
.end method
