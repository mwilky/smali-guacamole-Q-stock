.class public Lcom/oneplus/support/core/fragment/app/FragmentController;
.super Ljava/lang/Object;
.source "FragmentController.java"


# instance fields
.field private final mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/support/core/fragment/app/FragmentHostCallback<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/core/fragment/app/FragmentHostCallback<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    return-void
.end method

.method public static createController(Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;)Lcom/oneplus/support/core/fragment/app/FragmentController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/core/fragment/app/FragmentHostCallback<",
            "*>;)",
            "Lcom/oneplus/support/core/fragment/app/FragmentController;"
        }
    .end annotation

    new-instance v0, Lcom/oneplus/support/core/fragment/app/FragmentController;

    invoke-direct {v0, p0}, Lcom/oneplus/support/core/fragment/app/FragmentController;-><init>(Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;)V

    return-object v0
.end method


# virtual methods
.method public attachHost(Lcom/oneplus/support/core/fragment/app/Fragment;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    invoke-virtual {v0, v1, v1, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->attachController(Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;Lcom/oneplus/support/core/fragment/app/FragmentContainer;Lcom/oneplus/support/core/fragment/app/Fragment;)V

    return-void
.end method

.method public dispatchActivityCreated()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchActivityCreated()V

    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public dispatchCreate()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchCreate()V

    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v0

    return v0
.end method

.method public dispatchDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchDestroy()V

    return-void
.end method

.method public dispatchDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchDestroyView()V

    return-void
.end method

.method public dispatchLowMemory()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchLowMemory()V

    return-void
.end method

.method public dispatchMultiWindowModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchMultiWindowModeChanged(Z)V

    return-void
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method public dispatchPause()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchPause()V

    return-void
.end method

.method public dispatchPictureInPictureModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchPictureInPictureModeChanged(Z)V

    return-void
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public dispatchReallyStop()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public dispatchResume()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchResume()V

    return-void
.end method

.method public dispatchStart()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchStart()V

    return-void
.end method

.method public dispatchStop()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchStop()V

    return-void
.end method

.method public doLoaderDestroy()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public doLoaderRetain()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public doLoaderStart()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public doLoaderStop(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public execPendingActions()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v0

    return v0
.end method

.method public findFragmentByWho(Ljava/lang/String;)Lcom/oneplus/support/core/fragment/app/Fragment;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->findFragmentByWho(Ljava/lang/String;)Lcom/oneplus/support/core/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getActiveFragments(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oneplus/support/core/fragment/app/Fragment;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/oneplus/support/core/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->getActiveFragments()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getActiveFragmentsCount()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->getActiveFragmentCount()I

    move-result v0

    return v0
.end method

.method public getSupportFragmentManager()Lcom/oneplus/support/core/fragment/app/FragmentManager;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->getFragmentManagerImpl()Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method public getSupportLoaderManager()Lcom/oneplus/support/loader/app/LoaderManager;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Loaders are managed separately from FragmentController, use LoaderManager.getInstance() to obtain a LoaderManager."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public noteStateNotSaved()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->noteStateNotSaved()V

    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public reportLoaderStart()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public restoreAllState(Landroid/os/Parcelable;Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;)V

    return-void
.end method

.method public restoreAllState(Landroid/os/Parcelable;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Ljava/util/List<",
            "Lcom/oneplus/support/core/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    new-instance v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2, v2}, Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;)V

    return-void
.end method

.method public restoreLoaderNonConfig(Lcom/oneplus/support/collection/SimpleArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/support/loader/app/LoaderManager;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public retainLoaderNonConfig()Lcom/oneplus/support/collection/SimpleArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oneplus/support/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/support/loader/app/LoaderManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public retainNestedNonConfig()Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->retainNonConfig()Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;

    move-result-object v0

    return-object v0
.end method

.method public retainNonConfig()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oneplus/support/core/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->retainNonConfig()Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public saveAllState()Landroid/os/Parcelable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->saveAllState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method
