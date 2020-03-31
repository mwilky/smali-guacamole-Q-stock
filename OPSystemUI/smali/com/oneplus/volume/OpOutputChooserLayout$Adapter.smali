.class Lcom/oneplus/volume/OpOutputChooserLayout$Adapter;
.super Landroid/widget/BaseAdapter;
.source "OpOutputChooserLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/volume/OpOutputChooserLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/volume/OpOutputChooserLayout;


# direct methods
.method private constructor <init>(Lcom/oneplus/volume/OpOutputChooserLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/volume/OpOutputChooserLayout$Adapter;->this$0:Lcom/oneplus/volume/OpOutputChooserLayout;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/volume/OpOutputChooserLayout;Lcom/oneplus/volume/OpOutputChooserLayout$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/volume/OpOutputChooserLayout$Adapter;-><init>(Lcom/oneplus/volume/OpOutputChooserLayout;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserLayout$Adapter;->this$0:Lcom/oneplus/volume/OpOutputChooserLayout;

    invoke-static {v0}, Lcom/oneplus/volume/OpOutputChooserLayout;->access$100(Lcom/oneplus/volume/OpOutputChooserLayout;)[Lcom/oneplus/volume/OpOutputChooserLayout$Item;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserLayout$Adapter;->this$0:Lcom/oneplus/volume/OpOutputChooserLayout;

    invoke-static {p0}, Lcom/oneplus/volume/OpOutputChooserLayout;->access$100(Lcom/oneplus/volume/OpOutputChooserLayout;)[Lcom/oneplus/volume/OpOutputChooserLayout$Item;

    move-result-object p0

    array-length p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserLayout$Adapter;->this$0:Lcom/oneplus/volume/OpOutputChooserLayout;

    invoke-static {p0}, Lcom/oneplus/volume/OpOutputChooserLayout;->access$100(Lcom/oneplus/volume/OpOutputChooserLayout;)[Lcom/oneplus/volume/OpOutputChooserLayout$Item;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserLayout$Adapter;->this$0:Lcom/oneplus/volume/OpOutputChooserLayout;

    invoke-static {v0}, Lcom/oneplus/volume/OpOutputChooserLayout;->access$100(Lcom/oneplus/volume/OpOutputChooserLayout;)[Lcom/oneplus/volume/OpOutputChooserLayout$Item;

    move-result-object v0

    aget-object p1, v0, p1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/oneplus/volume/OpOutputChooserLayout$Adapter;->this$0:Lcom/oneplus/volume/OpOutputChooserLayout;

    invoke-static {p2}, Lcom/oneplus/volume/OpOutputChooserLayout;->access$200(Lcom/oneplus/volume/OpOutputChooserLayout;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/android/systemui/R$layout;->output_chooser_item:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object p3, p0, Lcom/oneplus/volume/OpOutputChooserLayout$Adapter;->this$0:Lcom/oneplus/volume/OpOutputChooserLayout;

    invoke-static {p3}, Lcom/oneplus/volume/OpOutputChooserLayout;->access$300(Lcom/oneplus/volume/OpOutputChooserLayout;)Z

    move-result p3

    if-eqz p3, :cond_1

    move p3, v0

    goto :goto_0

    :cond_1
    const/4 p3, 0x4

    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    const p3, 0x1020006

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    iget v1, p1, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->iconResId:I

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    const v1, 0x1020016

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p1, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->line1:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x1020010

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p1, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->line2:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x2

    :goto_2
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 v4, 0x8

    if-eqz v3, :cond_4

    move v5, v0

    goto :goto_3

    :cond_4
    move v5, v4

    :goto_3
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->line2:Ljava/lang/CharSequence;

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/oneplus/volume/-$$Lambda$OpOutputChooserLayout$Adapter$mIWiwdVQQpINdvcBUcvmAMjOGrc;

    invoke-direct {v3, p0, p1}, Lcom/oneplus/volume/-$$Lambda$OpOutputChooserLayout$Adapter$mIWiwdVQQpINdvcBUcvmAMjOGrc;-><init>(Lcom/oneplus/volume/OpOutputChooserLayout$Adapter;Lcom/oneplus/volume/OpOutputChooserLayout$Item;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x1020008

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/oneplus/volume/OpOutputChooserLayout$Adapter;->this$0:Lcom/oneplus/volume/OpOutputChooserLayout;

    invoke-static {v5}, Lcom/oneplus/volume/OpOutputChooserLayout;->access$400(Lcom/oneplus/volume/OpOutputChooserLayout;)Lcom/oneplus/volume/OpOutputChooserLayout$Callback;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/oneplus/volume/OpOutputChooserLayout$Adapter;->this$0:Lcom/oneplus/volume/OpOutputChooserLayout;

    invoke-static {v5}, Lcom/oneplus/volume/OpOutputChooserLayout;->access$400(Lcom/oneplus/volume/OpOutputChooserLayout;)Lcom/oneplus/volume/OpOutputChooserLayout$Callback;

    move-result-object v5

    invoke-interface {v5}, Lcom/oneplus/volume/OpOutputChooserLayout$Callback;->getPrimaryTextColor()I

    move-result v5

    iget-object v6, p0, Lcom/oneplus/volume/OpOutputChooserLayout$Adapter;->this$0:Lcom/oneplus/volume/OpOutputChooserLayout;

    invoke-static {v6}, Lcom/oneplus/volume/OpOutputChooserLayout;->access$400(Lcom/oneplus/volume/OpOutputChooserLayout;)Lcom/oneplus/volume/OpOutputChooserLayout$Callback;

    move-result-object v6

    invoke-interface {v6}, Lcom/oneplus/volume/OpOutputChooserLayout$Callback;->getSecondaryTextColor()I

    move-result v6

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserLayout$Adapter;->this$0:Lcom/oneplus/volume/OpOutputChooserLayout;

    invoke-static {p0}, Lcom/oneplus/volume/OpOutputChooserLayout;->access$400(Lcom/oneplus/volume/OpOutputChooserLayout;)Lcom/oneplus/volume/OpOutputChooserLayout$Callback;

    move-result-object p0

    invoke-interface {p0}, Lcom/oneplus/volume/OpOutputChooserLayout$Callback;->getIconColor()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    iget-boolean p0, p1, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->selected:Z

    if-eqz p0, :cond_7

    sget p0, Lcom/android/systemui/R$drawable;->ic_output_chooser_check:I

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_5

    :cond_7
    iget p0, p1, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->icon2:I

    const/4 p3, -0x1

    if-eq p0, p3, :cond_8

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget p0, p1, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->icon2:I

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_5

    :cond_8
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_5
    return-object p2
.end method

.method public synthetic lambda$getView$0$OpOutputChooserLayout$Adapter(Lcom/oneplus/volume/OpOutputChooserLayout$Item;Landroid/view/View;)V
    .locals 0

    iget-object p2, p0, Lcom/oneplus/volume/OpOutputChooserLayout$Adapter;->this$0:Lcom/oneplus/volume/OpOutputChooserLayout;

    invoke-static {p2}, Lcom/oneplus/volume/OpOutputChooserLayout;->access$400(Lcom/oneplus/volume/OpOutputChooserLayout;)Lcom/oneplus/volume/OpOutputChooserLayout$Callback;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserLayout$Adapter;->this$0:Lcom/oneplus/volume/OpOutputChooserLayout;

    invoke-static {p0}, Lcom/oneplus/volume/OpOutputChooserLayout;->access$400(Lcom/oneplus/volume/OpOutputChooserLayout;)Lcom/oneplus/volume/OpOutputChooserLayout$Callback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oneplus/volume/OpOutputChooserLayout$Callback;->onDetailItemClick(Lcom/oneplus/volume/OpOutputChooserLayout$Item;)V

    :cond_0
    return-void
.end method
