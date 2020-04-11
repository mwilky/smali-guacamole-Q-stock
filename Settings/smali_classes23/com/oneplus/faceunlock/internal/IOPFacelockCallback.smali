.class public interface abstract Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;
.super Ljava/lang/Object;
.source "IOPFacelockCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/faceunlock/internal/IOPFacelockCallback$Stub;,
        Lcom/oneplus/faceunlock/internal/IOPFacelockCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onBeginRecognize(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onCompared(IIIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onEndRecognize(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
