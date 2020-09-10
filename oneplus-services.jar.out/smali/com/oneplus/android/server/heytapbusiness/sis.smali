.class public Lcom/oneplus/android/server/heytapbusiness/sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/android/server/heytapbusiness/IOpHeytapBusinessManagerService;


# static fields
.field private static final DEBUG:Z

.field private static final PARAM_ENC_TARGET_SW_ID:I = 0x18

.field private static final TAG:Ljava/lang/String; = "OpHeytapBusiness"

.field private static final _ea:Ljava/lang/String; = "com.nearme.instant.platform"

.field private static final afa:[Ljava/lang/String;


# instance fields
.field private Zea:I

.field private mBinder:Landroid/os/IBinder;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/heytapbusiness/sis;->DEBUG:Z

    const-string v1, "default"

    const-string v2, "global"

    const-string v3, "china"

    const-string v4, "india"

    const-string v5, "europe"

    const-string v6, "tmo"

    const-string v7, "sprint"

    const-string v8, "verizon"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/android/server/heytapbusiness/sis;->afa:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/oneplus/android/server/heytapbusiness/sis;->Zea:I

    new-instance v0, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService$1;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService$1;-><init>(Lcom/oneplus/android/server/heytapbusiness/sis;)V

    iput-object v0, p0, Lcom/oneplus/android/server/heytapbusiness/sis;->mBinder:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/oneplus/android/server/heytapbusiness/sis;->mContext:Landroid/content/Context;

    return-void
.end method

.method private ts()Ljava/lang/String;
    .locals 2

    iget p0, p0, Lcom/oneplus/android/server/heytapbusiness/sis;->Zea:I

    if-ltz p0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/heytapbusiness/sis;->afa:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    aget-object p0, v0, p0

    goto :goto_0

    :cond_0
    const-string p0, "NULL"

    :goto_0
    return-object p0
.end method

.method private us()Lcom/oneplus/os/IParamService;
    .locals 3

    const-string p0, "OpHeytapBusiness"

    :try_start_0
    const-string v0, "ParamService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "param service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/oneplus/os/IParamService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/os/IParamService;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while getting param service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private vs()V
    .locals 3

    const-string v0, "OpHeytapBusiness"

    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/android/server/heytapbusiness/sis;->us()Lcom/oneplus/os/IParamService;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x18

    invoke-interface {v1, v2}, Lcom/oneplus/os/IParamService;->getParamIntSYNC(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/android/server/heytapbusiness/sis;->Zea:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Custom flag value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/android/server/heytapbusiness/sis;->Zea:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/android/server/heytapbusiness/sis;->ts()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while getting build flag value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic you(Lcom/oneplus/android/server/heytapbusiness/sis;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/heytapbusiness/sis;->ts()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zta(Lcom/oneplus/android/server/heytapbusiness/sis;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/heytapbusiness/sis;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public synthetic gf()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/heytapbusiness/sis;->ts()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oneplus/android/server/heytapbusiness/tsu;->getInstance(Ljava/lang/String;)Lcom/oneplus/android/server/heytapbusiness/tsu;

    return-void
.end method

.method public onStart()V
    .locals 4

    const-string v0, "OpHeytapBusiness"

    invoke-direct {p0}, Lcom/oneplus/android/server/heytapbusiness/sis;->vs()V

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "HeytapBusiness"

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/oneplus/android/server/heytapbusiness/sis;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/oneplus/android/server/heytapbusiness/sis;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/oneplus/android/server/heytapbusiness/sis;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oneplus/android/server/heytapbusiness/sis;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/android/server/heytapbusiness/sis;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/oneplus/android/server/heytapbusiness/zta;

    invoke-direct {v2, p0}, Lcom/oneplus/android/server/heytapbusiness/zta;-><init>(Lcom/oneplus/android/server/heytapbusiness/sis;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :try_start_0
    sget-boolean v1, Lcom/oneplus/android/server/heytapbusiness/sis;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Start heytap business service"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "heytapbusiness"

    iget-object p0, p0, Lcom/oneplus/android/server/heytapbusiness/sis;->mBinder:Landroid/os/IBinder;

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

.method public onSystemReady()V
    .locals 0

    return-void
.end method

.method public runLoginBusiness(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/zta/zta/you;->getInstance()Lcom/oneplus/android/server/heytapbusiness/zta/zta/you;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/heytapbusiness/zta/zta/you;->na(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public runShareBusiness(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 0

    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/zta/you/you;->getInstance()Lcom/oneplus/android/server/heytapbusiness/zta/you/you;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/heytapbusiness/zta/you/you;->na(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public runWeChatPayBusiness(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 0

    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/zta/sis/you;->getInstance()Lcom/oneplus/android/server/heytapbusiness/zta/sis/you;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/heytapbusiness/zta/sis/you;->na(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public shouldRunLoginBusiness(Ljava/lang/String;)Z
    .locals 0

    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/zta/zta/you;->getInstance()Lcom/oneplus/android/server/heytapbusiness/zta/zta/you;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/heytapbusiness/zta/zta/you;->oa(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public shouldRunShareBusiness(Ljava/lang/String;)Z
    .locals 0

    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/zta/you/you;->getInstance()Lcom/oneplus/android/server/heytapbusiness/zta/you/you;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/heytapbusiness/zta/you/you;->oa(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public shouldRunWeChatPayBusiness(Ljava/lang/String;)Z
    .locals 0

    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/zta/sis/you;->getInstance()Lcom/oneplus/android/server/heytapbusiness/zta/sis/you;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/heytapbusiness/zta/sis/you;->oa(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
