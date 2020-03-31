.class public Lcom/oneplus/lib/menu/SubMenuBuilder;
.super Lcom/oneplus/lib/menu/MenuBuilder;
.source "SubMenuBuilder.java"

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field private mItem:Lcom/oneplus/lib/menu/MenuItemImpl;

.field private mParentMenu:Lcom/oneplus/lib/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/oneplus/lib/menu/SubMenuBuilder;->mParentMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    iput-object p3, p0, Lcom/oneplus/lib/menu/SubMenuBuilder;->mItem:Lcom/oneplus/lib/menu/MenuItemImpl;

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcom/oneplus/lib/menu/MenuItemImpl;)Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/SubMenuBuilder;->mParentMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/MenuBuilder;->collapseItemActionView(Lcom/oneplus/lib/menu/MenuItemImpl;)Z

    move-result p0

    return p0
.end method

.method dispatchMenuItemSelected(Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/menu/MenuBuilder;->dispatchMenuItemSelected(Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/oneplus/lib/menu/SubMenuBuilder;->mParentMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/menu/MenuBuilder;->dispatchMenuItemSelected(Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public expandItemActionView(Lcom/oneplus/lib/menu/MenuItemImpl;)Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/SubMenuBuilder;->mParentMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/MenuBuilder;->expandItemActionView(Lcom/oneplus/lib/menu/MenuItemImpl;)Z

    move-result p0

    return p0
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/SubMenuBuilder;->mItem:Lcom/oneplus/lib/menu/MenuItemImpl;

    return-object p0
.end method

.method public getParentMenu()Landroid/view/Menu;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/SubMenuBuilder;->mParentMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    return-object p0
.end method

.method public getRootMenu()Lcom/oneplus/lib/menu/MenuBuilder;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/SubMenuBuilder;->mParentMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuBuilder;->getRootMenu()Lcom/oneplus/lib/menu/MenuBuilder;

    move-result-object p0

    return-object p0
.end method

.method public isQwertyMode()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/SubMenuBuilder;->mParentMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuBuilder;->isQwertyMode()Z

    move-result p0

    return p0
.end method

.method public isShortcutsVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/SubMenuBuilder;->mParentMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result p0

    return p0
.end method

.method public setCallback(Lcom/oneplus/lib/menu/MenuBuilder$Callback;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/SubMenuBuilder;->mParentMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/MenuBuilder;->setCallback(Lcom/oneplus/lib/menu/MenuBuilder$Callback;)V

    return-void
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 0

    invoke-super {p0, p1}, Lcom/oneplus/lib/menu/MenuBuilder;->setHeaderIconInt(I)Lcom/oneplus/lib/menu/MenuBuilder;

    check-cast p0, Landroid/view/SubMenu;

    return-object p0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 0

    invoke-super {p0, p1}, Lcom/oneplus/lib/menu/MenuBuilder;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/oneplus/lib/menu/MenuBuilder;

    check-cast p0, Landroid/view/SubMenu;

    return-object p0
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 0

    invoke-super {p0, p1}, Lcom/oneplus/lib/menu/MenuBuilder;->setHeaderTitleInt(I)Lcom/oneplus/lib/menu/MenuBuilder;

    check-cast p0, Landroid/view/SubMenu;

    return-object p0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    invoke-super {p0, p1}, Lcom/oneplus/lib/menu/MenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/oneplus/lib/menu/MenuBuilder;

    check-cast p0, Landroid/view/SubMenu;

    return-object p0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 0

    invoke-super {p0, p1}, Lcom/oneplus/lib/menu/MenuBuilder;->setHeaderViewInt(Landroid/view/View;)Lcom/oneplus/lib/menu/MenuBuilder;

    check-cast p0, Landroid/view/SubMenu;

    return-object p0
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/SubMenuBuilder;->mItem:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/SubMenuBuilder;->mItem:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setQwertyMode(Z)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/SubMenuBuilder;->mParentMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/MenuBuilder;->setQwertyMode(Z)V

    return-void
.end method
