.class public Landroidx/leanback/widget/DetailsParallaxDrawable;
.super Landroidx/leanback/graphics/CompositeDrawable;
.source "DetailsParallaxDrawable.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mBottomDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/leanback/widget/DetailsParallax;)V
    .locals 8

    invoke-direct {p0}, Landroidx/leanback/graphics/CompositeDrawable;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/leanback/R$dimen;->lb_details_cover_drawable_parallax_movement:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    neg-int v0, v0

    new-instance v1, Landroidx/leanback/graphics/FitWidthBitmapDrawable;

    invoke-direct {v1}, Landroidx/leanback/graphics/FitWidthBitmapDrawable;-><init>()V

    new-instance v7, Landroidx/leanback/widget/ParallaxTarget$PropertyValuesHolderTarget;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v3, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    const-string v3, "verticalOffset"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    invoke-direct {v7, v1, v2}, Landroidx/leanback/widget/ParallaxTarget$PropertyValuesHolderTarget;-><init>(Ljava/lang/Object;Landroid/animation/PropertyValuesHolder;)V

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroidx/leanback/widget/DetailsParallaxDrawable;->init(Landroid/content/Context;Landroidx/leanback/widget/DetailsParallax;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroidx/leanback/widget/ParallaxTarget;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/leanback/widget/DetailsParallax;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroidx/leanback/widget/ParallaxTarget;)V
    .locals 0

    invoke-direct {p0}, Landroidx/leanback/graphics/CompositeDrawable;-><init>()V

    invoke-virtual/range {p0 .. p5}, Landroidx/leanback/widget/DetailsParallaxDrawable;->init(Landroid/content/Context;Landroidx/leanback/widget/DetailsParallax;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroidx/leanback/widget/ParallaxTarget;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/leanback/widget/DetailsParallax;Landroid/graphics/drawable/Drawable;Landroidx/leanback/widget/ParallaxTarget;)V
    .locals 6

    invoke-direct {p0}, Landroidx/leanback/graphics/CompositeDrawable;-><init>()V

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/leanback/widget/DetailsParallaxDrawable;->init(Landroid/content/Context;Landroidx/leanback/widget/DetailsParallax;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroidx/leanback/widget/ParallaxTarget;)V

    return-void
.end method

.method private static getDefaultBackgroundColor(Landroid/content/Context;)I
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroidx/leanback/R$attr;->defaultBrandColorDark:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/leanback/R$color;->lb_default_brand_color_dark:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    return v1
.end method


# virtual methods
.method connect(Landroid/content/Context;Landroidx/leanback/widget/DetailsParallax;Landroidx/leanback/widget/ParallaxTarget;)V
    .locals 10

    invoke-virtual {p2}, Landroidx/leanback/widget/DetailsParallax;->getOverviewRowTop()Landroidx/leanback/widget/Parallax$IntProperty;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/leanback/widget/DetailsParallax;->getOverviewRowBottom()Landroidx/leanback/widget/Parallax$IntProperty;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroidx/leanback/R$dimen;->lb_details_v2_align_pos_for_actions:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroidx/leanback/R$dimen;->lb_details_v2_align_pos_for_description:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v4, 0x2

    new-array v5, v4, [Landroidx/leanback/widget/Parallax$PropertyMarkerValue;

    invoke-virtual {v0, v2}, Landroidx/leanback/widget/Parallax$IntProperty;->atAbsolute(I)Landroidx/leanback/widget/Parallax$PropertyMarkerValue;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v0, v3}, Landroidx/leanback/widget/Parallax$IntProperty;->atAbsolute(I)Landroidx/leanback/widget/Parallax$PropertyMarkerValue;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-virtual {p2, v5}, Landroidx/leanback/widget/DetailsParallax;->addEffect([Landroidx/leanback/widget/Parallax$PropertyMarkerValue;)Landroidx/leanback/widget/ParallaxEffect;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroidx/leanback/widget/ParallaxEffect;->target(Landroidx/leanback/widget/ParallaxTarget;)Landroidx/leanback/widget/ParallaxEffect;

    new-array v5, v4, [Landroidx/leanback/widget/Parallax$PropertyMarkerValue;

    invoke-virtual {v1}, Landroidx/leanback/widget/Parallax$IntProperty;->atMax()Landroidx/leanback/widget/Parallax$PropertyMarkerValue;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v1}, Landroidx/leanback/widget/Parallax$IntProperty;->atMin()Landroidx/leanback/widget/Parallax$PropertyMarkerValue;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p2, v5}, Landroidx/leanback/widget/DetailsParallax;->addEffect([Landroidx/leanback/widget/Parallax$PropertyMarkerValue;)Landroidx/leanback/widget/ParallaxEffect;

    move-result-object v5

    invoke-virtual {p0, v8}, Landroidx/leanback/widget/DetailsParallaxDrawable;->getChildAt(I)Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable;

    move-result-object v6

    sget-object v9, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable;->TOP_ABSOLUTE:Landroid/util/Property;

    invoke-virtual {v5, v6, v9}, Landroidx/leanback/widget/ParallaxEffect;->target(Ljava/lang/Object;Landroid/util/Property;)Landroidx/leanback/widget/ParallaxEffect;

    new-array v4, v4, [Landroidx/leanback/widget/Parallax$PropertyMarkerValue;

    invoke-virtual {v0}, Landroidx/leanback/widget/Parallax$IntProperty;->atMax()Landroidx/leanback/widget/Parallax$PropertyMarkerValue;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v0}, Landroidx/leanback/widget/Parallax$IntProperty;->atMin()Landroidx/leanback/widget/Parallax$PropertyMarkerValue;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p2, v4}, Landroidx/leanback/widget/DetailsParallax;->addEffect([Landroidx/leanback/widget/Parallax$PropertyMarkerValue;)Landroidx/leanback/widget/ParallaxEffect;

    move-result-object v4

    invoke-virtual {p0, v7}, Landroidx/leanback/widget/DetailsParallaxDrawable;->getChildAt(I)Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable;

    move-result-object v5

    sget-object v6, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable;->BOTTOM_ABSOLUTE:Landroid/util/Property;

    invoke-virtual {v4, v5, v6}, Landroidx/leanback/widget/ParallaxEffect;->target(Ljava/lang/Object;Landroid/util/Property;)Landroidx/leanback/widget/ParallaxEffect;

    return-void
.end method

.method public getBottomDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/DetailsParallaxDrawable;->mBottomDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCoverDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/DetailsParallaxDrawable;->getChildAt(I)Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget-object v0, p0, Landroidx/leanback/widget/DetailsParallaxDrawable;->mBottomDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    return v0
.end method

.method init(Landroid/content/Context;Landroidx/leanback/widget/DetailsParallax;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroidx/leanback/widget/ParallaxTarget;)V
    .locals 2

    instance-of v0, p4, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroidx/leanback/widget/DetailsParallaxDrawable;->getDefaultBackgroundColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    :cond_0
    invoke-virtual {p0, p3}, Landroidx/leanback/widget/DetailsParallaxDrawable;->addChildDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object p4, p0, Landroidx/leanback/widget/DetailsParallaxDrawable;->mBottomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p4}, Landroidx/leanback/widget/DetailsParallaxDrawable;->addChildDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1, p2, p5}, Landroidx/leanback/widget/DetailsParallaxDrawable;->connect(Landroid/content/Context;Landroidx/leanback/widget/DetailsParallax;Landroidx/leanback/widget/ParallaxTarget;)V

    return-void
.end method

.method public setSolidColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/leanback/widget/DetailsParallaxDrawable;->mBottomDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    return-void
.end method
