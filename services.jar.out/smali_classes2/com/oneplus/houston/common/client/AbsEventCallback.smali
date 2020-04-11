.class public Lcom/oneplus/houston/common/client/AbsEventCallback;
.super Ljava/lang/Object;
.source "AbsEventCallback.java"

# interfaces
.implements Lcom/oneplus/houston/common/client/IEvent;
.implements Lcom/oneplus/houston/common/client/observer/IListener;


# static fields
.field public static final ID_CPU:I = 0x1

.field public static final ID_MAX:I = 0x3

.field public static final ID_MIN:I = 0x0

.field public static final ID_NET:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AbsEventCallback"


# instance fields
.field public mDescription:Ljava/lang/String;

.field protected mEnabled:Z

.field public mExtra:Landroid/os/Bundle;

.field public mIndex:I

.field public mObserver:Lcom/oneplus/houston/common/client/observer/EventCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILandroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oneplus/houston/common/client/AbsEventCallback;->mIndex:I

    iput-object p2, p0, Lcom/oneplus/houston/common/client/AbsEventCallback;->mExtra:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/oneplus/houston/common/client/AbsEventCallback;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public static isValidIndex(I)Z
    .locals 1

    if-lez p0, :cond_0

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public addClient(Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public builder(Lcom/oneplus/houston/common/client/AbsEventCallback;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public builder(Landroid/content/Intent;)Lcom/oneplus/houston/common/client/AbsEventCallback;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public compareObserver(Lcom/oneplus/houston/common/client/AbsEventCallback;Lcom/oneplus/houston/common/client/AbsEventCallback;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dumpData(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public getExtra()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/houston/common/client/AbsEventCallback;->mExtra:Landroid/os/Bundle;

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isReachThreshold(Lcom/oneplus/houston/common/client/Event;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public myPid()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public onEvent(Lcom/oneplus/houston/common/client/Event;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event call back, event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oneplus/houston/common/client/Event;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbsEventCallback"

    invoke-static {v1, v0}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInit(Lcom/oneplus/houston/common/client/parcel/InitArg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event call back, Initarg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oneplus/houston/common/client/parcel/InitArg;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbsEventCallback"

    invoke-static {v1, v0}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceive(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onReceive(Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public registerEventObserver(Landroid/os/IBinder;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public removeClient(Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public unregisterEventObserver(Landroid/os/IBinder;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public updateTransfromConfig(Lcom/oneplus/houston/common/client/AbsEventCallback;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
