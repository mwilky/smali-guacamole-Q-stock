.class public final Lcom/oneplus/lib/design/widget/BottomNavigationMenu;
.super Lcom/oneplus/lib/menu/MenuBuilder;
.source "BottomNavigationMenu.java"


# annotations
.annotation build Lcom/oneplus/support/annotation/RestrictTo;
    value = {
        .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final MAX_ITEM_COUNT:I = 0x5


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenu;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x5

    if-gt v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenu;->stopDispatchingItemsChanged()V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    instance-of v2, v0, Lcom/oneplus/lib/menu/MenuItemImpl;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenu;->startDispatchingItemsChanged()V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum number of items supported by BottomNavigationView is 5. Limit can be checked with BottomNavigationView#getMaxItemCount()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "BottomNavigationView does not support submenus"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
