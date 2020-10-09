.class public Lcom/android/server/secrecy/zta/sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/secrecy/zta/rtg$zta;


# static fields
.field private static final TAG:Ljava/lang/String; = "SecrecyService.PolicyManager"

.field private static final mLock:Ljava/lang/Object;

.field public static final qN:Z = false

.field public static final rN:Z = true

.field private static sInstance:Lcom/android/server/secrecy/zta/sis;


# instance fields
.field private final iN:Lcom/android/server/secrecy/sis;

.field private jN:Lcom/android/server/secrecy/SecrecyService;

.field private kN:Z

.field private lN:Z

.field private mContext:Landroid/content/Context;

.field private mLooper:Landroid/os/Looper;

.field private mN:Z

.field private mSystemReady:Z

.field private nN:Lcom/android/server/secrecy/zta/you;

.field private oN:Lcom/android/server/secrecy/zta/zta;

.field private pN:Lcom/android/server/secrecy/zta/rtg;

.field private sis:Lcom/android/server/secrecy/zta/tsu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/secrecy/zta/sis;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/server/secrecy/sis;->getInstance()Lcom/android/server/secrecy/sis;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/secrecy/zta/sis;->iN:Lcom/android/server/secrecy/sis;

    return-void
.end method

.method private Wo()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/secrecy/zta/sis;->nN:Lcom/android/server/secrecy/zta/you;

    invoke-virtual {v0}, Lcom/android/server/secrecy/zta/you;->Bd()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/secrecy/zta/sis;->nN:Lcom/android/server/secrecy/zta/you;

    invoke-virtual {v2}, Lcom/android/server/secrecy/zta/you;->Cd()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/secrecy/zta/sis;->nN:Lcom/android/server/secrecy/zta/you;

    invoke-virtual {v4}, Lcom/android/server/secrecy/zta/you;->Dd()Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkChangeToPolicyDecryptedIfNeeded, currentDownloadTimeInMills = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SecrecyService.PolicyManager"

    invoke-static {v6, v5}, Lcom/android/server/secrecy/zta/zta/zta;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkChangeToPolicyDecryptedIfNeeded, lastDownloadTimeInMills    = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/server/secrecy/zta/zta/zta;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/server/secrecy/zta/zta/zta;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/secrecy/zta/sis;->zta(Ljava/util/Map;Z)V

    const-string v1, "newDownloadInternal"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/secrecy/zta/sis;->zta(Ljava/util/Map;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private Xo()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/secrecy/zta/sis;->iN:Lcom/android/server/secrecy/sis;

    iget-object v1, p0, Lcom/android/server/secrecy/zta/sis;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/secrecy/sis;->zta(Lcom/android/server/secrecy/zta/sis;Landroid/os/Looper;)V

    iget-object p0, p0, Lcom/android/server/secrecy/zta/sis;->iN:Lcom/android/server/secrecy/sis;

    invoke-virtual {p0}, Lcom/android/server/secrecy/sis;->cgv()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/secrecy/zta/sis;
    .locals 2

    sget-object v0, Lcom/android/server/secrecy/zta/sis;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/secrecy/zta/sis;->sInstance:Lcom/android/server/secrecy/zta/sis;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/secrecy/zta/sis;

    invoke-direct {v1}, Lcom/android/server/secrecy/zta/sis;-><init>()V

    sput-object v1, Lcom/android/server/secrecy/zta/sis;->sInstance:Lcom/android/server/secrecy/zta/sis;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/android/server/secrecy/zta/sis;->sInstance:Lcom/android/server/secrecy/zta/sis;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private rtg(Ljava/util/Map;)V
    .locals 0

    const/4 p0, 0x4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p0, "ctl.restart"

    const-string p1, "adbd"

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "SecrecyService.PolicyManager"

    const-string p1, "restart adbd"

    invoke-static {p0, p1}, Lcom/android/server/secrecy/zta/zta/zta;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private ssp(Ljava/lang/String;Z)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p2, "mac"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/android/server/secrecy/zta/sis;->sis:Lcom/android/server/secrecy/zta/tsu;

    invoke-virtual {p0, p1}, Lcom/android/server/secrecy/zta/tsu;->da(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static typeToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, "Unknown_TYPE"

    return-object p0

    :cond_0
    const-string p0, "ADB_TYPE"

    return-object p0

    :cond_1
    const-string p0, "APP_TYPE"

    return-object p0

    :cond_2
    const-string p0, "LOG_TYPE"

    return-object p0
.end method

.method private you(Ljava/util/Map;Ljava/lang/String;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePolicyStateLocked, changedPolicyState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", unlockType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "Kevin_DEBUG"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v3, "SecrecyService.PolicyManager"

    invoke-static {v3, v1, v2}, Lcom/android/server/secrecy/zta/zta/zta;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v1, Lcom/android/server/secrecy/zta/sis;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x2

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-boolean v5, p0, Lcom/android/server/secrecy/zta/sis;->kN:Z

    if-eq v3, v5, :cond_0

    const-string v5, "SecrecyService.PolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updatePolicyStateLocked, mIsEncryptApp : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/secrecy/zta/sis;->kN:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/secrecy/zta/zta/zta;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/android/server/secrecy/zta/sis;->kN:Z

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/secrecy/zta/sis;->kN:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/android/server/secrecy/zta/sis;->kN:Z

    xor-int/2addr v2, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-boolean v5, p0, Lcom/android/server/secrecy/zta/sis;->lN:Z

    if-eq v3, v5, :cond_1

    const-string v2, "SecrecyService.PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updatePolicyStateLocked, mIsEncryptLog : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/secrecy/zta/sis;->lN:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/server/secrecy/zta/zta/zta;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/android/server/secrecy/zta/sis;->lN:Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/secrecy/zta/sis;->lN:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/android/server/secrecy/zta/sis;->lN:Z

    xor-int/2addr v2, v4

    :cond_1
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-boolean v5, p0, Lcom/android/server/secrecy/zta/sis;->mN:Z

    if-eq p1, v5, :cond_2

    const-string v2, "SecrecyService.PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updatePolicyStateLocked, mIsEncryptAdb : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/secrecy/zta/sis;->mN:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/server/secrecy/zta/zta/zta;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/server/secrecy/zta/sis;->mN:Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-boolean v2, p0, Lcom/android/server/secrecy/zta/sis;->mN:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p1, p0, Lcom/android/server/secrecy/zta/sis;->mN:Z

    xor-int/lit8 v2, p1, 0x1

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePolicyStateLocked, unlockType = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", changedToDecrypted = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SecrecyService.PolicyManager"

    invoke-static {v1, p1}, Lcom/android/server/secrecy/zta/zta/zta;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_3

    invoke-static {}, Lcom/android/server/secrecy/sis;->getInstance()Lcom/android/server/secrecy/sis;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/secrecy/sis;->sis(Ljava/util/Map;)V

    :cond_3
    invoke-direct {p0, p2, v2}, Lcom/android/server/secrecy/zta/sis;->ssp(Ljava/lang/String;Z)V

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public Bd()Ljava/lang/Long;
    .locals 2

    iget-object p0, p0, Lcom/android/server/secrecy/zta/sis;->nN:Lcom/android/server/secrecy/zta/you;

    invoke-virtual {p0}, Lcom/android/server/secrecy/zta/you;->Bd()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public Fd()Lcom/android/server/secrecy/zta/zta;
    .locals 0

    iget-object p0, p0, Lcom/android/server/secrecy/zta/sis;->oN:Lcom/android/server/secrecy/zta/zta;

    return-object p0
.end method

.method public Gd()Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/secrecy/zta/sis;->jN:Lcom/android/server/secrecy/SecrecyService;

    invoke-virtual {v0}, Lcom/android/server/secrecy/SecrecyService;->na()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/secrecy/zta/sis;->nN:Lcom/android/server/secrecy/zta/you;

    invoke-virtual {v0}, Lcom/android/server/secrecy/zta/you;->Dd()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/server/secrecy/zta/sis;->nN:Lcom/android/server/secrecy/zta/you;

    invoke-virtual {p0}, Lcom/android/server/secrecy/zta/you;->Cd()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public Hd()V
    .locals 0

    return-void
.end method

.method public Id()V
    .locals 2

    const-string v0, "SecrecyService.PolicyManager"

    const-string v1, "onCountDownTimerExpired change all types to POLICY_ENCRYPTED"

    invoke-static {v0, v1}, Lcom/android/server/secrecy/zta/zta/zta;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/secrecy/zta/sis;->zta(Ljava/util/Map;Z)V

    const-string v1, "countDown_TimerExpired"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/secrecy/zta/sis;->zta(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public Sc()V
    .locals 0

    return-void
.end method

.method public aa(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/secrecy/zta/sis;->nN:Lcom/android/server/secrecy/zta/you;

    invoke-virtual {v0, p1}, Lcom/android/server/secrecy/zta/you;->aa(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/secrecy/zta/sis;->Wo()V

    return-void
.end method

.method public ba(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/secrecy/zta/sis;->iN:Lcom/android/server/secrecy/sis;

    invoke-virtual {p0}, Lcom/android/server/secrecy/zta/sis;->getImei()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/secrecy/sis;->Y(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/secrecy/zta/sis;->iN:Lcom/android/server/secrecy/sis;

    invoke-virtual {v0, p1}, Lcom/android/server/secrecy/sis;->Z(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/secrecy/zta/sis;->iN:Lcom/android/server/secrecy/sis;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/secrecy/sis;->sis(Ljava/util/Map;)V

    return-void
.end method

.method public ear()V
    .locals 8

    iget-boolean v0, p0, Lcom/android/server/secrecy/zta/sis;->mSystemReady:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/secrecy/zta/sis;->pN:Lcom/android/server/secrecy/zta/rtg;

    invoke-virtual {v0}, Lcom/android/server/secrecy/zta/rtg;->Pd()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/secrecy/zta/sis;->pN:Lcom/android/server/secrecy/zta/rtg;

    invoke-virtual {v1}, Lcom/android/server/secrecy/zta/rtg;->Kd()Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/secrecy/zta/sis;->pN:Lcom/android/server/secrecy/zta/rtg;

    invoke-virtual {v2}, Lcom/android/server/secrecy/zta/rtg;->Nd()Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/secrecy/zta/sis;->pN:Lcom/android/server/secrecy/zta/rtg;

    invoke-virtual {v3}, Lcom/android/server/secrecy/zta/rtg;->Ld()Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSecrecySwitchUpdate, support = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "SecrecyService.PolicyManager"

    invoke-static {v4, v0}, Lcom/android/server/secrecy/zta/zta/zta;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/secrecy/zta/sis;->sis:Lcom/android/server/secrecy/zta/tsu;

    iget-object v4, p0, Lcom/android/server/secrecy/zta/sis;->pN:Lcom/android/server/secrecy/zta/rtg;

    invoke-virtual {v4}, Lcom/android/server/secrecy/zta/rtg;->Od()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/secrecy/zta/sis;->pN:Lcom/android/server/secrecy/zta/rtg;

    invoke-virtual {v6}, Lcom/android/server/secrecy/zta/rtg;->Md()J

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/server/secrecy/zta/tsu;->you(JJ)V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "secrecy_update"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/secrecy/zta/sis;->zta(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/server/secrecy/zta/sis;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSecrecyKey([B)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/secrecy/zta/sis;->iN:Lcom/android/server/secrecy/sis;

    invoke-virtual {p0, p1}, Lcom/android/server/secrecy/sis;->getSecrecyKey([B)Z

    move-result p0

    return p0
.end method

.method public systemReady(Z)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/secrecy/zta/sis;->mSystemReady:Z

    iget-object v0, p0, Lcom/android/server/secrecy/zta/sis;->nN:Lcom/android/server/secrecy/zta/you;

    invoke-virtual {v0}, Lcom/android/server/secrecy/zta/you;->Ed()V

    invoke-direct {p0}, Lcom/android/server/secrecy/zta/sis;->Xo()V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/secrecy/zta/sis;->Sc()V

    const-string p1, "SecrecyService.PolicyManager"

    const-string v0, "systemReady, initUpdateBroadcastReceiver"

    invoke-static {p1, v0}, Lcom/android/server/secrecy/zta/zta/zta;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/android/server/secrecy/zta/sis;->sis:Lcom/android/server/secrecy/zta/tsu;

    iget-object v0, p0, Lcom/android/server/secrecy/zta/sis;->pN:Lcom/android/server/secrecy/zta/rtg;

    invoke-virtual {v0}, Lcom/android/server/secrecy/zta/rtg;->Od()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/server/secrecy/zta/sis;->pN:Lcom/android/server/secrecy/zta/rtg;

    invoke-virtual {p0}, Lcom/android/server/secrecy/zta/rtg;->Md()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/server/secrecy/zta/tsu;->you(JJ)V

    return-void
.end method

.method public tsu(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "SecrecyService.PolicyManager"

    const-string p1, "updatedSecrecyStateMap.isEnpty() onConfigSaveFinished return"

    invoke-static {p0, p1}, Lcom/android/server/secrecy/zta/zta/zta;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/secrecy/zta/sis;->jN:Lcom/android/server/secrecy/SecrecyService;

    invoke-virtual {v0, p1}, Lcom/android/server/secrecy/SecrecyService;->zta(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/android/server/secrecy/zta/sis;->rtg(Ljava/util/Map;)V

    return-void
.end method

.method public v(I)Z
    .locals 2

    sget-object v0, Lcom/android/server/secrecy/zta/sis;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    :try_start_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/android/server/secrecy/zta/sis;->mN:Z

    monitor-exit v0

    return p0

    :cond_1
    iget-boolean p0, p0, Lcom/android/server/secrecy/zta/sis;->kN:Z

    monitor-exit v0

    return p0

    :cond_2
    iget-boolean p0, p0, Lcom/android/server/secrecy/zta/sis;->lN:Z

    monitor-exit v0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public zta(Landroid/content/Context;Lcom/android/server/secrecy/SecrecyService;Landroid/os/Looper;)V
    .locals 0

    iput-object p3, p0, Lcom/android/server/secrecy/zta/sis;->mLooper:Landroid/os/Looper;

    iput-object p1, p0, Lcom/android/server/secrecy/zta/sis;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/secrecy/zta/sis;->jN:Lcom/android/server/secrecy/SecrecyService;

    new-instance p2, Lcom/android/server/secrecy/zta/you;

    invoke-direct {p2}, Lcom/android/server/secrecy/zta/you;-><init>()V

    iput-object p2, p0, Lcom/android/server/secrecy/zta/sis;->nN:Lcom/android/server/secrecy/zta/you;

    new-instance p2, Lcom/android/server/secrecy/zta/zta;

    invoke-direct {p2, p1, p0}, Lcom/android/server/secrecy/zta/zta;-><init>(Landroid/content/Context;Lcom/android/server/secrecy/zta/sis;)V

    iput-object p2, p0, Lcom/android/server/secrecy/zta/sis;->oN:Lcom/android/server/secrecy/zta/zta;

    new-instance p1, Lcom/android/server/secrecy/zta/tsu;

    iget-object p2, p0, Lcom/android/server/secrecy/zta/sis;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, p0}, Lcom/android/server/secrecy/zta/tsu;-><init>(Landroid/content/Context;Lcom/android/server/secrecy/zta/sis;)V

    iput-object p1, p0, Lcom/android/server/secrecy/zta/sis;->sis:Lcom/android/server/secrecy/zta/tsu;

    new-instance p1, Lcom/android/server/secrecy/zta/rtg;

    iget-object p2, p0, Lcom/android/server/secrecy/zta/sis;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, p0}, Lcom/android/server/secrecy/zta/rtg;-><init>(Landroid/content/Context;Lcom/android/server/secrecy/zta/rtg$zta;)V

    iput-object p1, p0, Lcom/android/server/secrecy/zta/sis;->pN:Lcom/android/server/secrecy/zta/rtg;

    return-void
.end method

.method public zta(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 4

    sget-object p1, Lcom/android/server/secrecy/zta/sis;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "secrecy_on="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/secrecy/zta/sis;->jN:Lcom/android/server/secrecy/SecrecyService;

    invoke-virtual {v1}, Lcom/android/server/secrecy/SecrecyService;->na()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "encrypt_all="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/secrecy/zta/sis;->kN:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/secrecy/zta/sis;->lN:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/secrecy/zta/sis;->mN:Z

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "encrypt_app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/secrecy/zta/sis;->kN:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "encrypt_log="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/secrecy/zta/sis;->lN:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "encrypt_adb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/secrecy/zta/sis;->mN:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decrypt_all="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/secrecy/zta/sis;->kN:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/secrecy/zta/sis;->lN:Z

    if-nez v1, :cond_1

    iget-boolean p0, p0, Lcom/android/server/secrecy/zta/sis;->mN:Z

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public zta(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "PolicyManager dump"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/secrecy/zta/sis;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mIsEncryptApp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/secrecy/zta/sis;->kN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mIsEncryptLog = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/secrecy/zta/sis;->lN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mIsEncryptAdb = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/secrecy/zta/sis;->mN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/secrecy/zta/sis;->nN:Lcom/android/server/secrecy/zta/you;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/secrecy/zta/you;->zta(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/secrecy/zta/sis;->iN:Lcom/android/server/secrecy/sis;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/secrecy/sis;->zta(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/secrecy/zta/sis;->v(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/secrecy/zta/sis;->sis:Lcom/android/server/secrecy/zta/tsu;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/secrecy/zta/tsu;->zta(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/secrecy/zta/sis;->pN:Lcom/android/server/secrecy/zta/rtg;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "    "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/secrecy/zta/rtg;->zta(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_0
    const-string p0, "\n"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public zta(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/secrecy/zta/sis;->zta(Ljava/util/Map;Ljava/lang/String;Z)V

    return-void
.end method

.method public zta(Ljava/util/Map;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/secrecy/zta/sis;->you(Ljava/util/Map;Ljava/lang/String;Z)V

    return-void
.end method

.method public zta(Ljava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    const/4 p0, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
