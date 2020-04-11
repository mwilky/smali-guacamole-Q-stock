.class public Lcom/google/android/setupdesign/items/Item;
.super Lcom/google/android/setupdesign/items/AbstractItem;
.source "Item.java"


# instance fields
.field private enabled:Z

.field private icon:Landroid/graphics/drawable/Drawable;

.field private iconGravity:I

.field private iconTint:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private layoutRes:I

.field private summary:Ljava/lang/CharSequence;

.field private title:Ljava/lang/CharSequence;

.field private visible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/setupdesign/items/AbstractItem;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/Item;->enabled:Z

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/Item;->visible:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/setupdesign/items/Item;->iconTint:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/google/android/setupdesign/items/Item;->iconGravity:I

    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->getDefaultLayoutResource()I

    move-result v0

    iput v0, p0, Lcom/google/android/setupdesign/items/Item;->layoutRes:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/items/AbstractItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/Item;->enabled:Z

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/Item;->visible:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/setupdesign/items/Item;->iconTint:I

    const/16 v2, 0x10

    iput v2, p0, Lcom/google/android/setupdesign/items/Item;->iconGravity:I

    sget-object v3, Lcom/google/android/setupdesign/R$styleable;->SudItem:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    sget v4, Lcom/google/android/setupdesign/R$styleable;->SudItem_android_enabled:I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/setupdesign/items/Item;->enabled:Z

    sget v4, Lcom/google/android/setupdesign/R$styleable;->SudItem_android_icon:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/setupdesign/items/Item;->icon:Landroid/graphics/drawable/Drawable;

    sget v4, Lcom/google/android/setupdesign/R$styleable;->SudItem_android_title:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/setupdesign/items/Item;->title:Ljava/lang/CharSequence;

    sget v4, Lcom/google/android/setupdesign/R$styleable;->SudItem_android_summary:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/setupdesign/items/Item;->summary:Ljava/lang/CharSequence;

    sget v4, Lcom/google/android/setupdesign/R$styleable;->SudItem_android_layout:I

    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->getDefaultLayoutResource()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/google/android/setupdesign/items/Item;->layoutRes:I

    sget v4, Lcom/google/android/setupdesign/R$styleable;->SudItem_android_visible:I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/Item;->visible:Z

    sget v0, Lcom/google/android/setupdesign/R$styleable;->SudItem_sudIconTint:I

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/setupdesign/items/Item;->iconTint:I

    sget v0, Lcom/google/android/setupdesign/R$styleable;->SudItem_sudIconGravity:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/setupdesign/items/Item;->iconGravity:I

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->isVisible()Z

    move-result v0

    return v0
.end method

.method protected getDefaultLayoutResource()I
    .locals 1

    sget v0, Lcom/google/android/setupdesign/R$layout;->sud_items_default:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/setupdesign/items/Item;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconGravity()I
    .locals 1

    iget v0, p0, Lcom/google/android/setupdesign/items/Item;->iconGravity:I

    return v0
.end method

.method public getIconTint()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget v0, p0, Lcom/google/android/setupdesign/items/Item;->iconTint:I

    return v0
.end method

.method public getLayoutResource()I
    .locals 1

    iget v0, p0, Lcom/google/android/setupdesign/items/Item;->layoutRes:I

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/google/android/setupdesign/items/Item;->summary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/google/android/setupdesign/items/Item;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getViewId()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->getId()I

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/setupdesign/items/Item;->enabled:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/setupdesign/items/Item;->visible:Z

    return v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 10

    sget v0, Lcom/google/android/setupdesign/R$id;->sud_items_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/google/android/setupdesign/R$id;->sud_items_summary:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    sget v5, Lcom/google/android/setupdesign/R$id;->sud_items_icon_container:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_3

    sget v4, Lcom/google/android/setupdesign/R$id;->sud_items_icon:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v4, v6}, Lcom/google/android/setupdesign/items/Item;->onMergeIconStateAndLevels(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v7, p0, Lcom/google/android/setupdesign/items/Item;->iconTint:I

    if-eqz v7, :cond_1

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Landroid/widget/ImageView;->clearColorFilter()V

    :goto_1
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    instance-of v8, v7, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v8, :cond_2

    move-object v8, v7

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    iget v9, p0, Lcom/google/android/setupdesign/items/Item;->iconGravity:I

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_2
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->getViewId()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setId(I)V

    return-void
.end method

.method protected onMergeIconStateAndLevels(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setImageState([IZ)V

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageLevel(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/setupdesign/items/Item;->enabled:Z

    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->notifyItemChanged()V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/setupdesign/items/Item;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->notifyItemChanged()V

    return-void
.end method

.method public setIconGravity(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/setupdesign/items/Item;->iconGravity:I

    return-void
.end method

.method public setIconTint(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/google/android/setupdesign/items/Item;->iconTint:I

    return-void
.end method

.method public setLayoutResource(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/setupdesign/items/Item;->layoutRes:I

    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->notifyItemChanged()V

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/setupdesign/items/Item;->summary:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->notifyItemChanged()V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/setupdesign/items/Item;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->notifyItemChanged()V

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/setupdesign/items/Item;->visible:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/setupdesign/items/Item;->visible:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/setupdesign/items/Item;->notifyItemRangeRemoved(II)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/google/android/setupdesign/items/Item;->notifyItemRangeInserted(II)V

    :goto_0
    return-void
.end method
