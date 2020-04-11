.class public abstract Lcom/oneplus/support/core/fragment/app/FragmentManager$FragmentLifecycleCallbacks;
.super Ljava/lang/Object;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/core/fragment/app/FragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FragmentLifecycleCallbacks"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentActivityCreated(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Lcom/oneplus/support/core/fragment/app/FragmentManager;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/oneplus/support/core/fragment/app/Fragment;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onFragmentAttached(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/content/Context;)V
    .locals 0
    .param p1    # Lcom/oneplus/support/core/fragment/app/FragmentManager;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/oneplus/support/core/fragment/app/Fragment;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onFragmentCreated(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Lcom/oneplus/support/core/fragment/app/FragmentManager;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/oneplus/support/core/fragment/app/Fragment;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onFragmentDestroyed(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/core/fragment/app/Fragment;)V
    .locals 0
    .param p1    # Lcom/oneplus/support/core/fragment/app/FragmentManager;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/oneplus/support/core/fragment/app/Fragment;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onFragmentDetached(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/core/fragment/app/Fragment;)V
    .locals 0
    .param p1    # Lcom/oneplus/support/core/fragment/app/FragmentManager;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/oneplus/support/core/fragment/app/Fragment;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onFragmentPaused(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/core/fragment/app/Fragment;)V
    .locals 0
    .param p1    # Lcom/oneplus/support/core/fragment/app/FragmentManager;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/oneplus/support/core/fragment/app/Fragment;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onFragmentPreAttached(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/content/Context;)V
    .locals 0
    .param p1    # Lcom/oneplus/support/core/fragment/app/FragmentManager;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/oneplus/support/core/fragment/app/Fragment;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onFragmentPreCreated(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Lcom/oneplus/support/core/fragment/app/FragmentManager;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/oneplus/support/core/fragment/app/Fragment;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onFragmentResumed(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/core/fragment/app/Fragment;)V
    .locals 0
    .param p1    # Lcom/oneplus/support/core/fragment/app/FragmentManager;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/oneplus/support/core/fragment/app/Fragment;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onFragmentSaveInstanceState(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Lcom/oneplus/support/core/fragment/app/FragmentManager;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/oneplus/support/core/fragment/app/Fragment;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onFragmentStarted(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/core/fragment/app/Fragment;)V
    .locals 0
    .param p1    # Lcom/oneplus/support/core/fragment/app/FragmentManager;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/oneplus/support/core/fragment/app/Fragment;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onFragmentStopped(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/core/fragment/app/Fragment;)V
    .locals 0
    .param p1    # Lcom/oneplus/support/core/fragment/app/FragmentManager;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/oneplus/support/core/fragment/app/Fragment;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onFragmentViewCreated(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Lcom/oneplus/support/core/fragment/app/FragmentManager;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/oneplus/support/core/fragment/app/Fragment;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onFragmentViewDestroyed(Lcom/oneplus/support/core/fragment/app/FragmentManager;Lcom/oneplus/support/core/fragment/app/Fragment;)V
    .locals 0
    .param p1    # Lcom/oneplus/support/core/fragment/app/FragmentManager;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/oneplus/support/core/fragment/app/Fragment;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
