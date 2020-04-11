.class Landroidx/leanback/widget/ListRowPresenter$1;
.super Ljava/lang/Object;
.source "ListRowPresenter.java"

# interfaces
.implements Landroidx/leanback/widget/OnChildSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/leanback/widget/ListRowPresenter;->initializeRowViewHolder(Landroidx/leanback/widget/RowPresenter$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/widget/ListRowPresenter;

.field final synthetic val$rowViewHolder:Landroidx/leanback/widget/ListRowPresenter$ViewHolder;


# direct methods
.method constructor <init>(Landroidx/leanback/widget/ListRowPresenter;Landroidx/leanback/widget/ListRowPresenter$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/ListRowPresenter$1;->this$0:Landroidx/leanback/widget/ListRowPresenter;

    iput-object p2, p0, Landroidx/leanback/widget/ListRowPresenter$1;->val$rowViewHolder:Landroidx/leanback/widget/ListRowPresenter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildSelected(Landroid/view/ViewGroup;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Landroidx/leanback/widget/ListRowPresenter$1;->this$0:Landroidx/leanback/widget/ListRowPresenter;

    iget-object v1, p0, Landroidx/leanback/widget/ListRowPresenter$1;->val$rowViewHolder:Landroidx/leanback/widget/ListRowPresenter$ViewHolder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroidx/leanback/widget/ListRowPresenter;->selectChildView(Landroidx/leanback/widget/ListRowPresenter$ViewHolder;Landroid/view/View;Z)V

    return-void
.end method
