.class public Lcom/oneplus/android/server/heytapbusiness/you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/android/server/heytapbusiness/IOpHeytapBusinessManagerService;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "OpHeytapBusiness"


# instance fields
.field private mBinder:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/heytapbusiness/you;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService$1;

    invoke-direct {p1, p0}, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService$1;-><init>(Lcom/oneplus/android/server/heytapbusiness/you;)V

    iput-object p1, p0, Lcom/oneplus/android/server/heytapbusiness/you;->mBinder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public onSystemReady()V
    .locals 2

    const-string v0, "OpHeytapBusiness"

    :try_start_0
    sget-boolean v1, Lcom/oneplus/android/server/heytapbusiness/you;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Start heytap business service"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "heytapbusiness"

    iget-object p0, p0, Lcom/oneplus/android/server/heytapbusiness/you;->mBinder:Landroid/os/IBinder;

    invoke-static {v1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v1, "Failed to start heytap business service!"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public runLoginBusiness(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/zta/zta/you;->getInstance()Lcom/oneplus/android/server/heytapbusiness/zta/zta/you;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/heytapbusiness/zta/zta/you;->ka(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public runShareBusiness(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 0

    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/zta/you/you;->getInstance()Lcom/oneplus/android/server/heytapbusiness/zta/you/you;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/heytapbusiness/zta/you/you;->ka(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public runWeChatPayBusiness(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 0

    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/zta/sis/you;->getInstance()Lcom/oneplus/android/server/heytapbusiness/zta/sis/you;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/heytapbusiness/zta/sis/you;->ka(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public shouldRunLoginBusiness(Ljava/lang/String;)Z
    .locals 0

    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/zta/zta/you;->getInstance()Lcom/oneplus/android/server/heytapbusiness/zta/zta/you;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/heytapbusiness/zta/zta/you;->la(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public shouldRunShareBusiness(Ljava/lang/String;)Z
    .locals 0

    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/zta/you/you;->getInstance()Lcom/oneplus/android/server/heytapbusiness/zta/you/you;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/heytapbusiness/zta/you/you;->la(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public shouldRunWeChatPayBusiness(Ljava/lang/String;)Z
    .locals 0

    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/zta/sis/you;->getInstance()Lcom/oneplus/android/server/heytapbusiness/zta/sis/you;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/heytapbusiness/zta/sis/you;->la(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
