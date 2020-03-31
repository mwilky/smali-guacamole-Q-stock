.class Lcom/oneplus/lib/widget/cardview/CardViewApi21;
.super Ljava/lang/Object;
.source "CardViewApi21.java"

# interfaces
.implements Lcom/oneplus/lib/widget/cardview/CardViewImpl;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxElevation(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F
    .locals 0

    invoke-interface {p1}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->getPadding()F

    move-result p0

    return p0
.end method

.method public getMinHeight(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/cardview/CardViewApi21;->getRadius(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F

    move-result p0

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr p0, p1

    return p0
.end method

.method public getMinWidth(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/cardview/CardViewApi21;->getRadius(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F

    move-result p0

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr p0, p1

    return p0
.end method

.method public getRadius(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F
    .locals 0

    invoke-interface {p1}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->getRadius()F

    move-result p0

    return p0
.end method

.method public initStatic()V
    .locals 0

    return-void
.end method

.method public initialize(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;Landroid/content/Context;IFFF)V
    .locals 0

    new-instance p2, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;

    invoke-direct {p2, p3, p4}, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;-><init>(IF)V

    invoke-interface {p1, p2}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object p2, p1

    check-cast p2, Landroid/view/View;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {p2, p5}, Landroid/view/View;->setElevation(F)V

    invoke-virtual {p0, p1, p6}, Lcom/oneplus/lib/widget/cardview/CardViewApi21;->setMaxElevation(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;F)V

    return-void
.end method

.method public setBackgroundColor(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;I)V
    .locals 0

    invoke-interface {p1}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->setColor(I)V

    return-void
.end method

.method public setMaxElevation(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;F)V
    .locals 3

    invoke-interface {p1}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;

    invoke-interface {p1}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->getUseCompatPadding()Z

    move-result v1

    invoke-interface {p1}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->setPadding(FZZ)V

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/cardview/CardViewApi21;->updatePadding(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)V

    return-void
.end method

.method public updatePadding(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)V
    .locals 4

    invoke-interface {p1}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->getUseCompatPadding()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    invoke-interface {p1, p0, p0, p0, p0}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->setShadowPadding(IIII)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/cardview/CardViewApi21;->getMaxElevation(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F

    move-result v0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/cardview/CardViewApi21;->getRadius(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F

    move-result p0

    invoke-interface {p1}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v1

    invoke-static {v0, p0, v1}, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->calculateHorizontalPadding(FFZ)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-interface {p1}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v2

    invoke-static {v0, p0, v2}, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->calculateVerticalPadding(FFZ)F

    move-result p0

    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p0, v2

    invoke-interface {p1, v1, p0, v1, p0}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->setShadowPadding(IIII)V

    return-void
.end method
