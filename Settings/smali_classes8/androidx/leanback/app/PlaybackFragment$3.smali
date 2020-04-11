.class Landroidx/leanback/app/PlaybackFragment$3;
.super Ljava/lang/Object;
.source "PlaybackFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/PlaybackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/app/PlaybackFragment;


# direct methods
.method constructor <init>(Landroidx/leanback/app/PlaybackFragment;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/PlaybackFragment$3;->this$0:Landroidx/leanback/app/PlaybackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Landroidx/leanback/app/PlaybackFragment$3;->this$0:Landroidx/leanback/app/PlaybackFragment;

    iget v0, v0, Landroidx/leanback/app/PlaybackFragment;->mBgAlpha:I

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/leanback/app/PlaybackFragment$3;->this$0:Landroidx/leanback/app/PlaybackFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/leanback/app/PlaybackFragment;->enableVerticalGridAnimations(Z)V

    iget-object v0, p0, Landroidx/leanback/app/PlaybackFragment$3;->this$0:Landroidx/leanback/app/PlaybackFragment;

    iget-object v0, v0, Landroidx/leanback/app/PlaybackFragment;->mFadeCompleteListener:Landroidx/leanback/app/PlaybackFragment$OnFadeCompleteListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/leanback/app/PlaybackFragment$3;->this$0:Landroidx/leanback/app/PlaybackFragment;

    iget-object v0, v0, Landroidx/leanback/app/PlaybackFragment;->mFadeCompleteListener:Landroidx/leanback/app/PlaybackFragment$OnFadeCompleteListener;

    invoke-virtual {v0}, Landroidx/leanback/app/PlaybackFragment$OnFadeCompleteListener;->onFadeInComplete()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/leanback/app/PlaybackFragment$3;->this$0:Landroidx/leanback/app/PlaybackFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/PlaybackFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/leanback/widget/VerticalGridView;->getSelectedPosition()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/VerticalGridView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroidx/leanback/widget/Presenter;

    move-result-object v2

    instance-of v2, v2, Landroidx/leanback/widget/PlaybackRowPresenter;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroidx/leanback/widget/Presenter;

    move-result-object v2

    check-cast v2, Landroidx/leanback/widget/PlaybackRowPresenter;

    invoke-virtual {v1}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroidx/leanback/widget/Presenter$ViewHolder;

    move-result-object v3

    check-cast v3, Landroidx/leanback/widget/RowPresenter$ViewHolder;

    invoke-virtual {v2, v3}, Landroidx/leanback/widget/PlaybackRowPresenter;->onReappear(Landroidx/leanback/widget/RowPresenter$ViewHolder;)V

    :cond_1
    iget-object v1, p0, Landroidx/leanback/app/PlaybackFragment$3;->this$0:Landroidx/leanback/app/PlaybackFragment;

    iget-object v1, v1, Landroidx/leanback/app/PlaybackFragment;->mFadeCompleteListener:Landroidx/leanback/app/PlaybackFragment$OnFadeCompleteListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/leanback/app/PlaybackFragment$3;->this$0:Landroidx/leanback/app/PlaybackFragment;

    iget-object v1, v1, Landroidx/leanback/app/PlaybackFragment;->mFadeCompleteListener:Landroidx/leanback/app/PlaybackFragment$OnFadeCompleteListener;

    invoke-virtual {v1}, Landroidx/leanback/app/PlaybackFragment$OnFadeCompleteListener;->onFadeOutComplete()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroidx/leanback/app/PlaybackFragment$3;->this$0:Landroidx/leanback/app/PlaybackFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/leanback/app/PlaybackFragment;->enableVerticalGridAnimations(Z)V

    return-void
.end method
