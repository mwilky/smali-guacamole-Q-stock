.class public Lcom/android/server/am/ColdStartInjector;
.super Ljava/lang/Object;
.source "ColdStartInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ColdStartInjector$SingleData;,
        Lcom/android/server/am/ColdStartInjector$ColdStartConfigUpdater;
    }
.end annotation


# static fields
.field private static final COLDSTART_ADJ_COUNT:Ljava/lang/String; = "cold_adj_count"

.field public static final COLDSTART_CONFIG_NAME:Ljava/lang/String; = "ColdStart"

.field private static final COLDSTART_COUNT:Ljava/lang/String; = "cold_count"

.field private static final COLDSTART_MDM_APPID:Ljava/lang/String; = "NYNCG4I0TI"

.field private static final COLDSTART_MDM_EVENT:Ljava/lang/String; = "cold_start"

.field private static final DEBUG_COLDSTART:Z

.field private static final HOTSTART_COUNT:Ljava/lang/String; = "hot_count"

.field private static final OOM_ADJ:[I

.field private static final TAG:Ljava/lang/String; = "ColdStart"

.field private static sEnable:Z

.field private static sEnableMdm:Z

.field private static sInstance:Lcom/android/server/am/ColdStartInjector;

.field private static sReportInterval:J


# instance fields
.field private mConfigHandler:Landroid/os/Handler;

.field private mConfigHandlerThread:Landroid/os/HandlerThread;

.field private mConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mContext:Landroid/content/Context;

.field private mCrashKillProcess:Ljava/lang/String;

.field private mDiedProcessMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLastReportTime:J

.field private mMdmRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ColdStartInjector$SingleData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "persist.sys.coldstart.debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ColdStartInjector;->DEBUG_COLDSTART:Z

    sget-boolean v0, Lcom/android/server/am/ColdStartInjector;->DEBUG_COLDSTART:Z

    if-eqz v0, :cond_0

    const-wide/32 v0, 0xea60

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x5265c00

    :goto_0
    sput-wide v0, Lcom/android/server/am/ColdStartInjector;->sReportInterval:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/ColdStartInjector;->sEnable:Z

    sput-boolean v0, Lcom/android/server/am/ColdStartInjector;->sEnableMdm:Z

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/am/ColdStartInjector;->OOM_ADJ:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x64
        0xc8
        0xfa
        0x12c
        0x190
        0x1f4
        0x258
        0x2bc
        0x320
        0x384
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/ColdStartInjector;->mLastReportTime:J

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/ColdStartInjector;->mCrashKillProcess:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/ColdStartInjector;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ColdStartInjector;->mDiedProcessMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ColdStartInjector;->mExtraData:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ColdStartInjector;->mMdmRecord:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/am/ColdStartInjector;->fillAllMdmData()V

    iget-object v0, p0, Lcom/android/server/am/ColdStartInjector;->mHandlerThread:Landroid/os/HandlerThread;

    const/16 v1, 0xa

    const-string v2, "ColdStart"

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/am/ColdStartInjector;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/am/ColdStartInjector;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/am/ColdStartInjector;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/ColdStartInjector;->mHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ColdStartInjector;->mConfigHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/am/ColdStartInjector;->mConfigHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/am/ColdStartInjector;->mConfigHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/ColdStartInjector;->mConfigHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/ColdStartInjector;->mConfigHandler:Landroid/os/Handler;

    :cond_1
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/ColdStartInjector;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/ColdStartInjector;->mConfigHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/ColdStartInjector$ColdStartConfigUpdater;

    invoke-direct {v4, p0}, Lcom/android/server/am/ColdStartInjector$ColdStartConfigUpdater;-><init>(Lcom/android/server/am/ColdStartInjector;)V

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/ColdStartInjector;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    iget-object v0, p0, Lcom/android/server/am/ColdStartInjector;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ColdStartInjector;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/ColdStartInjector;->makeAdjString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/ColdStartInjector;->DEBUG_COLDSTART:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/am/ColdStartInjector;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ColdStartInjector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/ColdStartInjector;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ColdStartInjector;->mMdmRecord:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lorg/json/JSONArray;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/am/ColdStartInjector;->resolveConfig(Lorg/json/JSONArray;)V

    return-void
.end method

.method private addMdmData(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ColdStartInjector;->mMdmRecord:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ColdStartInjector$SingleData;

    iget v2, v1, Lcom/android/server/am/ColdStartInjector$SingleData;->mAdjRange:I

    if-gt p1, v2, :cond_1

    sget-boolean v0, Lcom/android/server/am/ColdStartInjector;->DEBUG_COLDSTART:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addMdmData, orig adj : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is put to range "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/am/ColdStartInjector$SingleData;->mAdjRange:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ColdStart"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/am/ColdStartInjector$SingleData;->addCount()V

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private checkNeedSubmit()V
    .locals 6

    iget-wide v0, p0, Lcom/android/server/am/ColdStartInjector;->mLastReportTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ColdStartInjector;->mLastReportTime:J

    sget-boolean v0, Lcom/android/server/am/ColdStartInjector;->DEBUG_COLDSTART:Z

    if-eqz v0, :cond_0

    const-string v0, "ColdStart"

    const-string v1, "Ignore the first report mdm after booting"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/ColdStartInjector;->mLastReportTime:J

    sub-long v2, v0, v2

    sget-wide v4, Lcom/android/server/am/ColdStartInjector;->sReportInterval:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    iput-wide v0, p0, Lcom/android/server/am/ColdStartInjector;->mLastReportTime:J

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/am/ColdStartInjector;->mMdmRecord:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ColdStartInjector$SingleData;

    iget v5, v4, Lcom/android/server/am/ColdStartInjector$SingleData;->mCount:I

    add-int/2addr v2, v5

    goto :goto_0

    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ColdStartInjector;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/am/ColdStartInjector$1;

    invoke-direct {v5, p0, v3}, Lcom/android/server/am/ColdStartInjector$1;-><init>(Lcom/android/server/am/ColdStartInjector;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method private fillAllMdmData()V
    .locals 6

    sget-object v0, Lcom/android/server/am/ColdStartInjector;->OOM_ADJ:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    iget-object v4, p0, Lcom/android/server/am/ColdStartInjector;->mMdmRecord:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/am/ColdStartInjector$SingleData;

    invoke-direct {v5, v3}, Lcom/android/server/am/ColdStartInjector$SingleData;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/am/ColdStartInjector;
    .locals 1

    sget-object v0, Lcom/android/server/am/ColdStartInjector;->sInstance:Lcom/android/server/am/ColdStartInjector;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/ColdStartInjector;

    invoke-direct {v0, p0}, Lcom/android/server/am/ColdStartInjector;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/am/ColdStartInjector;->sInstance:Lcom/android/server/am/ColdStartInjector;

    :cond_0
    sget-object v0, Lcom/android/server/am/ColdStartInjector;->sInstance:Lcom/android/server/am/ColdStartInjector;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/android/server/am/ColdStartInjector;->sInstance:Lcom/android/server/am/ColdStartInjector;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/ColdStartInjector;

    invoke-direct {v0, p0}, Lcom/android/server/am/ColdStartInjector;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/am/ColdStartInjector;->sInstance:Lcom/android/server/am/ColdStartInjector;

    :cond_0
    return-void
.end method

.method private makeAdjString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/ColdStartInjector;->mMdmRecord:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/server/am/ColdStartInjector;->mMdmRecord:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ColdStartInjector$SingleData;

    invoke-virtual {v3}, Lcom/android/server/am/ColdStartInjector$SingleData;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, -0x1

    if-eq v2, v4, :cond_0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static resolveConfig(Lorg/json/JSONArray;)V
    .locals 7

    const-string v0, "ColdStart"

    if-nez p0, :cond_0

    const-string v1, "[OnlineConfig] ColdStartInjector jsonArray is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "enable_cold_start"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v5, "value"

    if-eqz v4, :cond_1

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "before sEnable : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/android/server/am/ColdStartInjector;->sEnable:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/ColdStartInjector;->sEnable:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sEnable : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/am/ColdStartInjector;->sEnable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v4, "enable_cold_start_mdm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "before sEnableMdm : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/android/server/am/ColdStartInjector;->sEnableMdm:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/ColdStartInjector;->sEnableMdm:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "after sEnableMdm : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/am/ColdStartInjector;->sEnableMdm:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v4, "cold_start_mdm_interval"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    sput-wide v4, Lcom/android/server/am/ColdStartInjector;->sReportInterval:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sReportInterval : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v5, Lcom/android/server/am/ColdStartInjector;->sReportInterval:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    const-string v1, "[OnlineConfig] ColdStartInjector updated complete"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] resolve error message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method


# virtual methods
.method public addDiedRecord(Lcom/android/server/am/ProcessRecord;)V
    .locals 4

    sget-boolean v0, Lcom/android/server/am/ColdStartInjector;->sEnable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v1, 0x64

    const-string v2, "ColdStart"

    if-ge v0, v1, :cond_2

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-ltz v0, :cond_2

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    sget-boolean v0, Lcom/android/server/am/ColdStartInjector;->DEBUG_COLDSTART:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignore TOP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ColdStartInjector;->mCrashKillProcess:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v1, 0xc7

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ColdStartInjector;->mDiedProcessMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Lcom/android/server/am/ColdStartInjector;->DEBUG_COLDSTART:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addDiedRecord "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adj : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/am/ColdStartInjector;->mCrashKillProcess:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/android/server/am/ColdStartInjector;->DEBUG_COLDSTART:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reset mCrashKillProcess : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ColdStartInjector;->mCrashKillProcess:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/ColdStartInjector;->mCrashKillProcess:Ljava/lang/String;

    :cond_5
    return-void
.end method

.method public checkColdStart(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/ColdStartInjector;->sEnable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ColdStartInjector;->mDiedProcessMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/am/ColdStartInjector;->mDiedProcessMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-boolean v1, Lcom/android/server/am/ColdStartInjector;->DEBUG_COLDSTART:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is cold start, previous adj is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ColdStart"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ColdStartInjector;->mDiedProcessMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v1, Lcom/android/server/am/ColdStartInjector;->sEnableMdm:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x384

    if-le v0, v1, :cond_2

    const/16 v0, 0x384

    goto :goto_0

    :cond_2
    const/16 v2, 0x320

    if-le v0, v2, :cond_3

    if-ge v0, v1, :cond_3

    const/16 v0, 0x320

    :cond_3
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/am/ColdStartInjector;->addMdmData(I)V

    :cond_4
    invoke-direct {p0}, Lcom/android/server/am/ColdStartInjector;->checkNeedSubmit()V

    :cond_5
    return-void
.end method

.method public forceUpdateOnlineConfig()V
    .locals 3

    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/am/ColdStartInjector;->mContext:Landroid/content/Context;

    const-string v2, "ColdStart"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/ColdStartInjector;->resolveConfig(Lorg/json/JSONArray;)V

    return-void
.end method

.method public setCrashKillProc(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/ColdStartInjector;->sEnable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/server/am/ColdStartInjector;->mCrashKillProcess:Ljava/lang/String;

    return-void
.end method
