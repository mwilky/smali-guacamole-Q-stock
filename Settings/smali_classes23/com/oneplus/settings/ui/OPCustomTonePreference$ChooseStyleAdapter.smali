.class Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
.source "OPCustomTonePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ui/OPCustomTonePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChooseStyleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<",
        "Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPCustomTonePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->access$100(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$OPCustomTonePreference$ChooseStyleAdapter(ILcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    iget v0, v0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mSelectedIndex:I

    if-eq v0, p1, :cond_5

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->access$200(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/RadiusImageView;->setVisibility(I)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    iget-object v0, p2, Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/RadiusImageView;->setVisibility(I)V

    iget-object v0, p2, Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    const v2, 0x7f0805f7

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/ui/RadiusImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/RadiusImageView;->setVisibility(I)V

    iget-object v0, p2, Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    const v2, 0x7f0805f8

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/ui/RadiusImageView;->setImageResource(I)V

    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    iput p1, v0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mSelectedIndex:I

    invoke-static {v0, p2}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->access$202(Lcom/oneplus/settings/ui/OPCustomTonePreference;Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;)Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-static {v2}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->access$100(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_2

    if-ne p1, v0, :cond_1

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-static {v2}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->access$100(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;

    iput-boolean v3, v2, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;->selected:Z

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-static {v2}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->access$100(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;

    iput-boolean v1, v2, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;->selected:Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->access$000(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    iget v0, v0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mSelectedIndex:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->access$000(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Ljava/util/List;

    move-result-object v0

    const v1, 0x7f080539

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->access$000(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Ljava/util/List;

    move-result-object v0

    const v1, 0x7f08053a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    iget v0, v0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mSelectedIndex:I

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->access$000(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Ljava/util/List;

    move-result-object v0

    const v1, 0x7f08053f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->access$000(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Ljava/util/List;

    move-result-object v0

    const v1, 0x7f080540

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->access$000(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Ljava/util/List;

    move-result-object v0

    const v1, 0x7f08053c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->access$000(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Ljava/util/List;

    move-result-object v0

    const v1, 0x7f08053d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->access$300(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    :cond_5
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->onBindViewHolder(Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;I)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->access$100(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;

    iget-object v1, p1, Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;->textView:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;->imageView:Lcom/oneplus/settings/ui/RadiusImageView;

    iget v2, v0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;->resId:I

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/RadiusImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-virtual {v1}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x2

    const-string v3, "oem_black_mode"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-ne v1, v2, :cond_1

    iget-boolean v2, v0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;->selected:Z

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/ui/RadiusImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-static {v2, p1}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->access$202(Lcom/oneplus/settings/ui/OPCustomTonePreference;Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;)Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;

    goto :goto_0

    :cond_0
    iget-object v2, p1, Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    invoke-virtual {v2, v4}, Lcom/oneplus/settings/ui/RadiusImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    if-nez v1, :cond_3

    iget-boolean v2, v0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;->selected:Z

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/ui/RadiusImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-static {v2, p1}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->access$202(Lcom/oneplus/settings/ui/OPCustomTonePreference;Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;)Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    invoke-virtual {v2, v4}, Lcom/oneplus/settings/ui/RadiusImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    iget-boolean v2, v0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;->selected:Z

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/ui/RadiusImageView;->setVisibility(I)V

    iget-object v2, p1, Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    const v3, 0x7f0805f7

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/ui/RadiusImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-static {v2, p1}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->access$202(Lcom/oneplus/settings/ui/OPCustomTonePreference;Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;)Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    invoke-virtual {v2, v4}, Lcom/oneplus/settings/ui/RadiusImageView;->setVisibility(I)V

    :cond_5
    :goto_0
    iget-object v2, p1, Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;->imageView:Lcom/oneplus/settings/ui/RadiusImageView;

    new-instance v3, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomTonePreference$ChooseStyleAdapter$TQOysjhtGWTNfIFmxiFZJIZ53K4;

    invoke-direct {v3, p0, p2, p1}, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomTonePreference$ChooseStyleAdapter$TQOysjhtGWTNfIFmxiFZJIZ53K4;-><init>(Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;ILcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;)V

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/ui/RadiusImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d018e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-direct {v1, v2, v0}, Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;-><init>(Lcom/oneplus/settings/ui/OPCustomTonePreference;Landroid/view/View;)V

    return-object v1
.end method
