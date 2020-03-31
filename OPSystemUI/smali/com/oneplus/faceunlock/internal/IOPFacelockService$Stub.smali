.class public abstract Lcom/oneplus/faceunlock/internal/IOPFacelockService$Stub;
.super Landroid/os/Binder;
.source "IOPFacelockService.java"

# interfaces
.implements Lcom/oneplus/faceunlock/internal/IOPFacelockService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/faceunlock/internal/IOPFacelockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/faceunlock/internal/IOPFacelockService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/oneplus/faceunlock/internal/IOPFacelockService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.oneplus.faceunlock.internal.IOPFacelockService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    return-object v0

    :cond_1
    new-instance v0, Lcom/oneplus/faceunlock/internal/IOPFacelockService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/oneplus/faceunlock/internal/IOPFacelockService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/oneplus/faceunlock/internal/IOPFacelockService;
    .locals 1

    sget-object v0, Lcom/oneplus/faceunlock/internal/IOPFacelockService$Stub$Proxy;->sDefaultImpl:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    return-object v0
.end method
