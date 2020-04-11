.class Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
.source "OPCustomFingeprintAnimVideoPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimStyleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<",
        "Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$VH;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->access$300(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter(ILcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$VH;Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimEntity;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;

    invoke-static {v0, p1}, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->access$500(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->access$400(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;)Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$VH;

    move-result-object v0

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$VH;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/RadiusImageView;->setVisibility(I)V

    iget-object v0, p2, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$VH;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/RadiusImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;

    invoke-static {v0, p2}, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->access$402(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$VH;)Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$VH;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;

    iget v1, p3, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimEntity;->animIndex:I

    invoke-static {v0, v1}, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->access$600(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;

    iput p1, v0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->mSelectedIndex:I

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$VH;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;->onBindViewHolder(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$VH;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$VH;I)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->access$300(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimEntity;

    iget-object v1, p1, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$VH;->imageView:Lcom/oneplus/settings/ui/RadiusImageView;

    iget v2, v0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimEntity;->animResId:I

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/RadiusImageView;->setImageResource(I)V

    iget-object v1, p1, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$VH;->textView:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimEntity;->animName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$VH;->itemView:Landroid/view/View;

    new-instance v2, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter$r1WV6xya69cRy8GO-CXyjMc3D_c;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter$r1WV6xya69cRy8GO-CXyjMc3D_c;-><init>(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;ILcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$VH;Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimEntity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v1, v0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimEntity;->selected:Z

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$VH;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/RadiusImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;

    invoke-static {v1, p1}, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->access$402(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$VH;)Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$VH;

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$VH;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/RadiusImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$VH;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$VH;
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;->access$200(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0183

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$VH;

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;

    invoke-direct {v1, v2, v0}, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$VH;-><init>(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;Landroid/view/View;)V

    return-object v1
.end method
