.class Lcom/google/android/setupdesign/items/ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ItemViewHolder.java"

# interfaces
.implements Lcom/google/android/setupdesign/DividerItemDecoration$DividedViewHolder;


# instance fields
.field private isEnabled:Z

.field private item:Lcom/google/android/setupdesign/items/IItem;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getItem()Lcom/google/android/setupdesign/items/IItem;
    .locals 1

    iget-object v0, p0, Lcom/google/android/setupdesign/items/ItemViewHolder;->item:Lcom/google/android/setupdesign/items/IItem;

    return-object v0
.end method

.method public isDividerAllowedAbove()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/setupdesign/items/ItemViewHolder;->item:Lcom/google/android/setupdesign/items/IItem;

    instance-of v1, v0, Lcom/google/android/setupdesign/items/Dividable;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/setupdesign/items/Dividable;

    invoke-interface {v0}, Lcom/google/android/setupdesign/items/Dividable;->isDividerAllowedAbove()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/setupdesign/items/ItemViewHolder;->isEnabled:Z

    :goto_0
    return v0
.end method

.method public isDividerAllowedBelow()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/setupdesign/items/ItemViewHolder;->item:Lcom/google/android/setupdesign/items/IItem;

    instance-of v1, v0, Lcom/google/android/setupdesign/items/Dividable;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/setupdesign/items/Dividable;

    invoke-interface {v0}, Lcom/google/android/setupdesign/items/Dividable;->isDividerAllowedBelow()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/setupdesign/items/ItemViewHolder;->isEnabled:Z

    :goto_0
    return v0
.end method

.method public setEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/google/android/setupdesign/items/ItemViewHolder;->isEnabled:Z

    iget-object v0, p0, Lcom/google/android/setupdesign/items/ItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/google/android/setupdesign/items/ItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/setupdesign/items/ItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method public setItem(Lcom/google/android/setupdesign/items/IItem;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/setupdesign/items/ItemViewHolder;->item:Lcom/google/android/setupdesign/items/IItem;

    return-void
.end method
