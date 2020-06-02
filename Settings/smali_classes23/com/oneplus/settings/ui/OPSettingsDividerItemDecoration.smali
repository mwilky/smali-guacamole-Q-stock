.class public Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "OPSettingsDividerItemDecoration.java"


# instance fields
.field private mCategoryStartIndex:I

.field private mContext:Landroid/content/Context;

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mHasCategory:Z

.field mLTRLayout:Z

.field private mMarginLeft2:I

.field private mMarginLeft4:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mCategoryStartIndex:I

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mDividerHeight:I

    const v2, 0x7f070462

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mMarginLeft2:I

    const v2, 0x7f070464

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mMarginLeft4:I

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isLTRLayout(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mLTRLayout:Z

    return-void
.end method

.method private itemHasIcon(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 5

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    instance-of v1, v0, Landroidx/preference/PreferenceViewHolder;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroidx/preference/PreferenceViewHolder;

    const v3, 0x1020006

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    return v2

    :cond_1
    return v2
.end method

.method private shouldDrawDividerBelow(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 9

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    instance-of v1, v0, Landroidx/preference/PreferenceViewHolder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/preference/PreferenceViewHolder;

    invoke-virtual {v1}, Landroidx/preference/PreferenceViewHolder;->isDividerAllowedBelow()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_1

    return v2

    :cond_1
    const/4 v4, 0x1

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v5

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v3

    if-ge v5, v6, :cond_3

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p2, v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v7

    instance-of v8, v7, Landroidx/preference/PreferenceViewHolder;

    if-eqz v8, :cond_2

    move-object v8, v7

    check-cast v8, Landroidx/preference/PreferenceViewHolder;

    invoke-virtual {v8}, Landroidx/preference/PreferenceViewHolder;->isDividerAllowedAbove()Z

    move-result v8

    if-eqz v8, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    nop

    :goto_1
    move v4, v2

    :cond_3
    return v4
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    invoke-direct {p0, p2, p3}, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->shouldDrawDividerBelow(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mDividerHeight:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v4

    instance-of v4, v4, Landroidx/preference/PreferenceGroupAdapter;

    if-nez v4, :cond_1

    return-void

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v4

    check-cast v4, Landroidx/preference/PreferenceGroupAdapter;

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v5

    const/4 v6, 0x0

    instance-of v7, v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v7, :cond_2

    move-object v7, v5

    check-cast v7, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v6

    :cond_2
    const/4 v7, 0x0

    :goto_0
    if-ge v7, v2, :cond_c

    invoke-virtual {v1, v7}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v9

    invoke-virtual {v4, v7}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object v10

    instance-of v10, v10, Landroidx/preference/PreferenceCategory;

    const/4 v11, 0x1

    if-eqz v10, :cond_3

    iput-boolean v11, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mHasCategory:Z

    iget v10, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mCategoryStartIndex:I

    const/4 v12, -0x1

    if-ne v10, v12, :cond_3

    iput v7, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mCategoryStartIndex:I

    :cond_3
    iget-boolean v10, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mHasCategory:Z

    const/4 v12, 0x0

    if-eqz v10, :cond_4

    iget v10, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mCategoryStartIndex:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v6

    if-lt v7, v10, :cond_4

    goto :goto_1

    :cond_4
    move v11, v12

    :goto_1
    move v10, v11

    invoke-direct {v0, v8, v1}, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->shouldDrawDividerBelow(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-static {v8}, Landroidx/core/view/ViewCompat;->getY(Landroid/view/View;)F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v11, v13

    add-int/lit8 v13, v2, -0x1

    if-ne v7, v13, :cond_5

    iget-object v13, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v14, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mDividerHeight:I

    add-int/2addr v14, v11

    invoke-virtual {v13, v12, v11, v3, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    :cond_5
    invoke-direct {v0, v8, v1}, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->itemHasIcon(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v13

    if-eqz v13, :cond_8

    if-eqz v10, :cond_7

    iget-boolean v13, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mLTRLayout:Z

    if-eqz v13, :cond_6

    iget-object v12, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v13, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mMarginLeft4:I

    iget v14, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mDividerHeight:I

    add-int/2addr v14, v11

    invoke-virtual {v12, v13, v11, v3, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    :cond_6
    iget-object v13, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v14, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mMarginLeft4:I

    sub-int v14, v3, v14

    iget v15, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mDividerHeight:I

    add-int/2addr v15, v11

    invoke-virtual {v13, v12, v11, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    :cond_7
    iget-object v13, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v14, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mDividerHeight:I

    add-int/2addr v14, v11

    invoke-virtual {v13, v12, v11, v3, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    :cond_8
    if-eqz v10, :cond_a

    iget-boolean v13, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mLTRLayout:Z

    if-eqz v13, :cond_9

    iget-object v12, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v13, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mMarginLeft2:I

    iget v14, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mDividerHeight:I

    add-int/2addr v14, v11

    invoke-virtual {v12, v13, v11, v3, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    :cond_9
    iget-object v13, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v14, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mMarginLeft2:I

    sub-int v14, v3, v14

    iget v15, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mDividerHeight:I

    add-int/2addr v15, v11

    invoke-virtual {v13, v12, v11, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    :cond_a
    iget-object v13, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v14, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mDividerHeight:I

    add-int/2addr v14, v11

    invoke-virtual {v13, v12, v11, v3, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_2
    iget-object v12, v0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v13, p1

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_b
    move-object/from16 v13, p1

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_c
    move-object/from16 v13, p1

    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mDividerHeight:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mDividerHeight:I

    :goto_0
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDividerHeight(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/settings/ui/OPSettingsDividerItemDecoration;->mDividerHeight:I

    return-void
.end method
