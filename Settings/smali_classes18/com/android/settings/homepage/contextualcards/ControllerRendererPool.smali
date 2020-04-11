.class public Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;
.super Ljava/lang/Object;
.source "ControllerRendererPool.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ControllerRendererPool"


# instance fields
.field private final mControllers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCardController;",
            ">;"
        }
    .end annotation
.end field

.field private final mRenderers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCardRenderer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;->mControllers:Ljava/util/Set;

    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;->mRenderers:Ljava/util/Set;

    return-void
.end method

.method private createCardController(Landroid/content/Context;Ljava/lang/Class;)Lcom/android/settings/homepage/contextualcards/ContextualCardController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/homepage/contextualcards/ContextualCardController;",
            ">;)",
            "Lcom/android/settings/homepage/contextualcards/ContextualCardController;"
        }
    .end annotation

    const-class v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;

    if-ne v0, p2, :cond_0

    new-instance v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;

    invoke-direct {v0, p1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_0
    const-class v0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;

    if-ne v0, p2, :cond_1

    new-instance v0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;

    invoke-direct {v0, p1}, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_1
    const-class v0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;

    if-ne v0, p2, :cond_2

    new-instance v0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;

    invoke-direct {v0, p1}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private createCardRenderer(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Class;)Lcom/android/settings/homepage/contextualcards/ContextualCardRenderer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/android/settings/homepage/contextualcards/ContextualCardRenderer;"
        }
    .end annotation

    const-class v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;

    if-ne v0, p3, :cond_0

    new-instance v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;)V

    return-object v0

    :cond_0
    const-class v0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;

    if-ne v0, p3, :cond_1

    new-instance v0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;-><init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;)V

    return-object v0

    :cond_1
    const-class v0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer;

    if-ne v0, p3, :cond_2

    new-instance v0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;)V

    return-object v0

    :cond_2
    const-class v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCardRenderer;

    if-ne v0, p3, :cond_3

    new-instance v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCardRenderer;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCardRenderer;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;)V

    return-object v0

    :cond_3
    const-class v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;

    if-ne v0, p3, :cond_4

    new-instance v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;)V

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private getRenderer(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Class;)Lcom/android/settings/homepage/contextualcards/ContextualCardRenderer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/homepage/contextualcards/ContextualCardRenderer;",
            ">;)",
            "Lcom/android/settings/homepage/contextualcards/ContextualCardRenderer;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;->mRenderers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/homepage/contextualcards/ContextualCardRenderer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, p3, :cond_0

    const-string v0, "ControllerRendererPool"

    const-string v2, "Renderer is already there."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;->createCardRenderer(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Class;)Lcom/android/settings/homepage/contextualcards/ContextualCardRenderer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;->mRenderers:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method


# virtual methods
.method public getController(Landroid/content/Context;I)Lcom/android/settings/homepage/contextualcards/ContextualCardController;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/settings/homepage/contextualcards/ContextualCardController;",
            ">(",
            "Landroid/content/Context;",
            "I)TT;"
        }
    .end annotation

    nop

    invoke-static {p2}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable;->getCardControllerClass(I)Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;->mControllers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/homepage/contextualcards/ContextualCardController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, v0, :cond_0

    const-string v1, "ControllerRendererPool"

    const-string v3, "Controller is already there."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;->createCardController(Landroid/content/Context;Ljava/lang/Class;)Lcom/android/settings/homepage/contextualcards/ContextualCardController;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;->mControllers:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v1
.end method

.method getControllers()Ljava/util/Set;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCardController;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;->mControllers:Ljava/util/Set;

    return-object v0
.end method

.method public getRendererByViewType(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;I)Lcom/android/settings/homepage/contextualcards/ContextualCardRenderer;
    .locals 2

    nop

    invoke-static {p3}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable;->getCardRendererClassByViewType(I)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;->getRenderer(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Class;)Lcom/android/settings/homepage/contextualcards/ContextualCardRenderer;

    move-result-object v1

    return-object v1
.end method

.method getRenderers()Ljava/util/Set;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCardRenderer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;->mRenderers:Ljava/util/Set;

    return-object v0
.end method
