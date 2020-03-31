.class abstract Lcom/oneplus/lib/menu/BaseMenuWrapper;
.super Lcom/oneplus/lib/menu/BaseWrapper;
.source "BaseMenuWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/oneplus/lib/menu/BaseWrapper<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field private mMenuItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/oneplus/lib/menu/SupportMenuItem;",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSubMenus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/oneplus/lib/menu/SupportSubMenu;",
            "Landroid/view/SubMenu;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method final getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 2

    instance-of v0, p1, Lcom/oneplus/lib/menu/SupportMenuItem;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    iget-object v1, p0, Lcom/oneplus/lib/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Lcom/oneplus/support/collection/ArrayMap;

    invoke-direct {v1}, Lcom/oneplus/support/collection/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/oneplus/lib/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/oneplus/lib/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;

    invoke-interface {p0, v0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    :cond_1
    return-object p1
.end method

.method final getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;
    .locals 1

    instance-of v0, p1, Lcom/oneplus/lib/menu/SupportSubMenu;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/oneplus/lib/menu/SupportSubMenu;

    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseMenuWrapper;->mSubMenus:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/support/collection/ArrayMap;

    invoke-direct {v0}, Lcom/oneplus/support/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/menu/BaseMenuWrapper;->mSubMenus:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseMenuWrapper;->mSubMenus:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/oneplus/lib/menu/BaseMenuWrapper;->mSubMenus:Ljava/util/Map;

    invoke-interface {p0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object p1, v0

    :cond_2
    :goto_0
    return-object p1
.end method
