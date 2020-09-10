.class Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate$Stub$Proxy;
.super Ljava/lang/Object;
.source "IOnePlusUpdate.java"

# interfaces
.implements Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.oos.onepluspods.service.aidl.IOnePlusUpdate"

    return-object v0
.end method

.method public updateView(Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.oos.onepluspods.service.aidl.IOnePlusUpdate"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate$Stub;->getDefaultImpl()Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate$Stub;->getDefaultImpl()Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate;->updateView(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
