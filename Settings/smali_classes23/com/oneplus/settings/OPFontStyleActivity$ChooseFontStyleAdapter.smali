.class Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
.source "OPFontStyleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPFontStyleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChooseFontStyleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<",
        "Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPFontStyleActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPFontStyleActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;->this$0:Lcom/oneplus/settings/OPFontStyleActivity;

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;->this$0:Lcom/oneplus/settings/OPFontStyleActivity;

    invoke-static {v0}, Lcom/oneplus/settings/OPFontStyleActivity;->access$000(Lcom/oneplus/settings/OPFontStyleActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$OPFontStyleActivity$ChooseFontStyleAdapter(ILcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;->this$0:Lcom/oneplus/settings/OPFontStyleActivity;

    iget v0, v0, Lcom/oneplus/settings/OPFontStyleActivity;->mSelectedIndex:I

    if-eq v0, p1, :cond_3

    iget-object v0, p0, Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;->this$0:Lcom/oneplus/settings/OPFontStyleActivity;

    invoke-static {v0}, Lcom/oneplus/settings/OPFontStyleActivity;->access$100(Lcom/oneplus/settings/OPFontStyleActivity;)Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;->this$0:Lcom/oneplus/settings/OPFontStyleActivity;

    invoke-static {v0}, Lcom/oneplus/settings/OPFontStyleActivity;->access$100(Lcom/oneplus/settings/OPFontStyleActivity;)Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;->squarelLinearLayout:Lcom/oneplus/settings/ui/OPSquarelLinearLayout;

    const v1, 0x7f080688

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPSquarelLinearLayout;->setBackgroundResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;->this$0:Lcom/oneplus/settings/OPFontStyleActivity;

    iput p1, v0, Lcom/oneplus/settings/OPFontStyleActivity;->mSelectedIndex:I

    invoke-static {v0, p2}, Lcom/oneplus/settings/OPFontStyleActivity;->access$102(Lcom/oneplus/settings/OPFontStyleActivity;Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;)Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;

    iget-object v0, p2, Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;->squarelLinearLayout:Lcom/oneplus/settings/ui/OPSquarelLinearLayout;

    const v1, 0x7f08068b

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPSquarelLinearLayout;->setBackgroundResource(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;->this$0:Lcom/oneplus/settings/OPFontStyleActivity;

    invoke-static {v1}, Lcom/oneplus/settings/OPFontStyleActivity;->access$000(Lcom/oneplus/settings/OPFontStyleActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    if-ne p1, v0, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;->this$0:Lcom/oneplus/settings/OPFontStyleActivity;

    invoke-static {v1}, Lcom/oneplus/settings/OPFontStyleActivity;->access$000(Lcom/oneplus/settings/OPFontStyleActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/OPFontStyleActivity$ItemEntity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/oneplus/settings/OPFontStyleActivity$ItemEntity;->selected:Z

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;->this$0:Lcom/oneplus/settings/OPFontStyleActivity;

    invoke-static {v1}, Lcom/oneplus/settings/OPFontStyleActivity;->access$000(Lcom/oneplus/settings/OPFontStyleActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/OPFontStyleActivity$ItemEntity;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/oneplus/settings/OPFontStyleActivity$ItemEntity;->selected:Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;->this$0:Lcom/oneplus/settings/OPFontStyleActivity;

    invoke-static {v0}, Lcom/oneplus/settings/OPFontStyleActivity;->access$000(Lcom/oneplus/settings/OPFontStyleActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/OPFontStyleActivity$ItemEntity;

    iget v1, v1, Lcom/oneplus/settings/OPFontStyleActivity$ItemEntity;->fontType:I

    invoke-static {v0, v1}, Lcom/oneplus/settings/OPFontStyleActivity;->access$202(Lcom/oneplus/settings/OPFontStyleActivity;I)I

    iget-object v0, p0, Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;->this$0:Lcom/oneplus/settings/OPFontStyleActivity;

    invoke-static {v0}, Lcom/oneplus/settings/OPFontStyleActivity;->access$300(Lcom/oneplus/settings/OPFontStyleActivity;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;->onBindViewHolder(Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;I)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;->this$0:Lcom/oneplus/settings/OPFontStyleActivity;

    invoke-static {v0}, Lcom/oneplus/settings/OPFontStyleActivity;->access$000(Lcom/oneplus/settings/OPFontStyleActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/OPFontStyleActivity$ItemEntity;

    iget-object v1, p1, Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;->fontTitle:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/oneplus/settings/OPFontStyleActivity$ItemEntity;->title:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p1, Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;->fontContent:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/oneplus/settings/OPFontStyleActivity$ItemEntity;->content:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p1, Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;->fontFlag:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/oneplus/settings/OPFontStyleActivity$ItemEntity;->content:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p1, Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;->fontFlag:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/oneplus/settings/OPFontStyleActivity$ItemEntity;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v1, v0, Lcom/oneplus/settings/OPFontStyleActivity$ItemEntity;->selected:Z

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;->squarelLinearLayout:Lcom/oneplus/settings/ui/OPSquarelLinearLayout;

    const v2, 0x7f08068b

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/OPSquarelLinearLayout;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;->this$0:Lcom/oneplus/settings/OPFontStyleActivity;

    invoke-static {v1, p1}, Lcom/oneplus/settings/OPFontStyleActivity;->access$102(Lcom/oneplus/settings/OPFontStyleActivity;Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;)Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;->squarelLinearLayout:Lcom/oneplus/settings/ui/OPSquarelLinearLayout;

    const v2, 0x7f080688

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/OPSquarelLinearLayout;->setBackgroundResource(I)V

    :goto_0
    iget-object v1, p1, Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;->squarelLinearLayout:Lcom/oneplus/settings/ui/OPSquarelLinearLayout;

    new-instance v2, Lcom/oneplus/settings/-$$Lambda$OPFontStyleActivity$ChooseFontStyleAdapter$2bQmhusvAh2JmeWOZtZJI1e1XK0;

    invoke-direct {v2, p0, p2, p1}, Lcom/oneplus/settings/-$$Lambda$OPFontStyleActivity$ChooseFontStyleAdapter$2bQmhusvAh2JmeWOZtZJI1e1XK0;-><init>(Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;ILcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;)V

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/OPSquarelLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;->this$0:Lcom/oneplus/settings/OPFontStyleActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d01bf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;

    invoke-direct {v1, v0}, Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method
