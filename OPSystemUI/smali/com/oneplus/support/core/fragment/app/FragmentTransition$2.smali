.class Lcom/oneplus/support/core/fragment/app/FragmentTransition$2;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/support/core/fragment/app/FragmentTransition;->scheduleTargetChange(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$enterTransition:Ljava/lang/Object;

.field final synthetic val$enteringViews:Ljava/util/ArrayList;

.field final synthetic val$exitTransition:Ljava/lang/Object;

.field final synthetic val$exitingViews:Ljava/util/ArrayList;

.field final synthetic val$impl:Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

.field final synthetic val$inFragment:Lcom/oneplus/support/core/fragment/app/Fragment;

.field final synthetic val$nonExistentView:Landroid/view/View;

.field final synthetic val$sharedElementsIn:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Landroid/view/View;Lcom/oneplus/support/core/fragment/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$2;->val$enterTransition:Ljava/lang/Object;

    iput-object p2, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$2;->val$impl:Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

    iput-object p3, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$2;->val$nonExistentView:Landroid/view/View;

    iput-object p4, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$2;->val$inFragment:Lcom/oneplus/support/core/fragment/app/Fragment;

    iput-object p5, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$2;->val$sharedElementsIn:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$2;->val$enteringViews:Ljava/util/ArrayList;

    iput-object p7, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$2;->val$exitingViews:Ljava/util/ArrayList;

    iput-object p8, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$2;->val$exitTransition:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$2;->val$enterTransition:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$2;->val$impl:Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

    iget-object v2, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$2;->val$nonExistentView:Landroid/view/View;

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->removeTarget(Ljava/lang/Object;Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$2;->val$impl:Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$2;->val$enterTransition:Ljava/lang/Object;

    iget-object v2, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$2;->val$inFragment:Lcom/oneplus/support/core/fragment/app/Fragment;

    iget-object v3, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$2;->val$sharedElementsIn:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$2;->val$nonExistentView:Landroid/view/View;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->access$100(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$2;->val$enteringViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$2;->val$exitingViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$2;->val$exitTransition:Ljava/lang/Object;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$2;->val$nonExistentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$2;->val$impl:Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

    iget-object v2, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$2;->val$exitTransition:Ljava/lang/Object;

    iget-object v3, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$2;->val$exitingViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3, v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$2;->val$exitingViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$2;->val$exitingViews:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$2;->val$nonExistentView:Landroid/view/View;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method
