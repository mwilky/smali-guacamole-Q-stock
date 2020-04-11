.class Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;
.super Ljava/lang/Object;
.source "SliceFullCardRendererHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method bindView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/settings/homepage/contextualcards/ContextualCard;Landroidx/slice/Slice;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;

    iget-object v1, v0, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/slice/widget/SliceView;->setScrollable(Z)V

    iget-object v1, v0, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getSliceUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/slice/widget/SliceView;->setTag(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroidx/slice/widget/SliceView;->setMode(I)V

    iget-object v1, v0, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    invoke-virtual {v1, p3}, Landroidx/slice/widget/SliceView;->setSlice(Landroidx/slice/Slice;)V

    iget-object v1, v0, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    new-instance v2, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceFullCardRendererHelper$Y1sdKF2uddSlyjUQNIqTPJOC4OY;

    invoke-direct {v2, p0, p2, v0, p3}, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceFullCardRendererHelper$Y1sdKF2uddSlyjUQNIqTPJOC4OY;-><init>(Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;Lcom/android/settings/homepage/contextualcards/ContextualCard;Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;Landroidx/slice/Slice;)V

    invoke-virtual {v1, v2}, Landroidx/slice/widget/SliceView;->setOnSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V

    iget-object v1, v0, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/slice/widget/SliceView;->setShowTitleItems(Z)V

    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->isLargeCard()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    invoke-virtual {v1, v2}, Landroidx/slice/widget/SliceView;->setShowHeaderDivider(Z)V

    iget-object v1, v0, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    invoke-virtual {v1, v2}, Landroidx/slice/widget/SliceView;->setShowActionDividers(Z)V

    :cond_0
    return-void
.end method

.method createViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    new-instance v0, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;

    invoke-direct {v0, p1}, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public synthetic lambda$bindView$0$SliceFullCardRendererHelper(Lcom/android/settings/homepage/contextualcards/ContextualCard;Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;Landroidx/slice/Slice;Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V
    .locals 4

    iget v0, p4, Landroidx/slice/widget/EventInfo;->rowIndex:I

    iget v1, p4, Landroidx/slice/widget/EventInfo;->actionType:I

    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils;->buildCardClickLog(Lcom/android/settings/homepage/contextualcards/ContextualCard;III)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;->mContext:Landroid/content/Context;

    const/16 v3, 0x682

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/settings/overlay/FeatureFactory;->getContextualCardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/homepage/contextualcards/ContextualCardFeatureProvider;

    move-result-object v2

    invoke-interface {v2, p3}, Lcom/android/settings/homepage/contextualcards/ContextualCardFeatureProvider;->logNotificationPackage(Landroidx/slice/Slice;)V

    return-void
.end method
