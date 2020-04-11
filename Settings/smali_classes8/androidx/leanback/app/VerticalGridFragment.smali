.class public Landroidx/leanback/app/VerticalGridFragment;
.super Landroidx/leanback/app/BaseFragment;
.source "VerticalGridFragment.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "VerticalGF"


# instance fields
.field final STATE_SET_ENTRANCE_START_STATE:Landroidx/leanback/util/StateMachine$State;

.field private mAdapter:Landroidx/leanback/widget/ObjectAdapter;

.field private final mChildLaidOutListener:Landroidx/leanback/widget/OnChildLaidOutListener;

.field private mGridPresenter:Landroidx/leanback/widget/VerticalGridPresenter;

.field mGridViewHolder:Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;

.field private mOnItemViewClickedListener:Landroidx/leanback/widget/OnItemViewClickedListener;

.field mOnItemViewSelectedListener:Landroidx/leanback/widget/OnItemViewSelectedListener;

.field private mSceneAfterEntranceTransition:Ljava/lang/Object;

.field private mSelectedPosition:I

.field private final mViewSelectedListener:Landroidx/leanback/widget/OnItemViewSelectedListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/leanback/app/BaseFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/leanback/app/VerticalGridFragment;->mSelectedPosition:I

    new-instance v0, Landroidx/leanback/app/VerticalGridFragment$1;

    const-string v1, "SET_ENTRANCE_START_STATE"

    invoke-direct {v0, p0, v1}, Landroidx/leanback/app/VerticalGridFragment$1;-><init>(Landroidx/leanback/app/VerticalGridFragment;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/leanback/app/VerticalGridFragment;->STATE_SET_ENTRANCE_START_STATE:Landroidx/leanback/util/StateMachine$State;

    new-instance v0, Landroidx/leanback/app/VerticalGridFragment$2;

    invoke-direct {v0, p0}, Landroidx/leanback/app/VerticalGridFragment$2;-><init>(Landroidx/leanback/app/VerticalGridFragment;)V

    iput-object v0, p0, Landroidx/leanback/app/VerticalGridFragment;->mViewSelectedListener:Landroidx/leanback/widget/OnItemViewSelectedListener;

    new-instance v0, Landroidx/leanback/app/VerticalGridFragment$3;

    invoke-direct {v0, p0}, Landroidx/leanback/app/VerticalGridFragment$3;-><init>(Landroidx/leanback/app/VerticalGridFragment;)V

    iput-object v0, p0, Landroidx/leanback/app/VerticalGridFragment;->mChildLaidOutListener:Landroidx/leanback/widget/OnChildLaidOutListener;

    return-void
.end method

.method private setupFocusSearchListener()V
    .locals 2

    invoke-virtual {p0}, Landroidx/leanback/app/VerticalGridFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Landroidx/leanback/R$id;->grid_frame:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/BrowseFrameLayout;

    invoke-virtual {p0}, Landroidx/leanback/app/VerticalGridFragment;->getTitleHelper()Landroidx/leanback/widget/TitleHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/leanback/widget/TitleHelper;->getOnFocusSearchListener()Landroidx/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/BrowseFrameLayout;->setOnFocusSearchListener(Landroidx/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;)V

    return-void
.end method

.method private updateAdapter()V
    .locals 3

    iget-object v0, p0, Landroidx/leanback/app/VerticalGridFragment;->mGridViewHolder:Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/leanback/app/VerticalGridFragment;->mGridPresenter:Landroidx/leanback/widget/VerticalGridPresenter;

    iget-object v2, p0, Landroidx/leanback/app/VerticalGridFragment;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    invoke-virtual {v1, v0, v2}, Landroidx/leanback/widget/VerticalGridPresenter;->onBindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    iget v0, p0, Landroidx/leanback/app/VerticalGridFragment;->mSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroidx/leanback/app/VerticalGridFragment;->mGridViewHolder:Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;

    invoke-virtual {v0}, Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    iget v1, p0, Landroidx/leanback/app/VerticalGridFragment;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/VerticalGridView;->setSelectedPosition(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected createEntranceTransition()Ljava/lang/Object;
    .locals 2

    invoke-static {p0}, Landroidx/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    sget v1, Landroidx/leanback/R$transition;->lb_vertical_grid_entrance_transition:I

    invoke-static {v0, v1}, Landroidx/leanback/transition/TransitionHelper;->loadTransition(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method createStateMachineStates()V
    .locals 2

    invoke-super {p0}, Landroidx/leanback/app/BaseFragment;->createStateMachineStates()V

    iget-object v0, p0, Landroidx/leanback/app/VerticalGridFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/VerticalGridFragment;->STATE_SET_ENTRANCE_START_STATE:Landroidx/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroidx/leanback/util/StateMachine;->addState(Landroidx/leanback/util/StateMachine$State;)V

    return-void
.end method

.method createStateMachineTransitions()V
    .locals 4

    invoke-super {p0}, Landroidx/leanback/app/BaseFragment;->createStateMachineTransitions()V

    iget-object v0, p0, Landroidx/leanback/app/VerticalGridFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/VerticalGridFragment;->STATE_ENTRANCE_ON_PREPARED:Landroidx/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroidx/leanback/app/VerticalGridFragment;->STATE_SET_ENTRANCE_START_STATE:Landroidx/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroidx/leanback/app/VerticalGridFragment;->EVT_ON_CREATEVIEW:Landroidx/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/leanback/util/StateMachine;->addTransition(Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$Event;)V

    return-void
.end method

.method public getAdapter()Landroidx/leanback/widget/ObjectAdapter;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/app/VerticalGridFragment;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    return-object v0
.end method

.method public getGridPresenter()Landroidx/leanback/widget/VerticalGridPresenter;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/app/VerticalGridFragment;->mGridPresenter:Landroidx/leanback/widget/VerticalGridPresenter;

    return-object v0
.end method

.method public getOnItemViewClickedListener()Landroidx/leanback/widget/OnItemViewClickedListener;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/app/VerticalGridFragment;->mOnItemViewClickedListener:Landroidx/leanback/widget/OnItemViewClickedListener;

    return-object v0
.end method

.method gridOnItemSelected(I)V
    .locals 1

    iget v0, p0, Landroidx/leanback/app/VerticalGridFragment;->mSelectedPosition:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroidx/leanback/app/VerticalGridFragment;->mSelectedPosition:I

    invoke-virtual {p0}, Landroidx/leanback/app/VerticalGridFragment;->showOrHideTitle()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    sget v0, Landroidx/leanback/R$layout;->lb_vertical_grid_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget v1, Landroidx/leanback/R$id;->grid_frame:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v1, p3}, Landroidx/leanback/app/VerticalGridFragment;->installTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/leanback/app/VerticalGridFragment;->getProgressBarManager()Landroidx/leanback/app/ProgressBarManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/leanback/app/ProgressBarManager;->setRootView(Landroid/view/ViewGroup;)V

    sget v2, Landroidx/leanback/R$id;->browse_grid_dock:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Landroidx/leanback/app/VerticalGridFragment;->mGridPresenter:Landroidx/leanback/widget/VerticalGridPresenter;

    invoke-virtual {v3, v2}, Landroidx/leanback/widget/VerticalGridPresenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;

    move-result-object v3

    iput-object v3, p0, Landroidx/leanback/app/VerticalGridFragment;->mGridViewHolder:Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;

    iget-object v3, p0, Landroidx/leanback/app/VerticalGridFragment;->mGridViewHolder:Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;

    iget-object v3, v3, Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, p0, Landroidx/leanback/app/VerticalGridFragment;->mGridViewHolder:Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;

    invoke-virtual {v3}, Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v3

    iget-object v4, p0, Landroidx/leanback/app/VerticalGridFragment;->mChildLaidOutListener:Landroidx/leanback/widget/OnChildLaidOutListener;

    invoke-virtual {v3, v4}, Landroidx/leanback/widget/VerticalGridView;->setOnChildLaidOutListener(Landroidx/leanback/widget/OnChildLaidOutListener;)V

    new-instance v3, Landroidx/leanback/app/VerticalGridFragment$4;

    invoke-direct {v3, p0}, Landroidx/leanback/app/VerticalGridFragment$4;-><init>(Landroidx/leanback/app/VerticalGridFragment;)V

    invoke-static {v2, v3}, Landroidx/leanback/transition/TransitionHelper;->createScene(Landroid/view/ViewGroup;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Landroidx/leanback/app/VerticalGridFragment;->mSceneAfterEntranceTransition:Ljava/lang/Object;

    invoke-direct {p0}, Landroidx/leanback/app/VerticalGridFragment;->updateAdapter()V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/leanback/app/BaseFragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/leanback/app/VerticalGridFragment;->mGridViewHolder:Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroidx/leanback/app/BaseFragment;->onStart()V

    invoke-direct {p0}, Landroidx/leanback/app/VerticalGridFragment;->setupFocusSearchListener()V

    return-void
.end method

.method protected runEntranceTransition(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/app/VerticalGridFragment;->mSceneAfterEntranceTransition:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroidx/leanback/transition/TransitionHelper;->runTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/VerticalGridFragment;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    invoke-direct {p0}, Landroidx/leanback/app/VerticalGridFragment;->updateAdapter()V

    return-void
.end method

.method setEntranceTransitionState(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/leanback/app/VerticalGridFragment;->mGridPresenter:Landroidx/leanback/widget/VerticalGridPresenter;

    iget-object v1, p0, Landroidx/leanback/app/VerticalGridFragment;->mGridViewHolder:Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;

    invoke-virtual {v0, v1, p1}, Landroidx/leanback/widget/VerticalGridPresenter;->setEntranceTransitionState(Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;Z)V

    return-void
.end method

.method public setGridPresenter(Landroidx/leanback/widget/VerticalGridPresenter;)V
    .locals 2

    if-eqz p1, :cond_1

    iput-object p1, p0, Landroidx/leanback/app/VerticalGridFragment;->mGridPresenter:Landroidx/leanback/widget/VerticalGridPresenter;

    iget-object v0, p0, Landroidx/leanback/app/VerticalGridFragment;->mGridPresenter:Landroidx/leanback/widget/VerticalGridPresenter;

    iget-object v1, p0, Landroidx/leanback/app/VerticalGridFragment;->mViewSelectedListener:Landroidx/leanback/widget/OnItemViewSelectedListener;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/VerticalGridPresenter;->setOnItemViewSelectedListener(Landroidx/leanback/widget/OnItemViewSelectedListener;)V

    iget-object v0, p0, Landroidx/leanback/app/VerticalGridFragment;->mOnItemViewClickedListener:Landroidx/leanback/widget/OnItemViewClickedListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/leanback/app/VerticalGridFragment;->mGridPresenter:Landroidx/leanback/widget/VerticalGridPresenter;

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/VerticalGridPresenter;->setOnItemViewClickedListener(Landroidx/leanback/widget/OnItemViewClickedListener;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Grid presenter may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemViewClickedListener(Landroidx/leanback/widget/OnItemViewClickedListener;)V
    .locals 2

    iput-object p1, p0, Landroidx/leanback/app/VerticalGridFragment;->mOnItemViewClickedListener:Landroidx/leanback/widget/OnItemViewClickedListener;

    iget-object v0, p0, Landroidx/leanback/app/VerticalGridFragment;->mGridPresenter:Landroidx/leanback/widget/VerticalGridPresenter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/leanback/app/VerticalGridFragment;->mOnItemViewClickedListener:Landroidx/leanback/widget/OnItemViewClickedListener;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/VerticalGridPresenter;->setOnItemViewClickedListener(Landroidx/leanback/widget/OnItemViewClickedListener;)V

    :cond_0
    return-void
.end method

.method public setOnItemViewSelectedListener(Landroidx/leanback/widget/OnItemViewSelectedListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/VerticalGridFragment;->mOnItemViewSelectedListener:Landroidx/leanback/widget/OnItemViewSelectedListener;

    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 1

    iput p1, p0, Landroidx/leanback/app/VerticalGridFragment;->mSelectedPosition:I

    iget-object v0, p0, Landroidx/leanback/app/VerticalGridFragment;->mGridViewHolder:Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/VerticalGridView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/leanback/app/VerticalGridFragment;->mGridViewHolder:Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;

    invoke-virtual {v0}, Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/VerticalGridView;->setSelectedPositionSmooth(I)V

    :cond_0
    return-void
.end method

.method showOrHideTitle()V
    .locals 2

    iget-object v0, p0, Landroidx/leanback/app/VerticalGridFragment;->mGridViewHolder:Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;

    invoke-virtual {v0}, Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    iget v1, p0, Landroidx/leanback/app/VerticalGridFragment;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/VerticalGridView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/leanback/app/VerticalGridFragment;->mGridViewHolder:Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;

    invoke-virtual {v0}, Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    iget v1, p0, Landroidx/leanback/app/VerticalGridFragment;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/VerticalGridView;->hasPreviousViewInSameRow(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/leanback/app/VerticalGridFragment;->showTitle(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/leanback/app/VerticalGridFragment;->showTitle(Z)V

    :goto_0
    return-void
.end method
