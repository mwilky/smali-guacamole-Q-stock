.class public Lcom/oneplus/volume/OpOutputChooserLayout;
.super Landroid/widget/LinearLayout;
.source "OpOutputChooserLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/volume/OpOutputChooserLayout$Callback;,
        Lcom/oneplus/volume/OpOutputChooserLayout$Item;,
        Lcom/oneplus/volume/OpOutputChooserLayout$H;,
        Lcom/oneplus/volume/OpOutputChooserLayout$Adapter;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mAdapter:Lcom/oneplus/volume/OpOutputChooserLayout$Adapter;

.field private mCallback:Lcom/oneplus/volume/OpOutputChooserLayout$Callback;

.field private final mContext:Landroid/content/Context;

.field private mEmpty:Landroid/view/View;

.field private mEmptyIcon:Landroid/widget/ImageView;

.field private mEmptyText:Landroid/widget/TextView;

.field private final mHandler:Lcom/oneplus/volume/OpOutputChooserLayout$H;

.field private mItemList:Lcom/android/systemui/qs/AutoSizingList;

.field private mItems:[Lcom/oneplus/volume/OpOutputChooserLayout$Item;

.field private mItemsVisible:Z

.field private mTag:Ljava/lang/String;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "OutputChooserLayout"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/volume/OpOutputChooserLayout;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/oneplus/volume/OpOutputChooserLayout$H;

    invoke-direct {p2, p0}, Lcom/oneplus/volume/OpOutputChooserLayout$H;-><init>(Lcom/oneplus/volume/OpOutputChooserLayout;)V

    iput-object p2, p0, Lcom/oneplus/volume/OpOutputChooserLayout;->mHandler:Lcom/oneplus/volume/OpOutputChooserLayout$H;

    new-instance p2, Lcom/oneplus/volume/OpOutputChooserLayout$Adapter;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/oneplus/volume/OpOutputChooserLayout$Adapter;-><init>(Lcom/oneplus/volume/OpOutputChooserLayout;Lcom/oneplus/volume/OpOutputChooserLayout$1;)V

    iput-object p2, p0, Lcom/oneplus/volume/OpOutputChooserLayout;->mAdapter:Lcom/oneplus/volume/OpOutputChooserLayout$Adapter;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/oneplus/volume/OpOutputChooserLayout;->mItemsVisible:Z

    iput-object p1, p0, Lcom/oneplus/volume/OpOutputChooserLayout;->mContext:Landroid/content/Context;

    const-string p1, "OutputChooserLayout"

    iput-object p1, p0, Lcom/oneplus/volume/OpOutputChooserLayout;->mTag:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/volume/OpOutputChooserLayout;)[Lcom/oneplus/volume/OpOutputChooserLayout$Item;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserLayout;->mItems:[Lcom/oneplus/volume/OpOutputChooserLayout$Item;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/volume/OpOutputChooserLayout;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/volume/OpOutputChooserLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/volume/OpOutputChooserLayout;->mItemsVisible:Z

    return p0
.end method

.method static synthetic access$400(Lcom/oneplus/volume/OpOutputChooserLayout;)Lcom/oneplus/volume/OpOutputChooserLayout$Callback;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserLayout;->mCallback:Lcom/oneplus/volume/OpOutputChooserLayout$Callback;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/volume/OpOutputChooserLayout;[Lcom/oneplus/volume/OpOutputChooserLayout$Item;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/volume/OpOutputChooserLayout;->handleSetItems([Lcom/oneplus/volume/OpOutputChooserLayout$Item;)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/volume/OpOutputChooserLayout;Lcom/oneplus/volume/OpOutputChooserLayout$Callback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/volume/OpOutputChooserLayout;->handleSetCallback(Lcom/oneplus/volume/OpOutputChooserLayout$Callback;)V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/volume/OpOutputChooserLayout;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/volume/OpOutputChooserLayout;->handleSetItemsVisible(Z)V

    return-void
.end method

.method private handleSetCallback(Lcom/oneplus/volume/OpOutputChooserLayout$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/volume/OpOutputChooserLayout;->mCallback:Lcom/oneplus/volume/OpOutputChooserLayout$Callback;

    return-void
.end method

.method private handleSetItems([Lcom/oneplus/volume/OpOutputChooserLayout$Item;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/oneplus/volume/OpOutputChooserLayout;->mEmpty:Landroid/view/View;

    const/16 v3, 0x8

    if-nez v1, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/oneplus/volume/OpOutputChooserLayout;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    if-nez v1, :cond_2

    move v0, v3

    :cond_2
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iput-object p1, p0, Lcom/oneplus/volume/OpOutputChooserLayout;->mItems:[Lcom/oneplus/volume/OpOutputChooserLayout$Item;

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserLayout;->mAdapter:Lcom/oneplus/volume/OpOutputChooserLayout$Adapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private handleSetItemsVisible(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/oneplus/volume/OpOutputChooserLayout;->mItemsVisible:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/volume/OpOutputChooserLayout;->mItemsVisible:Z

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget-object v1, p0, Lcom/oneplus/volume/OpOutputChooserLayout;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/volume/OpOutputChooserLayout;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oneplus/volume/OpOutputChooserLayout;->mItemsVisible:Z

    if-eqz v2, :cond_1

    move v2, p1

    goto :goto_1

    :cond_1
    const/4 v2, 0x4

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    sget-boolean v0, Lcom/oneplus/volume/OpOutputChooserLayout;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserLayout;->mTag:Ljava/lang/String;

    const-string v0, "onAttachedToWindow"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/oneplus/volume/OpOutputChooserLayout;->mEmptyText:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$dimen;->qs_detail_empty_text_size:I

    invoke-static {p1, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    iget-object p1, p0, Lcom/oneplus/volume/OpOutputChooserLayout;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/oneplus/volume/OpOutputChooserLayout;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$id;->empty_text:I

    sget v3, Lcom/android/systemui/R$dimen;->qs_detail_item_primary_text_size:I

    invoke-static {v1, v2, v3}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    const v2, 0x1020010

    sget v3, Lcom/android/systemui/R$dimen;->qs_detail_item_secondary_text_size:I

    invoke-static {v1, v2, v3}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    const v2, 0x1020016

    sget v3, Lcom/android/systemui/R$dimen;->qs_detail_header_text_size:I

    invoke-static {v1, v2, v3}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    sget-boolean v0, Lcom/oneplus/volume/OpOutputChooserLayout;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserLayout;->mTag:Ljava/lang/String;

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/volume/OpOutputChooserLayout;->mCallback:Lcom/oneplus/volume/OpOutputChooserLayout$Callback;

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x102000a

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/AutoSizingList;

    iput-object v0, p0, Lcom/oneplus/volume/OpOutputChooserLayout;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserLayout;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserLayout;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    iget-object v2, p0, Lcom/oneplus/volume/OpOutputChooserLayout;->mAdapter:Lcom/oneplus/volume/OpOutputChooserLayout$Adapter;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/AutoSizingList;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x1020004

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/volume/OpOutputChooserLayout;->mEmpty:Landroid/view/View;

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserLayout;->mEmpty:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserLayout;->mEmpty:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->empty_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/volume/OpOutputChooserLayout;->mEmptyText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserLayout;->mEmpty:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->empty_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/volume/OpOutputChooserLayout;->mEmptyIcon:Landroid/widget/ImageView;

    sget v0, Lcom/android/systemui/R$id;->title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/volume/OpOutputChooserLayout;->mTitle:Landroid/widget/TextView;

    return-void
.end method

.method public setCallback(Lcom/oneplus/volume/OpOutputChooserLayout$Callback;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserLayout;->mHandler:Lcom/oneplus/volume/OpOutputChooserLayout$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserLayout;->mHandler:Lcom/oneplus/volume/OpOutputChooserLayout$H;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setEmptyIconColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserLayout;->mEmptyIcon:Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setEmptyState(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserLayout;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEmptyTextColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserLayout;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setItems([Lcom/oneplus/volume/OpOutputChooserLayout$Item;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserLayout;->mHandler:Lcom/oneplus/volume/OpOutputChooserLayout$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserLayout;->mHandler:Lcom/oneplus/volume/OpOutputChooserLayout$H;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setTitle(I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserLayout;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setTitleColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserLayout;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
