.class Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$SpaceItemDecoration;
.super Lcom/oneplus/lib/widget/recyclerview/OPItemDecoration;
.source "OPCustomNotificationAnimVideoPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SpaceItemDecoration"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;I)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$SpaceItemDecoration;->this$0:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;

    invoke-direct {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/OPItemDecoration;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V
    .locals 4

    invoke-super {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/OPItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$SpaceItemDecoration;->this$0:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->access$200(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070460

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$SpaceItemDecoration;->this$0:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;

    invoke-static {v3}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->access$300(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_0

    iget-object v3, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$SpaceItemDecoration;->this$0:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;

    invoke-virtual {v3}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->right:I

    :cond_0
    return-void
.end method
