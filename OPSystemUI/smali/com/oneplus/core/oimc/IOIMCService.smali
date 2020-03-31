.class public interface abstract Lcom/oneplus/core/oimc/IOIMCService;
.super Ljava/lang/Object;
.source "IOIMCService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/core/oimc/IOIMCService$Stub;
    }
.end annotation


# virtual methods
.method public abstract addFuncRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getRemoteFuncStatus(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyModeChange(Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeFuncRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
