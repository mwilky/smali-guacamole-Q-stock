.class Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$2$1;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$2;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$2;


# direct methods
.method constructor <init>(Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$2;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$2$1;->this$1:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$2$1;->this$1:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$2;

    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$2;->val$fragment:Lcom/oneplus/support/core/fragment/app/Fragment;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$2$1;->this$1:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$2;

    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$2;->val$fragment:Lcom/oneplus/support/core/fragment/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/support/core/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$2$1;->this$1:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$2;

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$2;->this$0:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$2;->val$fragment:Lcom/oneplus/support/core/fragment/app/Fragment;

    invoke-virtual {v1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getStateAfterAnimating()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->moveToState(Lcom/oneplus/support/core/fragment/app/Fragment;IIIZ)V

    :cond_0
    return-void
.end method
