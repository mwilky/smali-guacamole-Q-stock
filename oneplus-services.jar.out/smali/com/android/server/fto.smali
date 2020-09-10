.class public Lcom/android/server/fto;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/OnePlusUtil$zta$you;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/fto$tsu;,
        Lcom/android/server/fto$sis;,
        Lcom/android/server/fto$ssp;,
        Lcom/android/server/fto$cno;,
        Lcom/android/server/fto$zta;,
        Lcom/android/server/fto$rtg;,
        Lcom/android/server/fto$you;
    }
.end annotation


# static fields
.field private static final CMD_FETCH_CONFIG:I = 0x1

.field private static final DBG:Z

.field private static final Ge:I = 0x2

.field private static final He:I = 0x3

.field private static final Ie:I = 0x4

.field private static final Je:Ljava/lang/String; = "op_video_enhancer"

.field private static final Ke:Landroid/net/Uri;

.field private static final Le:Ljava/lang/String; = "smart_fiveg"

.field private static final Me:I = 0x1

.field private static final Ne:Ljava/lang/String; = "Whitelist5GConfig"

.field private static final Oe:Landroid/net/Uri;

.field private static final Pe:Ljava/lang/String; = "WhitelistFastOutputConfig"

.field private static final Qe:Ljava/lang/String; = "oneplus.action.front_package_changed"

.field private static final Re:Ljava/lang/String; = "com.heytap.speechassist"

.field private static final Se:Ljava/lang/String; = "driving_mode_state"

.field private static final TAG:Ljava/lang/String; = "CommonFrontMonitor"

.field private static final Te:Landroid/net/Uri;

.field private static final Ue:I = 0x0

.field private static final VALUE_OFF:Ljava/lang/String; = "0"

.field private static final VALUE_ON:Ljava/lang/String; = "1"

.field private static final Ve:I = 0x1

.field private static final We:I = 0x2

.field private static final Xe:Ljava/lang/String; = "smart_fiveg_whitelist"

.field private static final Ye:Landroid/net/Uri;

.field private static final Ze:I = 0x5

.field private static final af:Ljava/lang/String; = "BlacklistVideoEnhancerConfig"

.field private static sInstance:Lcom/android/server/fto;


# instance fields
.field private Ae:Landroid/database/ContentObserver;

.field private Be:Landroid/database/ContentObserver;

.field private Ce:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private De:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Ee:Lcom/oneplus/config/ConfigObserver;

.field private Fe:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mWhitelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pe:Landroid/database/ContentObserver;

.field private qe:Z

.field private re:Z

.field private se:Ljava/lang/Object;

.field private te:Lcom/oneplus/config/ConfigObserver;

.field private ue:Landroid/database/ContentObserver;

.field private ve:Z

.field private we:Lcom/oneplus/config/ConfigObserver;

.field private xe:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ye:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ze:Z


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

    sput-object v0, Lcom/android/server/fto;->Ke:Landroid/net/Uri;

    const-string v0, "smart_fiveg"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/fto;->Oe:Landroid/net/Uri;

    const-string v0, "driving_mode_state"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/fto;->Te:Landroid/net/Uri;

    const-string v0, "smart_fiveg_whitelist"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/fto;->Ye:Landroid/net/Uri;

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

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/fto;->qe:Z

    iput-boolean v1, p0, Lcom/android/server/fto;->re:Z

    iput-object v0, p0, Lcom/android/server/fto;->se:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/fto;->mWhitelist:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/server/fto;->ve:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/fto;->xe:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/fto;->ye:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/server/fto;->ze:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/fto;->Ce:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/fto;->De:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/fto;->Fe:Ljava/util/ArrayList;

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

.method private Bl()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/fto;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/fto;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-array v3, v1, [I

    const/16 v4, 0xce

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/fto;->qe:Z

    if-nez v3, :cond_0

    const-string v3, "CONFIG_NAME_VIDEO_ENHANCEMENT"

    const-string v4, "BlacklistVideoEnhancerConfig"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-array v3, v1, [I

    const/16 v4, 0x7e

    aput v4, v3, v5

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/fto;->ve:Z

    if-nez v3, :cond_1

    const-string v3, "CONFIG_NAME_SMART5G"

    const-string v4, "Whitelist5GConfig"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-array v1, v1, [I

    const/16 v3, 0xfa

    aput v3, v1, v5

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/fto;->ze:Z

    if-nez v1, :cond_2

    const-string v1, "CONFIG_NAME_FASTOUTPUT"

    const-string v3, "WhitelistFastOutputConfig"

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/server/fto;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    sget-boolean p0, Lcom/android/server/fto;->DBG:Z

    if-eqz p0, :cond_4

    const-string p0, "CommonFrontMonitor"

    const-string v0, "fetchConfig: skip to fetch"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method private Cl()Z
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

.method private Dl()Z
    .locals 4

    iget-object p0, p0, Lcom/android/server/fto;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "smart_fiveg"

    const/4 v1, -0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    if-nez p0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x98

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p0, v0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private El()Z
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

.method private declared-synchronized Fl()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/fto;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_fiveg_whitelist"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/fto;->Ce:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    iget-object v5, p0, Lcom/android/server/fto;->Ce:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "CommonFrontMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSmart5GWhitelist = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/fto;->Ce:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  whitelistConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/fto;->DBG:Z

    return v0
.end method

.method private static getIExtTelephony()Ljava/lang/Object;
    .locals 9

    sget-boolean v0, Lcom/android/server/fto;->DBG:Z

    const-string v1, "CommonFrontMonitor"

    if-eqz v0, :cond_0

    const-string v0, "getIExtTelephony()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v2, "extphone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "org.codeaurora.internal.IExtTelephony$Stub"

    :try_start_1
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "asInterface"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/os/IBinder;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v8

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIExtTelephony() exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
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

    if-eqz v0, :cond_3

    new-instance v1, Lcom/oneplus/config/ConfigGrabber;

    invoke-direct {v1, v0, p1}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "BlacklistVideoEnhancerConfig"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/fto;->tsu(Lorg/json/JSONArray;)V

    goto :goto_0

    :cond_1
    const-string v1, "Whitelist5GConfig"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/android/server/fto;->you(Lorg/json/JSONArray;)V

    goto :goto_0

    :cond_2
    const-string v1, "WhitelistFastOutputConfig"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0, v0}, Lcom/android/server/fto;->sis(Lorg/json/JSONArray;)V

    goto :goto_0

    :cond_3
    const-string p0, "resolveAdditionalConfig: mContext is null"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method static synthetic sis(Lcom/android/server/fto;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/fto;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic sis(Lcom/android/server/fto;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/fto;->you(Lorg/json/JSONArray;)V

    return-void
.end method

.method private sis(Lorg/json/JSONArray;)V
    .locals 7

    const-string v0, "resolveFastOutputConfigFromJSON: mWhitelistFastOutput = "

    const-string v1, "CommonFrontMonitor"

    if-nez p1, :cond_0

    const-string p0, "resolveFastOutputConfigFromJSON: jsonArray is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/fto;->xe:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/fto;->ye:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/server/fto;->ye:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/server/fto;->mAudioManager:Landroid/media/AudioManager;

    const-string v6, "WhitelistFastOutputConfig"

    invoke-virtual {v5, v6, v4}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v5, p0, Lcom/android/server/fto;->xe:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v5, Lcom/android/server/fto;->DBG:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update FastOutput config add whitelist pkg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/android/server/fto;->ze:Z

    if-nez p1, :cond_4

    iput-boolean v3, p0, Lcom/android/server/fto;->ze:Z

    sget-boolean p1, Lcom/android/server/fto;->DBG:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/fto;->xe:Ljava/util/ArrayList;

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
    const-string v2, "resolveFastOutputConfigFromJSON error:"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean p1, p0, Lcom/android/server/fto;->ze:Z

    if-nez p1, :cond_4

    iput-boolean v3, p0, Lcom/android/server/fto;->ze:Z

    sget-boolean p1, Lcom/android/server/fto;->DBG:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_2
    const-string v2, "resolveFastOutputConfigFromJSON JSONException:"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean p1, p0, Lcom/android/server/fto;->ze:Z

    if-nez p1, :cond_4

    iput-boolean v3, p0, Lcom/android/server/fto;->ze:Z

    sget-boolean p1, Lcom/android/server/fto;->DBG:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_4
    :goto_2
    return-void

    :goto_3
    iget-boolean v2, p0, Lcom/android/server/fto;->ze:Z

    if-nez v2, :cond_5

    iput-boolean v3, p0, Lcom/android/server/fto;->ze:Z

    sget-boolean v2, Lcom/android/server/fto;->DBG:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/fto;->xe:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    throw p1
.end method

.method private ssp(ZI)V
    .locals 8

    const-string v0, "CommonFrontMonitor"

    :try_start_0
    invoke-static {}, Lcom/android/server/fto;->getIExtTelephony()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/fto;->se:Ljava/lang/Object;

    sget-boolean v1, Lcom/android/server/fto;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got sIExtTelephony: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/fto;->se:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/fto;->se:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/fto;->se:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "generalSetter"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/os/Bundle;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "enable"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "type"

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/android/server/fto;->se:Ljava/lang/Object;

    new-array p2, v3, [Ljava/lang/Object;

    const-string v3, "setEndcStateExt"

    aput-object v3, p2, v6

    aput-object v2, p2, v7

    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    sget-boolean p1, Lcom/android/server/fto;->DBG:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "switch5G mIs5GMode = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/fto;->re:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private tsu(Lorg/json/JSONArray;)V
    .locals 7

    const-string v0, "resolveVEConfigFromJSON: mVideoEnhancerBlacklist = "

    const-string v1, "CommonFrontMonitor"

    if-nez p1, :cond_0

    const-string p0, "resolveVEConfigFromJSON: jsonArray is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/fto;->Fe:Ljava/util/ArrayList;

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

    iget-object v5, p0, Lcom/android/server/fto;->Fe:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v5, Lcom/android/server/fto;->DBG:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update VE config add blacklist pkg: "

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
    iget-boolean p1, p0, Lcom/android/server/fto;->qe:Z

    if-nez p1, :cond_3

    iput-boolean v3, p0, Lcom/android/server/fto;->qe:Z

    sget-boolean p1, Lcom/android/server/fto;->DBG:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/fto;->Fe:Ljava/util/ArrayList;

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
    const-string v2, "resolveVEConfigFromJSON error:"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean p1, p0, Lcom/android/server/fto;->qe:Z

    if-nez p1, :cond_3

    iput-boolean v3, p0, Lcom/android/server/fto;->qe:Z

    sget-boolean p1, Lcom/android/server/fto;->DBG:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_2
    const-string v2, "resolveVEConfigFromJSON JSONException:"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean p1, p0, Lcom/android/server/fto;->qe:Z

    if-nez p1, :cond_3

    iput-boolean v3, p0, Lcom/android/server/fto;->qe:Z

    sget-boolean p1, Lcom/android/server/fto;->DBG:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_3
    :goto_2
    return-void

    :goto_3
    iget-boolean v2, p0, Lcom/android/server/fto;->qe:Z

    if-nez v2, :cond_4

    iput-boolean v3, p0, Lcom/android/server/fto;->qe:Z

    sget-boolean v2, Lcom/android/server/fto;->DBG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/fto;->Fe:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    throw p1
.end method

.method static synthetic you(Lcom/android/server/fto;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/fto;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic you(Lcom/android/server/fto;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/fto;->sis(Lorg/json/JSONArray;)V

    return-void
.end method

.method private you(Lorg/json/JSONArray;)V
    .locals 7

    const-string v0, "resolve5GConfigFromJSON: mWhitelist = "

    const-string v1, "CommonFrontMonitor"

    if-nez p1, :cond_0

    const-string p0, "resolve5GConfigFromJSON: jsonArray is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/fto;->mWhitelist:Ljava/util/ArrayList;

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

    iget-object v5, p0, Lcom/android/server/fto;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v5, Lcom/android/server/fto;->DBG:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update 5G config add whitelist pkg: "

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
    iget-boolean p1, p0, Lcom/android/server/fto;->ve:Z

    if-nez p1, :cond_3

    iput-boolean v3, p0, Lcom/android/server/fto;->ve:Z

    sget-boolean p1, Lcom/android/server/fto;->DBG:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/fto;->mWhitelist:Ljava/util/ArrayList;

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
    const-string v2, "resolve5GConfigFromJSON error:"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean p1, p0, Lcom/android/server/fto;->ve:Z

    if-nez p1, :cond_3

    iput-boolean v3, p0, Lcom/android/server/fto;->ve:Z

    sget-boolean p1, Lcom/android/server/fto;->DBG:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_2
    const-string v2, "resolve5GConfigFromJSON JSONException:"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean p1, p0, Lcom/android/server/fto;->ve:Z

    if-nez p1, :cond_3

    iput-boolean v3, p0, Lcom/android/server/fto;->ve:Z

    sget-boolean p1, Lcom/android/server/fto;->DBG:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_3
    :goto_2
    return-void

    :goto_3
    iget-boolean v2, p0, Lcom/android/server/fto;->ve:Z

    if-nez v2, :cond_4

    iput-boolean v3, p0, Lcom/android/server/fto;->ve:Z

    sget-boolean v2, Lcom/android/server/fto;->DBG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/fto;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    throw p1
.end method

.method static synthetic zta(Lcom/android/server/fto;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/fto;->Fl()V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/fto;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/fto;->resolveAdditionalConfig(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/fto;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/fto;->tsu(Lorg/json/JSONArray;)V

    return-void
.end method


# virtual methods
.method public frontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V
    .locals 1

    iget-object p2, p0, Lcom/android/server/fto;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/fto;->Cl()Z

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

    new-array p5, p3, [I

    const/16 p6, 0xce

    const/4 v0, 0x0

    aput p6, p5, v0

    invoke-static {p5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p5

    if-eqz p5, :cond_2

    invoke-direct {p0}, Lcom/android/server/fto;->El()Z

    move-result p5

    if-eqz p5, :cond_2

    iget-object p5, p0, Lcom/android/server/fto;->Fe:Ljava/util/ArrayList;

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/fto;->qbh(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p3}, Lcom/android/server/fto;->qbh(Z)V

    :cond_2
    :goto_0
    new-array p5, p3, [I

    const/16 p6, 0x7e

    aput p6, p5, v0

    invoke-static {p5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p5

    if-eqz p5, :cond_7

    iget-boolean p5, p0, Lcom/android/server/fto;->re:Z

    iget-object p6, p0, Lcom/android/server/fto;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {p6, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_5

    iget-object p6, p0, Lcom/android/server/fto;->Ce:Ljava/util/ArrayList;

    invoke-virtual {p6, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_5

    iget-object p6, p0, Lcom/android/server/fto;->De:Ljava/util/ArrayList;

    invoke-virtual {p6, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_3

    goto :goto_1

    :cond_3
    iget-boolean p6, p0, Lcom/android/server/fto;->re:Z

    if-eqz p6, :cond_6

    iget-object p6, p0, Lcom/android/server/fto;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {p6, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_4

    iget-object p6, p0, Lcom/android/server/fto;->Ce:Ljava/util/ArrayList;

    invoke-virtual {p6, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_4

    iget-object p6, p0, Lcom/android/server/fto;->De:Ljava/util/ArrayList;

    invoke-virtual {p6, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_6

    :cond_4
    iput-boolean v0, p0, Lcom/android/server/fto;->re:Z

    goto :goto_2

    :cond_5
    :goto_1
    iput-boolean p3, p0, Lcom/android/server/fto;->re:Z

    :cond_6
    :goto_2
    iget-boolean p4, p0, Lcom/android/server/fto;->re:Z

    if-eq p5, p4, :cond_7

    iget-boolean p4, p0, Lcom/android/server/fto;->re:Z

    invoke-direct {p0, p4, p3}, Lcom/android/server/fto;->ssp(ZI)V

    :cond_7
    new-array p3, p3, [I

    const/16 p4, 0xfa

    aput p4, p3, v0

    invoke-static {p3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p3

    if-eqz p3, :cond_8

    iget-object p3, p0, Lcom/android/server/fto;->ye:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    iget-object p0, p0, Lcom/android/server/fto;->mAudioManager:Landroid/media/AudioManager;

    const-string p3, "WhitelistFastOutputConfig"

    invoke-virtual {p0, p3, p1}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
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
    .locals 7

    sget-boolean v0, Lcom/android/server/fto;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CommonFrontMonitor"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/OnePlusUtil$zta;->zta(Lcom/android/server/OnePlusUtil$zta$you;)V

    iget-object v0, p0, Lcom/android/server/fto;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/android/server/fto;->mContext:Landroid/content/Context;

    :cond_1
    iget-object p1, p0, Lcom/android/server/fto;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/server/fto;->mAudioManager:Landroid/media/AudioManager;

    iget-object p1, p0, Lcom/android/server/fto;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [I

    const/16 v2, 0xce

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/server/fto;->El()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/server/fto;->qbh(Z)V

    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, Lcom/android/server/fto$you;

    iget-object v1, p0, Lcom/android/server/fto;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/fto;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v1, v4}, Lcom/android/server/fto$you;-><init>(Lcom/android/server/fto;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/fto;->Ae:Landroid/database/ContentObserver;

    iget-object p1, p0, Lcom/android/server/fto;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/android/server/fto;->Te:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/fto;->Ae:Landroid/database/ContentObserver;

    const/4 v5, -0x1

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    new-array p1, v0, [I

    aput v2, p1, v3

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-boolean p1, Lcom/android/server/fto;->DBG:Z

    if-eqz p1, :cond_3

    const-string p1, "CommonFrontMonitor"

    const-string v1, "register Video enhancement observer"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance p1, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/fto;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/fto;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/fto$zta;

    invoke-direct {v4, p0}, Lcom/android/server/fto$zta;-><init>(Lcom/android/server/fto;)V

    const-string v6, "BlacklistVideoEnhancerConfig"

    invoke-direct {p1, v1, v2, v4, v6}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/fto;->Ee:Lcom/oneplus/config/ConfigObserver;

    iget-object p1, p0, Lcom/android/server/fto;->Ee:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigObserver;->register()V

    new-instance p1, Lcom/android/server/fto$rtg;

    iget-object v1, p0, Lcom/android/server/fto;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/fto;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v1, v2}, Lcom/android/server/fto$rtg;-><init>(Lcom/android/server/fto;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/fto;->pe:Landroid/database/ContentObserver;

    iget-object p1, p0, Lcom/android/server/fto;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/android/server/fto;->Ke:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/fto;->pe:Landroid/database/ContentObserver;

    invoke-virtual {p1, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_4
    new-array p1, v0, [I

    const/16 v1, 0x7e

    aput v1, p1, v3

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-boolean p1, Lcom/android/server/fto;->DBG:Z

    if-eqz p1, :cond_5

    const-string p1, "CommonFrontMonitor"

    const-string v1, "register 5G observer"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance p1, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/fto;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/fto;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/fto$ssp;

    invoke-direct {v4, p0}, Lcom/android/server/fto$ssp;-><init>(Lcom/android/server/fto;)V

    const-string v6, "Whitelist5GConfig"

    invoke-direct {p1, v1, v2, v4, v6}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/fto;->te:Lcom/oneplus/config/ConfigObserver;

    iget-object p1, p0, Lcom/android/server/fto;->te:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigObserver;->register()V

    new-instance p1, Lcom/android/server/fto$sis;

    iget-object v1, p0, Lcom/android/server/fto;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/fto;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v1, v2}, Lcom/android/server/fto$sis;-><init>(Lcom/android/server/fto;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/fto;->ue:Landroid/database/ContentObserver;

    iget-object p1, p0, Lcom/android/server/fto;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/android/server/fto;->Oe:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/fto;->ue:Landroid/database/ContentObserver;

    invoke-virtual {p1, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string p1, "ro.boot.opcarrier"

    const-string v1, "0"

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "tmo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/server/fto;->De:Ljava/util/ArrayList;

    const-string v1, "org.zwanoo.android.speedtest"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/fto;->Fl()V

    new-instance p1, Lcom/android/server/fto$tsu;

    iget-object v1, p0, Lcom/android/server/fto;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/fto;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v1, v2}, Lcom/android/server/fto$tsu;-><init>(Lcom/android/server/fto;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/fto;->Be:Landroid/database/ContentObserver;

    iget-object p1, p0, Lcom/android/server/fto;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/android/server/fto;->Ye:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/fto;->Be:Landroid/database/ContentObserver;

    invoke-virtual {p1, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSmart5GWhitelistForTest = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/fto;->De:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CommonFrontMonitor"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    new-array p1, v0, [I

    const/16 v0, 0xfa

    aput v0, p1, v3

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_8

    sget-boolean p1, Lcom/android/server/fto;->DBG:Z

    if-eqz p1, :cond_7

    const-string p1, "CommonFrontMonitor"

    const-string v0, "register fastoutput package observer"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    new-instance p1, Lcom/oneplus/config/ConfigObserver;

    iget-object v0, p0, Lcom/android/server/fto;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/fto;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/fto$cno;

    invoke-direct {v2, p0}, Lcom/android/server/fto$cno;-><init>(Lcom/android/server/fto;)V

    const-string v3, "WhitelistFastOutputConfig"

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/fto;->we:Lcom/oneplus/config/ConfigObserver;

    iget-object p1, p0, Lcom/android/server/fto;->we:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigObserver;->register()V

    :cond_8
    invoke-direct {p0}, Lcom/android/server/fto;->Bl()V

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

.method public zta(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/fto;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/fto;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
