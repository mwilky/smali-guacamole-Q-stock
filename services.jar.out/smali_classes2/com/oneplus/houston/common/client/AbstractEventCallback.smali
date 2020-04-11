.class public abstract Lcom/oneplus/houston/common/client/AbstractEventCallback;
.super Ljava/lang/Object;
.source "AbstractEventCallback.java"

# interfaces
.implements Lcom/oneplus/houston/common/client/ISystemEventCallback;
.implements Lcom/oneplus/houston/common/client/IProcessEventCallback;
.implements Lcom/oneplus/houston/common/client/IUEventCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public doInit(Lcom/oneplus/houston/common/client/parcel/InitArg;)V
    .locals 0

    return-void
.end method

.method public receive(Lcom/oneplus/houston/common/client/Event;)V
    .locals 0

    return-void
.end method

.method public remove(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setAdj([I[I)V
    .locals 0

    return-void
.end method

.method public setAppList(ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setAudioState(I[I[I)V
    .locals 0

    return-void
.end method

.method public setFlags(III)V
    .locals 0

    return-void
.end method

.method public setKeyguardState(I)V
    .locals 0

    return-void
.end method

.method public setOom([I[I[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setPss(III)V
    .locals 0

    return-void
.end method

.method public updateScreenState(Z)V
    .locals 0

    return-void
.end method
