.class public final Lcom/oneplus/support/core/view/MenuItemCompat;
.super Ljava/lang/Object;
.source "MenuItemCompat.java"


# direct methods
.method public static setActionProvider(Landroid/view/MenuItem;Lcom/oneplus/support/core/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 1

    instance-of v0, p0, Lcom/oneplus/support/core/internal/view/SupportMenuItem;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/oneplus/support/core/internal/view/SupportMenuItem;

    invoke-interface {p0, p1}, Lcom/oneplus/support/core/internal/view/SupportMenuItem;->setSupportActionProvider(Lcom/oneplus/support/core/view/ActionProvider;)Lcom/oneplus/support/core/internal/view/SupportMenuItem;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p1, "MenuItemCompat"

    const-string v0, "setActionProvider: item does not implement SupportMenuItem; ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static setActionView(Landroid/view/MenuItem;I)Landroid/view/MenuItem;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method public static setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method public static setShowAsAction(Landroid/view/MenuItem;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method
