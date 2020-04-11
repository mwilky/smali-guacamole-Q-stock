.class public Landroidx/slice/widget/TemplateView;
.super Landroidx/slice/widget/SliceChildView;
.source "TemplateView.java"

# interfaces
.implements Landroidx/slice/widget/SliceViewPolicy$PolicyChangeListener;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final mAdapter:Landroidx/slice/widget/SliceAdapter;

.field private mDisplayedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/slice/widget/SliceContent;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayedItemsHeight:I

.field private final mForeground:Landroid/view/View;

.field private mListContent:Landroidx/slice/widget/ListContent;

.field private mLoc:[I

.field private mParent:Landroidx/slice/widget/SliceView;

.field private final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceChildView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/TemplateView;->mDisplayedItems:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/slice/widget/TemplateView;->mDisplayedItemsHeight:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/slice/widget/TemplateView;->mLoc:[I

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/slice/widget/TemplateView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/slice/widget/TemplateView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/slice/widget/TemplateView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Landroidx/slice/widget/SliceAdapter;

    invoke-direct {v0, p1}, Landroidx/slice/widget/SliceAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroidx/slice/widget/TemplateView;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroidx/slice/widget/TemplateView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/slice/widget/TemplateView;->mForeground:Landroid/view/View;

    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mForeground:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/slice/widget/TemplateView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x101030e

    invoke-static {v1, v2}, Landroidx/slice/widget/SliceViewUtil;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mForeground:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/slice/widget/TemplateView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mForeground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, p0, Landroidx/slice/widget/TemplateView;->mForeground:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateDisplayedItems(I)V
    .locals 4

    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    iget-object v1, p0, Landroidx/slice/widget/TemplateView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget-object v2, p0, Landroidx/slice/widget/TemplateView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {v0, p1, v1, v2}, Landroidx/slice/widget/ListContent;->getRowItems(ILandroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/widget/TemplateView;->mDisplayedItems:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mDisplayedItems:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/slice/widget/TemplateView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget-object v2, p0, Landroidx/slice/widget/TemplateView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-static {v0, v1, v2}, Landroidx/slice/widget/ListContent;->getListHeight(Ljava/util/List;Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/TemplateView;->mDisplayedItemsHeight:I

    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    iget-object v1, p0, Landroidx/slice/widget/TemplateView;->mDisplayedItems:Ljava/util/ArrayList;

    iget v2, p0, Landroidx/slice/widget/TemplateView;->mTintColor:I

    iget-object v3, p0, Landroidx/slice/widget/TemplateView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {v3}, Landroidx/slice/widget/SliceViewPolicy;->getMode()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroidx/slice/widget/SliceAdapter;->setSliceItems(Ljava/util/List;II)V

    invoke-direct {p0}, Landroidx/slice/widget/TemplateView;->updateOverscroll()V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/slice/widget/TemplateView;->resetView()V

    return-void
.end method

.method private updateOverscroll()V
    .locals 4

    iget v0, p0, Landroidx/slice/widget/TemplateView;->mDisplayedItemsHeight:I

    invoke-virtual {p0}, Landroidx/slice/widget/TemplateView;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/slice/widget/TemplateView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Landroidx/slice/widget/TemplateView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {v3}, Landroidx/slice/widget/SliceViewPolicy;->isScrollable()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    :goto_1
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setOverScrollMode(I)V

    return-void
.end method


# virtual methods
.method public getLoadingActions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceAdapter;->getLoadingActions()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroidx/slice/widget/SliceChildView;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroidx/slice/widget/TemplateView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/slice/widget/SliceView;

    iput-object v0, p0, Landroidx/slice/widget/TemplateView;->mParent:Landroidx/slice/widget/SliceView;

    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    iget-object v1, p0, Landroidx/slice/widget/TemplateView;->mParent:Landroidx/slice/widget/SliceView;

    invoke-virtual {v0, v1, p0}, Landroidx/slice/widget/SliceAdapter;->setParents(Landroidx/slice/widget/SliceView;Landroidx/slice/widget/TemplateView;)V

    return-void
.end method

.method public onForegroundActivated(Landroid/view/MotionEvent;)V
    .locals 7

    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mParent:Landroidx/slice/widget/SliceView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/slice/widget/SliceView;->isSliceViewClickable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mForeground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mForeground:Landroid/view/View;

    iget-object v2, p0, Landroidx/slice/widget/TemplateView;->mLoc:[I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v2, p0, Landroidx/slice/widget/TemplateView;->mLoc:[I

    aget v2, v2, v1

    int-to-float v2, v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget-object v4, p0, Landroidx/slice/widget/TemplateView;->mLoc:[I

    aget v4, v4, v3

    int-to-float v4, v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    iget-object v4, p0, Landroidx/slice/widget/TemplateView;->mForeground:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    int-to-float v5, v0

    int-to-float v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v1, p0, Landroidx/slice/widget/TemplateView;->mForeground:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    if-eq v0, v3, :cond_3

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    :cond_3
    iget-object v2, p0, Landroidx/slice/widget/TemplateView;->mForeground:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onMaxHeightChanged(I)V
    .locals 3

    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/slice/widget/TemplateView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget-object v2, p0, Landroidx/slice/widget/TemplateView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {v0, v1, v2}, Landroidx/slice/widget/ListContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/slice/widget/TemplateView;->updateDisplayedItems(I)V

    :cond_0
    return-void
.end method

.method public onMaxSmallChanged(I)V
    .locals 1

    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/slice/widget/SliceAdapter;->notifyHeaderChanged()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget-object v1, p0, Landroidx/slice/widget/TemplateView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {v1}, Landroidx/slice/widget/SliceViewPolicy;->isScrollable()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/slice/widget/TemplateView;->mDisplayedItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget v1, p0, Landroidx/slice/widget/TemplateView;->mDisplayedItemsHeight:I

    if-eq v1, v0, :cond_0

    invoke-direct {p0, v0}, Landroidx/slice/widget/TemplateView;->updateDisplayedItems(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/slice/widget/SliceChildView;->onMeasure(II)V

    return-void
.end method

.method public onModeChanged(I)V
    .locals 3

    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/slice/widget/TemplateView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget-object v2, p0, Landroidx/slice/widget/TemplateView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {v0, v1, v2}, Landroidx/slice/widget/ListContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/slice/widget/TemplateView;->updateDisplayedItems(I)V

    :cond_0
    return-void
.end method

.method public onScrollingChanged(Z)V
    .locals 3

    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/slice/widget/TemplateView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget-object v2, p0, Landroidx/slice/widget/TemplateView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {v0, v1, v2}, Landroidx/slice/widget/ListContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/slice/widget/TemplateView;->updateDisplayedItems(I)V

    :cond_0
    return-void
.end method

.method public resetView()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Landroidx/slice/widget/TemplateView;->mDisplayedItemsHeight:I

    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mDisplayedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    invoke-virtual {p0}, Landroidx/slice/widget/TemplateView;->getMode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3, v1}, Landroidx/slice/widget/SliceAdapter;->setSliceItems(Ljava/util/List;II)V

    iput-object v2, p0, Landroidx/slice/widget/TemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    return-void
.end method

.method public setActionLoading(Landroidx/slice/SliceItem;)V
    .locals 2

    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/slice/widget/SliceAdapter;->onSliceActionLoading(Landroidx/slice/SliceItem;I)V

    return-void
.end method

.method public setAllowTwoLines(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    invoke-virtual {v0, p1}, Landroidx/slice/widget/SliceAdapter;->setAllowTwoLines(Z)V

    return-void
.end method

.method public setInsets(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/slice/widget/SliceChildView;->setInsets(IIII)V

    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/slice/widget/SliceAdapter;->setInsets(IIII)V

    return-void
.end method

.method public setLastUpdated(J)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/slice/widget/SliceChildView;->setLastUpdated(J)V

    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    invoke-virtual {v0, p1, p2}, Landroidx/slice/widget/SliceAdapter;->setLastUpdated(J)V

    return-void
.end method

.method public setLoadingActions(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    invoke-virtual {v0, p1}, Landroidx/slice/widget/SliceAdapter;->setLoadingActions(Ljava/util/Set;)V

    return-void
.end method

.method public setPolicy(Landroidx/slice/widget/SliceViewPolicy;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/slice/widget/SliceChildView;->setPolicy(Landroidx/slice/widget/SliceViewPolicy;)V

    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    invoke-virtual {v0, p1}, Landroidx/slice/widget/SliceAdapter;->setPolicy(Landroidx/slice/widget/SliceViewPolicy;)V

    invoke-virtual {p1, p0}, Landroidx/slice/widget/SliceViewPolicy;->setListener(Landroidx/slice/widget/SliceViewPolicy$PolicyChangeListener;)V

    return-void
.end method

.method public setShowLastUpdated(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/slice/widget/SliceChildView;->setShowLastUpdated(Z)V

    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    invoke-virtual {v0, p1}, Landroidx/slice/widget/SliceAdapter;->setShowLastUpdated(Z)V

    return-void
.end method

.method public setSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V
    .locals 2

    iput-object p1, p0, Landroidx/slice/widget/TemplateView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/slice/widget/TemplateView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceAdapter;->setSliceObserver(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V

    :cond_0
    return-void
.end method

.method public setSliceActions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    invoke-virtual {v0, p1}, Landroidx/slice/widget/SliceAdapter;->setSliceActions(Ljava/util/List;)V

    return-void
.end method

.method public setSliceContent(Landroidx/slice/widget/ListContent;)V
    .locals 3

    iput-object p1, p0, Landroidx/slice/widget/TemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    iget-object v1, p0, Landroidx/slice/widget/TemplateView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget-object v2, p0, Landroidx/slice/widget/TemplateView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {v0, v1, v2}, Landroidx/slice/widget/ListContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/slice/widget/TemplateView;->updateDisplayedItems(I)V

    return-void
.end method

.method public setStyle(Landroidx/slice/widget/SliceStyle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/slice/widget/SliceChildView;->setStyle(Landroidx/slice/widget/SliceStyle;)V

    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mAdapter:Landroidx/slice/widget/SliceAdapter;

    invoke-virtual {v0, p1}, Landroidx/slice/widget/SliceAdapter;->setStyle(Landroidx/slice/widget/SliceStyle;)V

    return-void
.end method

.method public setTint(I)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/slice/widget/SliceChildView;->setTint(I)V

    invoke-virtual {p0}, Landroidx/slice/widget/TemplateView;->getMeasuredHeight()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/slice/widget/TemplateView;->updateDisplayedItems(I)V

    return-void
.end method
