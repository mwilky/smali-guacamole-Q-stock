.class final Landroidx/core/provider/FontsContractCompat$SyncFontFetchTask$CallableWrapper;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/provider/FontsContractCompat$SyncFontFetchTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallableWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroidx/core/provider/FontsContractCompat$TypefaceResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final mOriginalCallback:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Landroidx/core/provider/FontsContractCompat$TypefaceResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mTypefaceResultOnCompletedCallback:Landroidx/core/provider/FontsContractCompat$OnCompletedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/provider/FontsContractCompat$OnCompletedCallback<",
            "Landroidx/core/provider/FontsContractCompat$TypefaceResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;Landroidx/core/provider/FontsContractCompat$OnCompletedCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Landroidx/core/provider/FontsContractCompat$TypefaceResult;",
            ">;",
            "Landroidx/core/provider/FontsContractCompat$OnCompletedCallback<",
            "Landroidx/core/provider/FontsContractCompat$TypefaceResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/provider/FontsContractCompat$SyncFontFetchTask$CallableWrapper;->mOriginalCallback:Ljava/util/concurrent/Callable;

    iput-object p2, p0, Landroidx/core/provider/FontsContractCompat$SyncFontFetchTask$CallableWrapper;->mTypefaceResultOnCompletedCallback:Landroidx/core/provider/FontsContractCompat$OnCompletedCallback;

    return-void
.end method


# virtual methods
.method public call()Landroidx/core/provider/FontsContractCompat$TypefaceResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroidx/core/provider/FontsContractCompat$SyncFontFetchTask$CallableWrapper;->mOriginalCallback:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/provider/FontsContractCompat$TypefaceResult;

    iget-object p0, p0, Landroidx/core/provider/FontsContractCompat$SyncFontFetchTask$CallableWrapper;->mTypefaceResultOnCompletedCallback:Landroidx/core/provider/FontsContractCompat$OnCompletedCallback;

    invoke-interface {p0, v0}, Landroidx/core/provider/FontsContractCompat$OnCompletedCallback;->onCompleted(Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/core/provider/FontsContractCompat$SyncFontFetchTask$CallableWrapper;->call()Landroidx/core/provider/FontsContractCompat$TypefaceResult;

    move-result-object p0

    return-object p0
.end method
