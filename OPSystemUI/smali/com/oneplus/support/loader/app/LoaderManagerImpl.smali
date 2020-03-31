.class Lcom/oneplus/support/loader/app/LoaderManagerImpl;
.super Lcom/oneplus/support/loader/app/LoaderManager;
.source "LoaderManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;,
        Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver;,
        Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;
    }
.end annotation


# static fields
.field static DEBUG:Z = false


# instance fields
.field private final mLifecycleOwner:Lcom/oneplus/support/lifecycle/LifecycleOwner;

.field private final mLoaderViewModel:Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;


# direct methods
.method constructor <init>(Lcom/oneplus/support/lifecycle/LifecycleOwner;Lcom/oneplus/support/lifecycle/ViewModelStore;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/support/loader/app/LoaderManager;-><init>()V

    iput-object p1, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl;->mLifecycleOwner:Lcom/oneplus/support/lifecycle/LifecycleOwner;

    invoke-static {p2}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->getInstance(Lcom/oneplus/support/lifecycle/ViewModelStore;)Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl;->mLoaderViewModel:Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl;->mLoaderViewModel:Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public markForRedelivery()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl;->mLoaderViewModel:Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {p0}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->markForRedelivery()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/support/loader/app/LoaderManagerImpl;->mLifecycleOwner:Lcom/oneplus/support/lifecycle/LifecycleOwner;

    invoke-static {p0, v0}, Lcom/oneplus/support/core/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string/jumbo p0, "}}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
