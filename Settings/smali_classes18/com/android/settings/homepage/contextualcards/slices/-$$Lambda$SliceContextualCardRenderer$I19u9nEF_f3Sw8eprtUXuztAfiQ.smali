.class public final synthetic Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceContextualCardRenderer$I19u9nEF_f3Sw8eprtUXuztAfiQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceContextualCardRenderer$I19u9nEF_f3Sw8eprtUXuztAfiQ;->f$0:Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceContextualCardRenderer$I19u9nEF_f3Sw8eprtUXuztAfiQ;->f$0:Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, p1}, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->lambda$onStop$3$SliceContextualCardRenderer(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
