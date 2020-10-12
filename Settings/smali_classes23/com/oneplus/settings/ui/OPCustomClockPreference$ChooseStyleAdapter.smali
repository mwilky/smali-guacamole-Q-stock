.class Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
.source "OPCustomClockPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ui/OPCustomClockPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChooseStyleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<",
        "Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPCustomClockPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$000(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$OPCustomClockPreference$ChooseStyleAdapter(ILcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    iput p1, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$000(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    iget v0, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->type:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$200(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Landroid/widget/ImageView;

    move-result-object v0

    const v3, 0x7f080631

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$000(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    iget v0, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->type:I

    const/16 v3, 0x9

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$200(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Landroid/widget/ImageView;

    move-result-object v0

    const v3, 0x7f080636

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$000(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    iget v0, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->type:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$200(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Landroid/widget/ImageView;

    move-result-object v0

    const v3, 0x7f08062d

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$000(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    iget v0, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->type:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$200(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Landroid/widget/ImageView;

    move-result-object v0

    const v3, 0x7f080638

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$000(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    iget v0, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->type:I

    const/16 v3, 0x28

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$200(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Landroid/widget/ImageView;

    move-result-object v0

    const v3, 0x7f080634

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$000(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    iget v0, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->type:I

    const/16 v3, 0xa

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$200(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Landroid/widget/ImageView;

    move-result-object v0

    const v3, 0x7f080637

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$000(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    iget v0, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->type:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$200(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Landroid/widget/ImageView;

    move-result-object v0

    const v3, 0x7f080632

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$000(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    iget v0, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->type:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_7

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$200(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Landroid/widget/ImageView;

    move-result-object v0

    const v3, 0x7f080633

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$000(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    iget v0, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->type:I

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$200(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Landroid/widget/ImageView;

    move-result-object v0

    const v3, 0x7f080639

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$000(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    iget v0, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->type:I

    const/4 v3, 0x7

    if-ne v0, v3, :cond_9

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$200(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Landroid/widget/ImageView;

    move-result-object v0

    const v3, 0x7f08062e

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$000(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    iget v0, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->type:I

    const/16 v3, 0x8

    if-ne v0, v3, :cond_a

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$200(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Landroid/widget/ImageView;

    move-result-object v0

    const v3, 0x7f08062f

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$000(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    iget v0, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->type:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_b

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$200(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Landroid/widget/ImageView;

    move-result-object v0

    const v3, 0x7f080630

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_b
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$100(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$100(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$100(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/RadiusImageView;->setVisibility(I)V

    :cond_c
    iget-object v0, p2, Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/RadiusImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {v0, p2}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$102(Lcom/oneplus/settings/ui/OPCustomClockPreference;Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;)Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {v3}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$000(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_e

    iget-object v3, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {v3}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$000(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    if-ne p1, v0, :cond_d

    move v4, v2

    goto :goto_2

    :cond_d
    move v4, v1

    :goto_2
    iput-boolean v4, v3, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->selected:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->onBindViewHolder(Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;I)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$000(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    iget-object v1, p1, Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;->textView:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;->imageView:Lcom/oneplus/settings/ui/RadiusImageView;

    iget v2, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->resId:I

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/RadiusImageView;->setBackgroundResource(I)V

    iget-boolean v1, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->selected:Z

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/RadiusImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {v1, p1}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$102(Lcom/oneplus/settings/ui/OPCustomClockPreference;Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;)Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/RadiusImageView;->setVisibility(I)V

    :goto_0
    iget-object v1, p1, Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomClockPreference$ChooseStyleAdapter$w5E-rJ7hfpkhOWi8HD6IBwTjpxA;

    invoke-direct {v2, p0, p2, p1}, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomClockPreference$ChooseStyleAdapter$w5E-rJ7hfpkhOWi8HD6IBwTjpxA;-><init>(Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;ILcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0185

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-direct {v1, v2, v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;-><init>(Lcom/oneplus/settings/ui/OPCustomClockPreference;Landroid/view/View;)V

    return-object v1
.end method
