.class Lcom/android/systemui/qs/customize/QSEditPageManager$1;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "QSEditPageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/customize/QSEditPageManager;->setupRecyclerView(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;Lcom/android/systemui/qs/customize/ItemLocations;Lcom/android/systemui/qs/customize/QSEditViewPager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/QSEditPageManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/QSEditPageManager;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager$1;->this$0:Lcom/android/systemui/qs/customize/QSEditPageManager;

    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 3

    invoke-super {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager$1;->this$0:Lcom/android/systemui/qs/customize/QSEditPageManager;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->access$000(Lcom/android/systemui/qs/customize/QSEditPageManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->qs_tile_margin_row:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager$1;->this$0:Lcom/android/systemui/qs/customize/QSEditPageManager;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->access$000(Lcom/android/systemui/qs/customize/QSEditPageManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->qs_edit_tile_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager$1;->this$0:Lcom/android/systemui/qs/customize/QSEditPageManager;

    invoke-static {p0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->access$000(Lcom/android/systemui/qs/customize/QSEditPageManager;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->qs_edit_tile_margin:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return-object v0
.end method
