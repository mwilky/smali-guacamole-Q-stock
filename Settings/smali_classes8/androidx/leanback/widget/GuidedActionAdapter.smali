.class public Landroidx/leanback/widget/GuidedActionAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "GuidedActionAdapter.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/GuidedActionAdapter$ActionAutofillListener;,
        Landroidx/leanback/widget/GuidedActionAdapter$ActionEditListener;,
        Landroidx/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;,
        Landroidx/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;,
        Landroidx/leanback/widget/GuidedActionAdapter$EditListener;,
        Landroidx/leanback/widget/GuidedActionAdapter$FocusListener;,
        Landroidx/leanback/widget/GuidedActionAdapter$ClickListener;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DEBUG_EDIT:Z = false

.field static final TAG:Ljava/lang/String; = "GuidedActionAdapter"

.field static final TAG_EDIT:Ljava/lang/String; = "EditableAction"


# instance fields
.field private final mActionAutofillListener:Landroidx/leanback/widget/GuidedActionAdapter$ActionAutofillListener;

.field private final mActionEditListener:Landroidx/leanback/widget/GuidedActionAdapter$ActionEditListener;

.field private final mActionOnFocusListener:Landroidx/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;

.field private final mActionOnKeyListener:Landroidx/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;

.field final mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/leanback/widget/GuidedAction;",
            ">;"
        }
    .end annotation
.end field

.field private mClickListener:Landroidx/leanback/widget/GuidedActionAdapter$ClickListener;

.field mDiffCallback:Landroidx/leanback/widget/DiffCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/leanback/widget/DiffCallback<",
            "Landroidx/leanback/widget/GuidedAction;",
            ">;"
        }
    .end annotation
.end field

.field mGroup:Landroidx/leanback/widget/GuidedActionAdapterGroup;

.field private final mIsSubAdapter:Z

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field final mStylist:Landroidx/leanback/widget/GuidedActionsStylist;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroidx/leanback/widget/GuidedActionAdapter$ClickListener;Landroidx/leanback/widget/GuidedActionAdapter$FocusListener;Landroidx/leanback/widget/GuidedActionsStylist;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/leanback/widget/GuidedAction;",
            ">;",
            "Landroidx/leanback/widget/GuidedActionAdapter$ClickListener;",
            "Landroidx/leanback/widget/GuidedActionAdapter$FocusListener;",
            "Landroidx/leanback/widget/GuidedActionsStylist;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Landroidx/leanback/widget/GuidedActionAdapter$1;

    invoke-direct {v0, p0}, Landroidx/leanback/widget/GuidedActionAdapter$1;-><init>(Landroidx/leanback/widget/GuidedActionAdapter;)V

    iput-object v0, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Ljava/util/ArrayList;

    if-nez p1, :cond_0

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object v0, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    iput-object p2, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mClickListener:Landroidx/leanback/widget/GuidedActionAdapter$ClickListener;

    iput-object p4, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mStylist:Landroidx/leanback/widget/GuidedActionsStylist;

    new-instance v0, Landroidx/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;

    invoke-direct {v0, p0}, Landroidx/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;-><init>(Landroidx/leanback/widget/GuidedActionAdapter;)V

    iput-object v0, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mActionOnKeyListener:Landroidx/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;

    new-instance v0, Landroidx/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;

    invoke-direct {v0, p0, p3}, Landroidx/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;-><init>(Landroidx/leanback/widget/GuidedActionAdapter;Landroidx/leanback/widget/GuidedActionAdapter$FocusListener;)V

    iput-object v0, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mActionOnFocusListener:Landroidx/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;

    new-instance v0, Landroidx/leanback/widget/GuidedActionAdapter$ActionEditListener;

    invoke-direct {v0, p0}, Landroidx/leanback/widget/GuidedActionAdapter$ActionEditListener;-><init>(Landroidx/leanback/widget/GuidedActionAdapter;)V

    iput-object v0, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mActionEditListener:Landroidx/leanback/widget/GuidedActionAdapter$ActionEditListener;

    new-instance v0, Landroidx/leanback/widget/GuidedActionAdapter$ActionAutofillListener;

    invoke-direct {v0, p0}, Landroidx/leanback/widget/GuidedActionAdapter$ActionAutofillListener;-><init>(Landroidx/leanback/widget/GuidedActionAdapter;)V

    iput-object v0, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mActionAutofillListener:Landroidx/leanback/widget/GuidedActionAdapter$ActionAutofillListener;

    iput-boolean p5, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mIsSubAdapter:Z

    if-nez p5, :cond_1

    invoke-static {}, Landroidx/leanback/widget/GuidedActionDiffCallback;->getInstance()Landroidx/leanback/widget/GuidedActionDiffCallback;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mDiffCallback:Landroidx/leanback/widget/DiffCallback;

    :cond_1
    return-void
.end method

.method private setupListeners(Landroid/widget/EditText;)V
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "escapeNorth"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mActionEditListener:Landroidx/leanback/widget/GuidedActionAdapter$ActionEditListener;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    instance-of v0, p1, Landroidx/leanback/widget/ImeKeyMonitor;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/leanback/widget/ImeKeyMonitor;

    iget-object v1, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mActionEditListener:Landroidx/leanback/widget/GuidedActionAdapter$ActionEditListener;

    invoke-interface {v0, v1}, Landroidx/leanback/widget/ImeKeyMonitor;->setImeKeyListener(Landroidx/leanback/widget/ImeKeyMonitor$ImeKeyListener;)V

    :cond_0
    instance-of v0, p1, Landroidx/leanback/widget/GuidedActionAutofillSupport;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroidx/leanback/widget/GuidedActionAutofillSupport;

    iget-object v1, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mActionAutofillListener:Landroidx/leanback/widget/GuidedActionAdapter$ActionAutofillListener;

    invoke-interface {v0, v1}, Landroidx/leanback/widget/GuidedActionAutofillSupport;->setOnAutofillListener(Landroidx/leanback/widget/GuidedActionAutofillSupport$OnAutofillListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public findSubChildViewHolder(Landroid/view/View;)Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;
    .locals 3

    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedActionAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedActionAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    if-eq v1, v2, :cond_1

    if-eqz v1, :cond_1

    move-object p1, v1

    check-cast p1, Landroid/view/View;

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedActionAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;

    :cond_2
    return-object v0
.end method

.method public getActions()Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/leanback/widget/GuidedAction;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGuidedActionsStylist()Landroidx/leanback/widget/GuidedActionsStylist;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mStylist:Landroidx/leanback/widget/GuidedActionsStylist;

    return-object v0
.end method

.method public getItem(I)Landroidx/leanback/widget/GuidedAction;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/GuidedAction;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mStylist:Landroidx/leanback/widget/GuidedActionsStylist;

    iget-object v1, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/GuidedAction;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/GuidedActionsStylist;->getItemViewType(Landroidx/leanback/widget/GuidedAction;)I

    move-result v0

    return v0
.end method

.method getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    iget-boolean v0, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mIsSubAdapter:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mStylist:Landroidx/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedActionsStylist;->getSubActionsGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mStylist:Landroidx/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public handleCheckedActions(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;)V
    .locals 9

    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroidx/leanback/widget/GuidedAction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedAction;->getCheckSetId()I

    move-result v1

    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedActionAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    const/4 v4, 0x0

    iget-object v5, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    :goto_0
    if-ge v4, v5, :cond_1

    iget-object v6, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/leanback/widget/GuidedAction;

    if-eq v6, v0, :cond_0

    invoke-virtual {v6}, Landroidx/leanback/widget/GuidedAction;->getCheckSetId()I

    move-result v7

    if-ne v7, v1, :cond_0

    invoke-virtual {v6}, Landroidx/leanback/widget/GuidedAction;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6, v3}, Landroidx/leanback/widget/GuidedAction;->setChecked(Z)V

    nop

    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedActionAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v7

    check-cast v7, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;

    if-eqz v7, :cond_0

    iget-object v8, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mStylist:Landroidx/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v8, v7, v3}, Landroidx/leanback/widget/GuidedActionsStylist;->onAnimateItemChecked(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedAction;->isChecked()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/leanback/widget/GuidedAction;->setChecked(Z)V

    iget-object v3, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mStylist:Landroidx/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v3, p1, v2}, Landroidx/leanback/widget/GuidedActionsStylist;->onAnimateItemChecked(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V

    goto :goto_1

    :cond_2
    if-ne v1, v2, :cond_3

    invoke-virtual {v0, v3}, Landroidx/leanback/widget/GuidedAction;->setChecked(Z)V

    iget-object v2, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mStylist:Landroidx/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v2, p1, v3}, Landroidx/leanback/widget/GuidedActionsStylist;->onAnimateItemChecked(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public indexOf(Landroidx/leanback/widget/GuidedAction;)I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;

    iget-object v1, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/GuidedAction;

    iget-object v2, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mStylist:Landroidx/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v2, v0, v1}, Landroidx/leanback/widget/GuidedActionsStylist;->onBindViewHolder(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;Landroidx/leanback/widget/GuidedAction;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mStylist:Landroidx/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0, p1, p2}, Landroidx/leanback/widget/GuidedActionsStylist;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;

    move-result-object v0

    iget-object v1, v0, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mActionOnKeyListener:Landroidx/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v2, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mActionOnFocusListener:Landroidx/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getEditableTitleView()Landroid/widget/EditText;

    move-result-object v2

    invoke-direct {p0, v2}, Landroidx/leanback/widget/GuidedActionAdapter;->setupListeners(Landroid/widget/EditText;)V

    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getEditableDescriptionView()Landroid/widget/EditText;

    move-result-object v2

    invoke-direct {p0, v2}, Landroidx/leanback/widget/GuidedActionAdapter;->setupListeners(Landroid/widget/EditText;)V

    return-object v0
.end method

.method public performOnActionClick(Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;)V
    .locals 2

    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mClickListener:Landroidx/leanback/widget/GuidedActionAdapter$ClickListener;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroidx/leanback/widget/GuidedAction;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/leanback/widget/GuidedActionAdapter$ClickListener;->onGuidedActionClicked(Landroidx/leanback/widget/GuidedAction;)V

    :cond_0
    return-void
.end method

.method public setActions(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/leanback/widget/GuidedAction;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mIsSubAdapter:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mStylist:Landroidx/leanback/widget/GuidedActionsStylist;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/GuidedActionsStylist;->collapseAction(Z)V

    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mActionOnFocusListener:Landroidx/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;

    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;->unFocus()V

    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mDiffCallback:Landroidx/leanback/widget/DiffCallback;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Landroidx/leanback/widget/GuidedActionAdapter$2;

    invoke-direct {v1, p0, v0}, Landroidx/leanback/widget/GuidedActionAdapter$2;-><init>(Landroidx/leanback/widget/GuidedActionAdapter;Ljava/util/List;)V

    invoke-static {v1}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedActionAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public setClickListener(Landroidx/leanback/widget/GuidedActionAdapter$ClickListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mClickListener:Landroidx/leanback/widget/GuidedActionAdapter$ClickListener;

    return-void
.end method

.method public setDiffCallback(Landroidx/leanback/widget/DiffCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/leanback/widget/DiffCallback<",
            "Landroidx/leanback/widget/GuidedAction;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mDiffCallback:Landroidx/leanback/widget/DiffCallback;

    return-void
.end method

.method public setFocusListener(Landroidx/leanback/widget/GuidedActionAdapter$FocusListener;)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionAdapter;->mActionOnFocusListener:Landroidx/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;->setFocusListener(Landroidx/leanback/widget/GuidedActionAdapter$FocusListener;)V

    return-void
.end method
