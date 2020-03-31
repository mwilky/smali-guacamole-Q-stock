.class public Lcom/oneplus/lib/menu/MenuPopupWindow$MenuDropDownListView;
.super Lcom/oneplus/lib/widget/DropDownListView;
.source "MenuPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/menu/MenuPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuDropDownListView"
.end annotation


# instance fields
.field final mAdvanceKey:I

.field private mHoverListener:Lcom/oneplus/lib/menu/MenuItemHoverListener;

.field private mHoveredMenuItem:Landroid/view/MenuItem;

.field final mRetreatKey:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/DropDownListView;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    const/16 v1, 0x16

    const/16 v2, 0x11

    if-lt p2, v2, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    if-ne p2, p1, :cond_0

    iput v0, p0, Lcom/oneplus/lib/menu/MenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    iput v1, p0, Lcom/oneplus/lib/menu/MenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/oneplus/lib/menu/MenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    iput v0, p0, Lcom/oneplus/lib/menu/MenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    :goto_0
    return-void
.end method


# virtual methods
.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Lcom/oneplus/lib/menu/MenuItemHoverListener;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/menu/MenuAdapter;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    check-cast v0, Lcom/oneplus/lib/menu/MenuAdapter;

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v3, v4}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    sub-int/2addr v3, v1

    if-ltz v3, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuAdapter;->getCount()I

    move-result v1

    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Lcom/oneplus/lib/menu/MenuAdapter;->getItem(I)Lcom/oneplus/lib/menu/MenuItemImpl;

    move-result-object v2

    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/menu/MenuPopupWindow$MenuDropDownListView;->mHoveredMenuItem:Landroid/view/MenuItem;

    if-eq v1, v2, :cond_3

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuAdapter;->getAdapterMenu()Lcom/oneplus/lib/menu/MenuBuilder;

    move-result-object v0

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/oneplus/lib/menu/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Lcom/oneplus/lib/menu/MenuItemHoverListener;

    invoke-interface {v3, v0, v1}, Lcom/oneplus/lib/menu/MenuItemHoverListener;->onItemHoverExit(Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/MenuItem;)V

    :cond_2
    iput-object v2, p0, Lcom/oneplus/lib/menu/MenuPopupWindow$MenuDropDownListView;->mHoveredMenuItem:Landroid/view/MenuItem;

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/oneplus/lib/menu/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Lcom/oneplus/lib/menu/MenuItemHoverListener;

    invoke-interface {v1, v0, v2}, Lcom/oneplus/lib/menu/MenuItemHoverListener;->onItemHoverEnter(Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/MenuItem;)V

    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/menu/ListMenuItemView;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/oneplus/lib/menu/MenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    if-ne p1, v2, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ListMenuItemView;->getItemData()Lcom/oneplus/lib/menu/MenuItemImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->hasSubMenu()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedItemId()J

    move-result-wide v2

    invoke-virtual {p0, v0, p1, v2, v3}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    return v1

    :cond_1
    if-eqz v0, :cond_2

    iget v0, p0, Lcom/oneplus/lib/menu/MenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setSelection(I)V

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Lcom/oneplus/lib/menu/MenuAdapter;

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuAdapter;->getAdapterMenu()Lcom/oneplus/lib/menu/MenuBuilder;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/MenuBuilder;->close(Z)V

    return v1

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public setHoverListener(Lcom/oneplus/lib/menu/MenuItemHoverListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Lcom/oneplus/lib/menu/MenuItemHoverListener;

    return-void
.end method
