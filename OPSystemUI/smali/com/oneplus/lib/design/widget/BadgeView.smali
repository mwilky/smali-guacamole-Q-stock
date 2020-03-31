.class public Lcom/oneplus/lib/design/widget/BadgeView;
.super Landroid/view/View;
.source "BadgeView.java"


# instance fields
.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private final mDefaultSize:I

.field private final mDefaultSizeIndeterminate:I

.field private final mDefaultTextPadding:I

.field private final mDefaultTextSize:I

.field private mNotification:Lcom/oneplus/lib/design/widget/BottomNavigationNotification;

.field private mText:Ljava/lang/String;

.field private mTextHeight:F

.field private final mTextPaint:Landroid/graphics/Paint;

.field private mTextWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/design/widget/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/oneplus/commonctrl/R$dimen;->bottom_navigation_badge_mini_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mDefaultSize:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/oneplus/commonctrl/R$dimen;->bottom_navigation_badge_size_indeterminate:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mDefaultSizeIndeterminate:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/oneplus/commonctrl/R$dimen;->bottom_navigation_badge_text_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mDefaultTextSize:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/oneplus/commonctrl/R$dimen;->bottom_navigation_badge_text_horizontal_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mDefaultTextPadding:I

    new-instance p1, Landroid/text/TextPaint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mTextPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mBackgroundPaint:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mTextPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mDefaultTextSize:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mTextPaint:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mNotification:Lcom/oneplus/lib/design/widget/BottomNavigationNotification;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->isIndeterminate()Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v3, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mDefaultSizeIndeterminate:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v7, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v8, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v9, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v10, v0, v1

    iget-object v11, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mText:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget v1, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mTextHeight:F

    const v4, 0x400a3d71    # 2.16f

    div-float/2addr v1, v4

    add-float/2addr v3, v1

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mNotification:Lcom/oneplus/lib/design/widget/BottomNavigationNotification;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->isIndeterminate()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mTextWidth:F

    iget p2, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mDefaultTextPadding:I

    mul-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    add-float/2addr p1, p2

    :goto_0
    iget p2, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mDefaultSize:I

    int-to-float p2, p2

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget v0, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mDefaultSize:I

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    :goto_1
    return-void
.end method
