.class Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
.source "OPCustomShapePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ui/OPCustomShapePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChooseStyleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<",
        "Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPCustomShapePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->access$200(Lcom/oneplus/settings/ui/OPCustomShapePreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$OPCustomShapePreference$ChooseStyleAdapter(ILcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;

    iput p1, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mSelectedIndex:I

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->access$200(Lcom/oneplus/settings/ui/OPCustomShapePreference;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;

    iget v1, v1, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;->index:I

    invoke-static {v0, v1}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->access$400(Lcom/oneplus/settings/ui/OPCustomShapePreference;I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->access$300(Lcom/oneplus/settings/ui/OPCustomShapePreference;)Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/RadiusImageView;->setVisibility(I)V

    iget-object v0, p2, Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/RadiusImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;

    invoke-static {v0, p2}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->access$302(Lcom/oneplus/settings/ui/OPCustomShapePreference;Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;)Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;

    invoke-static {v2}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->access$200(Lcom/oneplus/settings/ui/OPCustomShapePreference;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;

    invoke-static {v2}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->access$200(Lcom/oneplus/settings/ui/OPCustomShapePreference;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;

    if-ne p1, v0, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    iput-boolean v3, v2, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;->selected:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;->onBindViewHolder(Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;I)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->access$200(Lcom/oneplus/settings/ui/OPCustomShapePreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;

    iget-object v1, p1, Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;->textView:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;->imageView:Lcom/oneplus/settings/ui/RadiusImageView;

    iget v2, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;->resId:I

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/RadiusImageView;->setImageResource(I)V

    iget-boolean v1, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;->selected:Z

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/RadiusImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;

    invoke-static {v1, p1}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->access$302(Lcom/oneplus/settings/ui/OPCustomShapePreference;Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;)Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/RadiusImageView;->setVisibility(I)V

    :goto_0
    iget-object v1, p1, Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomShapePreference$ChooseStyleAdapter$em2_OC1o7_7jKoBMws-2jkfrCFA;

    invoke-direct {v2, p0, p2, p1}, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomShapePreference$ChooseStyleAdapter$em2_OC1o7_7jKoBMws-2jkfrCFA;-><init>(Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;ILcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d018e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;

    invoke-direct {v1, v2, v0}, Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;-><init>(Lcom/oneplus/settings/ui/OPCustomShapePreference;Landroid/view/View;)V

    return-object v1
.end method
