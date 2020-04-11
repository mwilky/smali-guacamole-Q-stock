.class Landroidx/leanback/app/OnboardingFragment$2;
.super Ljava/lang/Object;
.source "OnboardingFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/OnboardingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/app/OnboardingFragment;


# direct methods
.method constructor <init>(Landroidx/leanback/app/OnboardingFragment;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/OnboardingFragment$2;->this$0:Landroidx/leanback/app/OnboardingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    iget-object v0, p0, Landroidx/leanback/app/OnboardingFragment$2;->this$0:Landroidx/leanback/app/OnboardingFragment;

    iget-boolean v0, v0, Landroidx/leanback/app/OnboardingFragment;->mLogoAnimationFinished:Z

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    return v3

    :cond_2
    if-eq p2, v1, :cond_7

    const/16 v0, 0x15

    if-eq p2, v0, :cond_5

    const/16 v0, 0x16

    if-eq p2, v0, :cond_3

    return v3

    :cond_3
    iget-object v0, p0, Landroidx/leanback/app/OnboardingFragment$2;->this$0:Landroidx/leanback/app/OnboardingFragment;

    iget-boolean v0, v0, Landroidx/leanback/app/OnboardingFragment;->mIsLtr:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/leanback/app/OnboardingFragment$2;->this$0:Landroidx/leanback/app/OnboardingFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/OnboardingFragment;->moveToNextPage()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroidx/leanback/app/OnboardingFragment$2;->this$0:Landroidx/leanback/app/OnboardingFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/OnboardingFragment;->moveToPreviousPage()V

    :goto_1
    return v2

    :cond_5
    iget-object v0, p0, Landroidx/leanback/app/OnboardingFragment$2;->this$0:Landroidx/leanback/app/OnboardingFragment;

    iget-boolean v0, v0, Landroidx/leanback/app/OnboardingFragment;->mIsLtr:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/leanback/app/OnboardingFragment$2;->this$0:Landroidx/leanback/app/OnboardingFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/OnboardingFragment;->moveToPreviousPage()V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Landroidx/leanback/app/OnboardingFragment$2;->this$0:Landroidx/leanback/app/OnboardingFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/OnboardingFragment;->moveToNextPage()V

    :goto_2
    return v2

    :cond_7
    iget-object v0, p0, Landroidx/leanback/app/OnboardingFragment$2;->this$0:Landroidx/leanback/app/OnboardingFragment;

    iget v0, v0, Landroidx/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    if-nez v0, :cond_8

    return v3

    :cond_8
    iget-object v0, p0, Landroidx/leanback/app/OnboardingFragment$2;->this$0:Landroidx/leanback/app/OnboardingFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/OnboardingFragment;->moveToPreviousPage()V

    return v2
.end method
