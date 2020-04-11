.class Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "ContextualCardsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter$1;->this$0:Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter$1;->this$0:Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;

    iget-object v0, v0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContextualCards:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    invoke-virtual {v0}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getViewType()I

    move-result v0

    const v1, 0x7f0d0056

    if-eq v0, v1, :cond_0

    const v1, 0x7f0d0066

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    return v1

    :cond_0
    const/4 v1, 0x1

    return v1
.end method
