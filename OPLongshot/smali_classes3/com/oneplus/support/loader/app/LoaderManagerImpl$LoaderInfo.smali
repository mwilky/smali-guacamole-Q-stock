.class public Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;
.super Lcom/oneplus/support/lifecycle/MutableLiveData;
.source "LoaderManagerImpl.java"

# interfaces
.implements Lcom/oneplus/support/loader/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/loader/app/LoaderManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoaderInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/oneplus/support/lifecycle/MutableLiveData<",
        "TD;>;",
        "Lcom/oneplus/support/loader/content/Loader$OnLoadCompleteListener<",
        "TD;>;"
    }
.end annotation


# instance fields
.field private final mArgs:Landroid/os/Bundle;
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation
.end field

.field private final mId:I

.field private mLifecycleOwner:Lcom/oneplus/support/lifecycle/LifecycleOwner;

.field private final mLoader:Lcom/oneplus/support/loader/content/Loader;
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/support/loader/content/Loader<",
            "TD;>;"
        }
    .end annotation
.end field

.field private mObserver:Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver<",
            "TD;>;"
        }
    .end annotation
.end field

.field private mPriorLoader:Lcom/oneplus/support/loader/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/support/loader/content/Loader<",
            "TD;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILandroid/os/Bundle;Lcom/oneplus/support/loader/content/Loader;Lcom/oneplus/support/loader/content/Loader;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/oneplus/support/loader/content/Loader;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/oneplus/support/loader/content/Loader;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Lcom/oneplus/support/loader/content/Loader<",
            "TD;>;",
            "Lcom/oneplus/support/loader/content/Loader<",
            "TD;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/oneplus/support/lifecycle/MutableLiveData;-><init>()V

    iput p1, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mId:I

    iput-object p2, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/oneplus/support/loader/content/Loader;

    iput-object p4, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mPriorLoader:Lcom/oneplus/support/loader/content/Loader;

    iget-object v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/oneplus/support/loader/content/Loader;

    invoke-virtual {v0, p1, p0}, Lcom/oneplus/support/loader/content/Loader;->registerListener(ILcom/oneplus/support/loader/content/Loader$OnLoadCompleteListener;)V

    return-void
.end method


# virtual methods
.method destroy(Z)Lcom/oneplus/support/loader/content/Loader;
    .locals 2
    .annotation build Lcom/oneplus/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/oneplus/support/loader/content/Loader<",
            "TD;>;"
        }
    .end annotation

    sget-boolean v0, Lcom/oneplus/support/loader/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Destroying: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/oneplus/support/loader/content/Loader;

    invoke-virtual {v0}, Lcom/oneplus/support/loader/content/Loader;->cancelLoad()Z

    iget-object v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/oneplus/support/loader/content/Loader;

    invoke-virtual {v0}, Lcom/oneplus/support/loader/content/Loader;->abandon()V

    iget-object v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->removeObserver(Lcom/oneplus/support/lifecycle/Observer;)V

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver;->reset()V

    :cond_1
    iget-object v1, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/oneplus/support/loader/content/Loader;

    invoke-virtual {v1, p0}, Lcom/oneplus/support/loader/content/Loader;->unregisterListener(Lcom/oneplus/support/loader/content/Loader$OnLoadCompleteListener;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver;->hasDeliveredData()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    if-eqz p1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/oneplus/support/loader/content/Loader;

    invoke-virtual {v1}, Lcom/oneplus/support/loader/content/Loader;->reset()V

    iget-object v1, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mPriorLoader:Lcom/oneplus/support/loader/content/Loader;

    return-object v1

    :cond_4
    iget-object v1, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/oneplus/support/loader/content/Loader;

    return-object v1
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoader="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/oneplus/support/loader/content/Loader;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/oneplus/support/loader/content/Loader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/oneplus/support/loader/content/Loader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCallbacks="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->getLoader()Lcom/oneplus/support/loader/content/Loader;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/support/loader/content/Loader;->dataToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->hasActiveObservers()Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method getLoader()Lcom/oneplus/support/loader/content/Loader;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oneplus/support/loader/content/Loader<",
            "TD;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/oneplus/support/loader/content/Loader;

    return-object v0
.end method

.method isCallbackWaitingForData()Z
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->hasActiveObservers()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver;->hasDeliveredData()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method markForRedelivery()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mLifecycleOwner:Lcom/oneplus/support/lifecycle/LifecycleOwner;

    iget-object v1, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-super {p0, v1}, Lcom/oneplus/support/lifecycle/MutableLiveData;->removeObserver(Lcom/oneplus/support/lifecycle/Observer;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->observe(Lcom/oneplus/support/lifecycle/LifecycleOwner;Lcom/oneplus/support/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method protected onActive()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/support/loader/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Starting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/oneplus/support/loader/content/Loader;

    invoke-virtual {v0}, Lcom/oneplus/support/loader/content/Loader;->startLoading()V

    return-void
.end method

.method protected onInactive()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/support/loader/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Stopping: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/oneplus/support/loader/content/Loader;

    invoke-virtual {v0}, Lcom/oneplus/support/loader/content/Loader;->stopLoading()V

    return-void
.end method

.method public onLoadComplete(Lcom/oneplus/support/loader/content/Loader;Ljava/lang/Object;)V
    .locals 3
    .param p1    # Lcom/oneplus/support/loader/content/Loader;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/loader/content/Loader<",
            "TD;>;TD;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/oneplus/support/loader/app/LoaderManagerImpl;->DEBUG:Z

    const-string v1, "LoaderManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadComplete: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, p2}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/oneplus/support/loader/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "onLoadComplete was incorrectly called on a background thread"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0, p2}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public removeObserver(Lcom/oneplus/support/lifecycle/Observer;)V
    .locals 1
    .param p1    # Lcom/oneplus/support/lifecycle/Observer;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/lifecycle/Observer<",
            "-TD;>;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/oneplus/support/lifecycle/MutableLiveData;->removeObserver(Lcom/oneplus/support/lifecycle/Observer;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mLifecycleOwner:Lcom/oneplus/support/lifecycle/LifecycleOwner;

    iput-object v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver;

    return-void
.end method

.method setCallback(Lcom/oneplus/support/lifecycle/LifecycleOwner;Lcom/oneplus/support/loader/app/LoaderManager$LoaderCallbacks;)Lcom/oneplus/support/loader/content/Loader;
    .locals 2
    .param p1    # Lcom/oneplus/support/lifecycle/LifecycleOwner;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/oneplus/support/loader/app/LoaderManager$LoaderCallbacks;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/MainThread;
    .end annotation

    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/lifecycle/LifecycleOwner;",
            "Lcom/oneplus/support/loader/app/LoaderManager$LoaderCallbacks<",
            "TD;>;)",
            "Lcom/oneplus/support/loader/content/Loader<",
            "TD;>;"
        }
    .end annotation

    new-instance v0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver;

    iget-object v1, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/oneplus/support/loader/content/Loader;

    invoke-direct {v0, v1, p2}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver;-><init>(Lcom/oneplus/support/loader/content/Loader;Lcom/oneplus/support/loader/app/LoaderManager$LoaderCallbacks;)V

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->observe(Lcom/oneplus/support/lifecycle/LifecycleOwner;Lcom/oneplus/support/lifecycle/Observer;)V

    iget-object v1, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->removeObserver(Lcom/oneplus/support/lifecycle/Observer;)V

    :cond_0
    iput-object p1, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mLifecycleOwner:Lcom/oneplus/support/lifecycle/LifecycleOwner;

    iput-object v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver;

    iget-object v1, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/oneplus/support/loader/content/Loader;

    return-object v1
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/oneplus/support/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mPriorLoader:Lcom/oneplus/support/loader/content/Loader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/support/loader/content/Loader;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mPriorLoader:Lcom/oneplus/support/loader/content/Loader;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/oneplus/support/loader/content/Loader;

    invoke-static {v1, v0}, Lcom/oneplus/support/core/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
