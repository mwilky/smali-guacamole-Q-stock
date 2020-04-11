.class public Landroidx/leanback/app/RowsFragment$MainFragmentAdapter;
.super Landroidx/leanback/app/BrowseFragment$MainFragmentAdapter;
.source "RowsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/RowsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainFragmentAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/leanback/app/BrowseFragment$MainFragmentAdapter<",
        "Landroidx/leanback/app/RowsFragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroidx/leanback/app/RowsFragment;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/leanback/app/BrowseFragment$MainFragmentAdapter;-><init>(Landroid/app/Fragment;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/leanback/app/RowsFragment$MainFragmentAdapter;->setScalingEnabled(Z)V

    return-void
.end method


# virtual methods
.method public isScrolling()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/leanback/app/RowsFragment$MainFragmentAdapter;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/leanback/app/RowsFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/RowsFragment;->isScrolling()Z

    move-result v0

    return v0
.end method

.method public onTransitionEnd()V
    .locals 1

    invoke-virtual {p0}, Landroidx/leanback/app/RowsFragment$MainFragmentAdapter;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/leanback/app/RowsFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/RowsFragment;->onTransitionEnd()V

    return-void
.end method

.method public onTransitionPrepare()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/leanback/app/RowsFragment$MainFragmentAdapter;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/leanback/app/RowsFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/RowsFragment;->onTransitionPrepare()Z

    move-result v0

    return v0
.end method

.method public onTransitionStart()V
    .locals 1

    invoke-virtual {p0}, Landroidx/leanback/app/RowsFragment$MainFragmentAdapter;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/leanback/app/RowsFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/RowsFragment;->onTransitionStart()V

    return-void
.end method

.method public setAlignment(I)V
    .locals 1

    invoke-virtual {p0}, Landroidx/leanback/app/RowsFragment$MainFragmentAdapter;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/leanback/app/RowsFragment;

    invoke-virtual {v0, p1}, Landroidx/leanback/app/RowsFragment;->setAlignment(I)V

    return-void
.end method

.method public setEntranceTransitionState(Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/leanback/app/RowsFragment$MainFragmentAdapter;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/leanback/app/RowsFragment;

    invoke-virtual {v0, p1}, Landroidx/leanback/app/RowsFragment;->setEntranceTransitionState(Z)V

    return-void
.end method

.method public setExpand(Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/leanback/app/RowsFragment$MainFragmentAdapter;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/leanback/app/RowsFragment;

    invoke-virtual {v0, p1}, Landroidx/leanback/app/RowsFragment;->setExpand(Z)V

    return-void
.end method
