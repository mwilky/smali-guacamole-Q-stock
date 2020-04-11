.class public Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;
.super Ljava/lang/Object;
.source "ConditionContextualCardRenderer.java"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/ContextualCardRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;
    }
.end annotation


# static fields
.field public static final VIEW_TYPE_FULL_WIDTH:I = 0x7f0d0055
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation
.end field

.field public static final VIEW_TYPE_HALF_WIDTH:I = 0x7f0d0056
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

    return-void
.end method

.method private initializeActionButton(Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V
    .locals 4

    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;->getActionText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iget-object v2, p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;->itemView:Landroid/view/View;

    const v3, 0x7f0a0277

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/android/settings/homepage/contextualcards/conditional/-$$Lambda$ConditionContextualCardRenderer$pwAlpuPuZxYifx7itzC3y45MNfA;

    invoke-direct {v3, p0, p3, p2}, Lcom/android/settings/homepage/contextualcards/conditional/-$$Lambda$ConditionContextualCardRenderer$pwAlpuPuZxYifx7itzC3y45MNfA;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private initializePrimaryClick(Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V
    .locals 2

    iget-object v0, p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0182

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/settings/homepage/contextualcards/conditional/-$$Lambda$ConditionContextualCardRenderer$mYIJR6MT82XJp0d3MUEsLTgalG0;

    invoke-direct {v1, p0, p3, p2}, Lcom/android/settings/homepage/contextualcards/conditional/-$$Lambda$ConditionContextualCardRenderer$mYIJR6MT82XJp0d3MUEsLTgalG0;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initializeView(Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;)V
    .locals 2

    iget-object v0, p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;->getTitleText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;->getSummaryText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public bindView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/settings/homepage/contextualcards/ContextualCard;)V
    .locals 6

    move-object v0, p1

    check-cast v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;

    move-object v1, p2

    check-cast v1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;->getMetricsConstant()I

    move-result v4

    const/16 v5, 0x5de

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->visible(Landroid/content/Context;II)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->initializePrimaryClick(Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    invoke-direct {p0, v0, v1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->initializeView(Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->initializeActionButton(Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    return-void
.end method

.method public createViewHolder(Landroid/view/View;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    new-instance v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;

    invoke-direct {v0, p1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public synthetic lambda$initializeActionButton$1$ConditionContextualCardRenderer(Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;Landroid/view/View;)V
    .locals 4

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;->getMetricsConstant()I

    move-result v1

    const/16 v2, 0x178

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;->getCardType()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;->getController(Landroid/content/Context;I)Lcom/android/settings/homepage/contextualcards/ContextualCardController;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/android/settings/homepage/contextualcards/ContextualCardController;->onActionClick(Lcom/android/settings/homepage/contextualcards/ContextualCard;)V

    return-void
.end method

.method public synthetic lambda$initializePrimaryClick$0$ConditionContextualCardRenderer(Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;->getMetricsConstant()I

    move-result v1

    const/16 v2, 0x177

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;->getCardType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;->getController(Landroid/content/Context;I)Lcom/android/settings/homepage/contextualcards/ContextualCardController;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/settings/homepage/contextualcards/ContextualCardController;->onPrimaryClick(Lcom/android/settings/homepage/contextualcards/ContextualCard;)V

    return-void
.end method
