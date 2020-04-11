.class public Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;
.super Landroidx/leanback/widget/Presenter$ViewHolder;
.source "RowHeaderPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/RowHeaderPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field mDescriptionView:Landroid/widget/TextView;

.field mOriginalTextColor:I

.field mSelectLevel:F

.field mTitleView:Landroidx/leanback/widget/RowHeaderView;

.field mUnselectAlpha:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/leanback/widget/Presenter$ViewHolder;-><init>(Landroid/view/View;)V

    sget v0, Landroidx/leanback/R$id;->row_header:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/RowHeaderView;

    iput-object v0, p0, Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;->mTitleView:Landroidx/leanback/widget/RowHeaderView;

    sget v0, Landroidx/leanback/R$id;->row_header_description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;->initColors()V

    return-void
.end method

.method public constructor <init>(Landroidx/leanback/widget/RowHeaderView;)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroidx/leanback/widget/Presenter$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;->mTitleView:Landroidx/leanback/widget/RowHeaderView;

    invoke-virtual {p0}, Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;->initColors()V

    return-void
.end method


# virtual methods
.method public final getSelectLevel()F
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;->mSelectLevel:F

    return v0
.end method

.method initColors()V
    .locals 3

    iget-object v0, p0, Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;->mTitleView:Landroidx/leanback/widget/RowHeaderView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/leanback/widget/RowHeaderView;->getCurrentTextColor()I

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;->mOriginalTextColor:I

    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/leanback/R$fraction;->lb_browse_header_unselect_alpha:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;->mUnselectAlpha:F

    return-void
.end method
