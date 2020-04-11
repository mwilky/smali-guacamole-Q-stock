.class public abstract Lcom/android/settingslib/utils/AsyncLoaderCompat;
.super Landroidx/loader/content/AsyncTaskLoader;
.source "AsyncLoaderCompat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/loader/content/AsyncTaskLoader<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public deliverResult(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settingslib/utils/AsyncLoaderCompat;->isReset()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/utils/AsyncLoaderCompat;->onDiscardResult(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/utils/AsyncLoaderCompat;->mResult:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/settingslib/utils/AsyncLoaderCompat;->mResult:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settingslib/utils/AsyncLoaderCompat;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-super {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/settingslib/utils/AsyncLoaderCompat;->mResult:Ljava/lang/Object;

    if-eq v0, v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/settingslib/utils/AsyncLoaderCompat;->onDiscardResult(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public onCanceled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/utils/AsyncLoaderCompat;->onDiscardResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected abstract onDiscardResult(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected onReset()V
    .locals 1

    invoke-super {p0}, Landroidx/loader/content/AsyncTaskLoader;->onReset()V

    invoke-virtual {p0}, Lcom/android/settingslib/utils/AsyncLoaderCompat;->onStopLoading()V

    iget-object v0, p0, Lcom/android/settingslib/utils/AsyncLoaderCompat;->mResult:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/utils/AsyncLoaderCompat;->onDiscardResult(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/utils/AsyncLoaderCompat;->mResult:Ljava/lang/Object;

    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/utils/AsyncLoaderCompat;->mResult:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/utils/AsyncLoaderCompat;->deliverResult(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/utils/AsyncLoaderCompat;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/utils/AsyncLoaderCompat;->mResult:Ljava/lang/Object;

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/utils/AsyncLoaderCompat;->forceLoad()V

    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settingslib/utils/AsyncLoaderCompat;->cancelLoad()Z

    return-void
.end method
