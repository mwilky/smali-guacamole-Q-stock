.class public Lcom/android/server/am/OomAdjusterInjector;
.super Ljava/lang/Object;
.source "OomAdjusterInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OomAdjusterInjector$OomAdjusterConfigUpdater;
    }
.end annotation


# static fields
.field private static final DEBUG_ONEPLUS:Z

.field private static final DEBUG_PROCESS_ADJ_CONTROL:Z

.field public static final OOMADJUSTER_CONFIG_NAME:Ljava/lang/String; = "OomAdjuster"

.field private static final PROCESS_ADJ_CONTROL_ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "OomAdjusterInjector"

.field public static mNumHighUsed:I

.field public static mNumRecentTasks:I

.field public static mStartOptAdj:I

.field private static opProcessAdjControl:Lcom/android/server/am/IOpProcessAdjControl;

.field private static sBServiceLimitWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sDebugOptAdj:Z

.field public static sEnableOptAdj:Z

.field public static sEnableTuneFgService:Z

.field private static sEndIndex:I

.field private static sFgServiceBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sOomAdjusterInjector:Lcom/android/server/am/OomAdjusterInjector;

.field private static sPersistBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sRecentTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sStartIndex:I

.field private static sTunedAdj:I


# instance fields
.field private mConfigHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mOomAdjusterConfigObserver:Lcom/oneplus/config/ConfigObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    sput v0, Lcom/android/server/am/OomAdjusterInjector;->mNumRecentTasks:I

    const/4 v1, 0x2

    sput v1, Lcom/android/server/am/OomAdjusterInjector;->mNumHighUsed:I

    const/16 v1, 0x320

    sput v1, Lcom/android/server/am/OomAdjusterInjector;->mStartOptAdj:I

    const/4 v1, 0x1

    sput v1, Lcom/android/server/am/OomAdjusterInjector;->sStartIndex:I

    sput v1, Lcom/android/server/am/OomAdjusterInjector;->sEndIndex:I

    const/4 v2, 0x0

    const-string/jumbo v3, "persist.sys.debugopt.adj"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/OomAdjusterInjector;->sDebugOptAdj:Z

    const-string/jumbo v3, "persist.sys.enableopt.adj"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/OomAdjusterInjector;->sEnableOptAdj:Z

    const-string/jumbo v3, "persist.sys.enableopt.fgservice"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/OomAdjusterInjector;->sEnableTuneFgService:Z

    const/16 v3, 0x325

    sput v3, Lcom/android/server/am/OomAdjusterInjector;->sTunedAdj:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/android/server/am/OomAdjusterInjector;->sFgServiceBlackList:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/android/server/am/OomAdjusterInjector;->sPersistBlackList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/am/OomAdjusterInjector$1;

    invoke-direct {v3}, Lcom/android/server/am/OomAdjusterInjector$1;-><init>()V

    sput-object v3, Lcom/android/server/am/OomAdjusterInjector;->sBServiceLimitWhiteList:Ljava/util/ArrayList;

    sget-boolean v3, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v3, Lcom/android/server/am/OomAdjusterInjector;->DEBUG_ONEPLUS:Z

    nop

    const-string v3, "OomAdjusterInjector"

    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/OomAdjusterInjector;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/server/am/OomAdjusterInjector;->DEBUG_PROCESS_ADJ_CONTROL:Z

    new-array v0, v1, [I

    const/16 v1, 0xc2

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OomAdjusterInjector;->PROCESS_ADJ_CONTROL_ENABLED:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OomAdjusterInjector;->opProcessAdjControl:Lcom/android/server/am/IOpProcessAdjControl;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/OomAdjusterInjector;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/OomAdjusterInjector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OomAdjusterInjector;->mConfigHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/am/OomAdjusterInjector$OomAdjusterConfigUpdater;

    invoke-direct {v3, p0}, Lcom/android/server/am/OomAdjusterInjector$OomAdjusterConfigUpdater;-><init>(Lcom/android/server/am/OomAdjusterInjector;)V

    const-string v4, "OomAdjuster"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OomAdjusterInjector;->mOomAdjusterConfigObserver:Lcom/oneplus/config/ConfigObserver;

    iget-object v0, p0, Lcom/android/server/am/OomAdjusterInjector;->mOomAdjusterConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "oomadjuster"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OomAdjusterInjector;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/am/OomAdjusterInjector;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/am/OomAdjusterInjector$2;

    iget-object v1, p0, Lcom/android/server/am/OomAdjusterInjector;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OomAdjusterInjector$2;-><init>(Lcom/android/server/am/OomAdjusterInjector;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/OomAdjusterInjector;->mConfigHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/OomAdjusterInjector;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OomAdjusterInjector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static adjustProcessAdj(Ljava/lang/String;I)I
    .locals 2

    sget-boolean v0, Lcom/android/server/am/OomAdjusterInjector;->DEBUG_PROCESS_ADJ_CONTROL:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjustProcessAdj(), packageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", curAdj:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OomAdjusterInjector"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v0, p1

    sget-boolean v1, Lcom/android/server/am/OomAdjusterInjector;->PROCESS_ADJ_CONTROL_ENABLED:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/am/OomAdjusterInjector;->opProcessAdjControl:Lcom/android/server/am/IOpProcessAdjControl;

    if-nez v1, :cond_1

    sget-object v1, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_process_adj_control:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v1}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/IOpProcessAdjControl;

    sput-object v1, Lcom/android/server/am/OomAdjusterInjector;->opProcessAdjControl:Lcom/android/server/am/IOpProcessAdjControl;

    :cond_1
    sget-object v1, Lcom/android/server/am/OomAdjusterInjector;->opProcessAdjControl:Lcom/android/server/am/IOpProcessAdjControl;

    if-eqz v1, :cond_2

    invoke-interface {v1, p0, p1}, Lcom/android/server/am/IOpProcessAdjControl;->forImportant(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/android/server/am/OomAdjusterInjector;->opProcessAdjControl:Lcom/android/server/am/IOpProcessAdjControl;

    invoke-interface {v1, p0, v0}, Lcom/android/server/am/IOpProcessAdjControl;->forForeground(Ljava/lang/String;I)I

    move-result v0

    :cond_2
    return v0
.end method

.method public static getBServiceLimitWhiteList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/server/am/OomAdjusterInjector;->sBServiceLimitWhiteList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "OomAdjusterInjector"

    const-string/jumbo v1, "sBServiceLimitWhiteList is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/am/OomAdjusterInjector;
    .locals 1

    invoke-static {p0}, Lcom/android/server/am/OomAdjusterInjector;->initOomAdjusterInjector(Landroid/content/Context;)V

    sget-object v0, Lcom/android/server/am/OomAdjusterInjector;->sOomAdjusterInjector:Lcom/android/server/am/OomAdjusterInjector;

    return-object v0
.end method

.method public static initOomAdjusterInjector(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/android/server/am/OomAdjusterInjector;->sOomAdjusterInjector:Lcom/android/server/am/OomAdjusterInjector;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/OomAdjusterInjector;

    invoke-direct {v0, p0}, Lcom/android/server/am/OomAdjusterInjector;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/am/OomAdjusterInjector;->sOomAdjusterInjector:Lcom/android/server/am/OomAdjusterInjector;

    :cond_0
    return-void
.end method

.method public static resolveConfig(Lorg/json/JSONArray;)V
    .locals 12

    if-nez p0, :cond_0

    const-string v0, "OomAdjusterInjector"

    const-string v1, "[OnlineConfig] OomAdjusterInjector jsonArray is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    const-class v0, Lcom/android/server/am/OomAdjusterInjector;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_c

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "enable_opt_adj"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "OomAdjusterInjector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "before enablePolicy : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v7, Lcom/android/server/am/OomAdjusterInjector;->sEnableOptAdj:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "value"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/am/OomAdjusterInjector;->sEnableOptAdj:Z

    const-string v5, "OomAdjusterInjector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enablePolicy : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v7, Lcom/android/server/am/OomAdjusterInjector;->sEnableOptAdj:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_1
    const-string/jumbo v5, "opt_adj_num_recent"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "value"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/android/server/am/OomAdjusterInjector;->mNumRecentTasks:I

    const-string v5, "OomAdjusterInjector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NUM_OPT_ADJ_RECENT_TASKS : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/android/server/am/OomAdjusterInjector;->mNumRecentTasks:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_2
    const-string/jumbo v5, "opt_adj_num_high"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "value"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/android/server/am/OomAdjusterInjector;->mNumHighUsed:I

    const-string v5, "OomAdjusterInjector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NUM_OPT_ADJ_HIGH_USED : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/android/server/am/OomAdjusterInjector;->mNumHighUsed:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_3
    const-string/jumbo v5, "opt_adj_start_adj"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "value"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/android/server/am/OomAdjusterInjector;->mStartOptAdj:I

    const-string v5, "OomAdjusterInjector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "StartOptAdj : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/android/server/am/OomAdjusterInjector;->mStartOptAdj:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_4
    const-string/jumbo v5, "opt_adj_tuned_fg_adj"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "value"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/android/server/am/OomAdjusterInjector;->sTunedAdj:I

    const-string v5, "OomAdjusterInjector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TunedFgServiceAdj : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/android/server/am/OomAdjusterInjector;->sTunedAdj:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_5
    const-string/jumbo v5, "opt_adj_fgs_black"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    sget-object v5, Lcom/android/server/am/OomAdjusterInjector;->sFgServiceBlackList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    const-string/jumbo v5, "value"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v6, v1

    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_6

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "OomAdjusterInjector"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is added to fg service opt list"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v8, Lcom/android/server/am/OomAdjusterInjector;->sFgServiceBlackList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    goto/16 :goto_4

    :cond_7
    const-string/jumbo v5, "opt_bservice_limit_white"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Lcom/android/server/am/OomAdjusterInjector;->sBServiceLimitWhiteList:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v6, Lcom/android/server/am/OomAdjusterInjector;->sBServiceLimitWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    const-string/jumbo v6, "value"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    move v7, v1

    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_8

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "OomAdjusterInjector"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " is added to bservice limit white list"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v9, Lcom/android/server/am/OomAdjusterInjector;->sBServiceLimitWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_8
    monitor-exit v5

    goto :goto_4

    :catchall_0
    move-exception v1

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1

    :cond_9
    const-string/jumbo v5, "opt_adj_tune_fgservice"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string/jumbo v5, "value"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/am/OomAdjusterInjector;->sEnableTuneFgService:Z

    const-string v5, "OomAdjusterInjector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EnableTuneFgService : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v7, Lcom/android/server/am/OomAdjusterInjector;->sEnableTuneFgService:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_a
    const-string/jumbo v5, "opt_adj_persist_black"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    sget-object v5, Lcom/android/server/am/OomAdjusterInjector;->sPersistBlackList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    const-string/jumbo v5, "value"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v6, v1

    :goto_3
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_b

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "OomAdjusterInjector"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is added to persist opt list"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v8, Lcom/android/server/am/OomAdjusterInjector;->sPersistBlackList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_b
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_c
    const-string v1, "OomAdjusterInjector"

    const-string v2, "[OnlineConfig] OomAdjusterInjector updated complete"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    goto :goto_5

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolve error message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OomAdjusterInjector"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-void
.end method

.method private static setHighUsedAdj(Lcom/android/server/am/ProcessRecord;)V
    .locals 13

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/am/OpRestartProcessManagerInjector;->doGetHighUsedPackageList(Z)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-string v5, "OomAdjusterInjector"

    if-ge v3, v4, :cond_4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v6, Lcom/android/server/am/OomAdjusterInjector;->sRecentTasks:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    sget v9, Lcom/android/server/am/OomAdjusterInjector;->sEndIndex:I

    if-ge v8, v9, :cond_2

    sget-object v9, Lcom/android/server/am/OomAdjusterInjector;->sRecentTasks:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    sget-object v10, Lcom/android/server/am/OomAdjusterInjector;->sRecentTasks:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v10, v10, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v7, 0x1

    goto :goto_2

    :cond_0
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v7, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "top is null : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/android/server/am/OomAdjusterInjector;->sRecentTasks:Ljava/util/List;

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-virtual {v12}, Landroid/app/ActivityManager$RecentTaskInfo;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-nez v7, :cond_3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    sget v9, Lcom/android/server/am/OomAdjusterInjector;->mNumHighUsed:I

    if-lt v8, v9, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    sget-boolean v3, Lcom/android/server/am/OomAdjusterInjector;->sDebugOptAdj:Z

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "targetHighUsed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v8, v0

    :goto_6
    if-ge v8, v7, :cond_8

    aget-object v9, v6, v8

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    sget v0, Lcom/android/server/am/OomAdjusterInjector;->mStartOptAdj:I

    sget v3, Lcom/android/server/am/OomAdjusterInjector;->mNumRecentTasks:I

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    sget-boolean v0, Lcom/android/server/am/OomAdjusterInjector;->sDebugOptAdj:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set high used "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to ADJ "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_8
    goto :goto_5

    :cond_9
    return-void
.end method

.method public static setOptimizationAdj(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityManagerService;)V
    .locals 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v2, 0x384

    if-lt v1, v2, :cond_4

    sget v1, Lcom/android/server/am/OomAdjusterInjector;->mNumRecentTasks:I

    const/4 v2, 0x2

    add-int/2addr v1, v2

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v4}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v4

    invoke-virtual {p1, v1, v3, v4}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/OomAdjusterInjector;->sRecentTasks:Ljava/util/List;

    sget-object v1, Lcom/android/server/am/OomAdjusterInjector;->sRecentTasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v2, :cond_0

    return-void

    :cond_0
    sget-boolean v1, Lcom/android/server/am/OomAdjusterInjector;->sDebugOptAdj:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mLastMemoryLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/am/ActivityManagerService;->mLastMemoryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OomAdjusterInjector"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v1, p1, Lcom/android/server/am/ActivityManagerService;->mLastMemoryLevel:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-static {p0, p1}, Lcom/android/server/am/OomAdjusterInjector;->setRecentTaskAdj(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityManagerService;)Z

    goto :goto_0

    :cond_2
    iget v1, p1, Lcom/android/server/am/ActivityManagerService;->mLastMemoryLevel:I

    if-nez v1, :cond_3

    invoke-static {p0, p1}, Lcom/android/server/am/OomAdjusterInjector;->setRecentTaskAdj(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityManagerService;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p0}, Lcom/android/server/am/OomAdjusterInjector;->setHighUsedAdj(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/android/server/am/OomAdjusterInjector;->setSecondTask(Lcom/android/server/am/ProcessRecord;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private static setRecentTaskAdj(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityManagerService;)Z
    .locals 10

    sget-object v0, Lcom/android/server/am/OomAdjusterInjector;->sRecentTasks:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v2, Lcom/android/server/am/OomAdjusterInjector;->sStartIndex:I

    if-le v0, v2, :cond_6

    sget v0, Lcom/android/server/am/OomAdjusterInjector;->mNumRecentTasks:I

    add-int/2addr v2, v0

    sget-object v0, Lcom/android/server/am/OomAdjusterInjector;->sRecentTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v2, v0, :cond_0

    sget-object v0, Lcom/android/server/am/OomAdjusterInjector;->sRecentTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/server/am/OomAdjusterInjector;->sStartIndex:I

    sget v2, Lcom/android/server/am/OomAdjusterInjector;->mNumRecentTasks:I

    add-int/2addr v0, v2

    :goto_0
    sput v0, Lcom/android/server/am/OomAdjusterInjector;->sEndIndex:I

    sget v0, Lcom/android/server/am/OomAdjusterInjector;->sStartIndex:I

    :goto_1
    sget v2, Lcom/android/server/am/OomAdjusterInjector;->sEndIndex:I

    if-ge v0, v2, :cond_6

    sget-object v2, Lcom/android/server/am/OomAdjusterInjector;->sRecentTasks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v3, v2, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    const-string v4, "OomAdjusterInjector"

    if-eqz v3, :cond_4

    iget-object v3, v2, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v7, v1

    :goto_2
    if-ge v7, v6, :cond_3

    aget-object v8, v5, v7

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    sget v1, Lcom/android/server/am/OomAdjusterInjector;->mStartOptAdj:I

    sget v5, Lcom/android/server/am/OomAdjusterInjector;->sStartIndex:I

    sub-int v5, v0, v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    iput v1, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    sget-boolean v1, Lcom/android/server/am/OomAdjusterInjector;->sDebugOptAdj:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set Recent task "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to ADJ "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", pid : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v6

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    goto :goto_3

    :cond_4
    sget-boolean v3, Lcom/android/server/am/OomAdjusterInjector;->sDebugOptAdj:Z

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Top activity is null + "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/app/ActivityManager$RecentTaskInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_6
    return v1
.end method

.method private static setSecondTask(Lcom/android/server/am/ProcessRecord;)V
    .locals 8

    sget-object v0, Lcom/android/server/am/OomAdjusterInjector;->sRecentTasks:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/android/server/am/OomAdjusterInjector;->sStartIndex:I

    if-le v0, v1, :cond_4

    sget-object v0, Lcom/android/server/am/OomAdjusterInjector;->sRecentTasks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    const-string v2, "OomAdjusterInjector"

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    sget v3, Lcom/android/server/am/OomAdjusterInjector;->mStartOptAdj:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    sget-boolean v3, Lcom/android/server/am/OomAdjusterInjector;->sDebugOptAdj:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set the second task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to ADJ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    goto :goto_1

    :cond_3
    sget-boolean v1, Lcom/android/server/am/OomAdjusterInjector;->sDebugOptAdj:Z

    if-eqz v1, :cond_4

    const-string v1, "The second task\'s top activity is null"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method

.method public static setTunedAdj(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)V
    .locals 4

    sget-boolean v0, Lcom/android/server/am/OomAdjusterInjector;->sEnableTuneFgService:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-class v0, Lcom/android/server/am/OomAdjusterInjector;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_4

    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->hasForegroundServices()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/am/OomAdjusterInjector;->sFgServiceBlackList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "started-services"

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    sget v1, Lcom/android/server/am/OomAdjusterInjector;->sTunedAdj:I

    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessRecord;->modifyRawOomAdj(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->serviceHighRam:Z

    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessRecord;->setCurProcState(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    sget-boolean v1, Lcom/android/server/am/OomAdjusterInjector;->sDebugOptAdj:Z

    if-eqz v1, :cond_4

    const-string v1, "OomAdjusterInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is set to adj "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " due to in fgs opt list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/android/server/am/OomAdjusterInjector;->sPersistBlackList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    sget v2, Lcom/android/server/am/OomAdjusterInjector;->sTunedAdj:I

    if-ge v1, v2, :cond_4

    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->isPreviousProcess()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v2, 0x2bc

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/server/am/ProcessRecord;->modifyRawOomAdj(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    goto :goto_0

    :cond_2
    const/16 v1, 0x384

    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessRecord;->modifyRawOomAdj(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    goto :goto_0

    :cond_3
    sget v1, Lcom/android/server/am/OomAdjusterInjector;->sTunedAdj:I

    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessRecord;->modifyRawOomAdj(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    :goto_0
    sget-boolean v1, Lcom/android/server/am/OomAdjusterInjector;->sDebugOptAdj:Z

    if-eqz v1, :cond_4

    const-string v1, "OomAdjusterInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is set to adj "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " due to in persist opt list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public static sustainEmpty(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "embryo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public forceUpdateOnlineConfig()V
    .locals 3

    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/am/OomAdjusterInjector;->mContext:Landroid/content/Context;

    const-string v2, "OomAdjuster"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OomAdjusterInjector;->resolveConfig(Lorg/json/JSONArray;)V

    return-void
.end method
