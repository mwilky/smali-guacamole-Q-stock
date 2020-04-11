.class public Landroidx/leanback/graphics/BoundsRule;
.super Ljava/lang/Object;
.source "BoundsRule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/graphics/BoundsRule$ValueRule;
    }
.end annotation


# instance fields
.field public bottom:Landroidx/leanback/graphics/BoundsRule$ValueRule;

.field public left:Landroidx/leanback/graphics/BoundsRule$ValueRule;

.field public right:Landroidx/leanback/graphics/BoundsRule$ValueRule;

.field public top:Landroidx/leanback/graphics/BoundsRule$ValueRule;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/leanback/graphics/BoundsRule;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroidx/leanback/graphics/BoundsRule;->left:Landroidx/leanback/graphics/BoundsRule$ValueRule;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Landroidx/leanback/graphics/BoundsRule$ValueRule;

    invoke-direct {v2, v0}, Landroidx/leanback/graphics/BoundsRule$ValueRule;-><init>(Landroidx/leanback/graphics/BoundsRule$ValueRule;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Landroidx/leanback/graphics/BoundsRule;->left:Landroidx/leanback/graphics/BoundsRule$ValueRule;

    iget-object v0, p1, Landroidx/leanback/graphics/BoundsRule;->right:Landroidx/leanback/graphics/BoundsRule$ValueRule;

    if-eqz v0, :cond_1

    new-instance v2, Landroidx/leanback/graphics/BoundsRule$ValueRule;

    invoke-direct {v2, v0}, Landroidx/leanback/graphics/BoundsRule$ValueRule;-><init>(Landroidx/leanback/graphics/BoundsRule$ValueRule;)V

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    iput-object v2, p0, Landroidx/leanback/graphics/BoundsRule;->right:Landroidx/leanback/graphics/BoundsRule$ValueRule;

    iget-object v0, p1, Landroidx/leanback/graphics/BoundsRule;->top:Landroidx/leanback/graphics/BoundsRule$ValueRule;

    if-eqz v0, :cond_2

    new-instance v2, Landroidx/leanback/graphics/BoundsRule$ValueRule;

    invoke-direct {v2, v0}, Landroidx/leanback/graphics/BoundsRule$ValueRule;-><init>(Landroidx/leanback/graphics/BoundsRule$ValueRule;)V

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    iput-object v2, p0, Landroidx/leanback/graphics/BoundsRule;->top:Landroidx/leanback/graphics/BoundsRule$ValueRule;

    iget-object v0, p1, Landroidx/leanback/graphics/BoundsRule;->bottom:Landroidx/leanback/graphics/BoundsRule$ValueRule;

    if-eqz v0, :cond_3

    new-instance v1, Landroidx/leanback/graphics/BoundsRule$ValueRule;

    invoke-direct {v1, v0}, Landroidx/leanback/graphics/BoundsRule$ValueRule;-><init>(Landroidx/leanback/graphics/BoundsRule$ValueRule;)V

    :cond_3
    iput-object v1, p0, Landroidx/leanback/graphics/BoundsRule;->bottom:Landroidx/leanback/graphics/BoundsRule$ValueRule;

    return-void
.end method

.method private doCalculate(ILandroidx/leanback/graphics/BoundsRule$ValueRule;I)I
    .locals 3

    iget v0, p2, Landroidx/leanback/graphics/BoundsRule$ValueRule;->mAbsoluteValue:I

    add-int/2addr v0, p1

    iget v1, p2, Landroidx/leanback/graphics/BoundsRule$ValueRule;->mFraction:F

    int-to-float v2, p3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public calculateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Landroidx/leanback/graphics/BoundsRule;->left:Landroidx/leanback/graphics/BoundsRule$ValueRule;

    if-nez v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p2, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroidx/leanback/graphics/BoundsRule;->left:Landroidx/leanback/graphics/BoundsRule$ValueRule;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroidx/leanback/graphics/BoundsRule;->doCalculate(ILandroidx/leanback/graphics/BoundsRule$ValueRule;I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    :goto_0
    iget-object v0, p0, Landroidx/leanback/graphics/BoundsRule;->right:Landroidx/leanback/graphics/BoundsRule$ValueRule;

    if-nez v0, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroidx/leanback/graphics/BoundsRule;->right:Landroidx/leanback/graphics/BoundsRule$ValueRule;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroidx/leanback/graphics/BoundsRule;->doCalculate(ILandroidx/leanback/graphics/BoundsRule$ValueRule;I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->right:I

    :goto_1
    iget-object v0, p0, Landroidx/leanback/graphics/BoundsRule;->top:Landroidx/leanback/graphics/BoundsRule$ValueRule;

    if-nez v0, :cond_2

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p2, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :cond_2
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroidx/leanback/graphics/BoundsRule;->top:Landroidx/leanback/graphics/BoundsRule$ValueRule;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroidx/leanback/graphics/BoundsRule;->doCalculate(ILandroidx/leanback/graphics/BoundsRule$ValueRule;I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    :goto_2
    iget-object v0, p0, Landroidx/leanback/graphics/BoundsRule;->bottom:Landroidx/leanback/graphics/BoundsRule$ValueRule;

    if-nez v0, :cond_3

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    :cond_3
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroidx/leanback/graphics/BoundsRule;->bottom:Landroidx/leanback/graphics/BoundsRule$ValueRule;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroidx/leanback/graphics/BoundsRule;->doCalculate(ILandroidx/leanback/graphics/BoundsRule$ValueRule;I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    :goto_3
    return-void
.end method
