.class Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;
.super Lcom/oneplus/lib/menu/MenuPopupHelper;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionButtonSubmenu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/oneplus/lib/menu/SubMenuBuilder;Landroid/view/View;)V
    .locals 6

    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    const/4 v4, 0x0

    const v5, 0x1010444

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/lib/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/View;ZI)V

    invoke-virtual {p3}, Lcom/oneplus/lib/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object p2

    check-cast p2, Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {p2}, Lcom/oneplus/lib/menu/MenuItemImpl;->isActionButton()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p1, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    if-nez p2, :cond_0

    iget-object p2, p1, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    check-cast p2, Landroid/view/View;

    :cond_0
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/menu/MenuPopupHelper;->setAnchorView(Landroid/view/View;)V

    :cond_1
    iget-object p1, p1, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPopupPresenterCallback:Lcom/oneplus/lib/menu/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/MenuPopupHelper;->setPresenterCallback(Lcom/oneplus/lib/menu/MenuPresenter$Callback;)V

    return-void
.end method


# virtual methods
.method protected onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;

    const/4 v1, 0x0

    iput v1, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    invoke-super {p0}, Lcom/oneplus/lib/menu/MenuPopupHelper;->onDismiss()V

    return-void
.end method
