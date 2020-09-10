.class public Lcom/oneplus/houston/apkserver/bridge/HoustonServer;
.super Lcom/oneplus/houston/common/client/HoustonServiceNative;
.source "HoustonServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/houston/apkserver/bridge/HoustonServer$HoustonGlobalConfigUpdater;,
        Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;,
        Lcom/oneplus/houston/apkserver/bridge/HoustonServer$FrontActivityInfo;,
        Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ComponentTime;
    }
.end annotation


# static fields
.field public static final ENABLE_LAUNCHTIME_COLLECTOR:I = 0x1

.field private static final HOUSTON_GLOBAL_CONFIG:Ljava/lang/String; = "HoustonGlobalConfig"

.field private static final MSG_INIT_ONLINECONFIG:I = 0x1

.field private static final MSG_MARK_ACTIVITY_DISPLAYED:I = 0x5

.field private static final MSG_MARK_PROCESS_STARTED:I = 0x3

.field private static final MSG_REMOVE_PROCESS:I = 0x6

.field private static final MSG_THREEE_HOURS_TIMEOUT:I = 0x0

.field private static final MSG_UPDATE_FRONT_PKG:I = 0x4

.field private static final MSG_UPDATE_SCREEN_STATE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HoustonServer"

.field public static mGlobalConfig:I

.field private static mInternalForSaveMdm:I

.field private static sInstance:Lcom/oneplus/houston/apkserver/bridge/HoustonServer;


# instance fields
.field private final mClient:Lcom/oneplus/houston/apkserver/bridge/HoustonClient;

.field private final mContext:Landroid/content/Context;

.field private final mLooper:Landroid/os/Looper;

.field private final mMainHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;

.field private volatile timeReached:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->sInstance:Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    const v0, 0xa4cb80

    sput v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mInternalForSaveMdm:I

    const/4 v0, 0x0

    sput v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mGlobalConfig:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/oneplus/houston/common/client/HoustonServiceNative;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->timeReached:Z

    iput-object p1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HoustonServer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mLooper:Landroid/os/Looper;

    new-instance v1, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;

    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;-><init>(Lcom/oneplus/houston/apkserver/bridge/HoustonServer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mMainHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;

    new-instance v1, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;

    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p1, v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mClient:Lcom/oneplus/houston/apkserver/bridge/HoustonClient;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/houston/apkserver/bridge/HoustonServer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->timeReached:Z

    return v0
.end method

.method static synthetic access$002(Lcom/oneplus/houston/apkserver/bridge/HoustonServer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->timeReached:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/houston/apkserver/bridge/HoustonServer;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/houston/apkserver/bridge/HoustonServer;)Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mMainHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/houston/apkserver/bridge/HoustonServer;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->resetCollectorTimer()V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/houston/apkserver/bridge/HoustonServer;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->parseConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method public static getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonServer;
    .locals 1

    sget-object v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->sInstance:Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    return-object v0
.end method

.method private initDefaultConfig()V
    .locals 1

    sget v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mGlobalConfig:I

    or-int/lit8 v0, v0, 0x1

    sput v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mGlobalConfig:I

    return-void
.end method

.method private parseConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HoustonGlobalConfigUpdater jsonArray="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HoustonServer"

    invoke-static {v1, v0}, Lcom/oneplus/houston/common/client/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_6

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "module_enable_launchtime_collector"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "value"

    if-eqz v5, :cond_2

    :try_start_1
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    sget v5, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mGlobalConfig:I

    const/4 v6, 0x1

    or-int/2addr v5, v6

    sput v5, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mGlobalConfig:I

    iput-boolean v6, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->timeReached:Z

    goto :goto_1

    :cond_1
    sget v5, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mGlobalConfig:I

    and-int/lit8 v5, v5, -0x2

    sput v5, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mGlobalConfig:I

    goto :goto_1

    :cond_2
    const-string v5, "threshold_for_cold_launch_time"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    nop

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sput v5, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mColdLaunchThreshold:I

    goto :goto_1

    :cond_3
    const-string v5, "threshold_for_warm_launch_time"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    nop

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sput v5, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mWarmLaunchThreshold:I

    goto :goto_1

    :cond_4
    const-string v5, "threshold_for_save_mdm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sput v5, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mInternalForSaveMdm:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public static publish(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->sInstance:Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    invoke-direct {v0, p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->sInstance:Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    :cond_0
    sget-object v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->sInstance:Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    const-string v1, "houston_server"

    invoke-static {v1, v0}, Lcom/oneplus/houston/common/client/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method private resetCollectorTimer()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->timeReached:Z

    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mMainHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;

    sget v2, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mInternalForSaveMdm:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private sendMessage(ILjava/lang/Object;)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mMainHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;

    invoke-virtual {v1, v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump Houston Info from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    array-length v0, p3

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    aget-object v1, p3, v0

    const-string v2, "--fps"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    aget-object v0, p3, v0

    const-string v1, "--ai_config_controller"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLogLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oneplus/houston/common/client/utils/Logger;->mLogLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mGlobalConfig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mGlobalConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mColdLaunchThreshold:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mColdLaunchThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mWarmLaunchThreshold:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mWarmLaunchThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mInternalForSaveMdm:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mInternalForSaveMdm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mClient:Lcom/oneplus/houston/apkserver/bridge/HoustonClient;

    invoke-virtual {v0, p1, p3}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public isBinderAlive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mClient:Lcom/oneplus/houston/apkserver/bridge/HoustonClient;

    invoke-virtual {v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->isConnected()Z

    move-result v0

    return v0
.end method

.method public linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .locals 0

    return-void
.end method

.method public onResult(Lcom/oneplus/houston/common/client/Event;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public preBindApplication(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;II)V
    .locals 9

    new-instance v8, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ComponentTime;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ComponentTime;-><init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    const/4 v0, 0x3

    invoke-direct {p0, v0, v8}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public remove(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mMainHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public reportActivityDisplayed(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 10

    sget v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mGlobalConfig:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x5

    new-instance v9, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ComponentTime;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v1, v9

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move v7, p3

    move v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ComponentTime;-><init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    invoke-direct {p0, v0, v9}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->sendMessage(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public scheduleProcessEvent(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mClient:Lcom/oneplus/houston/apkserver/bridge/HoustonClient;

    invoke-virtual {v0, p1}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->scheduleProcessEvent(I)V

    return-void
.end method

.method public scheduleProcessEvent(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mClient:Lcom/oneplus/houston/apkserver/bridge/HoustonClient;

    invoke-virtual {v0, p1}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->scheduleProcessEvent(Landroid/content/Intent;)V

    return-void
.end method

.method public scheduleProcessEvent(Lcom/oneplus/houston/common/client/Event;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scheduleProcessEvent event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oneplus/houston/common/client/Event;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HoustonServer"

    invoke-static {v1, v0}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mClient:Lcom/oneplus/houston/apkserver/bridge/HoustonClient;

    invoke-virtual {v0, p1}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->scheduleProcessEvent(Lcom/oneplus/houston/common/client/Event;)V

    return-void
.end method

.method public sendCommand(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public sendCommand(Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public sendCommand(Lcom/oneplus/houston/common/client/Event;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public setFront(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    new-instance v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$FrontActivityInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$FrontActivityInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public systemReady()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mClient:Lcom/oneplus/houston/apkserver/bridge/HoustonClient;

    invoke-virtual {v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->systemReady()V

    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mMainHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;->sendMessage(Landroid/os/Message;)Z

    invoke-direct {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->resetCollectorTimer()V

    return-void
.end method

.method public unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/oneplus/houston/common/client/HoustonServiceNative;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result v0

    return v0
.end method

.method public updateScreenState(Z)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method
