.class public Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;
.super Landroid/widget/BaseAdapter;
.source "OPCarChargerOpenAppAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter$ItemViewHolder;
    }
.end annotation


# instance fields
.field private hasRecommendedCount:I

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOpenAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageName:Ljava/lang/String;

.field private mSelectedPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;->mOpenAppList:Ljava/util/List;

    iput-object p1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;->mOpenAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/oneplus/settings/better/OPAppModel;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;->mOpenAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/better/OPAppModel;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;->getItem(I)Lcom/oneplus/settings/better/OPAppModel;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;->mOpenAppList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/better/OPAppModel;

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0d0177

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter$ItemViewHolder;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter$ItemViewHolder;-><init>(Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;)V

    move-object v0, v2

    const v2, 0x7f0a050c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter$ItemViewHolder;->parent:Landroid/widget/RelativeLayout;

    const v2, 0x7f0a0721

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    const v2, 0x7f0a02f5

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    const v2, 0x7f0a0426

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter$ItemViewHolder;->appNameTv:Landroid/widget/TextView;

    const v2, 0x7f0a00ea

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter$ItemViewHolder;->bottomLine:Landroid/view/View;

    const v2, 0x7f0a02b0

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter$ItemViewHolder;->groupDivider:Landroid/view/View;

    const v2, 0x7f0a058d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/button/OPRadioButton;

    iput-object v2, v0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter$ItemViewHolder;->radioButton:Lcom/oneplus/lib/widget/button/OPRadioButton;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter$ItemViewHolder;

    :goto_0
    iget-object v2, v0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v2, 0x8

    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    iget-object v5, v0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    const v6, 0x7f120c3e

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_1
    iget v5, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;->hasRecommendedCount:I

    add-int/2addr v5, v4

    if-ne p1, v5, :cond_2

    iget-object v5, v0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    const v6, 0x7f120c3d

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_2
    iget-object v5, v0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    if-ge p1, v4, :cond_3

    iget-object v5, v0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object v5, v0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, v0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    iget-object v5, v0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter$ItemViewHolder;->appNameTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_5

    iget v5, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;->hasRecommendedCount:I

    if-ne p1, v5, :cond_4

    goto :goto_3

    :cond_4
    iget-object v5, v0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter$ItemViewHolder;->bottomLine:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_5
    :goto_3
    iget-object v5, v0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter$ItemViewHolder;->bottomLine:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    iget-object v5, v0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter$ItemViewHolder;->groupDivider:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter$ItemViewHolder;->radioButton:Lcom/oneplus/lib/widget/button/OPRadioButton;

    invoke-virtual {v2, v4}, Lcom/oneplus/lib/widget/button/OPRadioButton;->setChecked(Z)V

    goto :goto_5

    :cond_6
    iget-object v2, v0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter$ItemViewHolder;->radioButton:Lcom/oneplus/lib/widget/button/OPRadioButton;

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/button/OPRadioButton;->setChecked(Z)V

    :goto_5
    return-object p2
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;->mOpenAppList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setHasRecommendedCount(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;->hasRecommendedCount:I

    return-void
.end method

.method public setSelectedItem(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;->mPackageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;->mPackageName:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;->notifyDataSetChanged()V

    return-void
.end method
