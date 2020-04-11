.class public Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;
.super Ljava/lang/Object;
.source "BottomNavigationPresenter.java"

# interfaces
.implements Lcom/oneplus/lib/menu/MenuPresenter;


# annotations
.annotation build Lcom/oneplus/support/annotation/RestrictTo;
    value = {
        .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/design/widget/BottomNavigationPresenter$SavedState;
    }
.end annotation


# instance fields
.field private id:I

.field private menu:Lcom/oneplus/lib/menu/MenuBuilder;

.field private menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

.field private updateSuspended:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->updateSuspended:Z

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public expandItemActionView(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->id:I

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/oneplus/lib/menu/MenuView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 2

    iput-object p2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->initialize(Lcom/oneplus/lib/menu/MenuBuilder;)V

    return-void
.end method

.method public onCloseMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V
    .locals 0

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter$SavedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    move-object v1, p1

    check-cast v1, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter$SavedState;

    iget v1, v1, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter$SavedState;->selectedItemId:I

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->tryRestoreSelectedItemId(I)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter$SavedState;

    invoke-direct {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter$SavedState;-><init>()V

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v1}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->getSelectedItemId()I

    move-result v1

    iput v1, v0, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter$SavedState;->selectedItemId:I

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/oneplus/lib/menu/SubMenuBuilder;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setBottomNavigationMenuView(Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    return-void
.end method

.method public setCallback(Lcom/oneplus/lib/menu/MenuPresenter$Callback;)V
    .locals 0

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->id:I

    return-void
.end method

.method public setUpdateSuspended(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->updateSuspended:Z

    return-void
.end method

.method public updateMenuView(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->updateSuspended:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buildMenuView()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->updateMenuView()V

    :goto_0
    return-void
.end method
