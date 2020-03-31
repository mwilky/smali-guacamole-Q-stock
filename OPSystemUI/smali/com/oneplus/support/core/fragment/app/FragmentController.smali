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
    .locals 1

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p0, p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->attachController(Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;Lcom/oneplus/support/core/fragment/app/FragmentContainer;Lcom/oneplus/support/core/fragment/app/Fragment;)V

    return-void
.end method

.method public dispatchActivityCreated()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchActivityCreated()V

    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public dispatchCreate()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchCreate()V

    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p0

    return p0
.end method

.method public dispatchDestroy()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchDestroy()V

    return-void
.end method

.method public dispatchLowMemory()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchLowMemory()V

    return-void
.end method

.method public dispatchMultiWindowModeChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchMultiWindowModeChanged(Z)V

    return-void
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method public dispatchPause()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchPause()V

    return-void
.end method

.method public dispatchPictureInPictureModeChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchPictureInPictureModeChanged(Z)V

    return-void
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public dispatchResume()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchResume()V

    return-void
.end method

.method public dispatchStart()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchStart()V

    return-void
.end method

.method public dispatchStop()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->dispatchStop()V

    return-void
.end method

.method public execPendingActions()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    move-result p0

    return p0
.end method

.method public findFragmentByWho(Ljava/lang/String;)Lcom/oneplus/support/core/fragment/app/Fragment;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->findFragmentByWho(Ljava/lang/String;)Lcom/oneplus/support/core/fragment/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public getSupportFragmentManager()Lcom/oneplus/support/core/fragment/app/FragmentManager;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->getFragmentManagerImpl()Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    move-result-object p0

    return-object p0
.end method

.method public noteStateNotSaved()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->noteStateNotSaved()V

    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public restoreAllState(Landroid/os/Parcelable;Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;)V

    return-void
.end method

.method public retainNestedNonConfig()Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->retainNonConfig()Lcom/oneplus/support/core/fragment/app/FragmentManagerNonConfig;

    move-result-object p0

    return-object p0
.end method

.method public saveAllState()Landroid/os/Parcelable;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentController;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->saveAllState()Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method
