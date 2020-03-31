.class Lcom/oneplus/lib/design/widget/BottomNavigationMenuView$1;
.super Ljava/lang/Object;
.source "BottomNavigationMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView$1;->this$0:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    check-cast p1, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->getItemData()Lcom/oneplus/lib/menu/MenuItemImpl;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView$1;->this$0:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-static {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->access$100(Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;)Lcom/oneplus/lib/menu/MenuBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView$1;->this$0:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-static {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->access$000(Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;)Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Lcom/oneplus/lib/menu/MenuPresenter;I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method
