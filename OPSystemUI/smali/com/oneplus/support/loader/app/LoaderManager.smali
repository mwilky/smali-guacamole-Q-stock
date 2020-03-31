.class public abstract Lcom/oneplus/support/loader/app/LoaderManager;
.super Ljava/lang/Object;
.source "LoaderManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Lcom/oneplus/support/lifecycle/LifecycleOwner;)Lcom/oneplus/support/loader/app/LoaderManager;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/oneplus/support/lifecycle/LifecycleOwner;",
            ":",
            "Lcom/oneplus/support/lifecycle/ViewModelStoreOwner;",
            ">(TT;)",
            "Lcom/oneplus/support/loader/app/LoaderManager;"
        }
    .end annotation

    new-instance v0, Lcom/oneplus/support/loader/app/LoaderManagerImpl;

    move-object v1, p0

    check-cast v1, Lcom/oneplus/support/lifecycle/ViewModelStoreOwner;

    invoke-interface {v1}, Lcom/oneplus/support/lifecycle/ViewModelStoreOwner;->getViewModelStore()Lcom/oneplus/support/lifecycle/ViewModelStore;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/support/loader/app/LoaderManagerImpl;-><init>(Lcom/oneplus/support/lifecycle/LifecycleOwner;Lcom/oneplus/support/lifecycle/ViewModelStore;)V

    return-object v0
.end method


# virtual methods
.method public abstract dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract markForRedelivery()V
.end method
