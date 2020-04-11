.class public Landroidx/slice/widget/SliceAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SliceAdapter.java"

# interfaces
.implements Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/widget/SliceAdapter$IdGenerator;,
        Landroidx/slice/widget/SliceAdapter$SliceViewHolder;,
        Landroidx/slice/widget/SliceAdapter$SliceWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/slice/widget/SliceAdapter$SliceViewHolder;",
        ">;",
        "Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;"
    }
.end annotation


# static fields
.field static final HEADER_INDEX:I = 0x0

.field static final TYPE_DEFAULT:I = 0x1

.field static final TYPE_GRID:I = 0x3

.field static final TYPE_HEADER:I = 0x2

.field static final TYPE_MESSAGE:I = 0x4

.field static final TYPE_MESSAGE_LOCAL:I = 0x5


# instance fields
.field mAllowTwoLines:Z

.field mColor:I

.field final mContext:Landroid/content/Context;

.field private final mIdGen:Landroidx/slice/widget/SliceAdapter$IdGenerator;

.field mInsetBottom:I

.field mInsetEnd:I

.field mInsetStart:I

.field mInsetTop:I

.field mLastUpdated:J

.field mLoadingActions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation
.end field

.field mParent:Landroidx/slice/widget/SliceView;

.field mPolicy:Landroidx/slice/widget/SliceViewPolicy;

.field mShowLastUpdated:Z

.field mSliceActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation
.end field

.field mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

.field mSliceStyle:Landroidx/slice/widget/SliceStyle;

.field private mSlices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/slice/widget/SliceAdapter$SliceWrapper;",
            ">;"
        }
    .end annotation
.end field

.field mTemplateView:Landroidx/slice/widget/TemplateView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Landroidx/slice/widget/SliceAdapter$IdGenerator;

    invoke-direct {v0}, Landroidx/slice/widget/SliceAdapter$IdGenerator;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/SliceAdapter;->mIdGen:Landroidx/slice/widget/SliceAdapter$IdGenerator;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/SliceAdapter;->mSlices:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/SliceAdapter;->mLoadingActions:Ljava/util/Set;

    iput-object p1, p0, Landroidx/slice/widget/SliceAdapter;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/slice/widget/SliceAdapter;->setHasStableIds(Z)V

    return-void
.end method

.method private inflateForType(I)Landroid/view/View;
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    new-instance v0, Landroidx/slice/widget/RowView;

    iget-object v1, p0, Landroidx/slice/widget/SliceAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/slice/widget/RowView;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/SliceAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Landroidx/slice/view/R$layout;->abc_slice_message_local:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Landroidx/slice/widget/SliceAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Landroidx/slice/view/R$layout;->abc_slice_message:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Landroidx/slice/widget/SliceAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Landroidx/slice/view/R$layout;->abc_slice_grid:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Landroidx/slice/widget/SliceAdapter;->mSlices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Landroidx/slice/widget/SliceAdapter;->mSlices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/widget/SliceAdapter$SliceWrapper;

    iget-wide v0, v0, Landroidx/slice/widget/SliceAdapter$SliceWrapper;->mId:J

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Landroidx/slice/widget/SliceAdapter;->mSlices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/widget/SliceAdapter$SliceWrapper;

    iget v0, v0, Landroidx/slice/widget/SliceAdapter$SliceWrapper;->mType:I

    return v0
.end method

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

    iget-object v0, p0, Landroidx/slice/widget/SliceAdapter;->mLoadingActions:Ljava/util/Set;

    return-object v0
.end method

.method public notifyHeaderChanged()V
    .locals 1

    invoke-virtual {p0}, Landroidx/slice/widget/SliceAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/slice/widget/SliceAdapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;

    invoke-virtual {p0, p1, p2}, Landroidx/slice/widget/SliceAdapter;->onBindViewHolder(Landroidx/slice/widget/SliceAdapter$SliceViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/slice/widget/SliceAdapter$SliceViewHolder;I)V
    .locals 2

    iget-object v0, p0, Landroidx/slice/widget/SliceAdapter;->mSlices:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/widget/SliceAdapter$SliceWrapper;

    iget-object v1, v0, Landroidx/slice/widget/SliceAdapter$SliceWrapper;->mItem:Landroidx/slice/widget/SliceContent;

    invoke-virtual {p1, v1, p2}, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->bind(Landroidx/slice/widget/SliceContent;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/slice/widget/SliceAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/slice/widget/SliceAdapter$SliceViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/slice/widget/SliceAdapter$SliceViewHolder;
    .locals 4

    invoke-direct {p0, p2}, Landroidx/slice/widget/SliceAdapter;->inflateForType(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;

    invoke-direct {v1, p0, v0}, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;-><init>(Landroidx/slice/widget/SliceAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public onSliceActionLoading(Landroidx/slice/SliceItem;I)V
    .locals 1

    iget-object v0, p0, Landroidx/slice/widget/SliceAdapter;->mLoadingActions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/slice/widget/SliceAdapter;->getItemCount()I

    move-result v0

    if-le v0, p2, :cond_0

    invoke-virtual {p0, p2}, Landroidx/slice/widget/SliceAdapter;->notifyItemChanged(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/slice/widget/SliceAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public setAllowTwoLines(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/slice/widget/SliceAdapter;->mAllowTwoLines:Z

    invoke-virtual {p0}, Landroidx/slice/widget/SliceAdapter;->notifyHeaderChanged()V

    return-void
.end method

.method public setInsets(IIII)V
    .locals 0

    iput p1, p0, Landroidx/slice/widget/SliceAdapter;->mInsetStart:I

    iput p2, p0, Landroidx/slice/widget/SliceAdapter;->mInsetTop:I

    iput p3, p0, Landroidx/slice/widget/SliceAdapter;->mInsetEnd:I

    iput p4, p0, Landroidx/slice/widget/SliceAdapter;->mInsetBottom:I

    return-void
.end method

.method public setLastUpdated(J)V
    .locals 2

    iget-wide v0, p0, Landroidx/slice/widget/SliceAdapter;->mLastUpdated:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    iput-wide p1, p0, Landroidx/slice/widget/SliceAdapter;->mLastUpdated:J

    invoke-virtual {p0}, Landroidx/slice/widget/SliceAdapter;->notifyHeaderChanged()V

    :cond_0
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

    if-nez p1, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/SliceAdapter;->mLoadingActions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroidx/slice/widget/SliceAdapter;->mLoadingActions:Ljava/util/Set;

    :goto_0
    invoke-virtual {p0}, Landroidx/slice/widget/SliceAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setParents(Landroidx/slice/widget/SliceView;Landroidx/slice/widget/TemplateView;)V
    .locals 0

    iput-object p1, p0, Landroidx/slice/widget/SliceAdapter;->mParent:Landroidx/slice/widget/SliceView;

    iput-object p2, p0, Landroidx/slice/widget/SliceAdapter;->mTemplateView:Landroidx/slice/widget/TemplateView;

    return-void
.end method

.method public setPolicy(Landroidx/slice/widget/SliceViewPolicy;)V
    .locals 0

    iput-object p1, p0, Landroidx/slice/widget/SliceAdapter;->mPolicy:Landroidx/slice/widget/SliceViewPolicy;

    return-void
.end method

.method public setShowLastUpdated(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/slice/widget/SliceAdapter;->mShowLastUpdated:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/slice/widget/SliceAdapter;->mShowLastUpdated:Z

    invoke-virtual {p0}, Landroidx/slice/widget/SliceAdapter;->notifyHeaderChanged()V

    :cond_0
    return-void
.end method

.method public setSliceActions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/slice/widget/SliceAdapter;->mSliceActions:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceAdapter;->notifyHeaderChanged()V

    return-void
.end method

.method public setSliceItems(Ljava/util/List;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/widget/SliceContent;",
            ">;II)V"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/SliceAdapter;->mLoadingActions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Landroidx/slice/widget/SliceAdapter;->mSlices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/SliceAdapter;->mIdGen:Landroidx/slice/widget/SliceAdapter$IdGenerator;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceAdapter$IdGenerator;->resetUsage()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/slice/widget/SliceAdapter;->mSlices:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/widget/SliceContent;

    iget-object v2, p0, Landroidx/slice/widget/SliceAdapter;->mSlices:Ljava/util/List;

    new-instance v3, Landroidx/slice/widget/SliceAdapter$SliceWrapper;

    iget-object v4, p0, Landroidx/slice/widget/SliceAdapter;->mIdGen:Landroidx/slice/widget/SliceAdapter$IdGenerator;

    invoke-direct {v3, v1, v4, p3}, Landroidx/slice/widget/SliceAdapter$SliceWrapper;-><init>(Landroidx/slice/widget/SliceContent;Landroidx/slice/widget/SliceAdapter$IdGenerator;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    iput p2, p0, Landroidx/slice/widget/SliceAdapter;->mColor:I

    invoke-virtual {p0}, Landroidx/slice/widget/SliceAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSliceObserver(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/slice/widget/SliceAdapter;->mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    return-void
.end method

.method public setStyle(Landroidx/slice/widget/SliceStyle;)V
    .locals 0

    iput-object p1, p0, Landroidx/slice/widget/SliceAdapter;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceAdapter;->notifyDataSetChanged()V

    return-void
.end method
