.class public Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "NetworkSpeedControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/oneplus/networkspeed/NetworkSpeedController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;,
        Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyBackgroundHandler;,
        Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyHandler;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static ERTRY_POINT:J = 0x0L

.field private static HANDRED:I = 0x0

.field private static TAG:Ljava/lang/String; = "NetworkSpeedController"

.field private static TEN:I

.field private static THOUSAND:I

.field private static UNIT_GB:Ljava/lang/String;

.field private static UNIT_KB:Ljava/lang/String;

.field private static UNIT_MB:Ljava/lang/String;

.field private static UPDATE_INTERVAL:I


# instance fields
.field private MSG_MAYBE_STOP_NETWORTSPEED:I

.field private MSG_UPDATE_NETWORTSPEED:I

.field private MSG_UPDATE_SHOW:I

.field private MSG_UPDATE_SPEED_ON_BG:I

.field private mBackgroundHandler:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyBackgroundHandler;

.field private mBlockNetworkSpeed:Z

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyHandler;

.field private mHotSpotEnable:Z

.field private mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field private mIsFirstLoad:Z

.field private final mNetworkSpeedStateCallBack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/networkspeed/NetworkSpeedController$INetworkSpeedStateCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkTraceState:Z

.field private mShow:Z

.field private mSpeed:Ljava/lang/String;

.field private mSpeedMachine:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->DEBUG:Z

    const/16 v0, 0xa

    sput v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->TEN:I

    const/16 v0, 0x64

    sput v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->HANDRED:I

    const/16 v0, 0x3e8

    sput v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->THOUSAND:I

    const-wide/16 v0, 0x400

    sput-wide v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->ERTRY_POINT:J

    const-string v0, "KB"

    sput-object v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->UNIT_KB:Ljava/lang/String;

    const-string v0, "MB"

    sput-object v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->UNIT_MB:Ljava/lang/String;

    const-string v0, "GB"

    sput-object v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->UNIT_GB:Ljava/lang/String;

    const/4 v0, 0x3

    sput v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->UPDATE_INTERVAL:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mSpeed:Ljava/lang/String;

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->MSG_UPDATE_NETWORTSPEED:I

    const/16 v0, 0x3e9

    iput v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->MSG_MAYBE_STOP_NETWORTSPEED:I

    const/16 v0, 0x3ea

    iput v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->MSG_UPDATE_SHOW:I

    const/16 v0, 0x7d1

    iput v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->MSG_UPDATE_SPEED_ON_BG:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mIsFirstLoad:Z

    new-instance v1, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyHandler;-><init>(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mHandler:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyHandler;

    new-instance v1, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyBackgroundHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyBackgroundHandler;-><init>(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mBackgroundHandler:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyBackgroundHandler;

    new-instance v1, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;

    invoke-direct {v1, p0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;-><init>(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)V

    iput-object v1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mSpeedMachine:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mNetworkTraceState:Z

    iput-boolean v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mBlockNetworkSpeed:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mNetworkSpeedStateCallBack:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iput-boolean v1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mShow:Z

    iput-boolean v1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mHotSpotEnable:Z

    iput-object p1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mTimer:Ljava/util/Timer;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string p1, "netstats"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mStatsService:Landroid/net/INetworkStatsService;

    iget-object p1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-class p1, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iput-object p1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    sget v0, Lcom/android/systemui/R$layout;->status_bar_network_speed:I

    iget-boolean v1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mShow:Z

    const-string v2, "networkspeed"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setOPCustView(Ljava/lang/String;IZ)V

    iget-object p1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-boolean v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mShow:Z

    invoke-interface {p1, v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    const-class p1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    const-string v0, "icon_blacklist"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->MSG_UPDATE_NETWORTSPEED:I

    return p0
.end method

.method static synthetic access$1000(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->scheduleNextUpdate()V

    return-void
.end method

.method static synthetic access$102(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mSpeed:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)Z
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->isNetworkSpeedTracing()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mHotSpotEnable:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)[J
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->getTetherStats()[J

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600()I
    .locals 1

    sget v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->UPDATE_INTERVAL:I

    return v0
.end method

.method static synthetic access$1700(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;J)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->formateSpeed(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mIsFirstLoad:Z

    return p0
.end method

.method static synthetic access$1802(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mIsFirstLoad:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyHandler;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mHandler:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyHandler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->refreshSpeed()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->MSG_MAYBE_STOP_NETWORTSPEED:I

    return p0
.end method

.method static synthetic access$400(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->MSG_UPDATE_SHOW:I

    return p0
.end method

.method static synthetic access$500(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->onShowStateChange()V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->MSG_UPDATE_SPEED_ON_BG:I

    return p0
.end method

.method static synthetic access$700(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyBackgroundHandler;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mBackgroundHandler:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyBackgroundHandler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;)Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mSpeedMachine:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;

    return-object p0
.end method

.method private divToFractionDigits(JJI)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long p0, p3, v0

    if-nez p0, :cond_0

    sget-object p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    const-string p1, "divisor shouldn\'t be 0"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "Error"

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    div-long v0, p1, p3

    rem-long/2addr p1, p3

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    if-lez p5, :cond_1

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_1

    const-wide/16 v1, 0xa

    mul-long/2addr p1, v1

    div-long v1, p1, p3

    rem-long/2addr p1, p3

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private formateSpeed(J)Ljava/lang/String;
    .locals 14

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->UNIT_KB:Ljava/lang/String;

    sget-wide v1, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->ERTRY_POINT:J

    cmp-long v3, p1, v1

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x0

    if-gez v3, :cond_0

    :goto_0
    move-object v8, v0

    :goto_1
    move-wide v3, v1

    goto/16 :goto_5

    :cond_0
    cmp-long v3, p1, v1

    if-ltz v3, :cond_4

    sget v3, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->THOUSAND:I

    int-to-long v8, v3

    mul-long/2addr v8, v1

    cmp-long v3, p1, v8

    if-gez v3, :cond_4

    cmp-long v3, p1, v1

    if-ltz v3, :cond_1

    sget v3, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->TEN:I

    int-to-long v8, v3

    mul-long/2addr v8, v1

    cmp-long v3, p1, v8

    if-gez v3, :cond_1

    goto :goto_0

    :cond_1
    sget-wide v8, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->ERTRY_POINT:J

    sget v3, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->TEN:I

    int-to-long v10, v3

    mul-long/2addr v10, v8

    cmp-long v3, p1, v10

    if-ltz v3, :cond_2

    sget v3, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->HANDRED:I

    int-to-long v10, v3

    mul-long/2addr v8, v10

    cmp-long v3, p1, v8

    if-gez v3, :cond_2

    move-object v8, v0

    move v5, v4

    goto :goto_1

    :cond_2
    sget-wide v3, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->ERTRY_POINT:J

    sget v5, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->HANDRED:I

    int-to-long v8, v5

    mul-long/2addr v8, v3

    cmp-long v5, p1, v8

    if-ltz v5, :cond_3

    sget v5, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->THOUSAND:I

    int-to-long v8, v5

    mul-long/2addr v3, v8

    cmp-long v3, p1, v3

    :cond_3
    move-object v8, v0

    move-wide v3, v1

    goto/16 :goto_4

    :cond_4
    sget-wide v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->ERTRY_POINT:J

    sget v2, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->THOUSAND:I

    int-to-long v8, v2

    mul-long/2addr v8, v0

    cmp-long v3, p1, v8

    if-ltz v3, :cond_8

    mul-long v8, v0, v0

    int-to-long v10, v2

    mul-long/2addr v8, v10

    cmp-long v3, p1, v8

    if-gez v3, :cond_8

    mul-long v8, v0, v0

    sget-object v3, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->UNIT_MB:Ljava/lang/String;

    int-to-long v10, v2

    mul-long/2addr v0, v10

    cmp-long v0, p1, v0

    if-ltz v0, :cond_5

    sget v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->TEN:I

    int-to-long v0, v0

    mul-long/2addr v0, v8

    cmp-long v0, p1, v0

    if-gez v0, :cond_5

    goto :goto_2

    :cond_5
    sget-wide v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->ERTRY_POINT:J

    mul-long/2addr v0, v0

    sget v2, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->TEN:I

    int-to-long v10, v2

    mul-long/2addr v0, v10

    cmp-long v0, p1, v0

    if-ltz v0, :cond_6

    sget v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->HANDRED:I

    int-to-long v0, v0

    mul-long/2addr v0, v8

    cmp-long v0, p1, v0

    if-gez v0, :cond_6

    move v5, v4

    goto :goto_2

    :cond_6
    sget-wide v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->ERTRY_POINT:J

    mul-long/2addr v0, v0

    sget v2, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->HANDRED:I

    int-to-long v4, v2

    mul-long/2addr v0, v4

    cmp-long v0, p1, v0

    if-ltz v0, :cond_7

    sget v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->THOUSAND:I

    int-to-long v0, v0

    mul-long/2addr v0, v8

    cmp-long v0, p1, v0

    :cond_7
    move v5, v7

    :goto_2
    move-wide v12, v8

    move-object v8, v3

    move-wide v3, v12

    goto :goto_5

    :cond_8
    sget-wide v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->ERTRY_POINT:J

    mul-long v2, v0, v0

    mul-long/2addr v2, v0

    sget-object v8, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->UNIT_GB:Ljava/lang/String;

    mul-long/2addr v0, v0

    sget v9, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->THOUSAND:I

    int-to-long v9, v9

    mul-long/2addr v0, v9

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    sget v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->TEN:I

    int-to-long v0, v0

    mul-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-gez v0, :cond_9

    :goto_3
    move-wide v3, v2

    goto :goto_5

    :cond_9
    sget-wide v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->ERTRY_POINT:J

    mul-long v9, v0, v0

    mul-long/2addr v9, v0

    sget v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->TEN:I

    int-to-long v0, v0

    mul-long/2addr v9, v0

    cmp-long v0, p1, v9

    if-ltz v0, :cond_a

    sget v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->HANDRED:I

    int-to-long v0, v0

    mul-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-gez v0, :cond_a

    move v5, v4

    goto :goto_3

    :cond_a
    move-wide v3, v2

    :goto_4
    move v5, v7

    :goto_5
    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->divToFractionDigits(JJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ":"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "/S"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTetherStats()[J
    .locals 11

    const/4 p0, 0x2

    new-array p0, p0, [J

    :try_start_0
    const-string v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->getNetworkStatsTethering(I)Landroid/net/NetworkStats;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkStats;->size()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const-wide/16 v4, 0x0

    move-object v6, v1

    move v1, v2

    move-wide v7, v4

    :goto_1
    if-ge v1, v3, :cond_1

    invoke-virtual {v0, v1, v6}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v6

    iget-wide v9, v6, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long/2addr v4, v9

    iget-wide v9, v6, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v7, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    aput-wide v4, p0, v2

    const/4 v0, 0x1

    aput-wide v7, p0, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method private isNetworkConnected()Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    iget-object p0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    sget-boolean p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->DEBUG:Z

    if-eqz p0, :cond_3

    sget-object p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNetworkConnected = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v1
.end method

.method private isNetworkSpeedTracing()Z
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mBlockNetworkSpeed:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onShowStateChange()V
    .locals 4

    iget-boolean v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mNetworkTraceState:Z

    iget-boolean v1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mShow:Z

    if-eq v1, v0, :cond_2

    iput-boolean v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mShow:Z

    sget-boolean v1, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShowStateChange s:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    if-eqz v1, :cond_1

    const-string v2, "networkspeed"

    invoke-interface {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    :cond_1
    iget-object p0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mNetworkSpeedStateCallBack:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/networkspeed/NetworkSpeedController$INetworkSpeedStateCallBack;

    invoke-interface {v1, v0}, Lcom/oneplus/networkspeed/NetworkSpeedController$INetworkSpeedStateCallBack;->onSpeedShow(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private onStartTraceSpeed()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "onStartTraceSpeed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->updateSpeed()V

    return-void
.end method

.method private onStopTraceSpeed()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "onStopTraceSpeed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mIsFirstLoad:Z

    invoke-direct {p0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->stopSpeed()V

    const-string v0, ""

    iput-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mSpeed:Ljava/lang/String;

    return-void
.end method

.method private refreshSpeed()V
    .locals 3

    sget-boolean v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshSpeed sp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mSpeed:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mNetworkSpeedStateCallBack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/networkspeed/NetworkSpeedController$INetworkSpeedStateCallBack;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mSpeed:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/oneplus/networkspeed/NetworkSpeedController$INetworkSpeedStateCallBack;->onSpeedChange(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private scheduleNextUpdate()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget v2, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->UPDATE_INTERVAL:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    iget v3, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->MSG_UPDATE_SPEED_ON_BG:I

    iput v3, v2, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mBackgroundHandler:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyBackgroundHandler;

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method private stopSpeed()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mSpeedMachine:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->reset()V

    iget-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mSpeedMachine:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;

    invoke-virtual {v0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->setTurnOff()V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mBackgroundHandler:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyBackgroundHandler;

    iget p0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->MSG_UPDATE_SPEED_ON_BG:I

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private updateSpeed()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mIsFirstLoad:Z

    sget-boolean v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateSpeed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mSpeed:Ljava/lang/String;

    iget-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mHandler:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->MSG_UPDATE_NETWORTSPEED:I

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mSpeed:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mHandler:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mSpeedMachine:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->reset()V

    iget-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mSpeedMachine:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;

    invoke-virtual {v0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MySpeedMachine;->setTurnOn()V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mBackgroundHandler:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyBackgroundHandler;

    iget v1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->MSG_UPDATE_SPEED_ON_BG:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget v1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->MSG_UPDATE_SPEED_ON_BG:I

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mBackgroundHandler:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyBackgroundHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/oneplus/networkspeed/NetworkSpeedController$INetworkSpeedStateCallBack;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mNetworkSpeedStateCallBack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mSpeed:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/oneplus/networkspeed/NetworkSpeedController$INetworkSpeedStateCallBack;->onSpeedChange(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mShow:Z

    invoke-interface {p1, v0}, Lcom/oneplus/networkspeed/NetworkSpeedController$INetworkSpeedStateCallBack;->onSpeedShow(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    sget-object v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "Failed to call to IKeyguardStateCallback"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/oneplus/networkspeed/NetworkSpeedController$INetworkSpeedStateCallBack;

    invoke-virtual {p0, p1}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->addCallback(Lcom/oneplus/networkspeed/NetworkSpeedController$INetworkSpeedStateCallBack;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.TIME_SET"

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->updateState()V

    goto :goto_1

    :cond_0
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->updateState()V

    goto :goto_1

    :cond_1
    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    if-ne p1, v0, :cond_4

    const/16 p1, 0xe

    const-string/jumbo v0, "wifi_state"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xd

    if-ne p1, p2, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mHotSpotEnable:Z

    sget-boolean p1, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->DEBUG:Z

    if-eqz p1, :cond_3

    sget-object p1, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HotSpot enable:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mHotSpotEnable:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->updateState()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "icon_blacklist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p1

    const-string p2, "networkspeed"

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    iget-boolean p2, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mBlockNetworkSpeed:Z

    if-eq p1, p2, :cond_1

    sget-object p2, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onTuningChanged blocknetworkSpeed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mBlockNetworkSpeed:Z

    invoke-virtual {p0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->updateState()V

    :cond_1
    return-void
.end method

.method public removeCallback(Lcom/oneplus/networkspeed/NetworkSpeedController$INetworkSpeedStateCallBack;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mNetworkSpeedStateCallBack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/oneplus/networkspeed/NetworkSpeedController$INetworkSpeedStateCallBack;

    invoke-virtual {p0, p1}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->removeCallback(Lcom/oneplus/networkspeed/NetworkSpeedController$INetworkSpeedStateCallBack;)V

    return-void
.end method

.method public updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V
    .locals 3

    sget-boolean v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateConnectivity connectedTransports:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " validatedTransports:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->updateState()V

    return-void
.end method

.method public updateState()V
    .locals 4

    invoke-direct {p0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->isNetworkSpeedTracing()Z

    move-result v0

    sget-boolean v1, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateState traceState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mNetworkTraceState:Z

    if-eq v1, v0, :cond_2

    iput-boolean v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mNetworkTraceState:Z

    iget-boolean v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mNetworkTraceState:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->onStartTraceSpeed()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->onStopTraceSpeed()V

    :goto_0
    iget-object v0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mHandler:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->MSG_UPDATE_SHOW:I

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl;->mHandler:Lcom/oneplus/networkspeed/NetworkSpeedControllerImpl$MyHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method
