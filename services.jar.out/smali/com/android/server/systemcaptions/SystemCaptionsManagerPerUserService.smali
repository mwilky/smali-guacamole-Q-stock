.class final Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "SystemCaptionsManagerPerUserService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractPerUserSystemService<",
        "Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;",
        "Lcom/android/server/systemcaptions/SystemCaptionsManagerService;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mRemoteService:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/systemcaptions/SystemCaptionsManagerService;Ljava/lang/Object;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    return-void
.end method

.method private getRemoteServiceLocked()Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;
    .locals 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->mRemoteService:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->getComponentNameLocked()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->mUserId:I

    invoke-static {v1}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isParallelUser(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/systemcaptions/SystemCaptionsManagerService;

    iget-boolean v1, v1, Lcom/android/server/systemcaptions/SystemCaptionsManagerService;->verbose:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v2, "getRemoteServiceLocked(): Not set"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    return-object v1

    :cond_2
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    new-instance v2, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    invoke-virtual {p0}, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->mUserId:I

    iget-object v5, p0, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v5, Lcom/android/server/systemcaptions/SystemCaptionsManagerService;

    iget-boolean v5, v5, Lcom/android/server/systemcaptions/SystemCaptionsManagerService;->verbose:Z

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    iput-object v2, p0, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->mRemoteService:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    iget-object v2, p0, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v2, Lcom/android/server/systemcaptions/SystemCaptionsManagerService;

    iget-boolean v2, v2, Lcom/android/server/systemcaptions/SystemCaptionsManagerService;->verbose:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRemoteServiceLocked(): initialize for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v2, p0, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->mRemoteService:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    invoke-virtual {v2}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->initialize()V

    :cond_4
    iget-object v0, p0, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->mRemoteService:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    return-object v0
.end method


# virtual methods
.method destroyLocked()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/systemcaptions/SystemCaptionsManagerService;

    iget-boolean v0, v0, Lcom/android/server/systemcaptions/SystemCaptionsManagerService;->verbose:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "destroyLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->mRemoteService:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->mRemoteService:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    :cond_1
    return-void
.end method

.method initializeLocked()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/systemcaptions/SystemCaptionsManagerService;

    iget-boolean v0, v0, Lcom/android/server/systemcaptions/SystemCaptionsManagerService;->verbose:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "initialize()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->getRemoteServiceLocked()Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/systemcaptions/SystemCaptionsManagerService;

    iget-boolean v1, v1, Lcom/android/server/systemcaptions/SystemCaptionsManagerService;->verbose:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v2, "initialize(): Failed to init remote server"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method protected newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/16 v1, 0x80

    iget v2, p0, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->mUserId:I

    invoke-interface {v0, p1, v1, v2}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get service for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
