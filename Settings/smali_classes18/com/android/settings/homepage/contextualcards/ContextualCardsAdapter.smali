.class public Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ContextualCardsAdapter.java"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;
.implements Lcom/android/settings/homepage/contextualcards/slices/SwipeDismissalDelegate$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;",
        "Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;",
        "Lcom/android/settings/homepage/contextualcards/slices/SwipeDismissalDelegate$Listener;"
    }
.end annotation


# static fields
.field private static final FULL_WIDTH:I = 0x2

.field private static final HALF_WIDTH:I = 0x1

.field static final SPAN_COUNT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ContextualCardsAdapter"


# instance fields
.field private final mContext:Landroid/content/Context;

.field final mContextualCards:Ljava/util/List;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
            ">;"
        }
    .end annotation
.end field

.field private final mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

.field private final mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Lcom/android/settings/homepage/contextualcards/ContextualCardManager;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContextualCards:Ljava/util/List;

    invoke-virtual {p3}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->getControllerRendererPool()Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContextualCards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContextualCards:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    invoke-virtual {v0}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContextualCards:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    invoke-virtual {v0}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getViewType()I

    move-result v1

    return v1
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v2, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter$1;

    invoke-direct {v2, p0}, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter$1;-><init>(Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContextualCards:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v0}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getViewType()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;->getRendererByViewType(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;I)Lcom/android/settings/homepage/contextualcards/ContextualCardRenderer;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/android/settings/homepage/contextualcards/ContextualCardRenderer;->bindView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/settings/homepage/contextualcards/ContextualCard;)V

    return-void
.end method

.method public onContextualCardUpdated(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContextualCards:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContextualCards:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/android/settings/homepage/contextualcards/ContextualCardsDiffCallback;

    iget-object v4, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContextualCards:Ljava/util/List;

    invoke-direct {v3, v4, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCardsDiffCallback;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-static {v3}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContextualCards:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    iget-object v4, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContextualCards:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3, p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :goto_0
    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    if-nez v0, :cond_3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->scheduleLayoutAnimation()V

    :cond_3
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p2    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;->getRendererByViewType(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;I)Lcom/android/settings/homepage/contextualcards/ContextualCardRenderer;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/android/settings/homepage/contextualcards/ContextualCardRenderer;->createViewHolder(Landroid/view/View;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    return-object v2
.end method

.method public onSwiped(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContextualCards:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    invoke-virtual {v0}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mutate()Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setIsPendingDismiss(Z)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->build()Lcom/android/settings/homepage/contextualcards/ContextualCard;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContextualCards:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->notifyItemChanged(I)V

    return-void
.end method
