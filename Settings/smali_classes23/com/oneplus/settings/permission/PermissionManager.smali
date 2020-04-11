.class public Lcom/oneplus/settings/permission/PermissionManager;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/permission/PermissionManager$IncomingHandler;,
        Lcom/oneplus/settings/permission/PermissionManager$Holder;,
        Lcom/oneplus/settings/permission/PermissionManager$Callback;
    }
.end annotation


# static fields
.field private static final CLS_NAME_SERVICE:Ljava/lang/String; = "com.oneplus.permissionutil.ControlService"

.field private static final KEY_GRANT_STATE:Ljava/lang/String; = "key_is_granted"

.field public static final KEY_PERM_NAME:Ljava/lang/String; = "key_perm_name"

.field private static final KEY_PKG_NAME:Ljava/lang/String; = "key_pkg_name"

.field private static final KEY_PKG_PEMISSIONS:Ljava/lang/String; = "KEY_PKG_PEMISSIONS"

.field private static final KEY_USER_FIXED:Ljava/lang/String; = "key_is_user_fixed"

.field private static final LOG_TAG:Ljava/lang/String; = "PermissionManager"

.field public static final MSG_GET_PACKAGE_PERMISSION_STATES:I = 0x5

.field public static final MSG_REPLY_PACKAGE_PERMISSION_STATES:I = 0x6

.field public static final MSG_REPLY_UPDATE_RESULT:I = 0x2

.field public static final MSG_SET_USER_DECISION:I = 0x1

.field private static final PKG_NAME_CUSTOM_PERMISSION_UTIL:Ljava/lang/String; = "com.oneplus.permissionutil"


# instance fields
.field private mCallback:Lcom/oneplus/settings/permission/PermissionManager$Callback;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsBound:Z

.field private mLocalClient:Landroid/os/Messenger;

.field private mLock:Ljava/lang/Object;

.field private mRemoteService:Landroid/os/Messenger;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mWorker:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/permission/PermissionManager;->mCallback:Lcom/oneplus/settings/permission/PermissionManager$Callback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/permission/PermissionManager;->mIsBound:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/permission/PermissionManager;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/oneplus/settings/permission/PermissionManager$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/permission/PermissionManager$1;-><init>(Lcom/oneplus/settings/permission/PermissionManager;)V

    iput-object v0, p0, Lcom/oneplus/settings/permission/PermissionManager;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/permission/PermissionManager;)Lcom/oneplus/settings/permission/PermissionManager$Callback;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/permission/PermissionManager;->mCallback:Lcom/oneplus/settings/permission/PermissionManager$Callback;

    return-object v0
.end method

.method static synthetic access$102(Lcom/oneplus/settings/permission/PermissionManager;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/permission/PermissionManager;->mRemoteService:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$200(Lcom/oneplus/settings/permission/PermissionManager;)Landroid/os/HandlerThread;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/permission/PermissionManager;->mWorker:Landroid/os/HandlerThread;

    return-object v0
.end method

.method public static get()Lcom/oneplus/settings/permission/PermissionManager;
    .locals 1

    sget-object v0, Lcom/oneplus/settings/permission/PermissionManager$Holder;->INSTANCE:Lcom/oneplus/settings/permission/PermissionManager;

    return-object v0
.end method

.method public static isSystemOrSystemUpdatedApp(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    return v0
.end method


# virtual methods
.method public connectToPermissionControlService(Landroid/content/Context;)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/settings/permission/PermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/oneplus/settings/permission/PermissionManager;->mIsBound:Z

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "PermissionDataClient"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/oneplus/settings/permission/PermissionManager;->mWorker:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/oneplus/settings/permission/PermissionManager;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/oneplus/settings/permission/PermissionManager$IncomingHandler;

    iget-object v2, p0, Lcom/oneplus/settings/permission/PermissionManager;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/oneplus/settings/permission/PermissionManager$IncomingHandler;-><init>(Lcom/oneplus/settings/permission/PermissionManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oneplus/settings/permission/PermissionManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/Messenger;

    iget-object v2, p0, Lcom/oneplus/settings/permission/PermissionManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/oneplus/settings/permission/PermissionManager;->mLocalClient:Landroid/os/Messenger;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.oneplus.service.bind"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.oneplus.permissionutil"

    const-string v4, "com.oneplus.permissionutil.ControlService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/oneplus/settings/permission/PermissionManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oneplus/settings/permission/PermissionManager;->mIsBound:Z

    iput-object p1, p0, Lcom/oneplus/settings/permission/PermissionManager;->mContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/permission/PermissionManager;->mCallback:Lcom/oneplus/settings/permission/PermissionManager$Callback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/permission/PermissionManager;->mCallback:Lcom/oneplus/settings/permission/PermissionManager$Callback;

    invoke-interface {v1}, Lcom/oneplus/settings/permission/PermissionManager$Callback;->onServiceConnected()V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disconnect(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/permission/PermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/oneplus/settings/permission/PermissionManager;->mIsBound:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/permission/PermissionManager;->mContext:Landroid/content/Context;

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/permission/PermissionManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/settings/permission/PermissionManager;->mIsBound:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/settings/permission/PermissionManager;->mContext:Landroid/content/Context;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public queryPermissionData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_pkg_name"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/oneplus/settings/permission/PermissionManager;->mLocalClient:Landroid/os/Messenger;

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/settings/permission/PermissionManager;->mRemoteService:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/settings/permission/PermissionManager;->mRemoteService:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got exception while query permission data for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PermissionManager"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setCallback(Lcom/oneplus/settings/permission/PermissionManager$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/permission/PermissionManager;->mCallback:Lcom/oneplus/settings/permission/PermissionManager$Callback;

    return-void
.end method

.method public updatePermissionData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/oneplus/settings/permission/PermissionManager;->isSystemOrSystemUpdatedApp(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Update permission data to granted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " and fixed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PermissionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_pkg_name"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_perm_name"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_is_granted"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "key_is_user_fixed"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/oneplus/settings/permission/PermissionManager;->mLocalClient:Landroid/os/Messenger;

    iput-object v3, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_0
    iget-object v3, p0, Lcom/oneplus/settings/permission/PermissionManager;->mRemoteService:Landroid/os/Messenger;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/settings/permission/PermissionManager;->mRemoteService:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got exception while syncing permission data for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public updatePermissionsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v1

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/oneplus/settings/permission/PermissionManager;->updatePermissionData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_0
    return-void
.end method
