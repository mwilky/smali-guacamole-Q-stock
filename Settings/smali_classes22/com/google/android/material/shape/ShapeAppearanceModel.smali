.class public Lcom/google/android/material/shape/ShapeAppearanceModel;
.super Ljava/lang/Object;
.source "ShapeAppearanceModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/shape/ShapeAppearanceModel$OnChangedListener;
    }
.end annotation


# instance fields
.field private bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field private bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

.field private bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

.field private leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field private final onChangedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/material/shape/ShapeAppearanceModel$OnChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field private topEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field private topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

.field private topRightCorner:Lcom/google/android/material/shape/CornerTreatment;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->onChangedListeners:Ljava/util/Set;

    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setLeftEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setRightEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->onShapeAppearanceModelChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/shape/ShapeAppearanceModel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V
    .locals 16
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v2, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->onChangedListeners:Ljava/util/Set;

    sget-object v2, Lcom/google/android/material/R$styleable;->MaterialShape:[I

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v6, Lcom/google/android/material/R$styleable;->MaterialShape_shapeAppearance:I

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    sget v8, Lcom/google/android/material/R$styleable;->MaterialShape_shapeAppearanceOverlay:I

    invoke-virtual {v2, v8, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v8, :cond_0

    new-instance v9, Landroid/view/ContextThemeWrapper;

    invoke-direct {v9, v1, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v1, v9

    move v6, v8

    :cond_0
    sget-object v9, Lcom/google/android/material/R$styleable;->ShapeAppearance:[I

    invoke-virtual {v1, v6, v9}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v9, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamily:I

    invoke-virtual {v2, v9, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    sget v9, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamilyTopLeft:I

    invoke-virtual {v2, v9, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    sget v10, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamilyTopRight:I

    invoke-virtual {v2, v10, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    sget v11, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamilyBottomRight:I

    invoke-virtual {v2, v11, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    sget v12, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamilyBottomLeft:I

    invoke-virtual {v2, v12, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    sget v13, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSize:I

    move/from16 v14, p5

    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    sget v15, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSizeTopLeft:I

    invoke-virtual {v2, v15, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    move-object/from16 p1, v1

    sget v1, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSizeTopRight:I

    invoke-virtual {v2, v1, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    sget v3, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSizeBottomRight:I

    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    sget v4, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSizeBottomLeft:I

    invoke-virtual {v2, v4, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    nop

    invoke-static {v9, v15}, Lcom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(II)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    nop

    invoke-static {v10, v1}, Lcom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(II)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    nop

    invoke-static {v11, v3}, Lcom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(II)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    nop

    invoke-static {v12, v4}, Lcom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(II)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setRightEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setLeftEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->onChangedListeners:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/CornerTreatment;->clone()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/CornerTreatment;->clone()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/CornerTreatment;->clone()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/CornerTreatment;->clone()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getLeftEdge()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/EdgeTreatment;->clone()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setLeftEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopEdge()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/EdgeTreatment;->clone()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getRightEdge()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/EdgeTreatment;->clone()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setRightEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomEdge()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/EdgeTreatment;->clone()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    return-void
.end method

.method private onShapeAppearanceModelChanged()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->onChangedListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/shape/ShapeAppearanceModel$OnChangedListener;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$OnChangedListener;->onShapeAppearanceModelChanged()V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method private setBottomEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    if-eq v1, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setBottomLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    if-eq v1, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setBottomLeftCornerSizeInternal(F)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    iget v1, v1, Lcom/google/android/material/shape/CornerTreatment;->cornerSize:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    iput p1, v1, Lcom/google/android/material/shape/CornerTreatment;->cornerSize:F

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setBottomRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    if-eq v1, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setBottomRightCornerSizeInternal(F)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    iget v1, v1, Lcom/google/android/material/shape/CornerTreatment;->cornerSize:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    iput p1, v1, Lcom/google/android/material/shape/CornerTreatment;->cornerSize:F

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setLeftEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    if-eq v1, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setRightEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    if-eq v1, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setTopEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    if-eq v1, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setTopLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    if-eq v1, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setTopLeftCornerSizeInternal(F)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    iget v1, v1, Lcom/google/android/material/shape/CornerTreatment;->cornerSize:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    iput p1, v1, Lcom/google/android/material/shape/CornerTreatment;->cornerSize:F

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setTopRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    if-eq v1, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setTopRightCornerSizeInternal(F)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    iget v1, v1, Lcom/google/android/material/shape/CornerTreatment;->cornerSize:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    iput p1, v1, Lcom/google/android/material/shape/CornerTreatment;->cornerSize:F

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method addOnChangedListener(Lcom/google/android/material/shape/ShapeAppearanceModel$OnChangedListener;)V
    .locals 1
    .param p1    # Lcom/google/android/material/shape/ShapeAppearanceModel$OnChangedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->onChangedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getBottomEdge()Lcom/google/android/material/shape/EdgeTreatment;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-object v0
.end method

.method public getBottomLeftCorner()Lcom/google/android/material/shape/CornerTreatment;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-object v0
.end method

.method public getBottomRightCorner()Lcom/google/android/material/shape/CornerTreatment;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-object v0
.end method

.method public getLeftEdge()Lcom/google/android/material/shape/EdgeTreatment;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-object v0
.end method

.method public getRightEdge()Lcom/google/android/material/shape/EdgeTreatment;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-object v0
.end method

.method public getTopEdge()Lcom/google/android/material/shape/EdgeTreatment;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-object v0
.end method

.method public getTopLeftCorner()Lcom/google/android/material/shape/CornerTreatment;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-object v0
.end method

.method public getTopRightCorner()Lcom/google/android/material/shape/CornerTreatment;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-object v0
.end method

.method public isRoundRect()Z
    .locals 6
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/android/material/shape/EdgeTreatment;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/google/android/material/shape/EdgeTreatment;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/google/android/material/shape/EdgeTreatment;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/google/android/material/shape/EdgeTreatment;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    invoke-virtual {v3}, Lcom/google/android/material/shape/CornerTreatment;->getCornerSize()F

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    invoke-virtual {v4}, Lcom/google/android/material/shape/CornerTreatment;->getCornerSize()F

    move-result v4

    cmpl-float v4, v4, v3

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    invoke-virtual {v4}, Lcom/google/android/material/shape/CornerTreatment;->getCornerSize()F

    move-result v4

    cmpl-float v4, v4, v3

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    invoke-virtual {v4}, Lcom/google/android/material/shape/CornerTreatment;->getCornerSize()F

    move-result v4

    cmpl-float v4, v4, v3

    if-nez v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    iget-object v5, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    instance-of v5, v5, Lcom/google/android/material/shape/RoundedCornerTreatment;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    instance-of v5, v5, Lcom/google/android/material/shape/RoundedCornerTreatment;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    instance-of v5, v5, Lcom/google/android/material/shape/RoundedCornerTreatment;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    instance-of v5, v5, Lcom/google/android/material/shape/RoundedCornerTreatment;

    if-eqz v5, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    if-eqz v0, :cond_3

    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    return v1
.end method

.method removeOnChangedListener(Lcom/google/android/material/shape/ShapeAppearanceModel$OnChangedListener;)V
    .locals 1
    .param p1    # Lcom/google/android/material/shape/ShapeAppearanceModel$OnChangedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->onChangedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAllCorners(II)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    invoke-static {p1, p2}, Lcom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(II)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setAllCorners(Lcom/google/android/material/shape/CornerTreatment;)V

    return-void
.end method

.method public setAllCorners(Lcom/google/android/material/shape/CornerTreatment;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/material/shape/CornerTreatment;->clone()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/material/shape/CornerTreatment;->clone()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/google/android/material/shape/CornerTreatment;->clone()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/google/android/material/shape/CornerTreatment;->clone()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->onShapeAppearanceModelChanged()V

    :cond_0
    return-void
.end method

.method public setAllEdges(Lcom/google/android/material/shape/EdgeTreatment;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/material/shape/EdgeTreatment;->clone()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setLeftEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/material/shape/EdgeTreatment;->clone()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/google/android/material/shape/EdgeTreatment;->clone()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setRightEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/google/android/material/shape/EdgeTreatment;->clone()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->onShapeAppearanceModelChanged()V

    :cond_0
    return-void
.end method

.method public setBottomEdge(Lcom/google/android/material/shape/EdgeTreatment;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->onShapeAppearanceModelChanged()V

    :cond_0
    return-void
.end method

.method public setBottomLeftCorner(II)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    invoke-static {p1, p2}, Lcom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(II)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomLeftCorner(Lcom/google/android/material/shape/CornerTreatment;)V

    return-void
.end method

.method public setBottomLeftCorner(Lcom/google/android/material/shape/CornerTreatment;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->onShapeAppearanceModelChanged()V

    :cond_0
    return-void
.end method

.method public setBottomRightCorner(II)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    invoke-static {p1, p2}, Lcom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(II)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomRightCorner(Lcom/google/android/material/shape/CornerTreatment;)V

    return-void
.end method

.method public setBottomRightCorner(Lcom/google/android/material/shape/CornerTreatment;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->onShapeAppearanceModelChanged()V

    :cond_0
    return-void
.end method

.method public setCornerRadii(FFFF)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopLeftCornerSizeInternal(F)Z

    move-result v0

    invoke-direct {p0, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopRightCornerSizeInternal(F)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {p0, p3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomRightCornerSizeInternal(F)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {p0, p4}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomLeftCornerSizeInternal(F)Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->onShapeAppearanceModelChanged()V

    :cond_0
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 0

    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setCornerRadii(FFFF)V

    return-void
.end method

.method public setCornerTreatments(Lcom/google/android/material/shape/CornerTreatment;Lcom/google/android/material/shape/CornerTreatment;Lcom/google/android/material/shape/CornerTreatment;Lcom/google/android/material/shape/CornerTreatment;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    move-result v0

    invoke-direct {p0, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {p0, p3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {p0, p4}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->onShapeAppearanceModelChanged()V

    :cond_0
    return-void
.end method

.method public setEdgeTreatments(Lcom/google/android/material/shape/EdgeTreatment;Lcom/google/android/material/shape/EdgeTreatment;Lcom/google/android/material/shape/EdgeTreatment;Lcom/google/android/material/shape/EdgeTreatment;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setLeftEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    move-result v0

    invoke-direct {p0, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {p0, p3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setRightEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {p0, p4}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->onShapeAppearanceModelChanged()V

    :cond_0
    return-void
.end method

.method public setLeftEdge(Lcom/google/android/material/shape/EdgeTreatment;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setLeftEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->onShapeAppearanceModelChanged()V

    :cond_0
    return-void
.end method

.method public setRightEdge(Lcom/google/android/material/shape/EdgeTreatment;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setRightEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->onShapeAppearanceModelChanged()V

    :cond_0
    return-void
.end method

.method public setTopEdge(Lcom/google/android/material/shape/EdgeTreatment;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->onShapeAppearanceModelChanged()V

    :cond_0
    return-void
.end method

.method public setTopLeftCorner(II)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    invoke-static {p1, p2}, Lcom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(II)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopLeftCorner(Lcom/google/android/material/shape/CornerTreatment;)V

    return-void
.end method

.method public setTopLeftCorner(Lcom/google/android/material/shape/CornerTreatment;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->onShapeAppearanceModelChanged()V

    :cond_0
    return-void
.end method

.method public setTopRightCorner(II)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    invoke-static {p1, p2}, Lcom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(II)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopRightCorner(Lcom/google/android/material/shape/CornerTreatment;)V

    return-void
.end method

.method public setTopRightCorner(Lcom/google/android/material/shape/CornerTreatment;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->onShapeAppearanceModelChanged()V

    :cond_0
    return-void
.end method
