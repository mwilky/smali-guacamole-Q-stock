.class Lcom/oneplus/support/core/fragment/app/Fragment$2;
.super Lcom/oneplus/support/core/fragment/app/FragmentContainer;
.source "Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/support/core/fragment/app/Fragment;->instantiateChildFragmentManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/support/core/fragment/app/Fragment;


# direct methods
.method constructor <init>(Lcom/oneplus/support/core/fragment/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/support/core/fragment/app/Fragment$2;->this$0:Lcom/oneplus/support/core/fragment/app/Fragment;

    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/FragmentContainer;-><init>()V

    return-void
.end method


# virtual methods
.method public instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/oneplus/support/core/fragment/app/Fragment;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment$2;->this$0:Lcom/oneplus/support/core/fragment/app/Fragment;

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/support/core/fragment/app/FragmentContainer;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/oneplus/support/core/fragment/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public onFindViewById(I)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment$2;->this$0:Lcom/oneplus/support/core/fragment/app/Fragment;

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Fragment does not have a view"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onHasView()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment$2;->this$0:Lcom/oneplus/support/core/fragment/app/Fragment;

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
