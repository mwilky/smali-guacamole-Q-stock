.class public interface abstract Lcom/oneplus/settings/backgroundoptimize/IBgOActivityManager;
.super Ljava/lang/Object;
.source "IBgOActivityManager.java"


# static fields
.field public static final BGO_PKG_NOT_OPTIMIZED:I = 0x1

.field public static final BGO_PKG_OPTIMIZED:I = 0x2

.field public static final BGO_PKG_SMART_OPTIMIZED:I


# virtual methods
.method public abstract getAllAppControlModes(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/backgroundoptimize/AppControlMode;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAppControlMode(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAppControlState(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setAppControlMode(Ljava/lang/String;II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setAppControlState(II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
