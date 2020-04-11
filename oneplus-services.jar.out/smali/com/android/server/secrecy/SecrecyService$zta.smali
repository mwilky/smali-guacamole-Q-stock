.class final Lcom/android/server/secrecy/SecrecyService$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/secrecy/SecrecyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "zta"
.end annotation


# instance fields
.field mBinder:Landroid/os/IBinder;

.field final mReceiver:Landroid/secrecy/ISecrecyServiceReceiver;

.field final synthetic this$0:Lcom/android/server/secrecy/SecrecyService;


# direct methods
.method constructor <init>(Lcom/android/server/secrecy/SecrecyService;Landroid/os/IBinder;Landroid/secrecy/ISecrecyServiceReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/secrecy/SecrecyService$zta;->this$0:Lcom/android/server/secrecy/SecrecyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/server/secrecy/SecrecyService$zta;->mReceiver:Landroid/secrecy/ISecrecyServiceReceiver;

    iput-object p2, p0, Lcom/android/server/secrecy/SecrecyService$zta;->mBinder:Landroid/os/IBinder;

    :try_start_0
    iget-object p1, p0, Lcom/android/server/secrecy/SecrecyService$zta;->mBinder:Landroid/os/IBinder;

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SecrecyService"

    const-string p2, "caught remote exception in linkToDeath: "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyService$zta;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyService$zta;->this$0:Lcom/android/server/secrecy/SecrecyService;

    invoke-static {v0}, Lcom/android/server/secrecy/SecrecyService;->zta(Lcom/android/server/secrecy/SecrecyService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/secrecy/SecrecyService$zta;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
