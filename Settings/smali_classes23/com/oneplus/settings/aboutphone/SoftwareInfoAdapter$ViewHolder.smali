.class Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SoftwareInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;

.field tvSummary:Landroid/widget/TextView;

.field tvTitle:Landroid/widget/TextView;

.field viewDividerBottom:Landroid/view/View;

.field viewDividerRight:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;->this$0:Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a072d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0729

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;->tvSummary:Landroid/widget/TextView;

    const v0, 0x7f0a0311

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    const v0, 0x7f0a020e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;->viewDividerRight:Landroid/view/View;

    const v0, 0x7f0a020b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;->viewDividerBottom:Landroid/view/View;

    return-void
.end method
