.class public Lcom/android/server/am/oif;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/am/IEmbryoManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/oif$zta;,
        Lcom/android/server/am/oif$you;,
        Lcom/android/server/am/oif$sis;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DEBUG_ONEPLUS:Z

.field private static final ENABLE:Z

.field private static Ei:Z = false

.field public static Fi:Ljava/lang/String; = null

.field private static Gi:Lcom/android/server/am/oif$you; = null

.field private static Hi:Lcom/android/server/am/dma; = null

.field private static final Ii:J = 0x1b77400L

.field private static final TAG:Ljava/lang/String; = "EmbryoManager"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private Ai:J

.field private Bi:Lcom/oneplus/config/ConfigObserver;

.field private final Ci:Landroid/content/BroadcastReceiver;

.field private final Di:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mPm:Landroid/os/PowerManager;

.field private mShuttingDown:Z

.field private final zi:Lcom/android/server/am/B;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.sys.embryo"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/oif;->ENABLE:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/oif;->Ei:Z

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/oif;->DEBUG_ONEPLUS:Z

    const-string v0, "EmbryoConfig"

    sput-object v0, Lcom/android/server/am/oif;->Fi:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/oif;->mShuttingDown:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/am/oif;->Ai:J

    new-instance v0, Lcom/android/server/am/ywr;

    invoke-direct {v0, p0}, Lcom/android/server/am/ywr;-><init>(Lcom/android/server/am/oif;)V

    iput-object v0, p0, Lcom/android/server/am/oif;->Ci:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/am/qbh;

    invoke-direct {v0, p0}, Lcom/android/server/am/qbh;-><init>(Lcom/android/server/am/oif;)V

    iput-object v0, p0, Lcom/android/server/am/oif;->Di:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/android/server/am/B;->getInstance()Lcom/android/server/am/B;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/oif;->zi:Lcom/android/server/am/B;

    const-string p0, "EmbryoManager"

    const-string v0, "create Embryo Manager"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ywr;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/oif;-><init>()V

    return-void
.end method

.method static synthetic access$500()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/server/am/oif;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/oif;->ENABLE:Z

    return v0
.end method

.method static synthetic access$800()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/oif;->Ei:Z

    return v0
.end method

.method private cno(Landroid/content/Context;)V
    .locals 2

    sput-object p1, Lcom/android/server/am/oif;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/android/server/am/oif;->mContext:Landroid/content/Context;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/server/am/oif;->mPm:Landroid/os/PowerManager;

    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/am/oif;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/oif;->Ci:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/am/oif;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/am/oif;->Di:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/IEmbryoManager;
    .locals 2

    sget-object v0, Lcom/android/server/am/oif;->Gi:Lcom/android/server/am/oif$you;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/server/am/oif$you;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/oif$you;-><init>(Lcom/android/server/am/ywr;)V

    sput-object v0, Lcom/android/server/am/oif;->Gi:Lcom/android/server/am/oif$you;

    sget-object v0, Lcom/android/server/am/oif;->Gi:Lcom/android/server/am/oif$you;

    return-object v0
.end method

.method private static final ob(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "activity"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "broadcast"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic sis(Lcom/android/server/am/oif;)Lcom/android/server/am/B;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/oif;->zi:Lcom/android/server/am/B;

    return-object p0
.end method

.method static synthetic tsu(Lcom/android/server/am/oif;)Landroid/content/BroadcastReceiver;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/oif;->Di:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic you(Lcom/android/server/am/oif;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/oif;->Ai:J

    return-wide v0
.end method

.method static synthetic zta(Lcom/android/server/am/oif;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/oif;->Ai:J

    return-wide p1
.end method

.method static synthetic zta(Lcom/android/server/am/oif;)Landroid/os/PowerManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/oif;->mPm:Landroid/os/PowerManager;

    return-object p0
.end method

.method public static zta(Lcom/android/server/am/IEmbryoManager;Lorg/json/JSONArray;)V
    .locals 14

    const-string v0, "persist.sys.embryo.rename"

    const-string v1, "persist.sys.embryo.optheme"

    const-string v2, "persist.sys.embryo.inflate"

    const-string v3, "EmbryoManager"

    if-nez p1, :cond_0

    const-string p0, "[OnlineConfig] embryo jsonArray is null"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v4, 0x0

    move v5, v4

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_d

    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "name"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "embryo_blacklist"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "value"

    if-eqz v8, :cond_2

    :try_start_1
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    move v8, v4

    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_1

    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_c

    invoke-interface {p0, v7}, Lcom/android/server/am/IEmbryoManager;->setBlackList(Ljava/util/List;)V

    goto/16 :goto_6

    :cond_2
    const-string v8, "embryo_enable"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v10, 0x1

    if-eqz v8, :cond_3

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v7, "persist.sys.embryo"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eq v6, v7, :cond_c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[OnlineConfig]set embryo enable "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_3
    const-string v8, "embryo_inflate"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v11, "1"

    const-string v12, "0"

    if-eqz v8, :cond_5

    :try_start_2
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v2, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eq v6, v7, :cond_c

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    move-object v11, v12

    :goto_3
    invoke-static {v2, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[OnlineConfig]set embryo inflate "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_5
    const-string v8, "embryo_support_optheme"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v1, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eq v6, v7, :cond_c

    if-eqz v6, :cond_6

    goto :goto_4

    :cond_6
    move-object v11, v12

    :goto_4
    invoke-static {v1, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[OnlineConfig]set embryo optheme "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_7
    const-string v8, "embryo_rename"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v0, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eq v6, v7, :cond_c

    if-eqz v6, :cond_8

    goto :goto_5

    :cond_8
    move-object v11, v12

    :goto_5
    invoke-static {v0, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[OnlineConfig]set embryo rename "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    :cond_9
    const-string v8, "embryo_limit_count"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v10, "[OnlineConfig]set embryo limit "

    const-string v11, "persist.sys.embryo.limit"

    if-eqz v8, :cond_a

    :try_start_3
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x20

    invoke-static {v11, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-eq v6, v7, :cond_c

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    :cond_a
    const-string v8, "embryo_limit_count_6G"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v7

    const-wide/32 v12, 0x40000000

    div-long/2addr v7, v12

    const-wide/16 v12, 0x6

    cmp-long v7, v7, v12

    if-lez v7, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v11, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-eq v6, v7, :cond_c

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    :cond_c
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_d
    const-string p0, "[OnlineConfig] Embryo updated complete"

    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_7

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolve error message:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    return-void
.end method


# virtual methods
.method public activityTransition(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    if-eqz p2, :cond_2

    iget-object p1, p2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/am/oif;->Hi:Lcom/android/server/am/dma;

    invoke-virtual {v0, p1}, Lcom/android/server/am/dma;->sis(Landroid/content/pm/ApplicationInfo;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/oif;->zi:Lcom/android/server/am/B;

    iget-object p1, p2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    iget-object p2, p2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/am/B;->zta(Ljava/lang/String;ZI)V

    :cond_2
    :goto_0
    return-void
.end method

.method public attach(Landroid/app/IApplicationThread;I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/oif;->zi:Lcom/android/server/am/B;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/B;->attach(Landroid/app/IApplicationThread;I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Embryo attached, pid="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EmbryoManager"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/am/oif;->zi:Lcom/android/server/am/B;

    invoke-virtual {p0}, Lcom/android/server/am/B;->trim()V

    const/4 p0, 0x1

    return p0
.end method

.method public checkBackgroundLevel(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ltz v0, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v6, :cond_0

    iget v6, v5, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v7, 0x11

    if-lt v6, v7, :cond_0

    add-int/lit8 v4, v4, 0x1

    const/16 v6, 0xa

    if-lt v4, v6, :cond_0

    return v1

    :cond_0
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v6, :cond_1

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v6, 0x8

    if-lt v5, v6, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    const-string p1, "EmbryoManager"

    const-string v0, "clean embryo process"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/am/oif;->zi:Lcom/android/server/am/B;

    invoke-virtual {p0}, Lcom/android/server/am/B;->uc()V

    :cond_3
    return v2
.end method

.method public cleanup()V
    .locals 2

    sget-object v0, Lcom/android/server/am/oif;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/oif;->Ci:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object p0, p0, Lcom/android/server/am/oif;->zi:Lcom/android/server/am/B;

    invoke-virtual {p0}, Lcom/android/server/am/B;->cleanup()V

    const/4 p0, 0x0

    sput-object p0, Lcom/android/server/am/oif;->mContext:Landroid/content/Context;

    return-void
.end method

.method public dumpsys(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p2, "Enabled"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/oif;->zi:Lcom/android/server/am/B;

    invoke-virtual {p0, p1}, Lcom/android/server/am/B;->ssp(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "EmbryoManager"

    const-string p2, "error while dumpsys "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public findEmbryoLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .locals 0

    sget-object p0, Lcom/android/server/am/oif;->Hi:Lcom/android/server/am/dma;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/dma;->findEmbryoLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public forceUpdateOnlineConfig()V
    .locals 3

    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    sget-object v1, Lcom/android/server/am/oif;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/am/oif;->Fi:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/oif;->resolveConfig(Lorg/json/JSONArray;)V

    return-void
.end method

.method public goingToSleep()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/oif;->zi:Lcom/android/server/am/B;

    invoke-virtual {p0}, Lcom/android/server/am/B;->goingToSleep()V

    return-void
.end method

.method public initInstance(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/internal/os/ProcessCpuTracker;)V
    .locals 8

    const-string v0, "EmbryoManager"

    const-string v1, "Embryo Manager initInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/am/dma;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/dma;-><init>(Lcom/android/server/am/oif;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/internal/os/ProcessCpuTracker;)V

    sput-object v0, Lcom/android/server/am/oif;->Hi:Lcom/android/server/am/dma;

    sget-object p1, Lcom/android/server/am/oif;->Hi:Lcom/android/server/am/dma;

    invoke-virtual {p1}, Lcom/android/server/am/dma;->Ia()Z

    move-result p1

    sput-boolean p1, Lcom/android/server/am/oif;->Ei:Z

    iget-object p0, p0, Lcom/android/server/am/oif;->zi:Lcom/android/server/am/B;

    sget-object p1, Lcom/android/server/am/oif;->Hi:Lcom/android/server/am/dma;

    invoke-virtual {p0, p1}, Lcom/android/server/am/B;->zta(Lcom/android/server/am/dma;)V

    return-void
.end method

.method initOnlineConfig()V
    .locals 5

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    sget-object v1, Lcom/android/server/am/oif;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/oif;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/am/oif$zta;

    invoke-direct {v3, p0}, Lcom/android/server/am/oif$zta;-><init>(Lcom/android/server/am/oif;)V

    sget-object v4, Lcom/android/server/am/oif;->Fi:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/oif;->Bi:Lcom/oneplus/config/ConfigObserver;

    iget-object p0, p0, Lcom/android/server/am/oif;->Bi:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {p0}, Lcom/oneplus/config/ConfigObserver;->register()V

    return-void
.end method

.method public initiate(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    :try_start_0
    iput-object p2, p0, Lcom/android/server/am/oif;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/server/am/oif;->zi:Lcom/android/server/am/B;

    invoke-virtual {p2, p1}, Lcom/android/server/am/B;->setContext(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/server/am/oif;->cno(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/server/am/oif;->initOnlineConfig()V

    const-string p0, "EmbryoManager"

    const-string p1, "initiate"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public killEmbryoProcesses(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "killEmbryoProcesses: compat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmbryoManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/am/oif;->zi:Lcom/android/server/am/B;

    invoke-virtual {p0, p1}, Lcom/android/server/am/B;->killEmbryoProcesses(Z)V

    return-void
.end method

.method public notifyApplicationCrash(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/oif;->zi:Lcom/android/server/am/B;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/B;->notifyApplicationCrash(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public obtain(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Landroid/app/IApplicationThread;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {p2}, Lcom/android/server/am/oif;->ob(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    sget-object v1, Lcom/android/server/am/oif;->Hi:Lcom/android/server/am/dma;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Lcom/android/server/am/dma;->sis(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-boolean p0, Lcom/android/server/am/oif;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "skip obtain for pkg "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " uid "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EmbryoManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0

    :cond_3
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "sys.embryo.block"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Disable embryo by property:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EmbryoManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_4
    const-string v2, "activity"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/android/server/am/oif;->zi:Lcom/android/server/am/B;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {p2, v2, v3}, Lcom/android/server/am/B;->tsu(Ljava/lang/String;I)Lcom/android/server/am/bvj;

    move-result-object p2

    goto :goto_0

    :cond_5
    iget-object p2, p0, Lcom/android/server/am/oif;->zi:Lcom/android/server/am/B;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/android/server/am/B;->sis(Ljava/lang/String;I)Lcom/android/server/am/bvj;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_6

    return-object v0

    :cond_6
    monitor-enter p2

    :try_start_0
    invoke-virtual {p2}, Lcom/android/server/am/bvj;->La()Z

    move-result v2

    if-nez v2, :cond_7

    monitor-exit p2

    return-object v0

    :cond_7
    invoke-virtual {p2}, Lcom/android/server/am/bvj;->detach()Lcom/android/server/am/gck;

    move-result-object v2

    invoke-virtual {p2, v1}, Lcom/android/server/am/bvj;->tsu(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {p2, v1}, Lcom/android/server/am/bvj;->rtg(Landroid/content/pm/ApplicationInfo;)V

    const-string p0, "EmbryoManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not matched. "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pid="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/am/gck;->getPid()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/android/server/am/gck;->destroy()V

    monitor-exit p2

    return-object v0

    :cond_8
    const-string v0, "EmbryoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Embryo claimed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/am/gck;->getPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/android/server/am/gck;->getPid()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setPid(I)V

    invoke-virtual {v2}, Lcom/android/server/am/gck;->getThread()Landroid/app/IApplicationThread;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/am/oif;->zi:Lcom/android/server/am/B;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/server/am/gck;->getPid()I

    move-result v2

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v3, v2, v1}, Lcom/android/server/am/B;->zta(Ljava/lang/String;II)V

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/am/oif;->zi:Lcom/android/server/am/B;

    invoke-virtual {p0, p2}, Lcom/android/server/am/B;->tsu(Lcom/android/server/am/bvj;)V

    return-object p1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_9
    :goto_1
    return-object v0
.end method

.method public packageChanged(Ljava/lang/String;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "packageChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmbryoManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/oif;->zi:Lcom/android/server/am/B;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/B;->sis(Ljava/lang/String;I)Lcom/android/server/am/bvj;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/am/bvj;->Na()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/android/server/am/bvj;->Pa()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/bvj;->destroy()V

    :goto_0
    invoke-virtual {p1}, Lcom/android/server/am/bvj;->Qa()V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/am/oif;->zi:Lcom/android/server/am/B;

    invoke-virtual {p0, p1}, Lcom/android/server/am/B;->tsu(Lcom/android/server/am/bvj;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public packageInstalled(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "packageInstalled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "EmbryoManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/am/oif;->Hi:Lcom/android/server/am/dma;

    invoke-virtual {v0, p1}, Lcom/android/server/am/dma;->sis(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean p0, Lcom/android/server/am/oif;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "skip gen for pkg "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/am/oif;->checkBackgroundLevel(Ljava/util/List;)Z

    move-result p2

    if-nez p2, :cond_3

    return-void

    :cond_3
    sget-object p2, Lcom/android/server/am/oif;->Hi:Lcom/android/server/am/dma;

    invoke-virtual {p2, p1}, Lcom/android/server/am/dma;->zta(Landroid/content/pm/ApplicationInfo;)Z

    move-result p2

    if-nez p2, :cond_4

    return-void

    :cond_4
    iget-object p2, p0, Lcom/android/server/am/oif;->zi:Lcom/android/server/am/B;

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p2, v0, p1}, Lcom/android/server/am/B;->tsu(Ljava/lang/String;I)Lcom/android/server/am/bvj;

    move-result-object p1

    if-nez p1, :cond_5

    return-void

    :cond_5
    iget-object p0, p0, Lcom/android/server/am/oif;->zi:Lcom/android/server/am/B;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/B;->zta(Lcom/android/server/am/bvj;IZ)V

    return-void
.end method

.method public prepare(Lcom/android/server/am/ProcessRecord;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_7

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_7

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/am/oif;->mShuttingDown:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/android/server/am/oif;->Hi:Lcom/android/server/am/dma;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/am/dma;->sis(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    const-string v1, "skip prepare for pkg "

    const-string v2, "EmbryoManager"

    if-nez v0, :cond_3

    sget-boolean p0, Lcom/android/server/am/oif;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " uid "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/server/am/oif;->checkBackgroundLevel(Ljava/util/List;)Z

    move-result p2

    if-nez p2, :cond_4

    return-void

    :cond_4
    iget-object p2, p0, Lcom/android/server/am/oif;->zi:Lcom/android/server/am/B;

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p2, v0, v3}, Lcom/android/server/am/B;->sis(Ljava/lang/String;I)Lcom/android/server/am/bvj;

    move-result-object p2

    if-nez p2, :cond_6

    sget-boolean p0, Lcom/android/server/am/oif;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " supervisor null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepare packageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " processName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/am/oif;->zi:Lcom/android/server/am/B;

    const/4 p1, 0x3

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/am/B;->zta(Lcom/android/server/am/bvj;IZ)V

    :cond_7
    :goto_0
    return-void
.end method

.method public processStarted(Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/oif;->zi:Lcom/android/server/am/B;

    invoke-virtual {p0, p1}, Lcom/android/server/am/B;->processStarted(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public resolveConfig(Lorg/json/JSONArray;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/am/oif;->zta(Lcom/android/server/am/IEmbryoManager;Lorg/json/JSONArray;)V

    return-void
.end method

.method public setBlackList(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/oif;->zi:Lcom/android/server/am/B;

    invoke-virtual {p0, p1}, Lcom/android/server/am/B;->setBlackList(Ljava/util/List;)V

    const-string p0, "EmbryoManager"

    const-string p1, "update list"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public shutdown()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/oif;->mShuttingDown:Z

    iget-object p0, p0, Lcom/android/server/am/oif;->zi:Lcom/android/server/am/B;

    invoke-virtual {p0}, Lcom/android/server/am/B;->shutdown()V

    return-void
.end method

.method public updateConfig()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/am/oif;->zi:Lcom/android/server/am/B;

    invoke-virtual {p0}, Lcom/android/server/am/B;->updateConfig()V

    const-string p0, "EmbryoManager"

    const-string v0, "update config"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public wakingUp()V
    .locals 0

    return-void
.end method
