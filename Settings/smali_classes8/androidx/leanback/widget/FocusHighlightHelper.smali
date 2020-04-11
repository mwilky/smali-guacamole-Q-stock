.class public Landroidx/leanback/widget/FocusHighlightHelper;
.super Ljava/lang/Object;
.source "FocusHighlightHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;,
        Landroidx/leanback/widget/FocusHighlightHelper$BrowseItemFocusHighlight;,
        Landroidx/leanback/widget/FocusHighlightHelper$FocusAnimator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getResId(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget v0, Landroidx/leanback/R$fraction;->lb_focus_zoom_factor_xsmall:I

    return v0

    :cond_1
    sget v0, Landroidx/leanback/R$fraction;->lb_focus_zoom_factor_large:I

    return v0

    :cond_2
    sget v0, Landroidx/leanback/R$fraction;->lb_focus_zoom_factor_medium:I

    return v0

    :cond_3
    sget v0, Landroidx/leanback/R$fraction;->lb_focus_zoom_factor_small:I

    return v0
.end method

.method static isValidZoomIndex(I)Z
    .locals 1

    if-eqz p0, :cond_1

    invoke-static {p0}, Landroidx/leanback/widget/FocusHighlightHelper;->getResId(I)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static setupBrowseItemFocusHighlight(Landroidx/leanback/widget/ItemBridgeAdapter;IZ)V
    .locals 1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/ItemBridgeAdapter;->setFocusHighlight(Landroidx/leanback/widget/FocusHighlightHandler;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/leanback/widget/FocusHighlightHelper$BrowseItemFocusHighlight;

    invoke-direct {v0, p1, p2}, Landroidx/leanback/widget/FocusHighlightHelper$BrowseItemFocusHighlight;-><init>(IZ)V

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/ItemBridgeAdapter;->setFocusHighlight(Landroidx/leanback/widget/FocusHighlightHandler;)V

    :goto_0
    return-void
.end method

.method public static setupHeaderItemFocusHighlight(Landroidx/leanback/widget/ItemBridgeAdapter;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroidx/leanback/widget/FocusHighlightHelper;->setupHeaderItemFocusHighlight(Landroidx/leanback/widget/ItemBridgeAdapter;Z)V

    return-void
.end method

.method public static setupHeaderItemFocusHighlight(Landroidx/leanback/widget/ItemBridgeAdapter;Z)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Landroidx/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;

    invoke-direct {v0}, Landroidx/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/ItemBridgeAdapter;->setFocusHighlight(Landroidx/leanback/widget/FocusHighlightHandler;)V

    return-void
.end method

.method public static setupHeaderItemFocusHighlight(Landroidx/leanback/widget/VerticalGridView;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroidx/leanback/widget/FocusHighlightHelper;->setupHeaderItemFocusHighlight(Landroidx/leanback/widget/VerticalGridView;Z)V

    return-void
.end method

.method public static setupHeaderItemFocusHighlight(Landroidx/leanback/widget/VerticalGridView;Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/leanback/widget/VerticalGridView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Landroidx/leanback/widget/ItemBridgeAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/leanback/widget/VerticalGridView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/ItemBridgeAdapter;

    if-eqz p1, :cond_0

    new-instance v1, Landroidx/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;

    invoke-direct {v1}, Landroidx/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ItemBridgeAdapter;->setFocusHighlight(Landroidx/leanback/widget/FocusHighlightHandler;)V

    :cond_1
    return-void
.end method
