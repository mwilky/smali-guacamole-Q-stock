.class public Lcom/android/server/zta/you;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEBUG:Z

.field private static final DEFAULT:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/android/server/zta/you;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "OnePlusEsportApisController"

.field private static final cK:[I


# instance fields
.field private ZJ:Z

.field private _J:Z

.field private aK:Landroid/util/BoostFramework;

.field private bK:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/zta/you;->DEBUG:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/zta/you;->cK:[I

    new-instance v0, Lcom/android/server/zta/zta;

    invoke-direct {v0}, Lcom/android/server/zta/zta;-><init>()V

    sput-object v0, Lcom/android/server/zta/you;->DEFAULT:Landroid/util/Singleton;

    return-void

    :array_0
    .array-data 4
        0x42c14000    # 96.625f
        0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/zta/you;->ZJ:Z

    iput-boolean v0, p0, Lcom/android/server/zta/you;->_J:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/zta/you;->aK:Landroid/util/BoostFramework;

    iput-object v0, p0, Lcom/android/server/zta/you;->bK:Lcom/android/server/net/NetworkPolicyManagerService;

    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/zta/you;->aK:Landroid/util/BoostFramework;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/zta/zta;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/zta/you;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/zta/you;
    .locals 1

    sget-object v0, Lcom/android/server/zta/you;->DEFAULT:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/zta/you;

    return-object v0
.end method


# virtual methods
.method public initNetworkPolicy(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p0, "OnePlusEsportApisController"

    const-string p1, "networkPolicy is NULL!!!"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/server/zta/you;->bK:Lcom/android/server/net/NetworkPolicyManagerService;

    return-void
.end method

.method public q(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/zta/you;->ZJ:Z

    iget-object p0, p0, Lcom/android/server/zta/you;->bK:Lcom/android/server/net/NetworkPolicyManagerService;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackgroundByEsport(Z)V

    :cond_0
    return-void
.end method

.method public setKeepAlive(Z)Z
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/zta/you;->_J:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p1, :cond_5

    const/4 v0, -0x1

    const-string v3, "OnePlusEsportApisController"

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/zta/you;->aK:Landroid/util/BoostFramework;

    sget-object v4, Lcom/android/server/zta/you;->cK:[I

    invoke-virtual {p1, v2, v4}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    move-result p1

    if-eq p1, v0, :cond_1

    sget-boolean p1, Lcom/android/server/zta/you;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "success acquire KEEP_ALIVE"

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean v1, p0, Lcom/android/server/zta/you;->_J:Z

    goto :goto_1

    :cond_1
    const-string p0, "KEEP_ALIVE failed!"

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/server/zta/you;->aK:Landroid/util/BoostFramework;

    invoke-virtual {p1}, Landroid/util/BoostFramework;->perfLockRelease()I

    move-result p1

    if-ne p1, v0, :cond_4

    sget-boolean p1, Lcom/android/server/zta/you;->DEBUG:Z

    if-eqz p1, :cond_3

    const-string p1, "success release KEEP_ALIVE"

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput-boolean v2, p0, Lcom/android/server/zta/you;->_J:Z

    goto :goto_1

    :cond_4
    const-string p0, "KEEP_ALIVE release failed"

    :goto_0
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    :goto_1
    move v2, v1

    :goto_2
    return v2
.end method

.method public setRestrictBackground(Z)V
    .locals 2

    sget-boolean v0, Lcom/android/server/zta/you;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRestrictBackground: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mInEs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/zta/you;->ZJ:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusEsportApisController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/zta/you;->ZJ:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/zta/you;->q(Z)V

    return-void
.end method
