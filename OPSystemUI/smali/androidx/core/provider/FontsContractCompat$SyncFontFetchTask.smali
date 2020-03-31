.class final Landroidx/core/provider/FontsContractCompat$SyncFontFetchTask;
.super Ljava/util/concurrent/FutureTask;
.source "FontsContractCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/provider/FontsContractCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SyncFontFetchTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/provider/FontsContractCompat$SyncFontFetchTask$CallableWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Landroidx/core/provider/FontsContractCompat$TypefaceResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroidx/core/provider/FontsContractCompat$SyncFontFetchTaskCallable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method constructor <init>(Landroidx/core/provider/FontsContractCompat$SyncFontFetchTaskCallable;Landroidx/core/provider/FontsContractCompat$OnCompletedCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/provider/FontsContractCompat$SyncFontFetchTaskCallable;",
            "Landroidx/core/provider/FontsContractCompat$OnCompletedCallback<",
            "Landroidx/core/provider/FontsContractCompat$TypefaceResult;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroidx/core/provider/FontsContractCompat$SyncFontFetchTask$CallableWrapper;

    invoke-direct {v0, p1, p2}, Landroidx/core/provider/FontsContractCompat$SyncFontFetchTask$CallableWrapper;-><init>(Ljava/util/concurrent/Callable;Landroidx/core/provider/FontsContractCompat$OnCompletedCallback;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method
