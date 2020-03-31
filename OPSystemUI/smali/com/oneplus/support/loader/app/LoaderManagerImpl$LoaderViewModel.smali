.class Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;
.super Lcom/oneplus/support/lifecycle/ViewModel;
.source "LoaderManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/loader/app/LoaderManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoaderViewModel"
.end annotation


# static fields
.field private static final FACTORY:Lcom/oneplus/support/lifecycle/ViewModelProvider$Factory;


# instance fields
.field private mCreatingLoader:Z

.field private mLoaders:Lcom/oneplus/support/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/support/collection/SparseArrayCompat<",
            "Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel$1;

    invoke-direct {v0}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel$1;-><init>()V

    sput-object v0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->FACTORY:Lcom/oneplus/support/lifecycle/ViewModelProvider$Factory;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/support/lifecycle/ViewModel;-><init>()V

    new-instance v0, Lcom/oneplus/support/collection/SparseArrayCompat;

    invoke-direct {v0}, Lcom/oneplus/support/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Lcom/oneplus/support/collection/SparseArrayCompat;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->mCreatingLoader:Z

    return-void
.end method

.method static getInstance(Lcom/oneplus/support/lifecycle/ViewModelStore;)Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;
    .locals 2

    new-instance v0, Lcom/oneplus/support/lifecycle/ViewModelProvider;

    sget-object v1, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->FACTORY:Lcom/oneplus/support/lifecycle/ViewModelProvider$Factory;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/support/lifecycle/ViewModelProvider;-><init>(Lcom/oneplus/support/lifecycle/ViewModelStore;Lcom/oneplus/support/lifecycle/ViewModelProvider$Factory;)V

    const-class p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v0, p0}, Lcom/oneplus/support/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Lcom/oneplus/support/lifecycle/ViewModel;

    move-result-object p0

    check-cast p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;

    return-object p0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Lcom/oneplus/support/collection/SparseArrayCompat;

    invoke-virtual {v0}, Lcom/oneplus/support/collection/SparseArrayCompat;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Lcom/oneplus/support/collection/SparseArrayCompat;

    invoke-virtual {v2}, Lcom/oneplus/support/collection/SparseArrayCompat;->size()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Lcom/oneplus/support/collection/SparseArrayCompat;

    invoke-virtual {v2, v1}, Lcom/oneplus/support/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  #"

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Lcom/oneplus/support/collection/SparseArrayCompat;

    invoke-virtual {p0, v1}, Lcom/oneplus/support/collection/SparseArrayCompat;->keyAt(I)I

    move-result p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(I)V

    const-string p0, ": "

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2, v0, p2, p3, p4}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method markForRedelivery()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Lcom/oneplus/support/collection/SparseArrayCompat;

    invoke-virtual {v0}, Lcom/oneplus/support/collection/SparseArrayCompat;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Lcom/oneplus/support/collection/SparseArrayCompat;

    invoke-virtual {v2, v1}, Lcom/oneplus/support/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v2}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->markForRedelivery()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onCleared()V
    .locals 1

    invoke-super {p0}, Lcom/oneplus/support/lifecycle/ViewModel;->onCleared()V

    iget-object v0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Lcom/oneplus/support/collection/SparseArrayCompat;

    invoke-virtual {v0}, Lcom/oneplus/support/collection/SparseArrayCompat;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Lcom/oneplus/support/collection/SparseArrayCompat;

    invoke-virtual {p0}, Lcom/oneplus/support/collection/SparseArrayCompat;->clear()V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Lcom/oneplus/support/collection/SparseArrayCompat;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/support/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->destroy(Z)Lcom/oneplus/support/loader/content/Loader;

    const/4 p0, 0x0

    throw p0
.end method
