.class Lcom/oneplus/lib/menu/ActionMenuView$MenuBuilderCallback;
.super Ljava/lang/Object;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/oneplus/lib/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/menu/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuBuilderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/menu/ActionMenuView;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/menu/ActionMenuView;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuView$MenuBuilderCallback;->this$0:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/ActionMenuView$MenuBuilderCallback;->this$0:Lcom/oneplus/lib/menu/ActionMenuView;

    iget-object p0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mOnMenuItemClickListener:Lcom/oneplus/lib/menu/ActionMenuView$OnMenuItemClickListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lcom/oneplus/lib/menu/ActionMenuView$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onMenuModeChange(Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView$MenuBuilderCallback;->this$0:Lcom/oneplus/lib/menu/ActionMenuView;

    iget-object v1, v0, Lcom/oneplus/lib/menu/ActionMenuView;->mMenuBuilderCallback:Lcom/oneplus/lib/menu/MenuBuilder$Callback;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/oneplus/lib/menu/MenuBuilder$Callback;->onMenuModeChange(Lcom/oneplus/lib/menu/MenuBuilder;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/oneplus/lib/menu/ActionMenuView;->access$000(Lcom/oneplus/lib/menu/ActionMenuView;)Lcom/oneplus/lib/widget/actionbar/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView$MenuBuilderCallback;->this$0:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView$MenuBuilderCallback;->this$0:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object p0, p0, Lcom/oneplus/lib/menu/ActionMenuView$MenuBuilderCallback;->this$0:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-static {p0}, Lcom/oneplus/lib/menu/ActionMenuView;->access$000(Lcom/oneplus/lib/menu/ActionMenuView;)Lcom/oneplus/lib/widget/actionbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->isOverflowMenuShowing()Z

    move-result p0

    const/16 v1, 0x8

    if-eqz p0, :cond_1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, p1}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_2
    :goto_0
    return-void
.end method
