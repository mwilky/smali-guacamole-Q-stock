.class Lcom/oneplus/lib/widget/DayPickerViewPager;
.super Lcom/oneplus/support/viewpager/widget/ViewPager;
.source "DayPickerViewPager.java"


# instance fields
.field private final mMatchParentChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/DayPickerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/DayPickerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/DayPickerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/support/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 13

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerViewPager;->populate()V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerViewPager;->getChildCount()I

    move-result v0

    nop

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/4 v2, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    const/4 v8, -0x1

    if-ge v7, v0, :cond_4

    invoke-virtual {p0, v7}, Lcom/oneplus/lib/widget/DayPickerViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_3

    invoke-virtual {p0, v9, p1, p2}, Lcom/oneplus/lib/widget/DayPickerViewPager;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredState()I

    move-result v11

    invoke-static {v6, v11}, Lcom/oneplus/lib/widget/DayPickerViewPager;->combineMeasuredStates(II)I

    move-result v6

    if-eqz v1, :cond_3

    iget v11, v10, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;->width:I

    if-eq v11, v8, :cond_2

    iget v11, v10, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;->height:I

    if-ne v11, v8, :cond_3

    :cond_2
    iget-object v8, p0, Lcom/oneplus/lib/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerViewPager;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerViewPager;->getPaddingRight()I

    move-result v9

    add-int/2addr v7, v9

    add-int/2addr v5, v7

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerViewPager;->getPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerViewPager;->getPaddingBottom()I

    move-result v9

    add-int/2addr v7, v9

    add-int/2addr v4, v7

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerViewPager;->getSuggestedMinimumHeight()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerViewPager;->getSuggestedMinimumWidth()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x17

    if-lt v7, v9, :cond_5

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerViewPager;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v9

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_5
    invoke-static {v5, p1, v6}, Lcom/oneplus/lib/widget/DayPickerViewPager;->resolveSizeAndState(III)I

    move-result v7

    shl-int/lit8 v9, v6, 0x10

    invoke-static {v4, p2, v9}, Lcom/oneplus/lib/widget/DayPickerViewPager;->resolveSizeAndState(III)I

    move-result v9

    invoke-virtual {p0, v7, v9}, Lcom/oneplus/lib/widget/DayPickerViewPager;->setMeasuredDimension(II)V

    iget-object v7, p0, Lcom/oneplus/lib/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_8

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_8

    iget-object v7, p0, Lcom/oneplus/lib/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;

    iget v10, v9, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;->width:I

    if-ne v10, v8, :cond_6

    nop

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerViewPager;->getMeasuredWidth()I

    move-result v10

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerViewPager;->getPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerViewPager;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-static {v10, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    goto :goto_4

    :cond_6
    nop

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerViewPager;->getPaddingLeft()I

    move-result v10

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerViewPager;->getPaddingRight()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, v9, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;->width:I

    invoke-static {p1, v10, v11}, Lcom/oneplus/lib/widget/DayPickerViewPager;->getChildMeasureSpec(III)I

    move-result v10

    :goto_4
    iget v11, v9, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;->height:I

    if-ne v11, v8, :cond_7

    nop

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerViewPager;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerViewPager;->getPaddingTop()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerViewPager;->getPaddingBottom()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-static {v11, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    goto :goto_5

    :cond_7
    nop

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerViewPager;->getPaddingTop()I

    move-result v11

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerViewPager;->getPaddingBottom()I

    move-result v12

    add-int/2addr v11, v12

    iget v12, v9, Lcom/oneplus/support/viewpager/widget/ViewPager$LayoutParams;->height:I

    invoke-static {p2, v11, v12}, Lcom/oneplus/lib/widget/DayPickerViewPager;->getChildMeasureSpec(III)I

    move-result v11

    :goto_5
    invoke-virtual {v7, v10, v11}, Landroid/view/View;->measure(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
