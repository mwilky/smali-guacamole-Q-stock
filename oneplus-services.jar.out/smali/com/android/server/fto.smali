.class public Lcom/android/server/fto;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/OnePlusUtil$zta$you;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/fto$zta;,
        Lcom/android/server/fto$sis;,
        Lcom/android/server/fto$you;
    }
.end annotation


# static fields
.field private static final Ae:Ljava/lang/String; = "com.heytap.speechassist"

.field private static final Be:Ljava/lang/String; = "driving_mode_state"

.field private static final CMD_FETCH_CONFIG:I = 0x1

.field private static final Ce:Landroid/net/Uri;

.field private static final DBG:Z

.field private static final De:I = 0x0

.field private static final Ee:I = 0x1

.field private static final Fe:I = 0x2

.field private static final Ge:Ljava/lang/String; = "BlacklistVideoEnhancerConfig"

.field private static final TAG:Ljava/lang/String; = "CommonFrontMonitor"

.field private static final VALUE_OFF:Ljava/lang/String; = "0"

.field private static final VALUE_ON:Ljava/lang/String; = "1"

.field private static sInstance:Lcom/android/server/fto; = null

.field private static final ve:I = 0x2

.field private static final we:I = 0x3

.field private static final xe:Ljava/lang/String; = "op_video_enhancer"

.field private static final ye:Landroid/net/Uri;

.field private static final ze:Ljava/lang/String; = "oneplus.action.front_package_changed"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private oe:Landroid/database/ContentObserver;

.field private pe:Landroid/database/ContentObserver;

.field private qe:Z

.field private re:Z

.field private se:Z

.field private te:Lcom/oneplus/config/ConfigObserver;

.field private ue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/fto;->DBG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/fto;->sInstance:Lcom/android/server/fto;

    const-string v0, "op_video_enhancer"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/fto;->ye:Landroid/net/Uri;

    const-string v0, "driving_mode_state"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/fto;->Ce:Landroid/net/Uri;

    new-instance v0, Lcom/android/server/fto;

    invoke-direct {v0}, Lcom/android/server/fto;-><init>()V

    sput-object v0, Lcom/android/server/fto;->sInstance:Lcom/android/server/fto;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/fto;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/fto;->qe:Z

    iput-boolean v0, p0, Lcom/android/server/fto;->re:Z

    iput-boolean v0, p0, Lcom/android/server/fto;->se:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/fto;->ue:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/fto;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/ire;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/ire;-><init>(Lcom/android/server/fto;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/fto;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/fto;->DBG:Z

    return v0
.end method

.method static synthetic cno(Lcom/android/server/fto;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/fto;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static getInstance()Lcom/android/server/fto;
    .locals 1

    sget-object v0, Lcom/android/server/fto;->sInstance:Lcom/android/server/fto;

    return-object v0
.end method

.method private resolveAdditionalConfig(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/fto;->DBG:Z

    const-string v1, "CommonFrontMonitor"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveAdditionalConfig: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/fto;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/oneplus/config/ConfigGrabber;

    invoke-direct {v1, v0, p1}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/fto;->resolveImConfigFromJSON(Lorg/json/JSONArray;)V

    goto :goto_0

    :cond_1
    const-string p0, "resolveAdditionalConfig: mContext is null"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private resolveImConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 7

    const-string v0, "resolveImConfigFromJSON: s_ImComponentLists = "

    const-string v1, "CommonFrontMonitor"

    if-nez p1, :cond_0

    const-string p0, "resolveCompatConfigFromJSON: jsonArray is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/fto;->ue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/fto;->ue:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v5, Lcom/android/server/fto;->DBG:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update config add blacklist pkg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/android/server/fto;->se:Z

    if-nez p1, :cond_3

    iput-boolean v3, p0, Lcom/android/server/fto;->se:Z

    sget-boolean p1, Lcom/android/server/fto;->DBG:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/fto;->ue:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_1
    const-string v2, "resolveCompatConfigFromJSON error:"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean p1, p0, Lcom/android/server/fto;->se:Z

    if-nez p1, :cond_3

    iput-boolean v3, p0, Lcom/android/server/fto;->se:Z

    sget-boolean p1, Lcom/android/server/fto;->DBG:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_2
    const-string v2, "resolveCompatConfigFromJSON JSONException:"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean p1, p0, Lcom/android/server/fto;->se:Z

    if-nez p1, :cond_3

    iput-boolean v3, p0, Lcom/android/server/fto;->se:Z

    sget-boolean p1, Lcom/android/server/fto;->DBG:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_3
    :goto_2
    return-void

    :goto_3
    iget-boolean v2, p0, Lcom/android/server/fto;->se:Z

    if-nez v2, :cond_4

    iput-boolean v3, p0, Lcom/android/server/fto;->se:Z

    sget-boolean v2, Lcom/android/server/fto;->DBG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/fto;->ue:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    throw p1
.end method

.method static synthetic rtg(Lcom/android/server/fto;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/fto;->re:Z

    return p0
.end method

.method static synthetic sis(Lcom/android/server/fto;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/fto;->qe:Z

    return p0
.end method

.method static synthetic ssp(Lcom/android/server/fto;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/fto;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private tl()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/fto;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/fto;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/server/fto;->se:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-array v1, v1, [I

    const/4 v3, 0x0

    const/16 v4, 0xcc

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CONFIG_NAME"

    const-string v3, "BlacklistVideoEnhancerConfig"

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/server/fto;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    sget-boolean p0, Lcom/android/server/fto;->DBG:Z

    if-eqz p0, :cond_2

    const-string p0, "CommonFrontMonitor"

    const-string v0, "fetchConfig: skip to fetch"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic tsu(Lcom/android/server/fto;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/fto;->vl()Z

    move-result p0

    return p0
.end method

.method private ul()Z
    .locals 3

    iget-object p0, p0, Lcom/android/server/fto;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "driving_mode_state"

    const/4 v2, -0x2

    invoke-static {p0, v1, v0, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private vl()Z
    .locals 2

    iget-object p0, p0, Lcom/android/server/fto;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "op_video_enhancer"

    const/4 v1, -0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic you(Lcom/android/server/fto;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/fto;->ul()Z

    move-result p0

    return p0
.end method

.method static synthetic you(Lcom/android/server/fto;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/fto;->re:Z

    return p1
.end method

.method static synthetic zta(Lcom/android/server/fto;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/fto;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/fto;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/fto;->resolveAdditionalConfig(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/fto;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/fto;->resolveImConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/fto;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/fto;->qe:Z

    return p1
.end method


# virtual methods
.method public frontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V
    .locals 0

    iget-object p2, p0, Lcom/android/server/fto;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/fto;->ul()Z

    move-result p3

    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/android/server/fto;->mHandler:Landroid/os/Handler;

    new-instance p5, Lcom/android/server/hmo;

    invoke-direct {p5, p0, p1, p4}, Lcom/android/server/hmo;-><init>(Lcom/android/server/fto;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p3, 0x1

    new-array p4, p3, [I

    const/16 p5, 0xcc

    const/4 p6, 0x0

    aput p5, p4, p6

    invoke-static {p4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-direct {p0}, Lcom/android/server/fto;->vl()Z

    move-result p4

    if-eqz p4, :cond_2

    iget-object p4, p0, Lcom/android/server/fto;->ue:Ljava/util/ArrayList;

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p6}, Lcom/android/server/fto;->qbh(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p3}, Lcom/android/server/fto;->qbh(Z)V

    :cond_2
    :goto_0
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/fto;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/server/fto;->mContext:Landroid/content/Context;

    :cond_0
    iget-object p1, p0, Lcom/android/server/fto;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/fto;->ul()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/fto;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "CommonFrontMonitor"

    const-string v2, "registerFrontPackageListener"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/fto;->qe:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/OnePlusUtil$zta;->zta(Lcom/android/server/OnePlusUtil$zta$you;)V

    iput-boolean v1, p0, Lcom/android/server/fto;->qe:Z

    :cond_2
    new-array v0, v1, [I

    const/16 v2, 0xcc

    const/4 v3, 0x0

    aput v2, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/server/fto;->vl()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/server/fto;->qbh(Z)V

    sget-boolean v0, Lcom/android/server/fto;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "CommonFrontMonitor"

    const-string v4, "registerFrontPackageListener"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/fto;->re:Z

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/OnePlusUtil$zta;->zta(Lcom/android/server/OnePlusUtil$zta$you;)V

    iput-boolean v1, p0, Lcom/android/server/fto;->re:Z

    :cond_4
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, Lcom/android/server/fto$you;

    iget-object v0, p0, Lcom/android/server/fto;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/fto;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v0, v4}, Lcom/android/server/fto$you;-><init>(Lcom/android/server/fto;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/fto;->pe:Landroid/database/ContentObserver;

    iget-object p1, p0, Lcom/android/server/fto;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/android/server/fto;->Ce:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/fto;->pe:Landroid/database/ContentObserver;

    const/4 v5, -0x1

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    new-array p1, v1, [I

    aput v2, p1, v3

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Lcom/oneplus/config/ConfigObserver;

    iget-object v0, p0, Lcom/android/server/fto;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/fto;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/fto$zta;

    invoke-direct {v2, p0}, Lcom/android/server/fto$zta;-><init>(Lcom/android/server/fto;)V

    const-string v4, "BlacklistVideoEnhancerConfig"

    invoke-direct {p1, v0, v1, v2, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/fto;->te:Lcom/oneplus/config/ConfigObserver;

    iget-object p1, p0, Lcom/android/server/fto;->te:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigObserver;->register()V

    new-instance p1, Lcom/android/server/fto$sis;

    iget-object v0, p0, Lcom/android/server/fto;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/fto;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v0, v1}, Lcom/android/server/fto$sis;-><init>(Lcom/android/server/fto;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/fto;->oe:Landroid/database/ContentObserver;

    iget-object p1, p0, Lcom/android/server/fto;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/android/server/fto;->ye:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/server/fto;->oe:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v3, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_5
    invoke-direct {p0}, Lcom/android/server/fto;->tl()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method qbh(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, "false"

    :goto_0
    const-string p1, "persist.sys.oem.vendor.media.vpp.enable"

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
