.class public Lcom/android/server/am/OnePlusHighPowerDetector;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusHighPowerDetector$you;,
        Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;,
        Lcom/android/server/am/OnePlusHighPowerDetector$zta;,
        Lcom/android/server/am/OnePlusHighPowerDetector$sis;,
        Lcom/android/server/am/OnePlusHighPowerDetector$tsu;,
        Lcom/android/server/am/OnePlusHighPowerDetector$rtg;,
        Lcom/android/server/am/OnePlusHighPowerDetector$ssp;
    }
.end annotation


# static fields
.field private static final ACTION_TEST:Ljava/lang/String; = "ohpd.action.test"

.field private static final AGGRESSIVE_POLICY:I = 0x1

.field public static final APPID:Ljava/lang/String; = "NYNCG4I0TI"

.field public static final At:I = 0xd6db

.field public static final Au:Ljava/lang/String; = "pkg"

.field public static final Bt:I = 0xd6dc

.field public static final Bu:Ljava/lang/String; = "drain_type"

.field public static final Ct:I = 0xd6dd

.field public static final Cu:Ljava/lang/String; = "bucket_rank"

.field private static final DEFAULT_POLICY:I = 0x0

.field private static final Dg:Ljava/lang/String; = "com.oneplus:string/config_overheat_thermal_zone_path"

.field public static final Dt:I = 0xd6de

.field public static final Du:Ljava/lang/String; = "criteria"

.field public static final Et:I = 0xd6df

.field public static final Eu:Ljava/lang/String; = "relief"

.field public static final Ft:I = 0xd6e0

.field private static Fu:Ljava/lang/Object; = null

.field public static final GET_ONLINECONFIG:I = 0xd6e4

.field private static final Gl:Ljava/lang/String; = "ohpd_notification_rules_apps"

.field public static final Gt:I = 0xd6e1

.field private static final Gu:Ljava/lang/String; = "BackgroundDetection"

.field private static final Hl:Ljava/lang/String; = "\\|"

.field public static final Ht:I = 0xd6e2

.field public static final It:I = 0xd6e3

.field public static final Jt:I = 0xd6e5

.field public static final Kt:I = 0xd6e6

.field private static final Lj:Ljava/lang/String; = "persist.sys.ohpd.flags"

.field public static final Lt:I = 0xd6e7

.field public static final MDM_EVENT:Ljava/lang/String; = "camera_proc_busy"

.field static final Ms:J = 0x5265c00L

.field public static final Mt:I = 0xd6e8

.field public static final NUM_CPU_MONITOR_LEVELS:I = 0x4

.field private static final Nj:Ljava/lang/String; = "gsm.sim.operator.iso-country"

.field static final Ns:J = 0x36ee80L

.field public static final Nt:I = 0xd6e9

.field private static final Os:Ljava/lang/String; = "persist.sys.ohpd.debug.bg"

.field public static final Ot:Ljava/lang/String; = "proc"

.field private static final PROP_DEBUG:Ljava/lang/String; = "persist.sys.ohpd.debug"

.field private static final PROP_ENABLE:Ljava/lang/String; = "persist.sys.ohpd.enable"

.field private static final Ps:Ljava/lang/String; = "persist.sys.ohpd.threshold"

.field public static final Pt:Ljava/lang/String; = "cpu_usage"

.field private static final Qs:Ljava/lang/String; = "persist.sys.ohpd.notify"

.field public static final Qt:Ljava/lang/String; = "handled"

.field private static final RECENT_TASK_LOCKED_LIST:Ljava/lang/String; = "com_oneplus_systemui_recent_task_lockd_list"

.field private static final Rs:Ljava/lang/String; = "persist.sys.bgc.notify"

.field public static final Rt:J = 0x7530L

.field private static final SEPARATOR:Ljava/lang/String; = "|"

.field private static final Ss:Ljava/lang/String; = "persist.sys.bgc.multiply"

.field public static final St:J = 0x2710L

.field public static final TAG:Ljava/lang/String; = "OHPD"

.field private static final Tm:Ljava/lang/String; = "persist.sys.ohpd.bgc_debug"

.field private static final Ts:Ljava/lang/String; = "persist.sys.ohpd.pd.temp.thold"

.field static Tt:I = 0x0

.field private static final Us:Ljava/lang/String; = "persist.sys.ohpd.pd.usg.thold"

.field static Ut:I = 0x0

.field public static final VERSION:I = 0x103b975

.field private static final Vs:Ljava/lang/String; = "persist.sys.ohpd.rnk.med.usg"

.field static final Vt:I

.field private static final Ws:Ljava/lang/String; = "persist.sys.ohpd.pd.on.lastfg"

.field static Wt:I = 0x0

.field private static final Xs:Ljava/lang/String; = "persist.sys.ohpd.pd.off.lastfg"

.field static Xt:I = 0x0

.field public static final Yj:I = 0x1

.field private static final Ys:Ljava/lang/String; = "persist.sys.ohpd.onlineconfig"

.field static Yt:I = 0x0

.field private static Zj:I = 0x0

.field private static final Zs:Ljava/lang/String; = "persist.sys.ohpd.kcheck"

.field static Zt:I = 0x0

.field private static final _j:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field private static final _s:Ljava/lang/String; = "persist.sys.ohpd.skip.on"

.field static _t:Z = false

.field private static final at:Ljava/lang/String; = "persist.sys.ohpd.idle_debug"

.field static final au:[I

.field static final bt:Z

.field static final bu:[I

.field private static final ct:Ljava/lang/String; = "persist.sys.bgc"

.field static final cu:[I

.field public static debug:Z = false

.field private static final dt:Ljava/lang/String; = "persist.sys.ohpd.isolated"

.field static final du:[I

.field public static enable:Z = true

.field static final et:Z

.field static eu:I = 0x0

.field static final ft:Z

.field static fu:I = 0x0

.field static final gt:J

.field static gu:I = 0x0

.field static final ht:I

.field static hu:I = 0x0

.field static final it:J

.field static iu:I = 0x0

.field static final jt:Z

.field private static ju:Ljava/lang/String; = null

.field private static final kt:Ljava/lang/String; = "com.oem.intent.action.force_stop_pkg"

.field private static final ku:I = 0x3e7

.field private static final lt:Ljava/lang/String; = "com.oem.intent.action.force_stop_high_pkg"

.field private static lu:Z = false

.field private static mAms:Lcom/android/server/am/ActivityManagerService; = null

.field private static mBatteryStatsService:Lcom/android/server/am/BatteryStatsService; = null

.field private static mContext:Landroid/content/Context; = null

.field private static mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu; = null

.field private static mRegion:Ljava/lang/String; = null

.field private static final mt:Ljava/lang/String; = "com.oem.intent.action.ignore_pkg"

.field static mu:Ljava/lang/Object; = null

.field private static final nt:Ljava/lang/String; = "com.oem.intent.action.ignore_high_pkg"

.field private static nu:Z = false

.field private static final ot:Ljava/lang/String; = "com.oem.intent.action.ignore_bgc_pkg"

.field private static final ou:I = 0x417

.field private static final pt:Ljava/lang/String; = "bgc_notification_rules_apps"

.field private static pu:Z = false

.field private static final qt:Ljava/lang/String; = "com.oem.intent.action.bgc_clean_noti"

.field private static qu:Z = false

.field private static final rt:Ljava/lang/String; = "android.settings.APP_BATTERY_SETTINGS"

.field private static ru:Ljava/lang/Object; = null

.field static sConfigLock:Ljava/lang/Object; = null

.field private static sInstance:Lcom/android/server/am/OnePlusHighPowerDetector; = null

.field private static final st:Ljava/lang/String; = "com.oem.intent.action.ignore_bgc_pkg"

.field private static final su:I = -0x1

.field private static final tt:I = 0x0

.field private static tu:Z = false

.field private static final ut:I = 0x1

.field private static uu:Z = false

.field private static final vt:I = 0x2

.field private static vu:Z = false

.field private static final wt:Ljava/lang/String; = "com.oem.intent.action.POWER_NOTIFICATION_CANCEL"

.field private static wu:Z = false

.field public static final xt:I = 0xd6d8

.field private static xu:Z = false

.field public static final yt:I = 0xd6d9

.field public static final yu:Ljava/lang/String; = "native_proc_busy"

.field public static final zt:I = 0xd6da

.field public static final zu:Ljava/lang/String; = "BGC"


# instance fields
.field Ar:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field As:I

.field private Br:Z

.field Bs:I

.field private Cr:Z

.field Cs:I

.field Dr:J

.field Ds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field Er:I

.field final Es:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusHighPowerDetector$zta;",
            ">;"
        }
    .end annotation
.end field

.field Fr:[J

.field Fs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field Gr:Z

.field Gs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field Hr:I

.field Hs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field Ir:J

.field Is:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field Jr:Z

.field Js:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private Kr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field Ks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusHighPowerDetector$ssp;",
            ">;"
        }
    .end annotation
.end field

.field private Lr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Ls:Lcom/oneplus/config/ConfigObserver;

.field private Mr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Nr:Z

.field private final Or:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Pr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Qr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Rr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Sr:J

.field private Tr:Z

.field private Ur:Ljava/lang/String;

.field private Vr:J

.field private Wr:I

.field private Xr:Lcom/android/server/am/OnePlusHighPowerDetector$zta;

.field private Yr:J

.field private Zr:Z

.field private _r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private as:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field es:Ljava/lang/String;

.field private fj:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field fs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field gs:Ljava/lang/String;

.field final hk:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;"
        }
    .end annotation
.end field

.field hs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field is:Lcom/android/internal/statusbar/IStatusBarService;

.field js:Ljava/lang/String;

.field ks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field ls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusHighPowerDetector$rtg;",
            ">;"
        }
    .end annotation
.end field

.field private mAppStateTracker:Lcom/android/server/AppStateTracker;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mGeneralReceiver:Landroid/content/BroadcastReceiver;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRestrictType:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;

.field ms:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusHighPowerDetector$rtg;",
            ">;"
        }
    .end annotation
.end field

.field private opSmartPowerControl:Lcom/android/server/i;

.field final os:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;"
        }
    .end annotation
.end field

.field final ps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;"
        }
    .end annotation
.end field

.field final qs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;"
        }
    .end annotation
.end field

.field final rs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;"
        }
    .end annotation
.end field

.field final ss:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;"
        }
    .end annotation
.end field

.field final us:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;"
        }
    .end annotation
.end field

.field private vr:Lcom/android/server/am/OnePlusBGController;

.field final vs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusHighPowerDetector$zta;",
            ">;"
        }
    .end annotation
.end field

.field wr:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/OnePlusBGController$kth;",
            ">;"
        }
    .end annotation
.end field

.field ws:Z

.field private xr:Z

.field xs:Z

.field private yr:Z

.field ys:I

.field private zr:Z

.field zs:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    const/4 v0, 0x0

    const-string v1, "persist.sys.ohpd.idle_debug"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->bt:Z

    const-string v1, "persist.sys.ohpd.isolated"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->et:Z

    const-string v1, "persist.sys.ohpd.debug.bg"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->ft:Z

    const-string v1, "persist.sys.ohpd.notify"

    const-wide/32 v2, 0x36ee80

    invoke-static {v1, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/server/am/OnePlusHighPowerDetector;->gt:J

    const-string v1, "persist.sys.bgc.multiply"

    const/4 v2, 0x7

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/am/OnePlusHighPowerDetector;->ht:I

    const-string v1, "persist.sys.bgc.notify"

    const-wide/32 v2, 0x5265c00

    invoke-static {v1, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/server/am/OnePlusHighPowerDetector;->it:J

    const/4 v1, 0x1

    const-string v2, "persist.sys.ohpd.onlineconfig"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->jt:Z

    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->sInstance:Lcom/android/server/am/OnePlusHighPowerDetector;

    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->ft:Z

    const/16 v3, 0x3c

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/16 v2, 0xb4

    :goto_0
    mul-int/lit16 v2, v2, 0x3e8

    sput v2, Lcom/android/server/am/OnePlusHighPowerDetector;->Tt:I

    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->ft:Z

    const/16 v4, 0x12c

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    mul-int/lit16 v2, v2, 0x3e8

    sput v2, Lcom/android/server/am/OnePlusHighPowerDetector;->Ut:I

    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->ft:Z

    const/16 v5, 0xa

    if-eqz v2, :cond_2

    move v2, v5

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    mul-int/lit16 v2, v2, 0x3e8

    sput v2, Lcom/android/server/am/OnePlusHighPowerDetector;->Vt:I

    const v2, 0x1b7740

    sput v2, Lcom/android/server/am/OnePlusHighPowerDetector;->Wt:I

    const v2, 0x493e0

    sput v2, Lcom/android/server/am/OnePlusHighPowerDetector;->Xt:I

    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->ft:Z

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    move v2, v4

    :goto_3
    mul-int/lit16 v2, v2, 0x3e8

    sput v2, Lcom/android/server/am/OnePlusHighPowerDetector;->Yt:I

    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->ft:Z

    const/4 v6, 0x2

    if-eqz v2, :cond_4

    move v2, v6

    goto :goto_4

    :cond_4
    const/16 v2, 0x14

    :goto_4
    mul-int/2addr v2, v3

    mul-int/lit16 v2, v2, 0x3e8

    sput v2, Lcom/android/server/am/OnePlusHighPowerDetector;->Zt:I

    sput-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->_t:Z

    const/4 v2, 0x4

    new-array v7, v2, [I

    sget-boolean v8, Lcom/android/server/am/OnePlusHighPowerDetector;->ft:Z

    if-eqz v8, :cond_5

    move v8, v3

    goto :goto_5

    :cond_5
    move v8, v4

    :goto_5
    mul-int/lit16 v8, v8, 0x3e8

    aput v8, v7, v0

    sget-boolean v8, Lcom/android/server/am/OnePlusHighPowerDetector;->ft:Z

    if-eqz v8, :cond_6

    goto :goto_6

    :cond_6
    move v3, v4

    :goto_6
    mul-int/lit16 v3, v3, 0x3e8

    aput v3, v7, v1

    sget-boolean v3, Lcom/android/server/am/OnePlusHighPowerDetector;->ft:Z

    const/16 v4, 0x78

    if-eqz v3, :cond_7

    move v3, v4

    goto :goto_7

    :cond_7
    const/16 v3, 0x258

    :goto_7
    mul-int/lit16 v3, v3, 0x3e8

    aput v3, v7, v6

    const/4 v3, 0x3

    sget-boolean v8, Lcom/android/server/am/OnePlusHighPowerDetector;->ft:Z

    if-eqz v8, :cond_8

    goto :goto_8

    :cond_8
    const/16 v4, 0x4b0

    :goto_8
    mul-int/lit16 v4, v4, 0x3e8

    aput v4, v7, v3

    sput-object v7, Lcom/android/server/am/OnePlusHighPowerDetector;->au:[I

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    sput-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->bu:[I

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    sput-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->cu:[I

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    sput-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->du:[I

    sput v5, Lcom/android/server/am/OnePlusHighPowerDetector;->eu:I

    const/high16 v2, 0x1400000

    sput v2, Lcom/android/server/am/OnePlusHighPowerDetector;->fu:I

    sput v6, Lcom/android/server/am/OnePlusHighPowerDetector;->gu:I

    sput v6, Lcom/android/server/am/OnePlusHighPowerDetector;->hu:I

    const/16 v2, 0x2c

    sput v2, Lcom/android/server/am/OnePlusHighPowerDetector;->iu:I

    const-string v2, "/sys/class/thermal/thermal_zone27/temp"

    sput-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->ju:Ljava/lang/String;

    sput-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->lu:Z

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->sConfigLock:Ljava/lang/Object;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mu:Ljava/lang/Object;

    sput-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->nu:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->pu:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->qu:Z

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->ru:Ljava/lang/Object;

    const-string v2, ""

    sput-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mRegion:Ljava/lang/String;

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->Zj:I

    sput-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->tu:Z

    sput-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->uu:Z

    sput-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->vu:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->wu:Z

    sput-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->xu:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->Fu:Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 4
        0xd6d8
        0xd6d9
        0xd6da
        0xd6de
    .end array-data

    :array_1
    .array-data 4
        0x3e8
        0x14
        0xf
        0x3e8
    .end array-data

    :array_2
    .array-data 4
        0x14
        0xf
        0xa
        0x14
    .end array-data
.end method

.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/BatteryStatsService;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->wr:Landroid/util/SparseArray;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->xr:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->yr:Z

    sget-object v2, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;->NA:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mRestrictType:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->zr:Z

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Ar:Ljava/util/HashSet;

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Br:Z

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Cr:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Dr:J

    iput v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Er:I

    const/4 v4, 0x4

    new-array v4, v4, [J

    iput-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Fr:[J

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Gr:Z

    iput v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Hr:I

    iput-wide v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Ir:J

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Jr:Z

    const-string v4, "persist.sys.bgc"

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Nr:Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Or:Ljava/util/ArrayList;

    iput-wide v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Sr:J

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Tr:Z

    const-string v4, "android.hardware.camera.provider@2.4-service"

    iput-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Ur:Ljava/lang/String;

    iput-wide v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Vr:J

    const/16 v4, 0x50

    iput v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Wr:I

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Xr:Lcom/android/server/am/OnePlusHighPowerDetector$zta;

    iput-wide v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Yr:J

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Zr:Z

    iput-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->es:Ljava/lang/String;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->fs:Ljava/util/HashSet;

    iput-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->gs:Ljava/lang/String;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->hs:Ljava/util/HashSet;

    iput-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->js:Ljava/lang/String;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ks:Ljava/util/HashSet;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ls:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ms:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->os:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->hk:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ps:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->qs:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->rs:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ss:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->us:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vs:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ws:Z

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->xs:Z

    iput v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ys:I

    iput v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->zs:I

    const/4 v2, 0x6

    iput v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->As:I

    const/16 v2, 0x3c

    iput v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Bs:I

    const/4 v2, 0x7

    iput v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Cs:I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Ds:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Es:Ljava/util/HashMap;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Fs:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Gs:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Hs:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Is:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Js:Ljava/util/List;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->fj:Ljava/util/HashSet;

    iput-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mPowerManager:Landroid/os/PowerManager;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Ks:Ljava/util/HashMap;

    new-instance v2, Lcom/android/server/am/c;

    invoke-direct {v2, p0}, Lcom/android/server/am/c;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;)V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->enable:Z

    const-string v3, "persist.sys.ohpd.enable"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->enable:Z

    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    const-string v3, "persist.sys.ohpd.debug"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    const-string v2, "ro.build.beta"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    sput-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->nu:Z

    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->enable:Z

    const-string v3, "OHPD"

    if-nez v2, :cond_1

    const-string p0, "disabled"

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v2, "OnePlusHighPowerDetector--constructor"

    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    sput-object p1, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    sput-object p2, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    new-instance p2, Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector$tsu;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;Landroid/os/Looper;)V

    sput-object p2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    sput-object p3, Lcom/android/server/am/OnePlusHighPowerDetector;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    const-class p1, Lcom/android/server/AppStateTracker;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/AppStateTracker;

    iput-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    new-instance p1, Lcom/android/server/am/OnePlusBGController;

    sget-object p2, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    sget-object p3, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-direct {p1, p2, p3, v2, v4}, Lcom/android/server/am/OnePlusBGController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BatteryStatsService;)V

    iput-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vr:Lcom/android/server/am/OnePlusBGController;

    new-array p1, v0, [I

    const/16 p2, 0x62

    aput p2, p1, v1

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "OP_FEATURE_BGC enabled, disable RNK_ON"

    invoke-static {p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    sput-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->_t:Z

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Nr:Z

    goto :goto_1

    :cond_2
    const-string p1, "OP_FEATURE_BGC disabled, enable RNK_ON"

    invoke-static {p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    sput-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->_t:Z

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Nr:Z

    :goto_1
    invoke-direct {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->is:Lcom/android/internal/statusbar/IStatusBarService;

    sget-boolean p1, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[BGC] BGC_NOTIFY_MULTIPLY="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/android/server/am/OnePlusHighPowerDetector;->ht:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", BGC_NOTIFY_INTERVAL="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide p2, Lcom/android/server/am/OnePlusHighPowerDetector;->it:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-array p1, v0, [I

    const/16 p2, 0x8d

    aput p2, p1, v1

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "OP_FEATURE_RESRTICT_PKG_BASE_ON_NETWORK enabled, update mIsAggressive to true by default"

    invoke-static {p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->yr:Z

    :cond_4
    sget-object p1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_5

    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mPowerManager:Landroid/os/PowerManager;

    sget-object p1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    const-string p2, "location"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLocationManager:Landroid/location/LocationManager;

    :cond_5
    invoke-direct {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->init()V

    return-void
.end method

.method private Hb(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->Fu:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->fj:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private Ib(Ljava/lang/String;)V
    .locals 11

    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ms:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v4, v2, v3

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ms:Ljava/util/HashMap;

    aget-object v5, v2, v0

    new-instance v6, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;

    aget-object v7, v2, v3

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const/4 v9, 0x2

    aget-object v10, v2, v9

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-direct {v6, p0, v7, v8, v10}, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;JZ)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BGC] packageName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", lastNotifyTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v2, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isClickIgnoreAction:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v2, v9

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private Jb(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0
.end method

.method private static Kb(Ljava/lang/String;)V
    .locals 8

    if-nez p0, :cond_0

    const/4 v0, 0x0

    const-string v1, "persist.sys.ohpd.threshold"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCpuThreshold # thresh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", threshold="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    if-eqz v0, :cond_4

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->sConfigLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->cu:[I

    const/high16 v5, 0x200000

    aput v5, v4, v3

    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->du:[I

    aget-object v5, p0, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v3

    const/4 v4, 0x1

    :goto_1
    if-ge v4, v2, :cond_1

    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->du:[I

    aget-object v6, p0, v4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v4

    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->cu:[I

    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->du:[I

    add-int/lit8 v7, v4, -0x1

    aget v6, v6, v7

    aput v6, v5, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    :try_start_1
    const-string p0, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCpuThreshold # NumberFormatException : threshold="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-boolean p0, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz p0, :cond_3

    const-string p0, ""

    const-string v0, ""

    :goto_2
    if-ge v3, v2, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/android/server/am/OnePlusHighPowerDetector;->du:[I

    aget p0, p0, v3

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->cu:[I

    aget v0, v0, v3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    const-string v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCpuThreshold # min="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " max="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    monitor-exit v1

    goto :goto_4

    :goto_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    :goto_4
    return-void
.end method

.method private Zm()V
    .locals 10

    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v0, :cond_0

    const-string v0, "OHPD"

    const-string v1, "[LightIdle] checkLightIdleCameraProcessKillLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->ru:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Xr:Lcom/android/server/am/OnePlusHighPowerDetector$zta;

    if-eqz v3, :cond_5

    sget-boolean v3, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v3, :cond_1

    const-string v3, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LightIdle] Try to judge camera pid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Xr:Lcom/android/server/am/OnePlusHighPowerDetector$zta;

    iget v5, v5, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mLastCameraProcUsage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Vr:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", threshold="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Wr:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mEnableMonitorCameraProc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/am/OnePlusHighPowerDetector;->pu:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mEnableKillBusyCameraProc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/am/OnePlusHighPowerDetector;->qu:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Xr:Lcom/android/server/am/OnePlusHighPowerDetector$zta;

    iget v3, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pid:I

    if-eqz v3, :cond_5

    iget-wide v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Vr:J

    iget v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Wr:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_5

    iget-wide v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Vr:J

    sget-boolean v5, Lcom/android/server/am/OnePlusHighPowerDetector;->qu:Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_3

    sget-boolean v5, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v5, :cond_2

    const-string v5, "OHPD"

    const-string v8, "[LightIdle] Killing it !"

    invoke-static {v5, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Xr:Lcom/android/server/am/OnePlusHighPowerDetector$zta;

    iget v5, v5, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pid:I

    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Xr:Lcom/android/server/am/OnePlusHighPowerDetector$zta;

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Vr:J

    move v5, v6

    goto :goto_0

    :cond_3
    move v5, v7

    :goto_0
    sget-object v8, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    const v9, 0xd6e6

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Ur:Ljava/lang/String;

    iput-object p0, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    long-to-int p0, v3

    iput p0, v8, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    move v6, v7

    :goto_1
    iput v6, v8, Landroid/os/Message;->arg2:I

    sget-object p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    invoke-virtual {p0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p0, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LightIdle] checkLightIdleCameraProcessKillLocked in "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OHPD"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic _b()Lcom/android/server/am/ActivityManagerService;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method private _m()V
    .locals 30

    move-object/from16 v0, p0

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v1, :cond_0

    const-string v1, "OHPD"

    const-string v2, "[LightIdle] checkLightIdleProcessKillLocked"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->en()[Ljava/lang/String;

    move-result-object v10

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x2

    const-string v3, "com_oneplus_systemui_recent_task_lockd_list"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->parseLockedStr(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    sget-object v16, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v16

    :try_start_0
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-lez v1, :cond_b

    add-int/lit8 v4, v1, -0x1

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    sget-boolean v17, Lcom/android/server/am/OnePlusHighPowerDetector;->bt:Z

    if-eqz v17, :cond_1

    const-string v2, "OHPD"

    move-object/from16 v18, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v8

    const-string v8, "[LightIdle] i="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", pid="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", uid="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", userId="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", app.info.packageName="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", app.info.uid="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", app.info.flags=0x"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v20, v4

    const/16 v4, 0x10

    invoke-static {v8, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", shortName="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move/from16 v20, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v8

    :goto_1
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->xu:Z

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v4, "com.google.android.gms"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->Sr:J

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->du:[I

    const/4 v8, 0x0

    aget v2, v2, v8

    move-object/from16 v21, v9

    int-to-long v8, v2

    cmp-long v2, v4, v8

    if-ltz v2, :cond_4

    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v2, :cond_2

    const-string v2, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LightIdle] Observe GMS process-["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "], Uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " busy("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->Sr:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "%)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v2, "[LightIdle] Kill GMS Busy ProcessRecord"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    :goto_2
    move-object v2, v3

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object v0, v10

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v29, v21

    goto/16 :goto_4

    :cond_3
    move-object/from16 v21, v9

    :cond_4
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {v0, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->g(I)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->o(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->bt:Z

    if-eqz v2, :cond_5

    const-string v2, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LightIdle] skip uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " due to system packages"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-direct {v0, v7, v6, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Ljava/util/HashSet;Ljava/util/HashSet;Lcom/android/server/am/ProcessRecord;)V

    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->you(Lcom/android/server/am/ProcessRecord;I)Z

    move-result v2

    sget-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->bt:Z

    if-eqz v4, :cond_7

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[LightIdle] needCheckProc:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eqz v2, :cond_a

    new-instance v9, Ljava/lang/StringBuffer;

    const-string v2, "[LightIdle] "

    invoke-direct {v9, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v8, 0x0

    sget v17, Lcom/android/server/am/OnePlusHighPowerDetector;->Ut:I

    const/16 v22, 0x1

    move-object v4, v1

    move-object/from16 v1, p0

    move-object v2, v4

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-wide v3, v13

    move-object/from16 v25, v18

    move-object/from16 v26, v6

    move-object v6, v9

    move-object/from16 v27, v7

    move v7, v8

    move-object/from16 v28, v19

    move/from16 v8, v17

    move-object/from16 v17, v9

    move-object/from16 v29, v21

    move-object v9, v15

    move-object v0, v10

    move/from16 v10, v22

    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Lcom/android/server/am/ProcessRecord;JILjava/lang/StringBuffer;ZILjava/util/List;Z)Z

    move-result v1

    if-nez v1, :cond_8

    move-object/from16 v1, v24

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v25

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget v2, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v4, v28

    invoke-virtual {v4, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v2, v23

    goto :goto_4

    :cond_8
    move-object/from16 v1, v24

    move-object/from16 v3, v25

    move-object/from16 v4, v28

    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->bt:Z

    if-eqz v2, :cond_9

    const-string v2, "OHPD"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v23

    :goto_3
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    move-object v2, v3

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object v0, v10

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v29, v21

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_3

    :goto_4
    move-object v10, v0

    move-object v5, v3

    move-object v8, v4

    move/from16 v1, v20

    move-object/from16 v6, v26

    move-object/from16 v7, v27

    move-object/from16 v9, v29

    move-object/from16 v0, p0

    move-object v3, v2

    goto/16 :goto_0

    :cond_b
    move-object v2, v3

    move-object v3, v5

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object v4, v8

    move-object/from16 v29, v9

    move-object v0, v10

    const/4 v8, 0x0

    if-eqz v0, :cond_e

    array-length v1, v0

    move v5, v8

    :goto_5
    if-ge v5, v1, :cond_e

    aget-object v6, v0, v5

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_c

    goto :goto_6

    :cond_c
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "OHPD"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[LightIdle] skip uid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " due to audio active"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_e
    move-object/from16 v0, v29

    if-eqz v0, :cond_10

    :goto_7
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v8, v1, :cond_10

    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    const-string v6, "OHPD"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[LightIdle] skip uid "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " due to locked ap : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_10
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v0, :cond_11

    const-string v0, "OHPD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LightIdle] needKillUidsSet: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OHPD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LightIdle] needSkipUidsSet: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OHPD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LightIdle] allFinishingUidsSet: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v27

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OHPD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LightIdle] nonFinishingUidsSet: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v26

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_11
    move-object/from16 v5, v26

    move-object/from16 v4, v27

    :goto_8
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[LightIdle][All finishing] kill (uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v6, v7, v1}, Lcom/android/server/am/ActivityManagerService;->killUid(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v0

    goto :goto_a

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LightIdle] got exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v0, :cond_14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[LightIdle] checkLightIdleProcessKillLocked in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OHPD"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    return-void

    :goto_a
    :try_start_2
    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method static synthetic access$100()Lcom/android/server/am/OnePlusHighPowerDetector$tsu;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    return-object v0
.end method

.method static synthetic access$1500()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private am()Z
    .locals 5

    sget v0, Lcom/android/server/am/OnePlusHighPowerDetector;->Zj:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "gsm.sim.operator.iso-country"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-lt v2, v3, :cond_3

    const-string v2, "in"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "cn"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->wa(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->wa(Z)V

    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BgDetect] responseSIMStateChanged # mccCountry="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ret="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OHPD"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    move v1, v4

    :goto_2
    return v1
.end method

.method private an()V
    .locals 2

    const-string v0, "ro.board.platform"

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Ds:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :try_start_0
    const-string p0, "sdm845"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "/data/system/nativeproc/proclist"

    if-eqz p0, :cond_0

    :try_start_1
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "msmnile"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/File;

    const-string v0, "/cache/nativeproc/proclist"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "OHPD"

    const-string v1, "fail to delete native monitor list file"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic bio(Lcom/android/server/am/OnePlusHighPowerDetector;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->dn()V

    return-void
.end method

.method private bio(Ljava/util/HashSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Ar:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    if-eqz p1, :cond_1

    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BGC] mark uid :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is under using network"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Ar:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method private bn()V
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->en()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BGC] gen activeAudioUidList in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OHPD"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v4, v4, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    :cond_1
    if-lez v4, :cond_2

    add-int/lit8 v4, v4, -0x1

    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v5, v5, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    const-string v6, "com.google.android.gms"

    invoke-direct {p0, v5, v2, v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Lcom/android/server/am/ProcessRecord;Ljava/util/List;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-boolean p0, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz p0, :cond_2

    const-string p0, "OHPD"

    const-string v2, "[BGC][GMS] Skip due to important client\'s dependency"

    invoke-static {p0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BGC] got exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BGC] loop check isImportantToPkg in "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OHPD"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_2
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private cjf(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->o(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v0, "com.android"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v0, "com.android.chrome"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.google.android.gms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.google.android.gsf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.google.android.packageinstaller"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string p1, "android.process"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method private cn()V
    .locals 7

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    const-string v3, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BGC] i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", iso="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", app.info.uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", f=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", isSys="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {p0, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->g(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isMulti="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {p0, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->h(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", sN="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic cno(Lcom/android/server/am/OnePlusHighPowerDetector;)Landroid/os/PowerManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method private dn()V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Bgdetect] whiteAppListSet :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Kr:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OHPD"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Bgdetect] blackAppListSet :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Pr:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OHPD"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Bgdetect] transientAppListSet :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Rr:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OHPD"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Bgdetect] blackExAppListSet :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Qr:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OHPD"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Bgdetect] gpsBlackListSet :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Mr:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OHPD"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Bgdetect] killProcList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->_r:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OHPD"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Bgdetect] quickKillProcList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->as:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OHPD"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Bgdetect] needHandleSystemFlagList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->bs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OHPD"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Bgdetect] level0KillList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->cs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OHPD"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Bgdetect] gmsMonitorList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OHPD"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[BGC] whiteBGCAppListSet :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Or:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OHPD"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/wm/OpWmInjector;->getSysAlertWindowUidsForScreenOff()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BGC] alertWindowUidsSoff :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OHPD"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/wm/OpWmInjector;->getSysAlertWindowUids()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BGC] alertWindowUid :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OHPD"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/wm/OpWmInjector;->getVisibleWindowUids()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BGC] ori visibleUids :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OHPD"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/wm/OpWmInjector;->getVisibleWindowUids()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BGC] inj visibleUids2 :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OHPD"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->en()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BGC] active audio :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OHPD"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vr:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusBGController;->Eb()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BGC] active step counter uids :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OHPD"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "com_oneplus_systemui_recent_task_lockd_list"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->parseLockedStr(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BGC] locked :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OHPD"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->wr:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->wr:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->wr:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->wr:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/OnePlusBGController$kth;

    iget-boolean v4, v4, Lcom/android/server/am/OnePlusBGController$kth;->am:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "F"

    goto :goto_2

    :cond_1
    const-string v3, "K"

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const-string v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BGC] mBGCUidArray :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Ar:Ljava/util/HashSet;

    if-eqz v0, :cond_5

    monitor-enter v0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Ar:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_4
    const-string v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BGC] mBGCUsingTrafficUidSet :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    goto :goto_5

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_5
    :goto_5
    invoke-direct {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->xl()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[BGC] currentIME :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OHPD"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v2
.end method

.method private en()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    const-string v1, "get_uid"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ":0"

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->Jb(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private fn()I
    .locals 0

    sget-boolean p0, Lcom/android/server/am/OnePlusHighPowerDetector;->uu:Z

    if-eqz p0, :cond_0

    sget p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Wt:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Xt:I

    :goto_0
    return p0
.end method

.method private forceStopPackage(Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/server/am/OpAppBootManagerInjector;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/am/OpAppBootManagerInjector;->updateAppStopInfo(Ljava/lang/String;)V

    const v0, 0x8000

    invoke-static {p1, v0}, Lcom/android/server/am/OpAppBootManagerInjector;->updatePowerFlag(Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OnePlusHighPowerDetector;->postProcessOfForceStop(Ljava/lang/String;I)V

    return-void
.end method

.method public static getDeviceTemp()I
    .locals 6

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    :try_start_0
    new-array v3, v1, [C

    new-instance v4, Ljava/io/FileReader;

    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->ju:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v4, v3, v2, v1}, Ljava/io/FileReader;->read([CII)I

    move-result v1

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3, v2, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sget-boolean v3, Lcom/android/server/am/OnePlusHighPowerDetector;->wu:Z

    if-eqz v3, :cond_0

    div-int/lit16 v1, v1, 0x3e8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v1

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_0

    :catch_0
    :try_start_4
    const-string v1, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get device temp w "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->ju:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v2

    :goto_0
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method public static final getInstance()Lcom/android/server/am/OnePlusHighPowerDetector;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/BatteryStatsService;)Lcom/android/server/am/OnePlusHighPowerDetector;

    move-result-object v0

    return-object v0
.end method

.method private getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 0

    const-string p0, "statusbar"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p0

    return-object p0
.end method

.method private gn()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.oem.intent.action.POWER_NOTIFICATION_CANCEL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/d;

    invoke-direct {v2, p0}, Lcom/android/server/am/d;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private hmo(II)I
    .locals 69

    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v1, p2

    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkExcessiveCpuUsageLocked # level="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", minCheckDuration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OHPD"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v3}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v23

    iget-object v3, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->Fr:[J

    aget-wide v3, v3, v10

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    new-array v3, v5, [I

    const/16 v6, 0x11

    aput v6, v3, v4

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move v6, v5

    goto :goto_1

    :cond_2
    :goto_0
    move v6, v4

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    iget-object v3, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->Fr:[J

    aget-wide v18, v3, v10

    move/from16 v21, v6

    sub-long v5, v24, v18

    move-wide/from16 v18, v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-wide/from16 v26, v4

    iget-wide v3, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->Dr:J

    const-wide/16 v16, 0x0

    cmp-long v3, v3, v16

    if-nez v3, :cond_3

    move-wide/from16 v3, v26

    iput-wide v3, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->Dr:J

    move-object/from16 v22, v7

    goto :goto_2

    :cond_3
    move-object/from16 v22, v7

    move-wide/from16 v3, v26

    iget-wide v6, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->Dr:J

    sub-long v6, v3, v6

    const-wide/32 v26, 0x5265c00

    cmp-long v6, v6, v26

    if-lez v6, :cond_4

    iput-wide v3, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->Dr:J

    :cond_4
    :goto_2
    int-to-long v3, v1

    cmp-long v1, v18, v3

    const-wide/16 v6, 0x3e8

    if-gez v1, :cond_5

    const-string v1, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[BgDetect]sample period is less than min check duration of level "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v6, v18, v6

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " secs critical "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->bu:[I

    aget v1, v1, v10

    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    sub-long v3, v3, v18

    const-wide/16 v6, 0xbb8

    add-long/2addr v3, v6

    invoke-virtual {v5, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v2

    const/4 v1, -0x1

    return v1

    :cond_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    invoke-static {}, Lcom/android/server/wm/OpWmInjector;->getVisibleWindowUids()Ljava/util/List;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->en()[Ljava/lang/String;

    move-result-object v4

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->mLocationManager:Landroid/location/LocationManager;

    if-nez v1, :cond_6

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->mLocationManager:Landroid/location/LocationManager;

    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v2, :cond_7

    const-string v1, "gps"

    invoke-virtual {v2, v1}, Landroid/location/LocationManager;->getCurrentProviderPackageListsForInteger(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    goto :goto_3

    :cond_7
    const-string v2, "OHPD"

    const-string v3, "checkExcessiveCpuUsageLocked mLocationManager is null, return"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move-object v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentGpsUidList"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OHPD"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, -0x2

    const-string v6, "com_oneplus_systemui_recent_task_lockd_list"

    invoke-static {v1, v6, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->parseLockedStr(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v28, 0x28

    const/4 v3, 0x3

    if-ne v10, v3, :cond_a

    const/4 v3, 0x1

    new-array v6, v3, [I

    const/4 v3, 0x0

    aput v28, v6, v3

    move-wide/from16 v31, v11

    const/4 v11, 0x3

    invoke-static {v6}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v33

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect] get app rank in "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v35

    move-object/from16 v29, v1

    move-object v3, v2

    sub-long v1, v35, v33

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/wm/OpWmInjector;->getSysAlertWindowUidsForScreenOff()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v34, v1

    const-string v1, "[BgDetect] alertWindowUid "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    move-object/from16 v1, v34

    const/4 v11, 0x3

    goto :goto_4

    :cond_8
    move-object/from16 v34, v1

    move-object v11, v6

    move-object/from16 v12, v29

    move-object/from16 v6, v34

    goto :goto_6

    :cond_9
    move-object v3, v2

    goto :goto_5

    :cond_a
    move-object v3, v2

    move-wide/from16 v31, v11

    :goto_5
    move-object v6, v1

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_6
    if-nez v10, :cond_11

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mu:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->getDeviceTemp()I

    move-result v2

    sget-boolean v29, Lcom/android/server/am/OnePlusHighPowerDetector;->vu:Z

    if-eqz v29, :cond_b

    move-object/from16 v29, v3

    sget v3, Lcom/android/server/am/OnePlusHighPowerDetector;->iu:I

    if-lt v2, v3, :cond_c

    iget v3, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->Er:I

    move-object/from16 v34, v4

    sget v4, Lcom/android/server/am/OnePlusHighPowerDetector;->iu:I

    if-lt v3, v4, :cond_d

    const-string v3, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v35, v5

    const-string v5, "[BgDetect] Update needHandleSkipApps to true, curr temp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", thold "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/am/OnePlusHighPowerDetector;->iu:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    goto :goto_7

    :cond_b
    move-object/from16 v29, v3

    :cond_c
    move-object/from16 v34, v4

    :cond_d
    move-object/from16 v35, v5

    const/4 v3, 0x0

    :goto_7
    iput v2, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->Er:I

    sget-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v4, :cond_e

    sget-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->vu:Z

    if-eqz v4, :cond_e

    sget-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->lu:Z

    if-eqz v4, :cond_e

    const-string v3, "OHPD"

    const-string v4, "[BgDetect] Update needHandleSkipApps to true"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    goto :goto_8

    :cond_e
    move v4, v3

    :goto_8
    iget-boolean v3, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->Jr:Z

    if-nez v3, :cond_10

    sget v3, Lcom/android/server/am/OnePlusHighPowerDetector;->iu:I

    if-lt v2, v3, :cond_f

    goto :goto_9

    :cond_f
    move/from16 v36, v4

    const/4 v2, 0x0

    goto :goto_a

    :cond_10
    :goto_9
    const-string v3, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v36, v4

    const-string v4, "[BgDetect] Batt drain triggered, curr temp "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", thold "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/OnePlusHighPowerDetector;->iu:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :goto_a
    monitor-exit v1

    move v5, v2

    goto :goto_b

    :catchall_0
    move-exception v0

    move-object v2, v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_11
    move-object/from16 v29, v3

    move-object/from16 v34, v4

    move-object/from16 v35, v5

    const/4 v5, 0x0

    const/16 v36, 0x0

    :goto_b
    sget-object v37, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v37

    :try_start_2
    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->Fr:[J

    aput-wide v24, v1, v10

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect]chkExcessCpu level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " doKills: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v21

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " critical "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " uptime: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v38, v6

    move-object/from16 v21, v7

    move-wide/from16 v6, v18

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v39, v12

    new-instance v12, Landroid/util/ArrayMap;

    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v40, v11

    new-instance v11, Landroid/util/ArrayMap;

    invoke-direct {v11}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v41, v12

    new-instance v12, Landroid/util/ArrayMap;

    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v42, v12

    new-instance v12, Landroid/util/ArrayMap;

    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    if-nez v10, :cond_12

    move-object/from16 v18, v4

    iget-object v4, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->hk:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    move-object/from16 v19, v8

    :try_start_3
    iget-object v8, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->hk:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    iget-object v8, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->rs:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    monitor-exit v4

    goto :goto_c

    :catchall_1
    move-exception v0

    move-object v1, v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1

    :cond_12
    move-object/from16 v18, v4

    move-object/from16 v19, v8

    :goto_c
    const/4 v4, 0x1

    if-ne v10, v4, :cond_13

    iget-object v4, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->ps:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    :try_start_5
    iget-object v8, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->ps:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    iget-object v8, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->ss:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    monitor-exit v4

    goto :goto_d

    :catchall_2
    move-exception v0

    move-object v1, v0

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v1

    :cond_13
    :goto_d
    const/4 v8, 0x2

    if-ne v10, v8, :cond_14

    iget-object v4, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->qs:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    :try_start_7
    iget-object v8, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->qs:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    iget-object v8, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->us:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    monitor-exit v4

    goto :goto_e

    :catchall_3
    move-exception v0

    move-object v1, v0

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    :cond_14
    :goto_e
    :try_start_9
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v4, v4, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_f
    const-wide/16 v43, 0x64

    if-lez v4, :cond_4b

    add-int/lit8 v8, v4, -0x1

    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v4, v4, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    move/from16 v45, v8

    iget-object v8, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->q(Ljava/lang/String;)Z

    move-result v8
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    move-object/from16 v46, v14

    if-eqz v8, :cond_16

    const/4 v14, 0x1

    if-eq v10, v14, :cond_15

    const/4 v14, 0x2

    if-ne v10, v14, :cond_16

    goto :goto_10

    :cond_15
    const/4 v14, 0x2

    :goto_10
    :try_start_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[BgDetect] level:"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " disabledLevel:"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    move/from16 v26, v3

    move/from16 v50, v5

    move-object v8, v11

    move-object/from16 p2, v12

    move-object/from16 v57, v13

    move-object/from16 v48, v15

    move-object/from16 v56, v21

    move-object/from16 v55, v22

    move-object/from16 v54, v38

    move/from16 v30, v45

    move-object/from16 v58, v46

    :goto_11
    move-object v12, v2

    move-wide/from16 v45, v6

    move v11, v10

    move-object/from16 v7, v42

    move-object v10, v1

    move-object/from16 v1, v19

    goto/16 :goto_2c

    :catch_0
    move-exception v0

    move-object v1, v0

    move/from16 v26, v3

    move/from16 v50, v5

    :goto_12
    move v11, v10

    goto/16 :goto_81

    :cond_16
    :try_start_b
    invoke-virtual {v9, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->cno(Lcom/android/server/am/ProcessRecord;)Z

    move-result v14
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    if-nez v14, :cond_1c

    :try_start_c
    iget-object v14, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v14}, Lcom/android/server/am/OnePlusHighPowerDetector;->o(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1c

    invoke-virtual {v9, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->bio(Lcom/android/server/am/ProcessRecord;)Z

    move-result v14

    if-eqz v14, :cond_1c

    iget v8, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v47, v13

    const-string v13, "proc "

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "(pid : "

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ") sys pkg"

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v2, v8, v13}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Landroid/util/ArrayMap;ILjava/lang/String;)V

    if-eqz v5, :cond_17

    iget v8, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "proc "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "(pid : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ") sys pkg"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v1, v8, v13}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Landroid/util/ArrayMap;ILjava/lang/String;)V

    :cond_17
    if-nez v10, :cond_1b

    iget-object v8, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v13, "com.google.android.gms"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    if-eqz v3, :cond_18

    iget-object v8, v4, Lcom/android/server/am/ProcessRecord;->lastCpuTimeBgMonitor:[J

    aget-wide v13, v8, v10

    const-wide/16 v16, 0x0

    cmp-long v8, v13, v16

    if-lez v8, :cond_18

    iget-wide v13, v4, Lcom/android/server/am/ProcessRecord;->curCpuTimeBgMonitor:J

    iget-object v8, v4, Lcom/android/server/am/ProcessRecord;->lastCpuTimeBgMonitor:[J

    aget-wide v48, v8, v10

    sub-long v13, v13, v48

    mul-long v43, v43, v13

    move-object/from16 v49, v1

    move-object/from16 v48, v2

    div-long v1, v43, v6

    iput-wide v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->Sr:J

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v1, :cond_19

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[BgDetect] gms usage : "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v50, v6

    iget-wide v6, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->Sr:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " cputimeUsed "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " curr "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v4, Lcom/android/server/am/ProcessRecord;->curCpuTimeBgMonitor:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " last "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->lastCpuTimeBgMonitor:[J

    aget-wide v6, v6, v10

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :cond_18
    move-object/from16 v49, v1

    move-object/from16 v48, v2

    :cond_19
    move-wide/from16 v50, v6

    :goto_13
    invoke-virtual {v9, v4, v10}, Lcom/android/server/am/OnePlusHighPowerDetector;->sis(Lcom/android/server/am/ProcessRecord;I)V

    iget-boolean v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->zr:Z

    if-eqz v1, :cond_1d

    iget-boolean v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->yr:Z

    if-eqz v1, :cond_1d

    iget-wide v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->Sr:J

    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->du:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-long v13, v6

    cmp-long v1, v1, v13

    if-ltz v1, :cond_1d

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v1, :cond_1a

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BgDetect] Observe GMS process-["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "], Uid="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " busy("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->Sr:J

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "%) and kill"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    const-string v1, "[BgDetect] Kill GMS Busy ProcessRecord"

    const/4 v6, 0x1

    invoke-virtual {v4, v1, v6}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto :goto_14

    :cond_1b
    move/from16 v26, v3

    move/from16 v50, v5

    move-object v8, v11

    move-object/from16 p2, v12

    move-object/from16 v48, v15

    move-object/from16 v56, v21

    move-object/from16 v55, v22

    move-object/from16 v54, v38

    move/from16 v30, v45

    move-object/from16 v58, v46

    move-object/from16 v57, v47

    goto/16 :goto_11

    :cond_1c
    move-object/from16 v49, v1

    move-object/from16 v48, v2

    move-wide/from16 v50, v6

    move-object/from16 v47, v13

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v3, :cond_1e

    invoke-virtual {v9, v4, v10}, Lcom/android/server/am/OnePlusHighPowerDetector;->sis(Lcom/android/server/am/ProcessRecord;I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    :cond_1d
    :goto_14
    move/from16 v26, v3

    move-object v8, v11

    move-object/from16 p2, v12

    move-object/from16 v1, v19

    move-object/from16 v56, v21

    move-object/from16 v55, v22

    move-object/from16 v54, v38

    move-object/from16 v7, v42

    move/from16 v30, v45

    move-object/from16 v58, v46

    move-object/from16 v57, v47

    move-object/from16 v12, v48

    move-wide/from16 v45, v50

    move/from16 v50, v5

    move v11, v10

    move-object/from16 v48, v15

    move-object/from16 v10, v49

    goto/16 :goto_2c

    :cond_1e
    :try_start_d
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/server/wm/WindowProcessController;->lastFgTime:J
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    const-wide/16 v13, 0x0

    cmp-long v1, v1, v13

    if-lez v1, :cond_1f

    :try_start_e
    iget v1, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    iget-wide v13, v2, Lcom/android/server/wm/WindowProcessController;->lastFgTime:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    :cond_1f
    :try_start_f
    iget-wide v1, v4, Lcom/android/server/am/ProcessRecord;->curCpuTimeBgMonitor:J

    iget-object v13, v4, Lcom/android/server/am/ProcessRecord;->lastCpuTimeBgMonitor:[J

    aget-wide v13, v13, v10
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    sub-long v13, v1, v13

    const/4 v1, 0x3

    if-ne v10, v1, :cond_20

    :try_start_10
    invoke-virtual {v9, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->ibl(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    :cond_20
    :try_start_11
    iget-object v1, v4, Lcom/android/server/am/ProcessRecord;->lastCpuTimeBgMonitor:[J

    aget-wide v1, v1, v10
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    const-wide/16 v16, 0x0

    cmp-long v1, v1, v16

    if-gtz v1, :cond_27

    :try_start_12
    invoke-virtual {v9, v4, v10}, Lcom/android/server/am/OnePlusHighPowerDetector;->sis(Lcom/android/server/am/ProcessRecord;I)V

    iget-wide v1, v4, Lcom/android/server/am/ProcessRecord;->forkTime:J
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    sub-long v1, v24, v1

    const-wide/32 v52, 0xea60

    cmp-long v1, v1, v52

    if-lez v1, :cond_21

    :try_start_13
    iget-wide v1, v4, Lcom/android/server/am/ProcessRecord;->curCpuTimeBgMonitor:J

    mul-long v1, v1, v43

    iget-wide v6, v4, Lcom/android/server/am/ProcessRecord;->forkTime:J

    sub-long v6, v24, v6

    div-long/2addr v1, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "(pid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") level "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " usage "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " app.forkTime "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v43, v1

    iget-wide v1, v4, Lcom/android/server/am/ProcessRecord;->forkTime:J

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    move/from16 v26, v3

    move v6, v10

    move-object v7, v11

    move-object/from16 p2, v12

    move-object/from16 v27, v18

    move-object/from16 v11, v19

    move-object/from16 v56, v21

    move-object/from16 v55, v22

    move-object/from16 v54, v38

    move-wide/from16 v1, v43

    move/from16 v30, v45

    move-object/from16 v12, v48

    move-object/from16 v10, v49

    move-object/from16 v48, v15

    move-object v15, v4

    move-wide/from16 v3, v50

    move/from16 v50, v5

    goto/16 :goto_18

    :cond_21
    :try_start_14
    new-instance v52, Ljava/lang/StringBuffer;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    if-eqz v5, :cond_22

    :try_start_15
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->fn()I

    move-result v8
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_1
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    move-object/from16 v7, v49

    move-object/from16 v1, p0

    move-object/from16 v6, v48

    move-object v2, v4

    move-object/from16 p2, v12

    move-object/from16 v48, v15

    move-object/from16 v12, v18

    move/from16 v18, v3

    move-object v15, v4

    move-wide/from16 v3, v24

    move-object/from16 v49, v11

    move-wide/from16 v10, v50

    move/from16 v50, v5

    move/from16 v5, p1

    move-object/from16 v27, v12

    move/from16 v26, v18

    move-object/from16 v54, v38

    move-object v12, v6

    move-object/from16 v6, v52

    move-wide/from16 v16, v10

    move-object/from16 v56, v21

    move-object/from16 v55, v22

    move-object v10, v7

    move/from16 v7, v50

    move-object/from16 v11, v19

    move/from16 v30, v45

    :try_start_16
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Lcom/android/server/am/ProcessRecord;JILjava/lang/StringBuffer;ZI)Z

    move-result v1

    if-eqz v1, :cond_23

    iget v1, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v10, v1, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Landroid/util/ArrayMap;ILjava/lang/String;)V

    goto :goto_15

    :catch_1
    move-exception v0

    move/from16 v26, v3

    move/from16 v50, v5

    goto/16 :goto_17

    :cond_22
    move/from16 v26, v3

    move-object/from16 p2, v12

    move-object/from16 v27, v18

    move-object/from16 v56, v21

    move-object/from16 v55, v22

    move-object/from16 v54, v38

    move/from16 v30, v45

    move-object/from16 v12, v48

    move-object/from16 v10, v49

    move-wide/from16 v16, v50

    move/from16 v50, v5

    move-object/from16 v49, v11

    move-object/from16 v48, v15

    move-object/from16 v11, v19

    move-object v15, v4

    :cond_23
    :goto_15
    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    sget v8, Lcom/android/server/am/OnePlusHighPowerDetector;->Ut:I

    move-object/from16 v1, p0

    move-object v2, v15

    move-wide/from16 v3, v24

    move/from16 v5, p1

    move-object/from16 v6, v18

    move/from16 v7, v50

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Lcom/android/server/am/ProcessRecord;JILjava/lang/StringBuffer;ZI)Z

    move-result v1

    if-eqz v1, :cond_25

    iget v1, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v12, v1, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Landroid/util/ArrayMap;ILjava/lang/String;)V

    mul-long v13, v13, v43

    div-long v13, v13, v16

    iget v1, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v7, v49

    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget v1, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    long-to-int v2, v13

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    :cond_24
    iget v1, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    long-to-int v2, v13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_2
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    goto :goto_16

    :cond_25
    move-object/from16 v7, v49

    :goto_16
    move/from16 v6, p1

    move-wide/from16 v3, v16

    if-nez v6, :cond_26

    const-wide/16 v1, 0x0

    :try_start_17
    iput-wide v1, v15, Lcom/android/server/am/ProcessRecord;->lastSkipTime:J
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_4
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    :cond_26
    move-object v8, v7

    move-object v1, v11

    move-object/from16 v18, v27

    move-object/from16 v7, v42

    move-object/from16 v58, v46

    move-object/from16 v57, v47

    move-wide/from16 v45, v3

    move v11, v6

    goto/16 :goto_2c

    :catch_2
    move-exception v0

    :goto_17
    move/from16 v11, p1

    goto/16 :goto_80

    :catch_3
    move-exception v0

    move/from16 v26, v3

    move/from16 v50, v5

    move-object v1, v0

    goto/16 :goto_12

    :cond_27
    move/from16 v26, v3

    move v6, v10

    move-object v7, v11

    move-object/from16 p2, v12

    move-wide/from16 v1, v16

    move-object/from16 v27, v18

    move-object/from16 v11, v19

    move-object/from16 v56, v21

    move-object/from16 v55, v22

    move-object/from16 v54, v38

    move/from16 v30, v45

    move-object/from16 v12, v48

    move-object/from16 v10, v49

    move-object/from16 v48, v15

    move-object v15, v4

    move-wide/from16 v3, v50

    move/from16 v50, v5

    mul-long v43, v43, v13

    :try_start_18
    div-long v16, v43, v3

    move-wide/from16 v1, v16

    :goto_18
    iget-object v5, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-wide/from16 v18, v3

    const-string v3, "com.google.android.gms.persistent"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_5
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    if-eqz v3, :cond_28

    :try_start_19
    iget v3, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v4, "add gms-persistent to sys pkg"

    invoke-virtual {v9, v12, v3, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Landroid/util/ArrayMap;ILjava/lang/String;)V

    if-eqz v50, :cond_28

    iget v3, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v4, "add gms-persistent to sys pkg"

    invoke-virtual {v9, v10, v3, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Landroid/util/ArrayMap;ILjava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_4
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    goto :goto_19

    :catch_4
    move-exception v0

    move-object v1, v0

    move v11, v6

    goto/16 :goto_81

    :cond_28
    :goto_19
    :try_start_1a
    invoke-virtual {v9, v15}, Lcom/android/server/am/OnePlusHighPowerDetector;->ywr(Lcom/android/server/am/ProcessRecord;)Z

    move-result v3
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_5
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    if-eqz v3, :cond_29

    :try_start_1b
    iget v3, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v5, v47

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_4
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    goto :goto_1a

    :cond_29
    move-object/from16 v5, v47

    :goto_1a
    :try_start_1c
    invoke-virtual {v9, v15}, Lcom/android/server/am/OnePlusHighPowerDetector;->gck(Lcom/android/server/am/ProcessRecord;)Z

    move-result v3
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_5
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    if-eqz v3, :cond_2a

    :try_start_1d
    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v4, v46

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_2a
    move-object/from16 v4, v46

    :goto_1b
    const-wide/16 v16, 0xa

    cmp-long v3, v1, v16

    if-gtz v3, :cond_2d

    sget-boolean v3, Lcom/android/server/am/OnePlusHighPowerDetector;->et:Z

    if-eqz v3, :cond_2b

    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v46, v4

    const-string v4, "com.moblie.bestapps.webviewtest"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_4
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    if-eqz v3, :cond_2c

    goto :goto_1c

    :cond_2b
    move-object/from16 v46, v4

    :cond_2c
    move-object/from16 v47, v5

    goto :goto_1d

    :cond_2d
    move-object/from16 v46, v4

    :goto_1c
    :try_start_1e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "(pid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v15, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") level "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " usage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " bgtime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->lastCpuTimeBgMonitor:[J

    move-object/from16 v47, v5

    aget-wide v4, v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    :goto_1d
    invoke-virtual {v9, v15, v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->you(Lcom/android/server/am/ProcessRecord;I)Z

    move-result v3
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_5
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    if-nez v3, :cond_34

    :try_start_1f
    invoke-virtual {v9, v15}, Lcom/android/server/am/OnePlusHighPowerDetector;->tsu(Lcom/android/server/am/ProcessRecord;)Z

    move-result v3

    if-nez v3, :cond_34

    invoke-virtual {v9, v15}, Lcom/android/server/am/OnePlusHighPowerDetector;->cno(Lcom/android/server/am/ProcessRecord;)Z

    move-result v3

    if-nez v3, :cond_34

    invoke-virtual {v9, v15}, Lcom/android/server/am/OnePlusHighPowerDetector;->sis(Lcom/android/server/am/ProcessRecord;)Z

    move-result v3

    if-nez v3, :cond_34

    invoke-virtual {v9, v15}, Lcom/android/server/am/OnePlusHighPowerDetector;->kth(Lcom/android/server/am/ProcessRecord;)Z

    move-result v3

    if-eqz v3, :cond_2e

    goto/16 :goto_20

    :cond_2e
    if-nez v6, :cond_30

    if-eqz v8, :cond_2f

    sget v3, Lcom/android/server/am/OnePlusHighPowerDetector;->eu:I

    goto :goto_1e

    :cond_2f
    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->du:[I

    aget v3, v3, v6

    :goto_1e
    int-to-long v3, v3

    cmp-long v3, v1, v3

    if-ltz v3, :cond_30

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_30
    iget v3, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "proc "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "(pid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v15, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") stat "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v15, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v12, v3, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Landroid/util/ArrayMap;ILjava/lang/String;)V

    if-eqz v50, :cond_31

    iget v3, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "proc "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "(pid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v15, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") stat "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v15, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v10, v3, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Landroid/util/ArrayMap;ILjava/lang/String;)V

    :cond_31
    iget v3, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget v3, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    long-to-int v1, v1

    add-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    :cond_32
    iget v3, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1f
    if-nez v6, :cond_33

    const-wide/16 v3, 0x0

    iput-wide v3, v15, Lcom/android/server/am/ProcessRecord;->lastSkipTime:J
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_4
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    :cond_33
    move-object v8, v7

    move-object v1, v11

    move-object/from16 v7, v42

    move-object/from16 v58, v46

    move-object/from16 v57, v47

    move v11, v6

    move-wide/from16 v45, v18

    move-object/from16 v18, v27

    goto/16 :goto_2b

    :cond_34
    :goto_20
    const-wide/16 v3, 0x0

    :try_start_20
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v50, :cond_35

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->fn()I

    move-result v17
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_5
    .catchall {:try_start_20 .. :try_end_20} :catchall_9

    move-wide/from16 v21, v13

    move-wide v13, v3

    move-wide v3, v1

    move-object/from16 v1, p0

    move-object v2, v15

    move-wide v13, v3

    move-object/from16 v5, v46

    move-wide/from16 v45, v18

    move-wide/from16 v3, v24

    move-object/from16 v58, v5

    move-object/from16 v57, v47

    move/from16 v5, p1

    move-object/from16 v38, v11

    move v11, v6

    move-object/from16 v6, v16

    move-object/from16 v59, v7

    move/from16 v7, v50

    move/from16 v18, v8

    move/from16 v8, v17

    :try_start_21
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Lcom/android/server/am/ProcessRecord;JILjava/lang/StringBuffer;ZI)Z

    move-result v1

    if-eqz v1, :cond_36

    iget v1, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v10, v1, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Landroid/util/ArrayMap;ILjava/lang/String;)V

    goto :goto_21

    :cond_35
    move-object/from16 v59, v7

    move-object/from16 v38, v11

    move-wide/from16 v21, v13

    move-object/from16 v58, v46

    move-object/from16 v57, v47

    move-wide v13, v1

    move v11, v6

    move-wide/from16 v45, v18

    move/from16 v18, v8

    :cond_36
    :goto_21
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    sget v8, Lcom/android/server/am/OnePlusHighPowerDetector;->Ut:I

    move-object/from16 v1, p0

    move-object v2, v15

    move-wide/from16 v3, v24

    move/from16 v5, p1

    move-object/from16 v6, v16

    move/from16 v7, v50

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Lcom/android/server/am/ProcessRecord;JILjava/lang/StringBuffer;ZI)Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-virtual {v9, v15, v11}, Lcom/android/server/am/OnePlusHighPowerDetector;->sis(Lcom/android/server/am/ProcessRecord;I)V

    iget v1, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v12, v1, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Landroid/util/ArrayMap;ILjava/lang/String;)V

    if-eqz v18, :cond_37

    sget v1, Lcom/android/server/am/OnePlusHighPowerDetector;->eu:I

    goto :goto_22

    :cond_37
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->du:[I

    aget v1, v1, v11

    :goto_22
    int-to-long v1, v1

    cmp-long v1, v13, v1

    if-ltz v1, :cond_39

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect] skip proc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "(uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), reason= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v11, :cond_38

    move-object/from16 v1, v38

    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_38
    move-object/from16 v1, v38

    :goto_23
    if-nez v11, :cond_3a

    iget-wide v2, v15, Lcom/android/server/am/ProcessRecord;->lastSkipTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3a

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v15, Lcom/android/server/am/ProcessRecord;->lastSkipTime:J

    const-string v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BgDetect] set lastSkipTime for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "(uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    :cond_39
    move-object/from16 v1, v38

    :cond_3a
    :goto_24
    iget v2, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v8, v59

    invoke-virtual {v8, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget v2, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    long-to-int v3, v13

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    :cond_3b
    iget v2, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    long-to-int v3, v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_25
    move-object/from16 v18, v27

    move-object/from16 v7, v42

    goto/16 :goto_2c

    :cond_3c
    move-object/from16 v1, v38

    move-object/from16 v8, v59

    if-nez v11, :cond_3d

    const-wide/16 v2, 0x0

    iput-wide v2, v15, Lcom/android/server/am/ProcessRecord;->lastSkipTime:J

    :cond_3d
    if-eqz v18, :cond_3e

    sget v2, Lcom/android/server/am/OnePlusHighPowerDetector;->eu:I

    goto :goto_26

    :cond_3e
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->du:[I

    aget v2, v2, v11

    :goto_26
    int-to-long v2, v2

    cmp-long v2, v13, v2

    if-ltz v2, :cond_3f

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->cu:[I

    aget v2, v2, v11

    int-to-long v2, v2

    cmp-long v2, v13, v2

    if-ltz v2, :cond_41

    :cond_3f
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->et:Z

    if-eqz v2, :cond_40

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string v3, "com.android.chrome"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    :cond_40
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->et:Z

    if-eqz v2, :cond_48

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string v3, "com.moblie.bestapps.webviewtest"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    :cond_41
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v2, :cond_43

    const-string v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "catch level="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v18, :cond_42

    sget v4, Lcom/android/server/am/OnePlusHighPowerDetector;->eu:I

    goto :goto_27

    :cond_42
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->du:[I

    aget v4, v4, v11

    :goto_27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "<="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->cu:[I

    aget v4, v4, v11

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    if-nez v11, :cond_44

    monitor-enter v23
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_7
    .catchall {:try_start_21 .. :try_end_21} :catchall_9

    :try_start_22
    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v16, v23

    move/from16 v17, v2

    move-object/from16 v18, v3

    move-wide/from16 v19, v45

    invoke-virtual/range {v16 .. v22}, Lcom/android/internal/os/BatteryStatsImpl;->reportExcessiveCpuLocked(ILjava/lang/String;JJ)V

    monitor-exit v23

    goto :goto_28

    :catchall_4
    move-exception v0

    move-object v1, v0

    monitor-exit v23
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_4

    :try_start_23
    throw v1

    :cond_44
    :goto_28
    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_45

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_45

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v7, v27

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    const-string v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BgDetect]detect excessive cpu on process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "(pid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v15, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") level "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " usage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v2, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    :cond_45
    move-object/from16 v7, v27

    :cond_46
    :goto_29
    if-nez v11, :cond_47

    if-eqz v15, :cond_47

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v2, :cond_47

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord$PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->reportExcessiveCpu(Landroid/util/ArrayMap;)V

    :cond_47
    move-object/from16 v18, v7

    move-object/from16 v7, v42

    goto/16 :goto_2b

    :cond_48
    move-object/from16 v7, v27

    iget v2, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v6, v41

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    iget v2, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    long-to-int v3, v13

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    :cond_49
    iget v2, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    long-to-int v3, v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2a
    iget v2, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/OnePlusHighPowerDetector$you;

    iget v4, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v5, v15, Lcom/android/server/am/ProcessRecord;->pid:I

    move-object/from16 v41, v6

    iget-object v6, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v7

    iget-object v7, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/server/am/OnePlusHighPowerDetector$you;-><init>(IILjava/lang/String;I)V

    move-object/from16 v7, v42

    invoke-virtual {v7, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x0

    cmp-long v4, v13, v2

    if-lez v4, :cond_4a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect]accumulate usage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " from procName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    :cond_4a
    :goto_2b
    invoke-virtual {v9, v15, v11}, Lcom/android/server/am/OnePlusHighPowerDetector;->sis(Lcom/android/server/am/ProcessRecord;I)V

    :goto_2c
    move-object/from16 v19, v1

    move-object/from16 v42, v7

    move-object v1, v10

    move v10, v11

    move-object v2, v12

    move/from16 v3, v26

    move/from16 v4, v30

    move-wide/from16 v6, v45

    move-object/from16 v15, v48

    move/from16 v5, v50

    move-object/from16 v38, v54

    move-object/from16 v22, v55

    move-object/from16 v21, v56

    move-object/from16 v13, v57

    move-object/from16 v14, v58

    move-object/from16 v12, p2

    move-object v11, v8

    goto/16 :goto_f

    :catch_5
    move-exception v0

    move v11, v6

    goto/16 :goto_80

    :cond_4b
    move/from16 v26, v3

    move/from16 v50, v5

    move-wide/from16 v45, v6

    move-object v8, v11

    move-object/from16 p2, v12

    move-object/from16 v57, v13

    move-object/from16 v58, v14

    move-object/from16 v48, v15

    move-object/from16 v56, v21

    move-object/from16 v55, v22

    move-object/from16 v54, v38

    move-object/from16 v7, v42

    move-object v12, v2

    move v11, v10

    move-object v10, v1

    move-object/from16 v1, v19

    if-eqz v26, :cond_d9

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4d

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    move-object/from16 v4, v57

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4c

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "has visible window"

    invoke-virtual {v9, v12, v5, v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Landroid/util/ArrayMap;ILjava/lang/String;)V

    if-eqz v50, :cond_4c

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v5, "has visible window"

    invoke-virtual {v9, v10, v3, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Landroid/util/ArrayMap;ILjava/lang/String;)V

    :cond_4c
    move-object/from16 v57, v4

    goto :goto_2d

    :cond_4d
    move-object/from16 v4, v57

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4f

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v6, v58

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4e

    const-string v5, "has gps request"

    invoke-virtual {v9, v12, v3, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Landroid/util/ArrayMap;ILjava/lang/String;)V

    if-eqz v50, :cond_4e

    const-string v5, "has gps request"

    invoke-virtual {v9, v10, v3, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Landroid/util/ArrayMap;ILjava/lang/String;)V

    :cond_4e
    move-object/from16 v58, v6

    goto :goto_2e

    :cond_4f
    if-nez v11, :cond_52

    iget-object v2, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->Js:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_50
    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "audio active in last sample"

    invoke-virtual {v9, v12, v5, v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Landroid/util/ArrayMap;ILjava/lang/String;)V

    if-eqz v50, :cond_50

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v5, "audio active in last sample"

    invoke-virtual {v9, v10, v3, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Landroid/util/ArrayMap;ILjava/lang/String;)V

    goto :goto_2f

    :cond_51
    iget-object v2, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->Js:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_52
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v34, :cond_59

    move-object/from16 v3, v34

    array-length v5, v3

    const/4 v6, 0x0

    :goto_30
    if-ge v6, v5, :cond_59

    aget-object v13, v3, v6

    if-eqz v13, :cond_57

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_53

    goto :goto_31

    :cond_53
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_55

    const-string v13, "audio active"

    invoke-virtual {v9, v12, v14, v13}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Landroid/util/ArrayMap;ILjava/lang/String;)V

    if-eqz v50, :cond_54

    const-string v13, "audio active"

    invoke-virtual {v9, v10, v14, v13}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Landroid/util/ArrayMap;ILjava/lang/String;)V

    :cond_54
    if-nez v11, :cond_57

    iget-object v13, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->Js:Ljava/util/List;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_55
    move-object/from16 v15, v35

    invoke-interface {v15, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_58

    const-string v13, "has visible window & audio active"

    invoke-virtual {v9, v12, v14, v13}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Landroid/util/ArrayMap;ILjava/lang/String;)V

    if-eqz v50, :cond_56

    const-string v13, "has visible window & audio active"

    invoke-virtual {v9, v10, v14, v13}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Landroid/util/ArrayMap;ILjava/lang/String;)V

    :cond_56
    if-nez v11, :cond_58

    iget-object v13, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->Js:Ljava/util/List;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_32

    :cond_57
    :goto_31
    move-object/from16 v15, v35

    :cond_58
    :goto_32
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v35, v15

    goto :goto_30

    :cond_59
    move-object/from16 v15, v35

    const/16 v13, 0x3e7

    if-nez v11, :cond_62

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_62

    if-eqz v36, :cond_62

    const/4 v14, 0x0

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_62

    iget v1, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    iget v1, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    invoke-direct {v9, v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->cjf(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-nez v1, :cond_62

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->uu:Z

    if-eqz v1, :cond_5e

    iget v1, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_5b

    if-eqz v1, :cond_5a

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long v24, v24, v1

    sget v1, Lcom/android/server/am/OnePlusHighPowerDetector;->Ut:I

    int-to-long v1, v1

    cmp-long v1, v24, v1

    if-ltz v1, :cond_5a

    goto :goto_33

    :cond_5a
    move-object/from16 v61, v7

    move-object/from16 v49, v10

    move-object/from16 v15, v18

    move-object/from16 v60, v41

    move-object v10, v8

    goto :goto_36

    :cond_5b
    :goto_33
    iget-object v1, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, v13, :cond_5c

    const/4 v1, 0x1

    goto :goto_34

    :cond_5c
    move v1, v14

    :goto_34
    if-eqz v1, :cond_5d

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->rs:Ljava/util/HashMap;

    goto :goto_35

    :cond_5d
    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->hk:Ljava/util/HashMap;

    :goto_35
    move-object v2, v1

    iget-object v1, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v15, 0x0

    iget v1, v6, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v14, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v16, v1

    move-object/from16 v1, p0

    move-object v13, v6

    move-object/from16 v60, v41

    move v6, v15

    move-object/from16 v61, v7

    move-object/from16 v15, v18

    move/from16 v7, v16

    move-object/from16 v49, v10

    move-object v10, v8

    move v8, v14

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    iget-object v1, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v13, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v1, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const-string v5, "skip lru_huge"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Ljava/lang/String;IILjava/lang/String;I)V

    :goto_36
    move-object/from16 v14, v56

    goto/16 :goto_39

    :cond_5e
    move-object v13, v6

    move-object/from16 v61, v7

    move-object/from16 v49, v10

    move-object/from16 v15, v18

    move-object/from16 v60, v41

    move-object/from16 v14, v56

    move-object v10, v8

    invoke-virtual {v9, v13, v14}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Lcom/android/server/am/ProcessRecord;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_5f

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    iget-object v3, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BgDetect][Skip] kill "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " due to abnormally busy, proc state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v13, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->killUid(IILjava/lang/String;)V

    goto :goto_39

    :cond_5f
    iget-object v1, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/16 v2, 0x3e7

    if-ne v1, v2, :cond_60

    const/4 v1, 0x1

    goto :goto_37

    :cond_60
    const/4 v1, 0x0

    :goto_37
    if-eqz v1, :cond_61

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->rs:Ljava/util/HashMap;

    goto :goto_38

    :cond_61
    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->hk:Ljava/util/HashMap;

    :goto_38
    move-object v2, v1

    iget-object v1, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, v13, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v1, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    iget-object v1, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v13, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v1, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const-string v5, "skip lru_huge"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Ljava/lang/String;IILjava/lang/String;I)V

    goto :goto_39

    :cond_62
    move-object/from16 v61, v7

    move-object/from16 v49, v10

    move-object/from16 v15, v18

    move-object/from16 v60, v41

    move-object/from16 v14, v56

    move-object v10, v8

    :goto_39
    if-nez v11, :cond_7b

    iget-boolean v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->ws:Z

    if-eqz v1, :cond_66

    iget v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->zs:I

    const/4 v13, 0x1

    add-int/2addr v1, v13

    iput v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->zs:I

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v1, :cond_63

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect] mNativeMonitorCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->zs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_63
    iget v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->zs:I

    iget v2, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->Cs:I

    if-ne v1, v2, :cond_67

    const/4 v1, 0x0

    iput-boolean v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->ws:Z

    iput v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->zs:I

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v1, :cond_64

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect] mLastBatteryPercent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->Hr:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mBatteryLevelOfStart="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->ys:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_64
    iget v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->ys:I

    iget v2, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->Hr:I

    sub-int/2addr v1, v2

    iget v2, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->As:I

    if-le v1, v2, :cond_65

    move v4, v13

    goto :goto_3a

    :cond_65
    const/4 v4, 0x0

    :goto_3a
    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect] stop native process monitoring, start to judge, doKill="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    :cond_66
    const/4 v13, 0x1

    :cond_67
    const/4 v4, 0x0

    :goto_3b
    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->Es:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_7
    .catchall {:try_start_23 .. :try_end_23} :catchall_9

    :try_start_24
    iget-object v2, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->Es:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_7a

    iget-object v2, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->Es:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;

    iget v5, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->zs:I

    if-ne v5, v13, :cond_68

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->Tb()V

    :cond_68
    iget-object v5, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->lastCpuTimeBgMonitor:[J

    aget-wide v5, v5, v11

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_78

    iget-wide v5, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->curCpuTimeBgMonitor:J

    iget-object v7, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->lastCpuTimeBgMonitor:[J

    aget-wide v7, v7, v11

    sub-long/2addr v5, v7

    mul-long v5, v5, v43

    move-wide/from16 v7, v45

    div-long/2addr v5, v7

    iget-object v13, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->Ds:Ljava/util/HashMap;

    move-object/from16 v56, v14

    iget-object v14, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6c

    iget-object v13, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->Ds:Ljava/util/HashMap;

    iget-object v14, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-long v13, v13

    cmp-long v13, v5, v13

    if-ltz v13, :cond_6a

    iget-boolean v13, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->ws:Z

    if-eqz v13, :cond_69

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->Pb()V

    const-string v13, "OHPD"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v15

    const-string v15, "[BgDetect]native process "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " HighCpuUsedCount add 1, now HighCpuUsedCount = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->Qb()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    :cond_69
    move-object/from16 v18, v15

    :goto_3d
    const/4 v13, 0x1

    goto :goto_3e

    :cond_6a
    move-object/from16 v18, v15

    iget-boolean v13, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->ws:Z

    if-eqz v13, :cond_6b

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->Sb()V

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->Qb()I

    move-result v13

    if-gtz v13, :cond_6b

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->Ub()V

    const-string v13, "OHPD"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[BgDetect]native process "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " HighCpuUsedCount reduce 1, now HighCpuUsedCount = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->Qb()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6b
    const/4 v13, 0x0

    :goto_3e
    const/4 v14, 0x1

    goto :goto_40

    :cond_6c
    move-object/from16 v18, v15

    iget v13, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->Bs:I

    int-to-long v13, v13

    cmp-long v13, v5, v13

    if-ltz v13, :cond_6d

    const/4 v13, 0x1

    goto :goto_3f

    :cond_6d
    const/4 v13, 0x0

    :goto_3f
    const/4 v14, 0x0

    :goto_40
    if-eqz v13, :cond_6e

    iget v15, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->zs:I

    move-object/from16 v59, v10

    const/4 v10, 0x2

    if-gt v15, v10, :cond_6f

    const/4 v15, 0x1

    iput-boolean v15, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->xs:Z

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->Vb()V

    goto :goto_41

    :cond_6e
    move-object/from16 v59, v10

    const/4 v10, 0x2

    :cond_6f
    :goto_41
    if-eqz v13, :cond_77

    const-string v13, "OHPD"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[BgDetect]detect excessive cpu on native process "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->name:Ljava/lang/String;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "(pid : "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pid:I

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ") level "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " usage "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " monitor="

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->ws:Z

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " round="

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->zs:I

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " doKill="

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v10, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->ws:Z

    if-eqz v10, :cond_72

    iget-object v10, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->Ks:Ljava/util/HashMap;

    iget-object v13, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->name:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_72

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->Qb()I

    move-result v10

    iget-object v13, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->Ks:Ljava/util/HashMap;

    iget-object v15, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->name:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;

    invoke-virtual {v13}, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->getCount()I

    move-result v13

    if-ne v10, v13, :cond_71

    iget v10, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->ys:I

    iget v13, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->Hr:I

    sub-int/2addr v10, v13

    iget-object v13, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->Ks:Ljava/util/HashMap;

    iget-object v15, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->name:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;

    invoke-virtual {v13}, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->Zb()I

    move-result v13

    if-le v10, v13, :cond_70

    const-string v10, "OHPD"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[BgDetect]native process "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->name:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "drop "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->Ks:Ljava/util/HashMap;

    move-wide/from16 v16, v7

    iget-object v7, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->name:Ljava/lang/String;

    invoke-virtual {v15, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;

    invoke-virtual {v7}, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->Zb()I

    move-result v7

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " in "

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->Ks:Ljava/util/HashMap;

    iget-object v8, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;

    invoke-virtual {v7}, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->getCount()I

    move-result v7

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "counts, dokillSpecial is "

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    goto/16 :goto_44

    :cond_70
    move-wide/from16 v16, v7

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->Ub()V

    const-string v7, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[BgDetect]native process "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->name:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is reset HighCpuUsedCount because batteryDrop < "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->Ks:Ljava/util/HashMap;

    iget-object v13, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->name:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;

    invoke-virtual {v10}, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->Zb()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_42
    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    :cond_71
    move-wide/from16 v16, v7

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->Qb()I

    move-result v7

    iget-object v8, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->Ks:Ljava/util/HashMap;

    iget-object v10, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->name:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->getCount()I

    move-result v8

    if-le v7, v8, :cond_73

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->Ub()V

    const-string v7, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[BgDetect]native process "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->name:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is reset HighCpuUsedCount because HighCpuUsedCount higher than "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->Ks:Ljava/util/HashMap;

    iget-object v13, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->name:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;

    invoke-virtual {v10}, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->getCount()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_42

    :cond_72
    move-wide/from16 v16, v7

    :cond_73
    :goto_43
    const/4 v7, 0x0

    :goto_44
    if-nez v4, :cond_74

    if-eqz v7, :cond_79

    :cond_74
    invoke-virtual {v3}, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->Rb()Z

    move-result v7

    if-eqz v7, :cond_79

    if-eqz v14, :cond_75

    const-string v7, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[BgDetect] kill native process "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->name:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "(pid : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pid:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pid:I

    invoke-static {v7}, Landroid/os/Process;->killProcess(I)V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    const/4 v7, 0x1

    goto :goto_45

    :cond_75
    const/4 v7, 0x0

    :goto_45
    sget-object v8, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    const v10, 0xd6e8

    invoke-virtual {v8, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    iget-object v10, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->name:Ljava/lang/String;

    iput-object v10, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    long-to-int v5, v5

    iput v5, v8, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_76

    const/4 v5, 0x1

    goto :goto_46

    :cond_76
    const/4 v5, 0x0

    :goto_46
    iput v5, v8, Landroid/os/Message;->arg2:I

    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_47

    :cond_77
    move-wide/from16 v16, v7

    goto :goto_47

    :cond_78
    move-object/from16 v59, v10

    move-object/from16 v56, v14

    move-object/from16 v18, v15

    move-wide/from16 v16, v45

    :cond_79
    :goto_47
    iget-object v5, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->lastCpuTimeBgMonitor:[J

    iget-wide v6, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->curCpuTimeBgMonitor:J

    aput-wide v6, v5, v11

    move-wide/from16 v45, v16

    move-object/from16 v15, v18

    move-object/from16 v14, v56

    move-object/from16 v10, v59

    const/4 v13, 0x1

    goto/16 :goto_3c

    :cond_7a
    move-object/from16 v59, v10

    move-object/from16 v56, v14

    move-object/from16 v18, v15

    move-wide/from16 v16, v45

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_5

    :try_start_25
    iget v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->zs:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7c

    iget-boolean v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->xs:Z

    if-nez v1, :cond_7c

    const/4 v1, 0x0

    iput-boolean v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->ws:Z

    iput v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->zs:I

    const-string v1, "OHPD"

    const-string v2, "[BgDetect] stop native process monitoring due to no abnormal so far"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_7
    .catchall {:try_start_25 .. :try_end_25} :catchall_9

    goto :goto_48

    :catchall_5
    move-exception v0

    move-object v2, v0

    :try_start_26
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_5

    :try_start_27
    throw v2

    :cond_7b
    move-object/from16 v59, v10

    move-object/from16 v56, v14

    move-object/from16 v18, v15

    move-wide/from16 v16, v45

    :cond_7c
    :goto_48
    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->vs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_8b

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->vs:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_7
    .catchall {:try_start_27 .. :try_end_27} :catchall_9

    :try_start_28
    iget-object v2, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->vs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7d
    :goto_49
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;

    iget-object v4, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pkgName:Ljava/lang/String;

    invoke-virtual {v9, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->q(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7e

    const/4 v5, 0x1

    if-eq v11, v5, :cond_7d

    const/4 v5, 0x2

    if-ne v11, v5, :cond_7e

    goto :goto_49

    :cond_7e
    iget v5, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->flags:I

    invoke-virtual {v9, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->g(I)Z

    move-result v5

    if-eqz v5, :cond_7f

    goto :goto_49

    :cond_7f
    iget-wide v5, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->curCpuTimeBgMonitor:J

    iget-object v7, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->lastCpuTimeBgMonitor:[J

    aget-wide v7, v7, v11

    sub-long/2addr v5, v7

    iget v7, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v12, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_88

    iget-object v7, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->name:Ljava/lang/String;

    const-string v8, "dex2oat"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_88

    invoke-virtual {v9, v3}, Lcom/android/server/am/OnePlusHighPowerDetector;->you(Lcom/android/server/am/OnePlusHighPowerDetector$zta;)Z

    move-result v7

    if-eqz v7, :cond_80

    goto/16 :goto_4e

    :cond_80
    iget-object v7, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->lastCpuTimeBgMonitor:[J

    aget-wide v7, v7, v11

    const-wide/16 v13, 0x0

    cmp-long v7, v7, v13

    if-lez v7, :cond_86

    mul-long v7, v5, v43

    div-long v7, v7, v16

    if-eqz v4, :cond_81

    sget v4, Lcom/android/server/am/OnePlusHighPowerDetector;->eu:I

    goto :goto_4a

    :cond_81
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->du:[I

    aget v4, v4, v11

    :goto_4a
    int-to-long v13, v4

    cmp-long v4, v7, v13

    if-ltz v4, :cond_83

    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->cu:[I

    aget v4, v4, v11

    int-to-long v13, v4

    cmp-long v4, v7, v13

    if-gez v4, :cond_83

    iget v4, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->uid:I

    const/4 v13, 0x0

    invoke-virtual {v10, v4, v13}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_82

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BgDetect]detect excessive cpu on forked process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "(pid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") level "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " usage "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->uid:I

    invoke-virtual {v10, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_82
    move-wide/from16 v45, v16

    move-object/from16 v14, v60

    move-object/from16 v13, v61

    move-object/from16 v16, v2

    goto/16 :goto_4c

    :cond_83
    const/4 v13, 0x0

    const-string v4, "OHPD"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[BgDetect]forked proc "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "(pid : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pid:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " uid: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->uid:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ") "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " during "

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v16

    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v14, v60

    invoke-virtual {v14, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_84

    iget v4, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    long-to-int v15, v7

    add-int/2addr v4, v15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v15, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->uid:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4b

    :cond_84
    iget v4, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    long-to-int v15, v7

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v4, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4b
    iget v4, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v15, Lcom/android/server/am/OnePlusHighPowerDetector$you;

    iget v13, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->uid:I

    move-object/from16 v16, v2

    iget v2, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pid:I

    move-wide/from16 v45, v5

    iget-object v5, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pkgName:Ljava/lang/String;

    iget v6, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->uid:I

    invoke-direct {v15, v13, v2, v5, v6}, Lcom/android/server/am/OnePlusHighPowerDetector$you;-><init>(IILjava/lang/String;I)V

    move-object/from16 v13, v61

    invoke-virtual {v13, v4, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v4, 0x0

    cmp-long v2, v7, v4

    if-lez v2, :cond_85

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BgDetect]accumulate usage "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " from procName "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->uid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    :cond_85
    :goto_4c
    iget v2, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v15, v59

    invoke-virtual {v15, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_87

    iget v2, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    long-to-int v4, v7

    add-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v4, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4d

    :cond_86
    move-wide/from16 v45, v16

    move-object/from16 v15, v59

    move-object/from16 v14, v60

    move-object/from16 v13, v61

    move-object/from16 v16, v2

    :cond_87
    :goto_4d
    iget-object v2, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->lastCpuTimeBgMonitor:[J

    iget-wide v3, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->curCpuTimeBgMonitor:J

    aput-wide v3, v2, v11

    move-object/from16 v61, v13

    move-object/from16 v60, v14

    move-object/from16 v59, v15

    move-object/from16 v2, v16

    move-wide/from16 v16, v45

    goto/16 :goto_49

    :cond_88
    :goto_4e
    move-wide/from16 v24, v16

    move-object/from16 v15, v59

    move-object/from16 v14, v60

    move-object/from16 v13, v61

    move-object/from16 v16, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BgDetect] skip fproc "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "(uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->uid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "), reason= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    iget-object v2, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->lastCpuTimeBgMonitor:[J

    iget-wide v7, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->curCpuTimeBgMonitor:J

    aput-wide v7, v2, v11

    iget v2, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    mul-long v5, v5, v43

    div-long v5, v5, v24

    iget v2, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    long-to-int v4, v5

    add-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_89
    move-object/from16 v61, v13

    move-object/from16 v60, v14

    move-object/from16 v59, v15

    move-object/from16 v2, v16

    move-wide/from16 v16, v24

    goto/16 :goto_49

    :cond_8a
    move-object/from16 v15, v59

    move-object/from16 v14, v60

    move-object/from16 v13, v61

    monitor-exit v1

    goto :goto_4f

    :catchall_6
    move-exception v0

    move-object v2, v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_6

    :try_start_29
    throw v2

    :cond_8b
    move-object/from16 v15, v59

    move-object/from16 v14, v60

    move-object/from16 v13, v61

    :goto_4f
    invoke-virtual/range {v18 .. v18}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_aa

    invoke-virtual/range {v18 .. v18}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const/16 v17, 0x0

    :goto_50
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a9

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9a

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->tu:Z

    if-eqz v1, :cond_97

    const/4 v1, 0x3

    if-ne v11, v1, :cond_8c

    invoke-virtual {v9, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->cno(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-nez v1, :cond_8d

    :cond_8c
    if-nez v11, :cond_97

    invoke-virtual {v9, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->ssp(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_97

    :cond_8d
    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    if-eqz v1, :cond_95

    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_95

    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    :cond_8e
    :goto_51
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_7
    .catchall {:try_start_29 .. :try_end_29} :catchall_9

    if-eqz v2, :cond_96

    :try_start_2a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_6
    .catchall {:try_start_2a .. :try_end_2a} :catchall_9

    if-eqz v2, :cond_94

    :try_start_2b
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    if-eqz v3, :cond_94

    const/4 v3, 0x0

    :goto_52
    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v3, v5, :cond_8e

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    const/4 v6, 0x0

    :goto_53
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_93

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ConnectionRecord;

    if-eqz v7, :cond_90

    move-object/from16 v18, v1

    iget-object v1, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    if-eqz v1, :cond_91

    iget-object v1, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget v7, v1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    move-object/from16 v19, v2

    const/4 v2, 0x2

    if-eq v7, v2, :cond_8f

    iget v2, v1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_92

    :cond_8f
    const-string v2, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BgDetect] skip "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", bound by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    goto :goto_54

    :cond_90
    move-object/from16 v18, v1

    :cond_91
    move-object/from16 v19, v2

    :cond_92
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    goto :goto_53

    :cond_93
    move-object/from16 v18, v1

    move-object/from16 v19, v2

    :goto_54
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    goto/16 :goto_52

    :cond_94
    move-object/from16 v18, v1

    move-object/from16 v1, v18

    goto/16 :goto_51

    :cond_95
    const/4 v4, 0x0

    :catch_6
    :cond_96
    if-nez v4, :cond_99

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BgDetect] kill "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " due to abnormally busy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v8, v1, v2}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto/16 :goto_56

    :cond_97
    iget-boolean v1, v8, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v1, :cond_98

    iget v1, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_98

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect] skip proc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "(uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), reason= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_55
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    :cond_98
    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect] skip proc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "(uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), reason= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_55

    :cond_99
    :goto_56
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_50

    :cond_9a
    iget v1, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9b

    iget v1, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9b
    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/16 v2, 0x3e7

    if-ne v1, v2, :cond_9c

    const/4 v1, 0x1

    goto :goto_57

    :cond_9c
    const/4 v1, 0x0

    :goto_57
    iget-object v2, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-nez v11, :cond_a1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v6, v56

    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    const-string v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BgDetect] notify level-0 pkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_9d

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->rs:Ljava/util/HashMap;

    goto :goto_58

    :cond_9d
    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->hk:Ljava/util/HashMap;

    :goto_58
    move-object v2, v1

    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x1

    const/16 v18, 0x0

    iget v1, v8, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v5, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v20, v1

    move-object/from16 v1, p0

    move/from16 v19, v5

    const/4 v5, 0x0

    move-object/from16 v62, v6

    move/from16 v6, v18

    move/from16 v18, v7

    move/from16 v7, v20

    move-object/from16 v59, v15

    move-object v15, v8

    move/from16 v8, v19

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v15, Lcom/android/server/am/ProcessRecord;->pid:I

    const-string v5, "lru_huge"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v4, v18

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Ljava/lang/String;IILjava/lang/String;I)V

    goto :goto_59

    :cond_9e
    move-object/from16 v62, v6

    move/from16 v18, v7

    move-object/from16 v59, v15

    move-object v15, v8

    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->r(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BgDetect] kill "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " due to abnormally busy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v15, v1, v2}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    :goto_59
    move-object/from16 v7, v55

    goto :goto_5a

    :cond_9f
    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect]force stop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move/from16 v8, v18

    invoke-direct {v9, v1, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->forceStopPackage(Ljava/lang/String;I)V

    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v7, v55

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5a
    add-int/lit8 v17, v17, 0x1

    move-object/from16 v63, v7

    :cond_a0
    :goto_5b
    move-object/from16 v8, v62

    goto/16 :goto_5e

    :cond_a1
    move-object/from16 v59, v15

    move-object/from16 v62, v56

    const/4 v2, 0x1

    move-object v15, v8

    move v8, v7

    move-object/from16 v7, v55

    if-ne v11, v2, :cond_a5

    if-eqz v1, :cond_a2

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->ss:Ljava/util/HashMap;

    goto :goto_5c

    :cond_a2
    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->ps:Ljava/util/HashMap;

    :goto_5c
    move-object v2, v1

    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget v1, v15, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v6, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v19, v1

    move-object/from16 v1, p0

    move/from16 v18, v6

    const/4 v6, 0x0

    move-object/from16 v63, v7

    move/from16 v7, v19

    move/from16 v19, v8

    move/from16 v8, v18

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->mPowerManager:Landroid/os/PowerManager;

    if-nez v1, :cond_a3

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->mPowerManager:Landroid/os/PowerManager;

    :cond_a3
    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v1, :cond_a4

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v1

    if-eqz v1, :cond_a4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BgDetect] kill "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " due to doze mode and level 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v15, v1, v2}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto :goto_5b

    :cond_a4
    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v15, Lcom/android/server/am/ProcessRecord;->pid:I

    const-string v5, "lru_high"

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move/from16 v4, v19

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Ljava/lang/String;IILjava/lang/String;I)V

    goto :goto_5b

    :cond_a5
    move-object/from16 v63, v7

    const/4 v2, 0x2

    if-ne v11, v2, :cond_a7

    if-eqz v1, :cond_a6

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->us:Ljava/util/HashMap;

    goto :goto_5d

    :cond_a6
    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->qs:Ljava/util/HashMap;

    :goto_5d
    move-object v2, v1

    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, v15, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    goto/16 :goto_5b

    :cond_a7
    const/4 v1, 0x3

    if-ne v11, v1, :cond_a0

    invoke-virtual {v9, v15, v11}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Lcom/android/server/am/ProcessRecord;I)Z

    move-result v1

    if-nez v1, :cond_a0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v8, v62

    invoke-interface {v8, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BgDetect] kill "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v15, v1, v2}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    :cond_a8
    :goto_5e
    move-object/from16 v56, v8

    move-object/from16 v15, v59

    move-object/from16 v55, v63

    goto/16 :goto_50

    :cond_a9
    move-object/from16 v59, v15

    move-object/from16 v63, v55

    move-object/from16 v8, v56

    goto :goto_5f

    :cond_aa
    move-object/from16 v59, v15

    move-object/from16 v63, v55

    move-object/from16 v8, v56

    const/16 v17, 0x0

    :goto_5f
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_b6

    const/4 v15, 0x0

    :goto_60
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v15, v1, :cond_b6

    invoke-virtual {v10, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/server/am/OnePlusHighPowerDetector$zta;

    iget-object v1, v7, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pkgName:Ljava/lang/String;

    if-eqz v1, :cond_b4

    iget v1, v7, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ab

    iget v1, v7, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ab
    iget v1, v7, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/16 v2, 0x3e7

    if-ne v1, v2, :cond_ac

    const/4 v1, 0x1

    goto :goto_61

    :cond_ac
    const/4 v1, 0x0

    :goto_61
    iget v2, v7, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-nez v11, :cond_b0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v7, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ae

    const-string v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BgDetect] notify level-0 pkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v7, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_ad

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->rs:Ljava/util/HashMap;

    goto :goto_62

    :cond_ad
    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->hk:Ljava/util/HashMap;

    :goto_62
    move-object v2, v1

    iget-object v3, v7, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pkgName:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v16, 0x0

    iget v1, v7, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pid:I

    move/from16 v18, v6

    iget v6, v7, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->uid:I

    move/from16 v19, v1

    move-object/from16 v1, p0

    move/from16 v20, v18

    move/from16 v18, v6

    move/from16 v6, v16

    move-object/from16 v64, v7

    move/from16 v7, v19

    move-object/from16 v16, v10

    move-object v10, v8

    move/from16 v8, v18

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    move-object/from16 v8, v64

    iget-object v2, v8, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pkgName:Ljava/lang/String;

    iget v3, v8, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pid:I

    const-string v5, "fork_huge"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v4, v20

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Ljava/lang/String;IILjava/lang/String;I)V

    goto :goto_63

    :cond_ae
    move/from16 v20, v6

    move-object/from16 v16, v10

    move-object v10, v8

    move-object v8, v7

    iget-object v1, v8, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pkgName:Ljava/lang/String;

    invoke-virtual {v9, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->r(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_af

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget v2, v8, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BgDetect] kill forked "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v8, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") level "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move/from16 v7, v20

    invoke-virtual {v1, v2, v7, v3}, Lcom/android/server/am/ActivityManagerService;->killUid(IILjava/lang/String;)V

    :goto_63
    move-object/from16 v6, v63

    goto :goto_64

    :cond_af
    move/from16 v7, v20

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect]force stop forked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v8, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pkgName:Ljava/lang/String;

    invoke-direct {v9, v1, v7}, Lcom/android/server/am/OnePlusHighPowerDetector;->forceStopPackage(Ljava/lang/String;I)V

    iget-object v1, v8, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pkgName:Ljava/lang/String;

    move-object/from16 v6, v63

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_64
    add-int/lit8 v17, v17, 0x1

    move-object/from16 v65, v6

    move-object/from16 v56, v10

    goto/16 :goto_67

    :cond_b0
    move-object/from16 v16, v10

    const/4 v2, 0x1

    move-object v10, v8

    move-object v8, v7

    move v7, v6

    move-object/from16 v6, v63

    if-ne v11, v2, :cond_b2

    if-eqz v1, :cond_b1

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->ss:Ljava/util/HashMap;

    goto :goto_65

    :cond_b1
    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->ps:Ljava/util/HashMap;

    :goto_65
    move-object v2, v1

    iget-object v3, v8, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pkgName:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v18, 0x0

    iget v1, v8, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pid:I

    move-object/from16 v55, v6

    iget v6, v8, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->uid:I

    move/from16 v19, v1

    move-object/from16 v1, p0

    move/from16 v20, v6

    move-object/from16 v65, v55

    move/from16 v6, v18

    move/from16 v18, v7

    move/from16 v7, v19

    move-object/from16 v56, v10

    move-object v10, v8

    move/from16 v8, v20

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    iget-object v2, v10, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pkgName:Ljava/lang/String;

    iget v3, v10, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pid:I

    const-string v5, "fork_high"

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move/from16 v4, v18

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Ljava/lang/String;IILjava/lang/String;I)V

    goto :goto_67

    :cond_b2
    move-object/from16 v65, v6

    move-object/from16 v56, v10

    const/4 v2, 0x2

    move-object v10, v8

    if-ne v11, v2, :cond_b5

    if-eqz v1, :cond_b3

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->us:Ljava/util/HashMap;

    goto :goto_66

    :cond_b3
    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->qs:Ljava/util/HashMap;

    :goto_66
    move-object v2, v1

    iget-object v3, v10, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pkgName:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, v10, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pid:I

    iget v8, v10, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->uid:I

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    goto :goto_67

    :cond_b4
    move-object/from16 v56, v8

    move-object/from16 v16, v10

    move-object/from16 v65, v63

    move-object v10, v7

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect]forked proc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \'s pkgName is null, uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v10, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v10, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b5
    :goto_67
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v10, v16

    move-object/from16 v8, v56

    move-object/from16 v63, v65

    goto/16 :goto_60

    :cond_b6
    move-object/from16 v56, v8

    move-object/from16 v65, v63

    invoke-virtual {v14}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_b7
    :goto_68
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ce

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/lang/Integer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/OnePlusHighPowerDetector$you;

    iget-object v7, v1, Lcom/android/server/am/OnePlusHighPowerDetector$you;->pkgName:Ljava/lang/String;

    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/OnePlusHighPowerDetector$you;

    iget v6, v1, Lcom/android/server/am/OnePlusHighPowerDetector$you;->pid:I

    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/OnePlusHighPowerDetector$you;

    iget v5, v1, Lcom/android/server/am/OnePlusHighPowerDetector$you;->rr:I

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/16 v2, 0x3e7

    if-ne v1, v2, :cond_b8

    const/4 v1, 0x1

    goto :goto_69

    :cond_b8
    const/4 v1, 0x0

    :goto_69
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v9, v7}, Lcom/android/server/am/OnePlusHighPowerDetector;->q(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b9

    const/4 v3, 0x1

    if-eq v11, v3, :cond_b7

    const/4 v3, 0x2

    if-ne v11, v3, :cond_b9

    goto :goto_68

    :cond_b9
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_ba

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v6

    const-string v6, "[BgDetect] uid "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " pkgName "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " usage "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " disabledLevel"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    goto :goto_6a

    :cond_ba
    move/from16 v16, v6

    :goto_6a
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v2, :cond_bb

    sget v2, Lcom/android/server/am/OnePlusHighPowerDetector;->eu:I

    goto :goto_6b

    :cond_bb
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->du:[I

    aget v2, v2, v11

    :goto_6b
    if-lt v3, v2, :cond_c5

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->cu:[I

    aget v3, v3, v11

    if-ge v2, v3, :cond_c5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bc

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect] skip pkg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "(uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "), reason= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_68

    :cond_bc
    if-nez v11, :cond_c0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v6, v56

    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_be

    const-string v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v4

    const-string v4, "[BgDetect] notify level-0 pkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_bd

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->rs:Ljava/util/HashMap;

    goto :goto_6c

    :cond_bd
    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->hk:Ljava/util/HashMap;

    :goto_6c
    move-object v2, v1

    const/4 v4, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v1, p0

    move-object v3, v7

    move/from16 v22, v18

    move/from16 v18, v5

    move/from16 v5, v19

    move-object/from16 v66, v6

    move/from16 v6, v20

    move-object/from16 v19, v7

    move/from16 v7, v16

    move-object/from16 v20, v10

    move-object v10, v8

    move/from16 v8, v21

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    const-string v5, "accu_huge"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move/from16 v3, v16

    move/from16 v4, v22

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Ljava/lang/String;IILjava/lang/String;I)V

    move-object/from16 v8, v19

    :goto_6d
    move-object/from16 v6, v65

    goto/16 :goto_6e

    :cond_be
    move/from16 v22, v4

    move/from16 v18, v5

    move-object/from16 v66, v6

    move-object/from16 v20, v10

    move-object v10, v8

    move-object v8, v7

    invoke-virtual {v9, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->r(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bf

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BgDetect] total usage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " over thold, kill "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") level "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move/from16 v7, v22

    invoke-virtual {v1, v2, v7, v3}, Lcom/android/server/am/ActivityManagerService;->killUid(IILjava/lang/String;)V

    goto :goto_6d

    :cond_bf
    move/from16 v7, v22

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect] total usage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " over thold, force stop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v9, v8, v7}, Lcom/android/server/am/OnePlusHighPowerDetector;->forceStopPackage(Ljava/lang/String;I)V

    move-object/from16 v6, v65

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6e
    add-int/lit8 v17, v17, 0x1

    move-object/from16 v67, v6

    move-object/from16 v68, v8

    const/4 v1, 0x1

    const/16 v16, 0x2

    goto/16 :goto_72

    :cond_c0
    move/from16 v18, v5

    move-object/from16 v20, v10

    move-object/from16 v66, v56

    move-object/from16 v6, v65

    const/4 v2, 0x1

    move-object v10, v8

    move-object v8, v7

    move v7, v4

    if-ne v11, v2, :cond_c2

    const-string v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BgDetect] HighPower total usage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " over thold # add forked "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") level "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_c1

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->ss:Ljava/util/HashMap;

    goto :goto_6f

    :cond_c1
    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->ps:Ljava/util/HashMap;

    :goto_6f
    move-object v2, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v19, 0x0

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v1, p0

    move-object v3, v8

    move-object/from16 v67, v6

    move/from16 v6, v19

    move/from16 v19, v7

    move/from16 v7, v16

    move-object/from16 v22, v8

    move/from16 v8, v21

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    const-string v5, "accu_high"

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move/from16 v3, v16

    move/from16 v4, v19

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Ljava/lang/String;IILjava/lang/String;I)V

    move-object/from16 v68, v22

    const/16 v16, 0x2

    goto/16 :goto_71

    :cond_c2
    move-object/from16 v67, v6

    move-object/from16 v22, v8

    const/4 v8, 0x2

    if-ne v11, v8, :cond_c4

    const-string v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BgDetect] MediumPower total usage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " over thold  # add forked "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v22

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") level "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_c3

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->us:Ljava/util/HashMap;

    goto :goto_70

    :cond_c3
    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->qs:Ljava/util/HashMap;

    :goto_70
    move-object v2, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v1, p0

    move-object v3, v7

    move-object/from16 v68, v7

    move/from16 v7, v16

    move/from16 v16, v8

    move/from16 v8, v19

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    goto :goto_71

    :cond_c4
    move/from16 v16, v8

    move-object/from16 v68, v22

    goto :goto_71

    :cond_c5
    move/from16 v18, v5

    move-object/from16 v68, v7

    move-object/from16 v20, v10

    move-object/from16 v66, v56

    move-object/from16 v67, v65

    const/16 v16, 0x2

    move-object v10, v8

    :goto_71
    const/4 v1, 0x1

    :goto_72
    new-array v2, v1, [I

    const/4 v1, 0x0

    aput v28, v2, v1

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_cd

    const/4 v1, 0x3

    if-ne v11, v1, :cond_cd

    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->_t:Z

    if-eqz v2, :cond_cd

    iget-boolean v2, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->Nr:Z

    if-nez v2, :cond_cd

    move-object/from16 v6, v40

    move-object/from16 v2, v68

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c6

    move-object/from16 v3, v39

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c7

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget v5, Lcom/android/server/am/OnePlusHighPowerDetector;->hu:I

    if-lt v4, v5, :cond_c7

    goto :goto_73

    :cond_c6
    move-object/from16 v3, v39

    :goto_73
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BgDetect][RNK] skip pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(uid "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "), reason= "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    :cond_c7
    move-object/from16 v39, v3

    goto :goto_74

    :cond_c8
    move-object/from16 v4, v48

    invoke-interface {v4, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[BgDetect][RNK] skip pkg "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(uid "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "), reason= small adj"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    move-object/from16 v39, v3

    move-object/from16 v48, v4

    :goto_74
    move-object/from16 v8, v66

    goto/16 :goto_76

    :cond_c9
    move-object/from16 v5, v54

    invoke-interface {v5, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ca

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[BgDetect][RNK] skip pkg "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(uid "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "), reason= sys alert window"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_75
    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    move-object/from16 v39, v3

    move-object/from16 v48, v4

    move-object/from16 v54, v5

    goto :goto_74

    :cond_ca
    invoke-direct {v9, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->Hb(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_cb

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[BgDetect][RNK] skip pkg "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(uid "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "), reason= widget added"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_75

    :cond_cb
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v8, v66

    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_cc

    sget-object v7, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-static/range {v18 .. v18}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object/from16 v39, v3

    invoke-static/range {v18 .. v18}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    move-object/from16 v48, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v54, v5

    const-string v5, "[BgDetect][RNK] kill "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (uid "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") usage "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v3, v2}, Lcom/android/server/am/ActivityManagerService;->killUid(IILjava/lang/String;)V

    goto :goto_76

    :cond_cc
    move-object/from16 v39, v3

    move-object/from16 v48, v4

    move-object/from16 v54, v5

    goto :goto_76

    :cond_cd
    move-object/from16 v6, v40

    goto/16 :goto_74

    :goto_76
    move-object/from16 v40, v6

    move-object/from16 v56, v8

    move-object/from16 v10, v20

    move-object/from16 v65, v67

    goto/16 :goto_68

    :cond_ce
    move-object/from16 v8, v56

    move-object/from16 v67, v65

    if-eqz v50, :cond_dc

    invoke-virtual/range {v59 .. v59}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_cf
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->du:[I

    aget v5, v5, v11

    if-lt v4, v5, :cond_cf

    add-int/lit8 v17, v17, 0x1

    const-string v1, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BgDetect][PD] found PD is caused by skipped uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " usg "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_77

    :cond_d0
    const/4 v1, 0x1

    :goto_77
    if-nez v17, :cond_d7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect][PD] start review BG procs : screen state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/am/OnePlusHighPowerDetector;->uu:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    invoke-virtual {v14}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v4, v1

    :goto_78
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusHighPowerDetector$you;

    iget-object v12, v3, Lcom/android/server/am/OnePlusHighPowerDetector$you;->pkgName:Ljava/lang/String;

    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusHighPowerDetector$you;

    iget v14, v3, Lcom/android/server/am/OnePlusHighPowerDetector$you;->pid:I

    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusHighPowerDetector$you;

    iget v3, v3, Lcom/android/server/am/OnePlusHighPowerDetector$you;->rr:I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    const/16 v15, 0x3e7

    if-ne v5, v15, :cond_d1

    const/4 v5, 0x1

    goto :goto_79

    :cond_d1
    const/4 v5, 0x0

    :goto_79
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget v15, Lcom/android/server/am/OnePlusHighPowerDetector;->gu:I

    if-lt v6, v15, :cond_d6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v15, v49

    invoke-virtual {v15, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d2

    const-string v1, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BgDetect][PD] skip pkg "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "(uid "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "), reason= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v49, v15

    goto/16 :goto_78

    :cond_d2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d4

    const-string v1, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BgDetect][PD] notify level-0 pkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_d3

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->ss:Ljava/util/HashMap;

    goto :goto_7a

    :cond_d3
    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->ps:Ljava/util/HashMap;

    :goto_7a
    move-object v3, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move-object/from16 v1, p0

    move-object v2, v3

    move-object v3, v12

    move/from16 v17, v7

    move v7, v14

    move-object/from16 v18, v8

    move/from16 v8, v16

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    const-string v5, "accu_huge"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v2, v12

    move v3, v14

    move/from16 v4, v17

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Ljava/lang/String;IILjava/lang/String;I)V

    :goto_7b
    move-object/from16 v1, v67

    goto/16 :goto_7c

    :cond_d4
    move/from16 v17, v7

    move-object/from16 v18, v8

    invoke-virtual {v9, v12}, Lcom/android/server/am/OnePlusHighPowerDetector;->r(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d5

    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BgDetect][PD] total usage "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " over thold, kill "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (uid "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") level "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move/from16 v5, v17

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/server/am/ActivityManagerService;->killUid(IILjava/lang/String;)V

    goto :goto_7b

    :cond_d5
    move/from16 v5, v17

    const-string v3, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BgDetect][PD] total usage "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " over thold, force stop "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (uid "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") level "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v9, v12, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->forceStopPackage(Ljava/lang/String;I)V

    move-object/from16 v1, v67

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7c
    const/4 v4, 0x0

    goto :goto_7d

    :cond_d6
    move-object/from16 v18, v8

    move-object/from16 v15, v49

    move-object/from16 v1, v67

    :goto_7d
    move-object/from16 v67, v1

    move-object/from16 v49, v15

    move-object/from16 v8, v18

    goto/16 :goto_78

    :cond_d7
    const/4 v4, 0x0

    :cond_d8
    if-eqz v4, :cond_dc

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->nu:Z

    if-eqz v1, :cond_dc

    const-string v1, "OHPD"

    const-string v2, "[BgDetect][PD] notify OPBR"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    const v2, 0xd6df

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_7f

    :cond_d9
    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->vs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_dc

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->vs:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_7
    .catchall {:try_start_2b .. :try_end_2b} :catchall_9

    :try_start_2c
    iget-object v2, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->vs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_da
    :goto_7e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_db

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;

    iget-wide v4, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->curCpuTimeBgMonitor:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_da

    iget-object v4, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->lastCpuTimeBgMonitor:[J

    iget-wide v12, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->curCpuTimeBgMonitor:J

    aput-wide v12, v4, v11

    goto :goto_7e

    :cond_db
    monitor-exit v1

    goto :goto_7f

    :catchall_7
    move-exception v0

    move-object v2, v0

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_7

    :try_start_2d
    throw v2

    :cond_dc
    :goto_7f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->cancelBgDetectNotificationIfNeeded()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_7
    .catchall {:try_start_2d .. :try_end_2d} :catchall_9

    goto :goto_82

    :catch_7
    move-exception v0

    goto :goto_80

    :catch_8
    move-exception v0

    move/from16 v26, v3

    move/from16 v50, v5

    move v11, v10

    :goto_80
    move-object v1, v0

    :goto_81
    :try_start_2e
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BgDetect] got exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_82
    monitor-exit v37
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_9

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v2, 0x62

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_de

    if-nez v11, :cond_dd

    if-nez v26, :cond_dd

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->vr:Lcom/android/server/am/OnePlusBGController;

    sget-object v2, Lcom/android/server/am/OnePlusBGController$SnapshotType;->Rha:Lcom/android/server/am/OnePlusBGController$SnapshotType;

    :goto_83
    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusBGController;->you(Lcom/android/server/am/OnePlusBGController$SnapshotType;)V

    goto :goto_84

    :cond_dd
    if-nez v11, :cond_de

    if-eqz v26, :cond_de

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->vr:Lcom/android/server/am/OnePlusBGController;

    sget-object v2, Lcom/android/server/am/OnePlusBGController$SnapshotType;->Sha:Lcom/android/server/am/OnePlusBGController$SnapshotType;

    goto :goto_83

    :cond_de
    :goto_84
    if-eqz v50, :cond_df

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mu:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_2f
    iput-boolean v2, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->Jr:Z

    monitor-exit v1

    goto :goto_85

    :catchall_8
    move-exception v0

    move-object v2, v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_8

    throw v2

    :cond_df
    :goto_85
    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v1, :cond_e0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BgDetect] checkExcessiveCpuUsageLocked -# level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v31

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OHPD"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e0
    const/4 v1, 0x0

    return v1

    :catchall_9
    move-exception v0

    move-object v1, v0

    :try_start_30
    monitor-exit v37
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_9

    throw v1

    :catchall_a
    move-exception v0

    move-object v1, v0

    :try_start_31
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_a

    throw v1
.end method

.method private init()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x502000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Kr:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.baidu.BaiduMap"

    const-string v2, "com.tencent.map"

    const-string v3, "com.mapbar.android.mapbarmap"

    const-string v4, "com.autonavi.minimap"

    const-string v5, "cld.navi.mainframe"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Lr:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Mr:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Rr:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5020006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Pr:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5020005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Qr:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5020008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->_r:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->as:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->as:Ljava/util/ArrayList;

    const-string v1, "com.google.android.gms.persistent"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->bs:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->bs:Ljava/util/ArrayList;

    const-string v1, "com.nearme.atlas"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5020009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->cs:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5020007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ds:Ljava/util/ArrayList;

    sget-object v0, Landroid/os/Build;->REGION:Ljava/lang/String;

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mRegion:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "persist.sys.ohpd.flags"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/am/OnePlusHighPowerDetector;->Zj:I

    const-string v1, "persist.sys.ohpd.kcheck"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->tu:Z

    const-string v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "msm8998"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v0, "/sys/class/thermal/thermal_zone5/temp"

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->ju:Ljava/lang/String;

    goto :goto_1

    :cond_0
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "sdm845"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const-string v0, "/sys/class/thermal/thermal_zone68/temp"

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->ju:Ljava/lang/String;

    sput-boolean v3, Lcom/android/server/am/OnePlusHighPowerDetector;->wu:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[BgDetect] sIsPreciseDevTemp : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->wu:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    sput-boolean v3, Lcom/android/server/am/OnePlusHighPowerDetector;->pu:Z

    const-string v0, "[BgDetect] sdm845 platform, enabled monitoring camera process"

    :goto_0
    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "msmnile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "com.oneplus:string/config_overheat_thermal_zone_path"

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->ju:Ljava/lang/String;

    sput-boolean v3, Lcom/android/server/am/OnePlusHighPowerDetector;->wu:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[BgDetect] Update temp_path to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->ju:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->Kb(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->kl()V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->gn()V

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->cc()V

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->initOnlineConfig()V

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->dc()V

    sget-boolean p0, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz p0, :cond_3

    sget p0, Lcom/android/server/am/OnePlusHighPowerDetector;->gu:I

    const-string v0, "persist.sys.ohpd.pd.usg.thold"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/android/server/am/OnePlusHighPowerDetector;->gu:I

    sget p0, Lcom/android/server/am/OnePlusHighPowerDetector;->iu:I

    const-string v0, "persist.sys.ohpd.pd.temp.thold"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/android/server/am/OnePlusHighPowerDetector;->iu:I

    sget p0, Lcom/android/server/am/OnePlusHighPowerDetector;->hu:I

    const-string v0, "persist.sys.ohpd.rnk.med.usg"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/android/server/am/OnePlusHighPowerDetector;->hu:I

    sget p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Wt:I

    const-string v0, "persist.sys.ohpd.pd.on.lastfg"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Wt:I

    sget p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Xt:I

    const-string v0, "persist.sys.ohpd.pd.off.lastfg"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Xt:I

    sget-boolean p0, Lcom/android/server/am/OnePlusHighPowerDetector;->lu:Z

    const-string v0, "persist.sys.ohpd.skip.on"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/android/server/am/OnePlusHighPowerDetector;->lu:Z

    :cond_3
    return-void
.end method

.method private kb(I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object p0

    const-string v0, "android"

    invoke-interface {p0, v0}, Landroid/app/INotificationManager;->getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    const-string v0, "OHPD"

    const/4 v1, 0x0

    if-eqz p0, :cond_8

    array-length v2, p0

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    goto :goto_4

    :cond_0
    if-eqz p1, :cond_3

    if-eq p1, v3, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    const v2, 0x33954bc

    goto :goto_0

    :cond_2
    const v2, 0x33954b8

    goto :goto_0

    :cond_3
    const v2, 0x33954b9

    :goto_0
    array-length v4, p0

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_5

    aget-object v6, p0, v5

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    if-ne v6, v2, :cond_4

    move v1, v3

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    sget-boolean p0, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz p0, :cond_7

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BgDetect][Notification] notification"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_6

    const-string v2, " exists,"

    goto :goto_3

    :cond_6
    const-string v2, " does NOT exists,"

    :goto_3
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v1

    :cond_8
    :goto_4
    sget-boolean p0, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz p0, :cond_9

    const-string p0, "[BgDetect][Notification] activeList null"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return v1
.end method

.method private kl()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/e;

    invoke-direct {v2, p0}, Lcom/android/server/am/e;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mRegion:Ljava/lang/String;

    const-string v2, "CN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    sget v1, Lcom/android/server/am/OnePlusHighPowerDetector;->Zj:I

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->am()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->wa(Z)V

    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v1, :cond_2

    const-string v1, "ohpd.action.test"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_2
    const-string v1, "com.oem.intent.action.force_stop_pkg"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.oem.intent.action.force_stop_high_pkg"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.oem.intent.action.ignore_pkg"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.oem.intent.action.ignore_high_pkg"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.oem.intent.action.bgc_clean_noti"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.oem.intent.action.ignore_bgc_pkg"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic kth(Lcom/android/server/am/OnePlusHighPowerDetector;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->cn()V

    return-void
.end method

.method private kth(Ljava/util/HashSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->wr:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusBGController$kth;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, v0, Lcom/android/server/am/OnePlusBGController$kth;->mPkg:Ljava/lang/String;

    const-string v3, "pkg"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/am/OnePlusBGController$kth;->Yl:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "drain_type"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/am/OnePlusBGController$kth;->Xl:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bucket_rank"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, v0, Lcom/android/server/am/OnePlusBGController$kth;->_l:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const-string v3, "criteria"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, v0, Lcom/android/server/am/OnePlusBGController$kth;->Zl:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "relief"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "appid"

    const-string v3, "NYNCG4I0TI"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    if-eqz v2, :cond_0

    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    const-string v4, "BGC"

    invoke-virtual {v2, v3, v4, v1, v0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static myLog(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v0, :cond_0

    const-string v0, "OHPD"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private obl(Lcom/android/server/am/ProcessRecord;)Z
    .locals 4

    iget-wide v0, p1, Lcom/android/server/am/ProcessRecord;->lastSkipTime:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide p0, p1, Lcom/android/server/am/ProcessRecord;->lastSkipTime:J

    sub-long/2addr v0, p0

    sget p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Zt:I

    int-to-long p0, p0

    cmp-long p0, v0, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private oxb(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->o(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v0, "com.android"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v0, "com.android.chrome:sandboxed_process"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.google.android.gms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.google.android.gsf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.google.android.packageinstaller"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.google.android.webview"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string p1, "android.process"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private parseLockedStr(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "OHPD"

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-string v1, "\\}"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    array-length v1, p1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    aget-object v3, p1, v2

    const-string v4, "{"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "#"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BgDetect]pkgUser #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p1

    const-string v1, "Exception while parsing recent task locked info"

    invoke-static {p0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-object v0
.end method

.method static synthetic rtg(Lcom/android/server/am/OnePlusHighPowerDetector;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->am()Z

    move-result p0

    return p0
.end method

.method static synthetic sis(Lcom/android/server/am/OnePlusHighPowerDetector;)Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mRestrictType:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;

    return-object p0
.end method

.method private sis(Landroid/content/Intent;)V
    .locals 7

    const-string v0, "pkg"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "userid"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    const-string v2, "type"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "OHPD"

    if-nez v0, :cond_0

    const-string p0, "[BGC] oops, pkgName is null, can\'t handleJumpToSettingAction"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v3

    const-string v4, "android"

    const v5, 0x33954bc

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-interface {v3, v4, v2, v5, v6}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BgDetect] BGC ACTION_BGC_SELF_CLEAN_NOTI Type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "[BgDetect] BGC Error when cancel notification"

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->is:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz p0, :cond_1

    :try_start_1
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    const-string p0, "package"

    invoke-static {p0, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APP_BATTERY_SETTINGS"

    invoke-direct {p1, v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x14000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v0, :cond_2

    const-string v0, "[BGC] action: android.settings.APP_BATTERY_SETTINGS"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BGC] uri: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private sis(Ljava/lang/String;II)V
    .locals 2

    const-string p0, "OHPD"

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[BgDetect] scheduleForceStopPkg # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " user id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    const v1, 0xd6e0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput p3, v0, Landroid/os/Message;->arg2:I

    sget-object p2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error when scheduleForceStopPkg "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private sis(Lorg/json/JSONArray;)V
    .locals 12

    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->jt:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    :try_start_0
    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->sConfigLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->an()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_38

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "navigating_app_list"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Lr:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_d

    :try_start_2
    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Lr:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move v6, v1

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Lr:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const-string v4, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig] navigatingAppList:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Lr:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0

    :cond_3
    :goto_2
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "backgroundprocess_detection_app_whitelist"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Kr:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_d

    :try_start_4
    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Kr:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move v6, v1

    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_4

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Kr:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Kr:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Kr:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Lr:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_5
    const-string v4, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig] whiteAppListSet:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Kr:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    goto :goto_4

    :catchall_1
    move-exception p0

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p0

    :cond_6
    :goto_4
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "black_list"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Pr:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_d

    :try_start_6
    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Pr:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move v6, v1

    :goto_5
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_7

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Pr:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_7
    const-string v4, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig] blackAppListSet:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Pr:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    goto :goto_6

    :catchall_2
    move-exception p0

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw p0

    :cond_8
    :goto_6
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "transient_list"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Rr:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_d

    :try_start_8
    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Rr:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move v6, v1

    :goto_7
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_9

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Rr:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_9
    const-string v4, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig] transientAppListSet:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Rr:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    goto :goto_8

    :catchall_3
    move-exception p0

    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw p0

    :cond_a
    :goto_8
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "black_ex_list"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Qr:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_d

    :try_start_a
    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Qr:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move v6, v1

    :goto_9
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_b

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Qr:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_b
    const-string v4, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig] blackExAppListSet:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Qr:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    goto :goto_a

    :catchall_4
    move-exception p0

    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    throw p0

    :cond_c
    :goto_a
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "gps_black_list"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Mr:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_d

    :try_start_c
    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Mr:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move v6, v1

    :goto_b
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_d

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Mr:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_d
    const-string v4, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig] gpsBlackListSet:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Mr:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    goto :goto_c

    :catchall_5
    move-exception p0

    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :try_start_d
    throw p0

    :cond_e
    :goto_c
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "kill_proc_list"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->_r:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    :try_start_e
    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->_r:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move v6, v1

    :goto_d
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_f

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->_r:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_f
    monitor-exit v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :try_start_f
    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] killProcList:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->_r:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_d

    goto :goto_e

    :catchall_6
    move-exception p0

    :try_start_10
    monitor-exit v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :try_start_11
    throw p0

    :cond_10
    :goto_e
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "quick_kill_proc_list"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->as:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_d

    :try_start_12
    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->as:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move v6, v1

    :goto_f
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_11

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->as:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_11
    monitor-exit v5
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    :try_start_13
    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] quickKillProcList:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->as:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_d

    goto :goto_10

    :catchall_7
    move-exception p0

    :try_start_14
    monitor-exit v5
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    :try_start_15
    throw p0

    :cond_12
    :goto_10
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "need_handle_system_flag_list"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->bs:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_d

    :try_start_16
    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->bs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move v6, v1

    :goto_11
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_13

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->bs:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :cond_13
    monitor-exit v5
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    :try_start_17
    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] needHandleSystemFlagList:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->bs:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_d

    goto :goto_12

    :catchall_8
    move-exception p0

    :try_start_18
    monitor-exit v5
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    :try_start_19
    throw p0

    :cond_14
    :goto_12
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "level0_kill_proc_list"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->cs:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_d

    :try_start_1a
    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->cs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move v6, v1

    :goto_13
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_15

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->cs:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_15
    monitor-exit v5
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    :try_start_1b
    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] level0KillList:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->cs:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_d

    goto :goto_14

    :catchall_9
    move-exception p0

    :try_start_1c
    monitor-exit v5
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    :try_start_1d
    throw p0

    :cond_16
    :goto_14
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "prebuilt_gms_proc_list"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ds:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_d

    :try_start_1e
    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ds:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move v6, v1

    :goto_15
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_17

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ds:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    :cond_17
    const-string v4, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig] gmsMonitorList:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ds:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    goto :goto_16

    :catchall_a
    move-exception p0

    monitor-exit v5
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_a

    :try_start_1f
    throw p0

    :cond_18
    :goto_16
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_cpu_usage_threshold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_19

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v6, v1

    :goto_17
    if-ge v6, v5, :cond_19

    sget-object v7, Lcom/android/server/am/OnePlusHighPowerDetector;->du:[I

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v7, v6

    const-string v7, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig]BG_DETECTION_CPU_USAGE_THRESHOLD_MIN["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/android/server/am/OnePlusHighPowerDetector;->du:[I

    aget v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    :cond_19
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "bg_detection_cpu_usage_threshold_max"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v6, v1

    :goto_18
    if-ge v6, v5, :cond_1a

    sget-object v7, Lcom/android/server/am/OnePlusHighPowerDetector;->cu:[I

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v7, v6

    const-string v7, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig]BG_DETECTION_CPU_USAGE_THRESHOLD_MAX["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/android/server/am/OnePlusHighPowerDetector;->cu:[I

    aget v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    :cond_1a
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "bg_detection_network_usage_threshold"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sput v4, Lcom/android/server/am/OnePlusHighPowerDetector;->fu:I

    const-string v4, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig]BG_DETECTION_NETWORK_USAGE_THRESHOLD:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/android/server/am/OnePlusHighPowerDetector;->fu:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "bg_detection_cpu_usage_threshold_optimizated"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sput v4, Lcom/android/server/am/OnePlusHighPowerDetector;->eu:I

    const-string v4, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig]BG_DETECTION_CPU_USAGE_THRESHOLD_OPTIMIZAITON:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/android/server/am/OnePlusHighPowerDetector;->eu:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "cpu_check_delay"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v6, v1

    :goto_19
    if-ge v6, v5, :cond_1d

    sget-object v7, Lcom/android/server/am/OnePlusHighPowerDetector;->au:[I

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v7, v6

    const-string v7, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig]CPU_CHECK_DELAY["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/android/server/am/OnePlusHighPowerDetector;->au:[I

    aget v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    :cond_1d
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "cpu_min_check_duration"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sput v4, Lcom/android/server/am/OnePlusHighPowerDetector;->Tt:I

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig]CPU_MIN_CHECK_DURATION:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/server/am/OnePlusHighPowerDetector;->Tt:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_last_fg_threshold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sput v4, Lcom/android/server/am/OnePlusHighPowerDetector;->Ut:I

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig]APP_LAST_FOREGROUND_TIME_THRESHOLD: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/server/am/OnePlusHighPowerDetector;->Ut:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_last_provider_threshold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sput v4, Lcom/android/server/am/OnePlusHighPowerDetector;->Yt:I

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig]APP_LAST_CONTACT_PROVIDER_TIME_THRESHOLD: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/server/am/OnePlusHighPowerDetector;->Yt:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_pd_usage_threshold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sput v4, Lcom/android/server/am/OnePlusHighPowerDetector;->gu:I

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig]POWER_DRAIN_USG_THOLD: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/server/am/OnePlusHighPowerDetector;->gu:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_rnk_usage_threshold_medium"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sput v4, Lcom/android/server/am/OnePlusHighPowerDetector;->hu:I

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig]RNK_USG_THOLD_MEDIUM: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/server/am/OnePlusHighPowerDetector;->hu:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_rnk_enable"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->_t:Z

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig]RNK_ON: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/android/server/am/OnePlusHighPowerDetector;->_t:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_pd_tempature_threshold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sput v4, Lcom/android/server/am/OnePlusHighPowerDetector;->iu:I

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig]POWER_DRAIN_TEMP_THOLD: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/server/am/OnePlusHighPowerDetector;->iu:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_pd_last_fg_threshold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sput v4, Lcom/android/server/am/OnePlusHighPowerDetector;->Wt:I

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig]S_ON_PD_LAST_FG_TIME_THOLD: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/server/am/OnePlusHighPowerDetector;->Wt:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_s_off_pd_last_fg_threshold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sput v4, Lcom/android/server/am/OnePlusHighPowerDetector;->Xt:I

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig]S_OFF_PD_LAST_FG_TIME_THOLD: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/server/am/OnePlusHighPowerDetector;->Xt:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_app_cont_busy_time_thold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sput v4, Lcom/android/server/am/OnePlusHighPowerDetector;->Zt:I

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] APP_CONT_BUSY_TIME_THOLD: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/server/am/OnePlusHighPowerDetector;->Zt:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_enable_skip_handle"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->vu:Z

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] ENABLE_SKIP_HANDLE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/android/server/am/OnePlusHighPowerDetector;->vu:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "native_detection_list"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->tsu(Lorg/json/JSONArray;)V

    :cond_29
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "sepical_native_detection_list"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_2b

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Ks:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_d

    :try_start_20
    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Ks:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    move v6, v1

    :goto_1a
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_2a

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "process"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "count"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v10, "batteryDrop"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v10, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Ks:Ljava/util/HashMap;

    new-instance v11, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;

    invoke-direct {v11, p0, v8, v9, v7}, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;Ljava/lang/String;II)V

    invoke-virtual {v10, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "OHPD"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[OnlineConfig]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Ks:Ljava/util/HashMap;

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    :cond_2a
    monitor-exit v5

    goto :goto_1b

    :catchall_b
    move-exception p0

    monitor-exit v5
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_b

    :try_start_21
    throw p0

    :cond_2b
    :goto_1b
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_enable_kill_busy_gms"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->xu:Z

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] ENABLE_KILL_BUSY_GMS_PROCESS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/android/server/am/OnePlusHighPowerDetector;->xu:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_enable_agg_kill_busy_gms"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->zr:Z

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] ENABLE_AGG_KILL_BUSY_GMS_PROCESS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->zr:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_enable_monitor_camera"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->pu:Z

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig]BG_DETECTION_ENABLE_MONITOR_CAMERA_PROCESS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/android/server/am/OnePlusHighPowerDetector;->pu:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_enable_kill_busy_camera"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->qu:Z

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig]BG_DETECTION_ENABLE_KILL_BUSY_CAMERA_PROCESS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/android/server/am/OnePlusHighPowerDetector;->qu:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_camera_cpu_threshold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Wr:I

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig]BG_DETECTION_CAMERA_CPU_USAGE_THRESHOLD: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Wr:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_camera_proc_name"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Ur:Ljava/lang/String;

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig]BG_DETECTION_CAMERA_PROC_NAME: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Ur:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_native_cpu_threshold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Bs:I

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig]BG_DETECTION_NATIVE_CPU_USAGE_THRESHOLD: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Bs:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bgc_whitelist"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Or:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_d

    :try_start_22
    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Or:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move v6, v1

    :goto_1c
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_33

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Or:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    :cond_33
    monitor-exit v5

    goto :goto_1d

    :catchall_c
    move-exception p0

    monitor-exit v5
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_c

    :try_start_23
    throw p0

    :cond_34
    :goto_1d
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bgc_mdm_enable"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->xr:Z

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] mBgcMdmEnabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->xr:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bgc_feature"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Nr:Z

    const-string v3, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig]BGC_FEATURE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Nr:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Nr:Z

    if-eqz v3, :cond_36

    sput-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->_t:Z

    goto :goto_1e

    :cond_36
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/server/am/OnePlusHighPowerDetector;->_t:Z

    :goto_1e
    const-string v3, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig]RNK_ON: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/am/OnePlusHighPowerDetector;->_t:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_38
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_d

    :try_start_24
    const-string p0, "OHPD"

    const-string p1, "[OnlineConfig] BackgroundDetection updated complete"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_24 .. :try_end_24} :catch_1
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_0

    goto :goto_20

    :catchall_d
    move-exception p0

    :try_start_25
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_d

    :try_start_26
    throw p0
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_26} :catch_1
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON, error message:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_1f

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON, error message:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    :goto_1f
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OHPD"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_20
    return-void
.end method

.method static synthetic sis(Lcom/android/server/am/OnePlusHighPowerDetector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Br:Z

    return p1
.end method

.method static synthetic ssp(Lcom/android/server/am/OnePlusHighPowerDetector;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Zr:Z

    return p0
.end method

.method static synthetic tsu(Lcom/android/server/am/OnePlusHighPowerDetector;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->bn()V

    return-void
.end method

.method private tsu(Lorg/json/JSONArray;)V
    .locals 7

    const-string v0, "OHPD"

    const-string v1, "ro.board.platform"

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "sdm845"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v4, "/data/system/nativeproc/proclist"

    if-eqz v3, :cond_0

    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v3, "msmnile"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v3, "/cache/nativeproc/proclist"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_4

    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x0

    :goto_1
    :try_start_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "daemon"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "thold"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Ds:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] start monitoring native process:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", thold="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move-object v2, v3

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_6

    :catch_0
    move-exception p0

    move-object v2, v3

    goto :goto_4

    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    :goto_3
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catchall_1
    move-exception p0

    move-object v3, v2

    goto :goto_6

    :catch_1
    move-exception p0

    :goto_4
    :try_start_4
    const-string p1, "fail to save native monitor list to file "

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_5

    goto :goto_3

    :catch_2
    :cond_5
    :goto_5
    return-void

    :goto_6
    if-eqz v3, :cond_6

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    :cond_6
    throw p0
.end method

.method static synthetic tsu(Lcom/android/server/am/OnePlusHighPowerDetector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Tr:Z

    return p1
.end method

.method private va(Z)V
    .locals 31

    move-object/from16 v9, p0

    move/from16 v10, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BGC] checkAbnBgKillLocked, doExecution: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OHPD"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->wr:Landroid/util/SparseArray;

    if-eqz v1, :cond_41

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_20

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-static {}, Lcom/android/server/wm/OpWmInjector;->getSysAlertWindowUidsForScreenOff()Ljava/util/List;

    move-result-object v13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BGC] alertWindowUidsSoff :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OHPD"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/wm/OpWmInjector;->getVisibleWindowUids()Ljava/util/List;

    move-result-object v14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BGC] visibleUids :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OHPD"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->en()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :cond_1
    move-object v15, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BGC] active audio :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OHPD"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->vr:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {v1}, Lcom/android/server/am/OnePlusBGController;->Eb()Ljava/lang/String;

    move-result-object v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BGC] active step counter uids :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OHPD"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x2

    const-string v3, "com_oneplus_systemui_recent_task_lockd_list"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->parseLockedStr(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BGC] locked :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OHPD"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->wr:Landroid/util/SparseArray;

    if-eqz v1, :cond_7

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move-wide/from16 v19, v11

    const/4 v4, 0x0

    const/16 v18, 0x0

    :goto_0
    iget-object v11, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->wr:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v4, v11, :cond_6

    iget-object v11, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->wr:Landroid/util/SparseArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    iget-object v12, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->wr:Landroid/util/SparseArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/OnePlusBGController$kth;

    iget-boolean v12, v12, Lcom/android/server/am/OnePlusBGController$kth;->am:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget-object v10, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->wr:Landroid/util/SparseArray;

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/OnePlusBGController$kth;

    iget-boolean v10, v10, Lcom/android/server/am/OnePlusBGController$kth;->bm:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-wide/from16 v21, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "F"

    goto :goto_1

    :cond_2
    const-string v8, "K"

    :goto_1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, ", Spe"

    goto :goto_2

    :cond_3
    const-string v8, ""

    :goto_2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "], "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    new-array v8, v7, [I

    const/16 v12, 0x8d

    const/16 v16, 0x0

    aput v12, v8, v16

    invoke-static {v8}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->vr:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusBGController;->Db()I

    move-result v8

    if-ne v11, v8, :cond_5

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_5

    sget-boolean v8, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v8, :cond_4

    const-string v8, "OHPD"

    const-string v10, "[BGC][GMS] Observe GMS abnormal, start to review"

    invoke-static {v8, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move/from16 v18, v7

    :cond_5
    add-int/lit8 v4, v4, 0x1

    move/from16 v10, p1

    move-wide/from16 v7, v21

    goto/16 :goto_0

    :cond_6
    move-wide/from16 v21, v7

    const/4 v7, 0x1

    const/16 v16, 0x0

    const-string v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[BGC] mBGCUidArray :"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_7
    move-wide/from16 v21, v7

    move-wide/from16 v19, v11

    const/4 v7, 0x1

    const/16 v16, 0x0

    move/from16 v18, v16

    :goto_3
    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->Ar:Ljava/util/HashSet;

    if-eqz v1, :cond_9

    monitor-enter v1

    :try_start_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->Ar:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_8
    const-string v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[BGC] mBGCUsingTrafficUidSet :"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v2, v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    :cond_9
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->xl()Ljava/lang/String;

    move-result-object v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BGC] currentIME :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OHPD"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sget-object v10, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    :try_start_2
    new-instance v11, Landroid/util/ArrayMap;

    invoke-direct {v11}, Landroid/util/ArrayMap;-><init>()V

    new-instance v12, Landroid/util/ArrayMap;

    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v7, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->os:Ljava/util/HashMap;

    monitor-enter v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object/from16 v23, v1

    :try_start_3
    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->os:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_6
    if-lez v1, :cond_26

    add-int/lit8 v7, v1, -0x1

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    sget-boolean v24, Lcom/android/server/am/OnePlusBGController;->Xm:Z

    if-eqz v24, :cond_a

    move-object/from16 v24, v2

    const-string v2, "OHPD"

    move-object/from16 v25, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v12

    const-string v12, "[BGC] i="

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", pid="

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", uid="

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", iso="

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, v1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", userId="

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", pkg="

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", app.info.uid="

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", f=0x"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v27, v7

    const/16 v7, 0x10

    invoke-static {v12, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", isSys="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {v9, v7}, Lcom/android/server/am/OnePlusHighPowerDetector;->g(I)Z

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isMulti="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {v9, v7}, Lcom/android/server/am/OnePlusHighPowerDetector;->h(I)Z

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", sN="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_a
    move-object/from16 v24, v2

    move-object/from16 v25, v4

    move/from16 v27, v7

    move-object/from16 v26, v12

    :goto_7
    if-eqz v18, :cond_c

    const-string v2, "com.google.android.gms"

    invoke-direct {v9, v1, v15, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Lcom/android/server/am/ProcessRecord;Ljava/util/List;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v2, :cond_b

    const-string v2, "OHPD"

    const-string v4, "[BGC][GMS] Skip due to important client\'s dependency"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move/from16 v18, v16

    :cond_c
    iget-object v2, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->wr:Landroid/util/SparseArray;

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_e

    :cond_d
    :goto_8
    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move-object/from16 v17, v15

    :goto_9
    move-object/from16 v15, v25

    move-object/from16 v12, v26

    move-object/from16 v25, v8

    move-object/from16 v8, v23

    move-object/from16 v23, v13

    move-object/from16 v13, v24

    move-object/from16 v24, v14

    move-object v14, v3

    goto/16 :goto_f

    :cond_e
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget v2, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {v9, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->g(I)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v9, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->cno(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->o(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "proc "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "(pid : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") sys pkg"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_a
    invoke-virtual {v9, v11, v2, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Landroid/util/ArrayMap;ILjava/lang/String;)V

    goto :goto_8

    :cond_f
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "proc "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "(pid : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") locked"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v11, v2, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Landroid/util/ArrayMap;ILjava/lang/String;)V

    if-eqz v18, :cond_d

    iget-object v2, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->vr:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController;->Db()I

    move-result v2

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v1, :cond_d

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v1, :cond_10

    const-string v1, "OHPD"

    const-string v2, "[BGC][GMS] Skip due to locked"

    :goto_b
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    move/from16 v18, v16

    move-object/from16 v2, v24

    move-object/from16 v4, v25

    move-object/from16 v12, v26

    move/from16 v1, v27

    goto/16 :goto_6

    :cond_11
    if-eqz v15, :cond_12

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_12

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "proc "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "(pid : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") active audio"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v11, v2, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Landroid/util/ArrayMap;ILjava/lang/String;)V

    if-eqz v18, :cond_d

    iget-object v2, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->vr:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController;->Db()I

    move-result v2

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v1, :cond_d

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v1, :cond_10

    const-string v1, "OHPD"

    const-string v2, "[BGC][GMS] Skip due to have audio"

    goto :goto_b

    :cond_12
    if-eqz v6, :cond_13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget v2, v1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v4, 0xd

    if-gt v2, v4, :cond_13

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "proc "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "(pid : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") active pedometer sensor. Procstat "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_a

    :cond_13
    if-eqz v13, :cond_15

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_15

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v12, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v7, v12, :cond_14

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v7, "has alert window"

    invoke-virtual {v9, v11, v4, v7}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Landroid/util/ArrayMap;ILjava/lang/String;)V

    goto :goto_c

    :cond_15
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_17

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v12, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v7, v12, :cond_16

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v7, "has visible window"

    invoke-virtual {v9, v11, v4, v7}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Landroid/util/ArrayMap;ILjava/lang/String;)V

    goto :goto_d

    :cond_17
    if-eqz v8, :cond_18

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "proc "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "(pid : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") current IME"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_a

    :cond_18
    iget-object v2, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->Ar:Ljava/util/HashSet;

    if-eqz v2, :cond_19

    iget-object v2, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->Ar:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_19

    iget-object v2, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->Ar:Ljava/util/HashSet;

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "proc "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "(pid : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") current using network"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_a

    :cond_19
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->vr:Lcom/android/server/am/OnePlusBGController;

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v12, v1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v2, v4, v12}, Lcom/android/server/am/OnePlusBGController;->dma(II)Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-virtual {v9, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->tsu(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-virtual {v9, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->cno(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-virtual {v9, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->sis(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto/16 :goto_e

    :cond_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "proc "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "(pid : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") stat "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v11, v2, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Landroid/util/ArrayMap;ILjava/lang/String;)V

    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v2, :cond_1b

    const-string v2, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[BGC] 2. Skip due to "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    if-eqz v18, :cond_1d

    iget-object v2, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->vr:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController;->Db()I

    move-result v2

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v1, :cond_1d

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v1, :cond_1c

    const-string v1, "OHPD"

    const-string v2, "[BGC][GMS] Skip due to 2"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move-object/from16 v17, v15

    move/from16 v18, v16

    goto/16 :goto_9

    :cond_1d
    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move-object/from16 v17, v15

    goto/16 :goto_9

    :cond_1e
    :goto_e
    sget v12, Lcom/android/server/am/OnePlusHighPowerDetector;->Vt:I

    move-object v2, v1

    move-object/from16 v4, v23

    move-object/from16 v1, p0

    move-object/from16 v23, v13

    move-object/from16 v13, v24

    move-object/from16 v24, v14

    move/from16 v14, v16

    move-object/from16 v16, v2

    move-object v14, v3

    move-object/from16 v17, v15

    move-object/from16 v15, v25

    move-object/from16 v25, v8

    move-object v8, v4

    move-wide/from16 v3, v21

    move-object/from16 v28, v5

    move-object v5, v7

    move-object/from16 v29, v6

    move v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Lcom/android/server/am/ProcessRecord;JLjava/lang/StringBuffer;I)Z

    move-result v1

    if-eqz v1, :cond_22

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v1, :cond_1f

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BGC] 1. Skip due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    move-object/from16 v1, v16

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v11, v2, v3}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Landroid/util/ArrayMap;ILjava/lang/String;)V

    if-eqz v18, :cond_21

    iget-object v2, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->vr:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController;->Db()I

    move-result v2

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v1, :cond_21

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v1, :cond_20

    const-string v1, "OHPD"

    const-string v2, "[BGC][GMS] Skip due to 1"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v15, v17

    move-object/from16 v13, v23

    move-object/from16 v14, v24

    move-object/from16 v12, v26

    move/from16 v1, v27

    move-object/from16 v5, v28

    move-object/from16 v6, v29

    const/16 v16, 0x0

    const/16 v18, 0x0

    goto/16 :goto_10

    :cond_21
    move-object/from16 v12, v26

    goto/16 :goto_f

    :cond_22
    move-object/from16 v1, v16

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->p(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doze user white list pkg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", app.info.uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v2, :cond_23

    const-string v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BGC] 3. Skip due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x2710

    if-lt v2, v3, :cond_24

    const/16 v3, 0x4e1f

    if-gt v2, v3, :cond_24

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v2, :cond_24

    const-string v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BGC] Mark it for adding pkg "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", app.info.uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v11, v2, v3}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Landroid/util/ArrayMap;ILjava/lang/String;)V

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v12, v26

    invoke-virtual {v9, v12, v1, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Landroid/util/ArrayMap;ILjava/lang/String;)V

    :goto_f
    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v15, v17

    move-object/from16 v13, v23

    move-object/from16 v14, v24

    move/from16 v1, v27

    move-object/from16 v5, v28

    move-object/from16 v6, v29

    const/16 v16, 0x0

    :goto_10
    move-object/from16 v23, v8

    move-object/from16 v8, v25

    goto/16 :goto_6

    :cond_25
    move-object/from16 v12, v26

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_26
    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v8, v23

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->vs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_2b

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->vs:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    iget-object v2, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->vs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;

    iget-object v4, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->wr:Landroid/util/SparseArray;

    iget v5, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->uid:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_27

    goto :goto_11

    :cond_27
    iget v4, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget v4, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->flags:I

    invoke-virtual {v9, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->g(I)Z

    move-result v4

    if-eqz v4, :cond_28

    goto :goto_11

    :cond_28
    invoke-virtual {v9, v3}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Lcom/android/server/am/OnePlusHighPowerDetector$zta;)Z

    move-result v4

    if-eqz v4, :cond_29

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BGC] skip forked fproc "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "(uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->uid:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), reason= white list"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    goto :goto_11

    :cond_29
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_2a
    monitor-exit v1

    goto :goto_12

    :catchall_2
    move-exception v0

    move-object v2, v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v2

    :cond_2b
    :goto_12
    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v1, :cond_2e

    const/4 v1, 0x0

    :goto_13
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2c

    invoke-virtual {v11, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v11, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BGC] skipUidMap, uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", skipped reason="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_2c
    const/4 v1, 0x0

    :goto_14
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2d

    invoke-virtual {v12, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v12, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BGC] skipUserWhiteUidMap, uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", skipped reason="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_2d
    invoke-virtual {v14}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-string v3, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BGC] uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", skipped reason=no running proc"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :cond_2e
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    const/4 v6, 0x0

    :goto_16
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_35

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    iget-object v1, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    if-nez p1, :cond_30

    :cond_2f
    move/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v26, v12

    const/16 v24, 0x1

    :goto_17
    move-object v12, v8

    goto/16 :goto_19

    :cond_30
    iget-object v1, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->wr:Landroid/util/SparseArray;

    iget-object v2, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2f

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->wr:Landroid/util/SparseArray;

    iget-object v2, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/OnePlusBGController$kth;

    iget-boolean v1, v1, Lcom/android/server/am/OnePlusBGController$kth;->am:Z

    if-eqz v1, :cond_32

    iget-object v1, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    iget-object v1, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object v2, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v9, v2, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->forceStopPackage(Ljava/lang/String;I)V

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BGC] force stop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_31
    const/4 v4, 0x1

    goto/16 :goto_18

    :cond_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BGC] kill "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v5, v1, v4}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto/16 :goto_18

    :cond_33
    const/4 v4, 0x1

    iget-object v1, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BGC] it\'s time to notifyBgDetectIfNecessary for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->os:Ljava/util/HashMap;

    iget-object v1, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/16 v21, 0x0

    iget v1, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v22, v1

    move-object/from16 v1, p0

    move/from16 v23, v4

    const/16 v24, 0x1

    move/from16 v4, v16

    move-object/from16 v30, v5

    move/from16 v5, v17

    move/from16 v16, v6

    move/from16 v6, v21

    move-object/from16 v17, v7

    move/from16 v7, v22

    move-object/from16 v26, v12

    move-object v12, v8

    move/from16 v8, v23

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    move-object/from16 v1, v30

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const-string v5, "doze_user_white"

    const/4 v6, 0x2

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Ljava/lang/String;IILjava/lang/String;I)V

    goto :goto_19

    :cond_34
    :goto_18
    move/from16 v24, v4

    move/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v26, v12

    goto/16 :goto_17

    :goto_19
    add-int/lit8 v6, v16, 0x1

    move-object v8, v12

    move-object/from16 v7, v17

    move-object/from16 v12, v26

    goto/16 :goto_16

    :cond_35
    move-object/from16 v17, v7

    move-object v12, v8

    const/4 v1, 0x0

    :goto_1a
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    move-object/from16 v2, v17

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;

    iget v4, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iget v5, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_38

    if-nez p1, :cond_36

    goto :goto_1b

    :cond_36
    iget v5, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v5, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pkgName:Ljava/lang/String;

    if-eqz v5, :cond_37

    iget-object v5, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pkgName:Ljava/lang/String;

    invoke-virtual {v12, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_37
    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget v6, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[BGC] kill forked "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pkgName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " (uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->uid:I

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v6, v4, v3}, Lcom/android/server/am/ActivityManagerService;->killUid(IILjava/lang/String;)V

    :cond_38
    :goto_1b
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v17, v2

    goto :goto_1a

    :cond_39
    if-eqz p1, :cond_3c

    if-eqz v18, :cond_3c

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v1, :cond_3a

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BGC] mIsAggressive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->yr:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mRestrictType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->mRestrictType:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    iget-boolean v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->yr:Z

    if-eqz v1, :cond_3b

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->mRestrictType:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;

    sget-object v2, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;->FULLY:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;

    if-ne v1, v2, :cond_3b

    const-string v1, "com.google.android.gms"

    const/4 v2, 0x0

    invoke-direct {v9, v1, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->forceStopPackage(Ljava/lang/String;I)V

    const-string v1, "OHPD"

    const-string v2, "[BGC][GMS] Special force stop com.google.android.gms in domestic domain"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->vr:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {v1}, Lcom/android/server/am/OnePlusBGController;->Db()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "com.google.android.gms"

    invoke-virtual {v12, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_3b
    const-string v1, "OHPD"

    const-string v2, "[BGC][GMS] In public domain, skip handling"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    :goto_1c
    invoke-virtual {v13}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_3f

    invoke-static {}, Lcom/android/server/am/OpAppBootManagerInjector;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v3, :cond_3d

    const-string v3, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BGC] notify killed pkg :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    const v3, 0x8000

    invoke-static {v2, v3}, Lcom/android/server/am/OpAppBootManagerInjector;->updatePowerFlag(Ljava/lang/String;I)V

    goto :goto_1d

    :cond_3e
    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->vr:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {v1, v13}, Lcom/android/server/am/OnePlusBGController;->zta(Ljava/util/HashSet;)V

    iget-boolean v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->xr:Z

    if-eqz v1, :cond_3f

    invoke-direct {v9, v13}, Lcom/android/server/am/OnePlusHighPowerDetector;->kth(Ljava/util/HashSet;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_1e

    :catchall_3
    move-exception v0

    move-object v1, v0

    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v0

    move-object v1, v0

    goto :goto_1f

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_9
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BGC] got exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    :goto_1e
    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v1, :cond_40

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BGC] checkAbnBgKillLocked in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v19

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OHPD"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    return-void

    :goto_1f
    :try_start_a
    monitor-exit v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v1

    :cond_41
    :goto_20
    return-void
.end method

.method static synthetic vju(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/am/OnePlusHighPowerDetector;->uu:Z

    return p0
.end method

.method private wa(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/server/am/OnePlusHighPowerDetector;->tu:Z

    if-eqz p1, :cond_0

    const-string p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, "false"

    :goto_0
    const-string p1, "persist.sys.ohpd.kcheck"

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[BgDetect] mKillMechanism "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/android/server/am/OnePlusHighPowerDetector;->tu:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OHPD"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Zj:I

    and-int/lit8 p1, p0, 0x1

    if-nez p1, :cond_1

    or-int/lit8 p0, p0, 0x1

    sput p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Zj:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget p1, Lcom/android/server/am/OnePlusHighPowerDetector;->Zj:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "persist.sys.ohpd.flags"

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private wb(Ljava/lang/String;)V
    .locals 13

    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ls:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_1

    aget-object v4, p1, v3

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v6, v4, v5

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    sub-long v6, v0, v6

    const-wide/16 v8, 0x18

    sget-wide v10, Lcom/android/server/am/OnePlusHighPowerDetector;->gt:J

    mul-long/2addr v10, v8

    cmp-long v6, v6, v10

    if-gtz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ls:Ljava/util/HashMap;

    aget-object v7, v4, v2

    new-instance v8, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;

    aget-object v9, v4, v5

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const/4 v11, 0x2

    aget-object v12, v4, v11

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-direct {v8, p0, v9, v10, v12}, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;JZ)V

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "packageName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",lastNotifyTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v4, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",isClickIgnoreAction:"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v4, v11

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private xl()Ljava/lang/String;
    .locals 3

    sget-object p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_input_method"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private you(Ljava/lang/String;II)Landroid/app/Notification;
    .locals 18

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const-string v4, "OHPD"

    const/4 v5, 0x0

    :try_start_0
    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v7, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    :try_start_1
    sget-object v8, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v8, v7, v9}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "applicationDrawable:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    const/4 v7, 0x0

    :goto_1
    const/4 v8, 0x0

    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "get highpower pkg label error:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    if-eqz v7, :cond_11

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v9, 0x1

    if-lt v0, v9, :cond_11

    if-nez v8, :cond_1

    goto/16 :goto_d

    :cond_1
    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    const v10, 0x50d00b6

    invoke-virtual {v0, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x2

    if-eq v3, v10, :cond_2

    sget-object v11, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    const v12, 0x50d00b5

    invoke-virtual {v11, v12}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    :cond_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x50d00b3

    new-array v13, v9, [Ljava/lang/Object;

    aput-object v7, v13, v5

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    :goto_4
    sget-boolean v12, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v12, :cond_3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Notification # content:84738229 "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Notification # triggerPkgName:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", pkgLabel:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v14, Landroid/content/Intent;

    const-string v7, "oneplus.intent.action.POWER_USAGE_ADVANCED"

    invoke-direct {v14, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, ""

    if-eqz v3, :cond_6

    if-eq v3, v9, :cond_5

    if-eq v3, v10, :cond_4

    move-object v12, v7

    goto :goto_5

    :cond_4
    const-string v12, "com.oem.intent.action.bgc_clean_noti"

    goto :goto_5

    :cond_5
    const-string v12, "com.oem.intent.action.force_stop_pkg"

    goto :goto_5

    :cond_6
    const-string v12, "com.oem.intent.action.force_stop_high_pkg"

    :goto_5
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v12, "pkg"

    invoke-virtual {v13, v12, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v15, "userid"

    invoke-virtual {v13, v15, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "type"

    invoke-virtual {v13, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v10, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    move-object/from16 v16, v7

    const/high16 v7, 0x8000000

    invoke-static {v10, v5, v13, v7, v9}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    if-eqz v3, :cond_9

    const/4 v10, 0x1

    if-eq v3, v10, :cond_8

    const/4 v10, 0x2

    if-eq v3, v10, :cond_7

    move-object/from16 v10, v16

    goto :goto_6

    :cond_7
    const-string v10, "com.oem.intent.action.ignore_bgc_pkg"

    goto :goto_6

    :cond_8
    const-string v10, "com.oem.intent.action.ignore_pkg"

    goto :goto_6

    :cond_9
    const-string v10, "com.oem.intent.action.ignore_high_pkg"

    :goto_6
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v13, v15, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v13, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-static {v1, v5, v13, v7, v2}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v10, "com.oem.intent.action.POWER_NOTIFICATION_CANCEL"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-static {v6, v5, v2, v7, v10}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Landroid/app/NotificationChannel;

    const/4 v10, 0x3

    const-string v12, "OP_HP_NOTIFICATION"

    invoke-direct {v7, v12, v0, v10}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v10}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    invoke-virtual {v7, v5}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/app/NotificationChannel;->setBlockableSystem(Z)V

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    :try_start_3
    sget-boolean v10, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v10, :cond_a

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[BgDetect][Notification] Create notification channel for "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    new-instance v4, Landroid/content/pm/ParceledListSlice;

    const/4 v10, 0x1

    new-array v13, v10, [Landroid/app/NotificationChannel;

    aput-object v7, v13, v5

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v6, v4}, Landroid/app/INotificationManager;->createNotificationChannels(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-interface {v0, v6, v4, v6, v12}, Landroid/app/INotificationManager;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_b

    goto :goto_7

    :cond_b
    const/4 v12, 0x0

    :goto_7
    if-nez v12, :cond_c

    goto :goto_8

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :catch_3
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_8
    sget-object v12, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    :cond_c
    const v0, 0x1080362

    if-eqz v3, :cond_e

    const/4 v4, 0x1

    if-eq v3, v4, :cond_e

    const/4 v4, 0x2

    if-eq v3, v4, :cond_d

    const/4 v6, 0x0

    goto :goto_a

    :cond_d
    new-instance v4, Landroid/app/Notification$Action$Builder;

    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    const v6, 0x50d00b4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v4, v0, v5, v9}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_9

    :cond_e
    new-instance v4, Landroid/app/Notification$Action$Builder;

    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    const v6, 0x50d009c    # 6.6299E-36f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v4, v0, v5, v9}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    :goto_9
    invoke-virtual {v4}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v6

    :goto_a
    new-instance v4, Landroid/app/Notification$Action$Builder;

    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    const v7, 0x50d009f

    invoke-virtual {v5, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v4, v0, v5, v1}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v4}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$Builder;

    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4, v12}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v4, 0x108008a

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v1

    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    const v5, 0x106001c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_f

    const/4 v4, 0x0

    goto :goto_b

    :cond_f
    sget-object v12, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    const/high16 v15, 0x8000000

    const/16 v16, 0x0

    new-instance v4, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v17, v4

    invoke-static/range {v12 .. v17}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    :goto_b
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    if-ne v3, v1, :cond_10

    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v1, v11}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    :cond_10
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "op_always_expanded"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0

    :goto_c
    sget-object v1, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    throw v0

    :cond_11
    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BgDetect] error: cannot get pkg label : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private you(Landroid/content/Intent;)V
    .locals 11

    const-string v0, "pkg"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "userid"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "type"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android"

    const-string v3, "|"

    const/4 v4, 0x1

    const-string v5, "OHPD"

    const-string v6, ","

    if-eqz p1, :cond_3

    if-eq p1, v4, :cond_3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ms:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ms:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;

    invoke-virtual {v4}, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;->Yb()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;->wtn(J)V

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ms:Ljava/util/HashMap;

    invoke-virtual {v7, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ms:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;->Xb()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;

    invoke-virtual {v4}, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;->Wb()Z

    move-result v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "bgc_notification_rules_apps"

    invoke-static {p0, v3, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :try_start_0
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object p0

    const v0, 0x33954bc

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {p0, v2, v1, v0, v3}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[BgDetect] BGC ACTION_IGNORE_PKG Type:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    const-string p0, "[BgDetect] BGC Error when cancel notification"

    :goto_1
    invoke-static {v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_3
    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ls:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ls:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;

    invoke-virtual {v7}, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;->Yb()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;->wtn(J)V

    iget-object v8, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ls:Ljava/util/HashMap;

    invoke-virtual {v8, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ls:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;

    invoke-virtual {v9}, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;->Xb()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;

    invoke-virtual {v7}, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;->Wb()Z

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    sget-object p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ohpd_notification_rules_apps"

    invoke-static {p0, v3, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :try_start_1
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object p0

    if-ne p1, v4, :cond_6

    const v0, 0x33954b8

    goto :goto_3

    :cond_6
    const v0, 0x33954b9

    :goto_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {p0, v2, v1, v0, v3}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[BgDetect] ACTION_IGNORE_PKG Type:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    const-string p0, "[BgDetect] Error when cancel notification"

    goto/16 :goto_1

    :cond_7
    :goto_4
    return-void
.end method

.method static synthetic you(Lcom/android/server/am/OnePlusHighPowerDetector;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->you(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic you(Lcom/android/server/am/OnePlusHighPowerDetector;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->yr:Z

    return p0
.end method

.method static synthetic you(Lcom/android/server/am/OnePlusHighPowerDetector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Cr:Z

    return p1
.end method

.method private you(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->pkgDeps:Landroid/util/ArraySet;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private ywr(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[BgDetect] pkg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " removed , userId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OHPD"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3e7

    if-eq p2, v0, :cond_4

    iget-object p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->hk:Ljava/util/HashMap;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->hk:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->hk:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ps:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_1
    iget-object p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ps:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ps:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    iget-object p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->qs:Ljava/util/HashMap;

    monitor-enter p2

    :try_start_2
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->qs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->qs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->os:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    iget-object p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->os:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->os:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0

    :cond_4
    iget-object p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->rs:Ljava/util/HashMap;

    monitor-enter p2

    :try_start_7
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->rs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->rs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ss:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_8
    iget-object p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ss:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ss:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    iget-object p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->us:Ljava/util/HashMap;

    monitor-enter p2

    :try_start_9
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->us:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->us:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    monitor-exit p2

    :goto_0
    return-void

    :catchall_4
    move-exception p0

    monitor-exit p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw p0

    :catchall_5
    move-exception p0

    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw p0

    :catchall_6
    move-exception p0

    :try_start_b
    monitor-exit p2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    throw p0
.end method

.method static synthetic zta(Lcom/android/server/am/OnePlusHighPowerDetector;II)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusHighPowerDetector;->hmo(II)I

    move-result p0

    return p0
.end method

.method static synthetic zta(Lcom/android/server/am/OnePlusHighPowerDetector;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Yr:J

    return-wide p1
.end method

.method static synthetic zta(Lcom/android/server/am/OnePlusHighPowerDetector;Landroid/os/PowerManager;)Landroid/os/PowerManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mPowerManager:Landroid/os/PowerManager;

    return-object p1
.end method

.method public static final zta(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/BatteryStatsService;)Lcom/android/server/am/OnePlusHighPowerDetector;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->sInstance:Lcom/android/server/am/OnePlusHighPowerDetector;

    if-nez v0, :cond_2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/am/OnePlusHighPowerDetector;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/BatteryStatsService;)V

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->sInstance:Lcom/android/server/am/OnePlusHighPowerDetector;

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "OHPD"

    const-string p1, "Fatal Exception : param is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    sget-object p0, Lcom/android/server/am/OnePlusHighPowerDetector;->sInstance:Lcom/android/server/am/OnePlusHighPowerDetector;

    return-object p0
.end method

.method private zta(Lcom/android/server/am/OnePlusBGController$zta;)V
    .locals 14

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->wr:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/am/OnePlusBGController$zta;->ob()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[BGC] list.size()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    monitor-enter p1

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->wr:Landroid/util/SparseArray;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusBGController$wtn;

    iget v2, v2, Lcom/android/server/am/OnePlusBGController$wtn;->mUid:I

    new-instance v13, Lcom/android/server/am/OnePlusBGController$kth;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusBGController$wtn;

    iget-object v4, v3, Lcom/android/server/am/OnePlusBGController$wtn;->mPkgName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusBGController$wtn;

    iget-object v5, v3, Lcom/android/server/am/OnePlusBGController$wtn;->Xl:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusBGController$wtn;

    iget-object v6, v3, Lcom/android/server/am/OnePlusBGController$wtn;->Yl:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusBGController$wtn;

    iget-boolean v7, v3, Lcom/android/server/am/OnePlusBGController$wtn;->Zl:Z

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusBGController$wtn;

    iget-wide v8, v3, Lcom/android/server/am/OnePlusBGController$wtn;->_l:D

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusBGController$wtn;

    iget-boolean v10, v3, Lcom/android/server/am/OnePlusBGController$wtn;->am:Z

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusBGController$wtn;

    iget-boolean v11, v3, Lcom/android/server/am/OnePlusBGController$wtn;->bm:Z

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusBGController$wtn;

    iget-boolean v12, v3, Lcom/android/server/am/OnePlusBGController$wtn;->cm:Z

    move-object v3, v13

    invoke-direct/range {v3 .. v12}, Lcom/android/server/am/OnePlusBGController$kth;-><init>(Ljava/lang/String;Lcom/android/server/am/OnePlusBGController$AppBucketRanking;Lcom/android/server/am/OnePlusBGController$MyDrainType;ZDZZZ)V

    invoke-virtual {v1, v2, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BGC] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusBGController$wtn;

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$wtn;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    const-string p0, "[BGC] list == null"

    goto :goto_1

    :cond_2
    const-string p0, "[BGC] info == null"

    :goto_1
    invoke-static {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/OnePlusHighPowerDetector;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->sis(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/OnePlusHighPowerDetector;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusHighPowerDetector;->forceStopPackage(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/OnePlusHighPowerDetector;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OnePlusHighPowerDetector;->sis(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/OnePlusHighPowerDetector;Ljava/lang/String;IILjava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Ljava/lang/String;IILjava/lang/String;I)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/OnePlusHighPowerDetector;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->sis(Lorg/json/JSONArray;)V

    return-void
.end method

.method private zta(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 2

    const-string p0, "OHPD"

    :try_start_0
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyBgDetectIfNecessary # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", userId="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", reason="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", type="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object p2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    const p4, 0xd6e5

    invoke-virtual {p2, p4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p5, p2, Landroid/os/Message;->arg1:I

    iput p3, p2, Landroid/os/Message;->arg2:I

    sget-object p3, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    invoke-virtual {p3, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Error when notifyBgDetectIfNecessary "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private zta(Ljava/lang/String;IZ)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopBgPowerHungryApp +# pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", powerLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remove="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p3

    const/16 v2, 0x3e8

    if-ne p3, v2, :cond_0

    const/4 p3, -0x2

    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/android/server/am/OnePlusHighPowerDetector;->forceStopPackage(Ljava/lang/String;I)V

    const-string p0, "OHPD"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BgDetect]- stopBgPowerHungryApp : pkg "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " level "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private zta(Ljava/lang/String;Ljava/util/HashSet;Ljava/util/HashSet;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->hk:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ps:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->qs:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->os:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->rs:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ss:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->us:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    :cond_6
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object p1

    const-string p2, "android"

    invoke-interface {p1, p2}, Landroid/app/INotificationManager;->getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object p3

    const-string v0, "OHPD"

    if-eqz p3, :cond_17

    array-length v1, p3

    const/4 v2, 0x1

    if-ge v1, v2, :cond_7

    goto/16 :goto_7

    :cond_7
    const/4 v1, 0x2

    const/4 v3, 0x0

    if-eqz p4, :cond_a

    if-eq p4, v2, :cond_9

    if-eq p4, v1, :cond_8

    move v4, v3

    goto :goto_0

    :cond_8
    const v4, 0x33954bc

    goto :goto_0

    :cond_9
    const v4, 0x33954b8

    goto :goto_0

    :cond_a
    const v4, 0x33954b9

    :goto_0
    array-length v5, p3

    :goto_1
    const/4 v6, 0x0

    if-ge v3, v5, :cond_c

    aget-object v7, p3, v3

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v7

    if-ne v7, v4, :cond_b

    const-string p3, "[BgDetect][Notification] notification exists, cancel it"

    invoke-static {v0, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p3

    invoke-interface {p1, p2, v6, v4, p3}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_2

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_c
    :goto_2
    if-nez p4, :cond_f

    iget-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->hs:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object p3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ls:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d

    iget-object p3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ls:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;

    sget-wide v0, Lcom/android/server/am/OnePlusHighPowerDetector;->gt:J

    neg-long v0, v0

    invoke-virtual {p3, v0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;->wtn(J)V

    iget-object p4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ls:Ljava/util/HashMap;

    invoke-virtual {p4, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_e
    iget-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->hs:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    iput-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->gs:Ljava/lang/String;

    goto/16 :goto_6

    :cond_f
    if-ne p4, v2, :cond_12

    iget-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->fs:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object p3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ls:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_10

    iget-object p3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ls:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;

    sget-wide v0, Lcom/android/server/am/OnePlusHighPowerDetector;->gt:J

    neg-long v0, v0

    invoke-virtual {p3, v0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;->wtn(J)V

    iget-object p4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ls:Ljava/util/HashMap;

    invoke-virtual {p4, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_11
    iget-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->fs:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    iput-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->es:Ljava/lang/String;

    goto :goto_6

    :cond_12
    if-ne p4, v1, :cond_16

    iget-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ks:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_13
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_15

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object p3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ms:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_13

    iget-object p3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ms:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;

    sget-boolean p4, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz p4, :cond_14

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[BgDetect] BGC Update key "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " CurentTime to "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/am/OnePlusHighPowerDetector;->it:J

    neg-long v1, v1

    invoke-virtual {p4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    sget-wide v1, Lcom/android/server/am/OnePlusHighPowerDetector;->it:J

    neg-long v1, v1

    invoke-virtual {p3, v1, v2}, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;->wtn(J)V

    iget-object p4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ms:Ljava/util/HashMap;

    invoke-virtual {p4, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_15
    iget-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ks:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    iput-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->js:Ljava/lang/String;

    :cond_16
    :goto_6
    return-void

    :cond_17
    :goto_7
    sget-boolean p0, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz p0, :cond_18

    const-string p0, "[BgDetect][Notification] activeList null"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    return-void
.end method

.method private zta(Ljava/util/HashSet;Ljava/util/HashSet;Lcom/android/server/am/ProcessRecord;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/server/am/ProcessRecord;",
            ")V"
        }
    .end annotation

    iget-object p0, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/OnePlusHighPowerDetector;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->zr:Z

    return p0
.end method

.method static synthetic zta(Lcom/android/server/am/OnePlusHighPowerDetector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Zr:Z

    return p1
.end method

.method private zta(Lcom/android/server/am/ProcessRecord;JILjava/lang/StringBuffer;ZI)Z
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Lcom/android/server/am/ProcessRecord;JILjava/lang/StringBuffer;ZILjava/util/List;Z)Z

    move-result v0

    return v0
.end method

.method private zta(Lcom/android/server/am/ProcessRecord;JILjava/lang/StringBuffer;ZILjava/util/List;Z)Z
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ProcessRecord;",
            "JI",
            "Ljava/lang/StringBuffer;",
            "ZI",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p4

    move-object/from16 v2, p5

    move/from16 v3, p7

    move-object/from16 v4, p8

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->igw(Lcom/android/server/am/ProcessRecord;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "white list pkg "

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return v6

    :cond_0
    const-string v5, "small adj "

    const-string v7, "important proc"

    const/16 v8, 0xc8

    const/16 v9, 0x190

    const/4 v10, 0x0

    if-eqz p9, :cond_3

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v11, :cond_1

    if-eqz v4, :cond_1

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "highUsed list pkg "

    goto :goto_0

    :cond_1
    iget v4, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-gt v4, v9, :cond_2

    if-eq v4, v8, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->cjf(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return v6

    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->ywr(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_4

    return v10

    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->cno(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->qbh(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x2

    if-gt v1, v4, :cond_5

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-gt v4, v9, :cond_5

    if-eq v4, v8, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :cond_5
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->cno(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->cjf(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return v6

    :cond_6
    const-wide/16 v4, 0x0

    const-string v7, "app "

    const-string v8, "("

    if-nez p9, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v9

    iget-wide v11, v9, Lcom/android/server/wm/WindowProcessController;->lastFgTime:J

    cmp-long v9, v11, v4

    if-eqz v9, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v9

    iget-wide v11, v9, Lcom/android/server/wm/WindowProcessController;->lastFgTime:J

    sub-long v11, p2, v11

    int-to-long v13, v3

    cmp-long v9, v11, v13

    if-gez v9, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") due to just switch to bg "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    iget-wide v4, v0, Lcom/android/server/wm/WindowProcessController;->lastFgTime:J

    sub-long v4, p2, v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms ago , thold "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_7
    if-nez p9, :cond_8

    if-nez v1, :cond_8

    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->obl(Lcom/android/server/am/ProcessRecord;)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BgDetect] skip provider/network check on app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OHPD"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_8
    if-nez p9, :cond_9

    iget-wide v11, v0, Lcom/android/server/am/ProcessRecord;->lastContactProviderTime:J

    cmp-long v3, v11, v4

    if-eqz v3, :cond_9

    sub-long v3, p2, v11

    sget v5, Lcom/android/server/am/OnePlusHighPowerDetector;->Yt:I

    int-to-long v11, v5

    cmp-long v3, v3, v11

    if-gez v3, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") due to just access contacts provider "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/android/server/am/ProcessRecord;->lastContactProviderTime:J

    sub-long v3, p2, v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms ago"

    goto/16 :goto_1

    :cond_9
    iget v3, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v3

    if-eqz p9, :cond_a

    iget-wide v11, v0, Lcom/android/server/am/ProcessRecord;->lastLightIdleRxBytes:J

    goto :goto_4

    :cond_a
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->lastRxBytes:[J

    aget-wide v11, v5, v1

    :goto_4
    sub-long/2addr v3, v11

    sget v5, Lcom/android/server/am/OnePlusHighPowerDetector;->fu:I

    int-to-long v11, v5

    cmp-long v5, v3, v11

    const-string v9, " bytes"

    if-lez v5, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") due to net rx usage is "

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_b
    iget v3, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v3

    if-eqz p9, :cond_c

    iget-wide v11, v0, Lcom/android/server/am/ProcessRecord;->lastLightIdleTxBytes:J

    goto :goto_6

    :cond_c
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->lastTxBytes:[J

    aget-wide v11, v5, v1

    :goto_6
    sub-long/2addr v3, v11

    sget v1, Lcom/android/server/am/OnePlusHighPowerDetector;->fu:I

    int-to-long v11, v1

    cmp-long v1, v3, v11

    if-lez v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") due to net tx usage is "

    goto :goto_5

    :cond_d
    return v10
.end method

.method private zta(Lcom/android/server/am/ProcessRecord;JLjava/lang/StringBuffer;I)Z
    .locals 10

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->s(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->bvj(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->dma(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "white list pkg "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-virtual {p4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->cno(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->oxb(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "important proc"

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    iget-wide v2, p0, Lcom/android/server/wm/WindowProcessController;->lastFgTime:J

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    const-string v0, "("

    const-string v2, "app "

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    iget-wide v6, p0, Lcom/android/server/wm/WindowProcessController;->lastFgTime:J

    sub-long v6, p2, v6

    int-to-long v8, p5

    cmp-long p0, v6, v8

    if-gez p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") due to just switch to bg "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p1

    iget-wide v2, p1, Lcom/android/server/wm/WindowProcessController;->lastFgTime:J

    sub-long/2addr p2, v2

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms ago , thold "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    iget-wide v6, p1, Lcom/android/server/am/ProcessRecord;->lastContactProviderTime:J

    cmp-long p0, v6, v4

    if-eqz p0, :cond_4

    sub-long v3, p2, v6

    sget p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Yt:I

    int-to-long v5, p0

    cmp-long p0, v3, v5

    if-gez p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p5, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ") due to just access contacts provider "

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/server/am/ProcessRecord;->lastContactProviderTime:J

    sub-long/2addr p2, v2

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms ago"

    goto/16 :goto_0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private zta(Lcom/android/server/am/ProcessRecord;Ljava/util/List;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/android/server/am/OnePlusHighPowerDetector;->you(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    iget p0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 p3, 0x2

    const-string v0, " pid: "

    const-string v1, " (uid: "

    const-string v2, "[BGC] Observe processName: "

    const-string v3, "OHPD"

    const/4 v4, 0x1

    if-eq p0, p3, :cond_2

    const/16 p3, 0xd

    if-ne p0, p3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_4

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-boolean p0, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") has active audio, so is important"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v4

    :cond_2
    :goto_0
    sget-boolean p0, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") , setProcState: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is important"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v4

    :cond_4
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public ac()Lcom/android/server/am/OnePlusBGController;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vr:Lcom/android/server/am/OnePlusBGController;

    return-object p0
.end method

.method public bc()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public beginCpuStatistics()V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v0, :cond_0

    const-string v0, "OHPD"

    const-string v1, "beginCpuStatistics"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vs:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Hs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Is:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Es:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Fs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Gs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method bio(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v2, "com.google.android.gms"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isIsolated process: app.uid:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",app.info.uid:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", app.processName:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OHPD"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->rtg(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->g(I)Z

    move-result p0

    return p0
.end method

.method public bud(Z)V
    .locals 0

    return-void
.end method

.method bvj(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Kr:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Kr:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Kr:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public cancelBgDetectNotificationIfNeeded()V
    .locals 3

    :try_start_0
    sget-object p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    const v0, 0xd6dd

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    sget-object p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "OHPD"

    const-string v1, "Error when cancelBgDetectNotificationIfNeeded"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method cc()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Or:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Or:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Or:Ljava/util/ArrayList;

    const-string v2, "com.baidu.BaiduMap"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Or:Ljava/util/ArrayList;

    const-string v2, "com.tencent.map"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Or:Ljava/util/ArrayList;

    const-string v2, "cld.navi.mainframe"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Or:Ljava/util/ArrayList;

    const-string v2, "com.mapbar.android.mapbarmap"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Or:Ljava/util/ArrayList;

    const-string v2, "com.autonavi.minimap"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Or:Ljava/util/ArrayList;

    const-string v2, "com.sogou.map.android.maps"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Or:Ljava/util/ArrayList;

    const-string v2, "com.oppo.market"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Or:Ljava/util/ArrayList;

    const-string v2, "com.google.android.apps.maps"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Or:Ljava/util/ArrayList;

    const-string v2, "com.mapswithme.maps.pro"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Or:Ljava/util/ArrayList;

    const-string v2, "com.here.app.maps"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Or:Ljava/util/ArrayList;

    const-string v2, "com.magnetic.openmaps"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Or:Ljava/util/ArrayList;

    const-string v2, "com.navigation.offlinemaps.gps"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Or:Ljava/util/ArrayList;

    const-string v2, "com.tripbucket.route66"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Or:Ljava/util/ArrayList;

    const-string v2, "com.papago.M11_Int"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Or:Ljava/util/ArrayList;

    const-string v2, "com.kingwaytek.naviking3d.google.std"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Or:Ljava/util/ArrayList;

    const-string v2, "com.sygic.incar"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Or:Ljava/util/ArrayList;

    const-string v2, "com.mmi.maps"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Or:Ljava/util/ArrayList;

    const-string v1, "com.waze"

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method cno(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->_r:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->_r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->_r:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dc()V
    .locals 2

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ohpd_notification_rules_apps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->wb(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bgc_notification_rules_apps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->Ib(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method dma(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Or:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Or:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Or:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public doCpuStatistics(Lcom/android/internal/os/ProcessCpuTracker$Stats;)V
    .locals 9

    iget v0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    const-wide/16 v1, 0x0

    const/16 v3, 0x2710

    if-lt v0, v3, :cond_2

    iget-wide v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vs:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vs:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusHighPowerDetector$zta;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vs:Ljava/util/HashMap;

    new-instance v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;

    iget v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    iget v5, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    iget-object v6, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget v7, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v8, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/server/am/OnePlusHighPowerDetector$zta;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v1, v3

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->igw(J)V

    :goto_0
    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Hs:Ljava/util/ArrayList;

    iget v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean p0, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz p0, :cond_1

    const-string p0, "OHPD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doCpuStatistics # forkedPid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v0

    goto/16 :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->pu:Z

    if-eqz v0, :cond_7

    iget v0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    const/16 v3, 0x417

    if-ne v0, v3, :cond_7

    iget-wide v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Ur:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->bt:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get Camera proc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Ur:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OHPD"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->ru:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Xr:Lcom/android/server/am/OnePlusHighPowerDetector$zta;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Xr:Lcom/android/server/am/OnePlusHighPowerDetector$zta;

    iget v1, v1, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pid:I

    iget v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    if-ne v1, v2, :cond_4

    sget-boolean p0, Lcom/android/server/am/OnePlusHighPowerDetector;->bt:Z

    if-eqz p0, :cond_6

    const-string p0, "OHPD"

    const-string p1, "Existed, just update value"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->bt:Z

    if-eqz v1, :cond_5

    const-string v1, "OHPD"

    const-string v2, "NOT existed, add new AppForkedProc"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance v1, Lcom/android/server/am/OnePlusHighPowerDetector$zta;

    iget v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    iget v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    iget-object p1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/android/server/am/OnePlusHighPowerDetector$zta;-><init>(IILjava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Xr:Lcom/android/server/am/OnePlusHighPowerDetector$zta;

    :cond_6
    :goto_1
    monitor-exit v0

    goto/16 :goto_3

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_7
    iget-wide v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Es:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Es:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusHighPowerDetector$zta;

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Es:Ljava/util/HashMap;

    new-instance v3, Lcom/android/server/am/OnePlusHighPowerDetector$zta;

    iget v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    iget v5, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    iget-object v6, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget v7, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v8, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/server/am/OnePlusHighPowerDetector$zta;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    iget v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v1, v3

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->igw(J)V

    :goto_2
    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Fs:Ljava/util/ArrayList;

    iget v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean p0, Lcom/android/server/am/OnePlusHighPowerDetector;->bt:Z

    if-eqz p0, :cond_9

    const-string p0, "OHPD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doCpuStatistics # NativePid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    monitor-exit v0

    goto :goto_3

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    :cond_a
    :goto_3
    return-void
.end method

.method public dumpBGCStats(Ljava/io/PrintWriter;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vr:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusBGController;->rtg(Ljava/io/PrintWriter;)V

    return-void
.end method

.method ec()V
    .locals 5

    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v0, :cond_0

    const-string v0, "OHPD"

    const-string v1, "[LightIdle] updateProcRxTx()"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-lez v1, :cond_2

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {p0, v3}, Lcom/android/server/am/OnePlusHighPowerDetector;->g(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/am/OnePlusHighPowerDetector;->o(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/am/ProcessRecord;->lastLightIdleRxBytes:J

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/am/ProcessRecord;->lastLightIdleTxBytes:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LightIdle] got exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public enableAggressive(ZLcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[BgDetect] Update enableAggressive to : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->yr:Z

    iput-object p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mRestrictType:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vr:Lcom/android/server/am/OnePlusBGController;

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mRestrictType:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;

    sget-object p2, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;->FULLY:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;

    if-ne p0, p2, :cond_0

    sget-object p0, Lcom/android/server/am/OnePlusBGController$NetType;->Oha:Lcom/android/server/am/OnePlusBGController$NetType;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/server/am/OnePlusBGController$NetType;->PUBLIC:Lcom/android/server/am/OnePlusBGController$NetType;

    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/server/am/OnePlusBGController;->zta(Lcom/android/server/am/OnePlusBGController$NetType;)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vr:Lcom/android/server/am/OnePlusBGController;

    sget-object p1, Lcom/android/server/am/OnePlusBGController$NetType;->PUBLIC:Lcom/android/server/am/OnePlusBGController$NetType;

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusBGController;->zta(Lcom/android/server/am/OnePlusBGController$NetType;)V

    :goto_1
    return-void
.end method

.method public finishCpuStatistics()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vs:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusHighPowerDetector$zta;

    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Hs:Ljava/util/ArrayList;

    iget v4, v2, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Is:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v2, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pid:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->uid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Is:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Es:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Es:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Es:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusHighPowerDetector$zta;

    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Fs:Ljava/util/ArrayList;

    iget v4, v2, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Gs:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v2, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pid:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->uid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Gs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Es:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-boolean p0, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz p0, :cond_7

    const-string p0, "OHPD"

    const-string v0, "finishCpuStatistics"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public forceUpdateOnlineConfig()V
    .locals 1

    sget-object p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    const v0, 0xd6e4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public forceUpdateOnlineConfigImmediately()V
    .locals 3

    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    const-string v2, "BackgroundDetection"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->sis(Lorg/json/JSONArray;)V

    return-void
.end method

.method g(I)Z
    .locals 0

    and-int/lit16 p0, p1, 0x81

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method gck(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Mr:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Mr:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Mr:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getBgPowerHungryList()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_23

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "com_oneplus_systemui_recent_task_lockd_list"

    const/4 v6, -0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->parseLockedStr(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    sget-object v8, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v9, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v9, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ProcessRecord;

    iget-object v11, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget v10, v10, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    :try_start_2
    iget-object v8, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vs:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-lez v8, :cond_3

    iget-object v8, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vs:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v9, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vs:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/OnePlusHighPowerDetector$zta;

    sget-object v11, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    iget v12, v10, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pid:I

    invoke-virtual {v11, v12}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_1

    iget-object v11, v10, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pkgName:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget v10, v10, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fproc pkg "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v10, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pkgName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "pid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v10, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pid:I

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " is gone"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    monitor-exit v8

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :cond_3
    :goto_2
    iget-object v8, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->hk:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v9, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->hk:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v10, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v10, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->uid:I

    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    goto :goto_4

    :cond_5
    move v11, v3

    :goto_4
    iput-boolean v11, v10, Lcom/oneplus/highpower/HighPowerApp;->isLocked:Z

    iget-object v11, v10, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    iget v11, v10, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, v10, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    sget-boolean v11, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v11, :cond_4

    const-string v11, "OHPD"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "huge dead pid:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v10, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v10, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_8
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    :try_start_6
    iget-object v8, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ps:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    iget-object v9, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ps:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_9
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v10, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v10, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->uid:I

    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    move v12, v11

    goto :goto_6

    :cond_a
    move v12, v3

    :goto_6
    iput-boolean v12, v10, Lcom/oneplus/highpower/HighPowerApp;->isLocked:Z

    iget-object v12, v10, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    iget v12, v10, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, v10, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    sget-boolean v12, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v12, :cond_9

    const-string v12, "OHPD"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "high dead pid:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v10, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v10, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_c
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    :cond_d
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :try_start_8
    iget-object v8, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->qs:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :try_start_9
    iget-object v9, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->qs:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_e
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v10, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v10, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->uid:I

    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    move v12, v11

    goto :goto_8

    :cond_f
    move v12, v3

    :goto_8
    iput-boolean v12, v10, Lcom/oneplus/highpower/HighPowerApp;->isLocked:Z

    iget-object v12, v10, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    iget-object v12, v10, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_11

    iget v12, v10, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_10
    sget-boolean v12, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v12, :cond_e

    const-string v12, "OHPD"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "medium dead pid:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v10, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v10, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_11
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    :cond_12
    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    iget-object v8, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->rs:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :try_start_b
    iget-object v9, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->rs:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_13
    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_17

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v10, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v10, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->uid:I

    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    move v12, v11

    goto :goto_a

    :cond_14
    move v12, v3

    :goto_a
    iput-boolean v12, v10, Lcom/oneplus/highpower/HighPowerApp;->isLocked:Z

    iget-object v12, v10, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16

    iget v12, v10, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, v10, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_15
    sget-boolean v12, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v12, :cond_13

    const-string v12, "OHPD"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "huge dead pid:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v10, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v10, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_16
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    :cond_17
    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    iget-object v8, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ss:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :try_start_d
    iget-object v9, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ss:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_18
    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v10, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v10, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->uid:I

    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_19

    move v12, v11

    goto :goto_c

    :cond_19
    move v12, v3

    :goto_c
    iput-boolean v12, v10, Lcom/oneplus/highpower/HighPowerApp;->isLocked:Z

    iget-object v12, v10, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1b

    iget v12, v10, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, v10, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1a
    sget-boolean v12, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v12, :cond_18

    const-string v12, "OHPD"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "high dead pid:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v10, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v10, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_1b
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_b

    :cond_1c
    monitor-exit v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    iget-object v8, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->us:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    :try_start_f
    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->us:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v9, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v9, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->uid:I

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e

    move v10, v11

    goto :goto_e

    :cond_1e
    move v10, v3

    :goto_e
    iput-boolean v10, v9, Lcom/oneplus/highpower/HighPowerApp;->isLocked:Z

    iget-object v10, v9, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_20

    iget-object v10, v9, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_20

    iget v10, v9, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1f

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_1f
    sget-boolean v10, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v10, :cond_1d

    const-string v10, "OHPD"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "medium dead pid:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v9, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v9, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_20
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_d

    :cond_21
    monitor-exit v8

    goto :goto_f

    :catchall_1
    move-exception p0

    monitor-exit v8
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    throw p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    :catchall_2
    move-exception p0

    :try_start_11
    monitor-exit v8
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :try_start_12
    throw p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    :catchall_3
    move-exception p0

    :try_start_13
    monitor-exit v8
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    :try_start_14
    throw p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0

    :catchall_4
    move-exception p0

    :try_start_15
    monitor-exit v8
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    :try_start_16
    throw p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0

    :catchall_5
    move-exception p0

    :try_start_17
    monitor-exit v8
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    :try_start_18
    throw p0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0

    :catchall_6
    move-exception p0

    :try_start_19
    monitor-exit v8
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    :try_start_1a
    throw p0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_0

    :catchall_7
    move-exception p0

    :try_start_1b
    monitor-exit v8
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    :try_start_1c
    throw p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_0

    :catch_0
    move-exception p0

    const-string v4, "OHPD"

    const-string v5, "[BgDetect] Error in getBgPowerHungryList"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BgDetect] getBgPowerHungryList result size "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " in "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OHPD"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p0, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz p0, :cond_22

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_10
    if-ge v3, p0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dump# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/highpower/HighPowerApp;

    iget-object v1, v1, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " powerLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/highpower/HighPowerApp;

    iget v1, v1, Lcom/oneplus/highpower/HighPowerApp;->powerLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/highpower/HighPowerApp;

    iget v1, v1, Lcom/oneplus/highpower/HighPowerApp;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OHPD"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_22
    return-object v2

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method h(I)Z
    .locals 0

    const/high16 p0, -0x80000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method i(I)V
    .locals 10

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->ru:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Yr:J

    sub-long v3, v1, v3

    sget-boolean v5, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v5, :cond_0

    const-string v5, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LightIdle] monitorCameraEnd(), monitorEndTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", uptimeSince="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-wide v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Yr:J

    const-wide/16 v5, -0x1

    cmp-long v1, v1, v5

    const-wide/16 v5, 0x0

    if-eqz v1, :cond_5

    cmp-long v1, v3, v5

    if-gtz v1, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Xr:Lcom/android/server/am/OnePlusHighPowerDetector$zta;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    iget-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Xr:Lcom/android/server/am/OnePlusHighPowerDetector$zta;

    iget v2, v2, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pid:I

    invoke-virtual {v1, v2}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    move-result-wide v1

    sget-boolean v7, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v7, :cond_2

    const-string v7, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[LightIdle] End cpuTime="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Xr:Lcom/android/server/am/OnePlusHighPowerDetector$zta;

    iput-wide v1, v7, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->curCpuTimeBgMonitor:J

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Xr:Lcom/android/server/am/OnePlusHighPowerDetector$zta;

    iget-object v1, v1, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->lastCpuTimeBgMonitor:[J

    aget-wide v1, v1, p1

    cmp-long v1, v1, v5

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Xr:Lcom/android/server/am/OnePlusHighPowerDetector$zta;

    iget-wide v1, v1, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->curCpuTimeBgMonitor:J

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Xr:Lcom/android/server/am/OnePlusHighPowerDetector$zta;

    iget-object v5, v5, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->lastCpuTimeBgMonitor:[J

    aget-wide v5, v5, p1

    sub-long/2addr v1, v5

    const-wide/16 v5, 0x64

    mul-long/2addr v5, v1

    div-long/2addr v5, v3

    iput-wide v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Vr:J

    sget-boolean p1, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz p1, :cond_4

    const-string p1, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LightIdle] cputimeUsed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mLastCameraProcUsage="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Vr:J

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " %"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iput-wide v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Vr:J

    :cond_4
    :goto_0
    monitor-exit v0

    return-void

    :cond_5
    :goto_1
    sget-boolean p1, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz p1, :cond_6

    const-string p1, "OHPD"

    const-string v1, "[LightIdle] skip this round monitoring"

    invoke-static {p1, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iput-wide v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Vr:J

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method ibl(Lcom/android/server/am/ProcessRecord;)Z
    .locals 0

    iget p0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 p1, 0x6

    if-eq p0, p1, :cond_1

    const/4 p1, 0x7

    if-eq p0, p1, :cond_1

    const/16 p1, 0x8

    if-ne p0, p1, :cond_0

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

.method igw(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->p(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->q(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->bvj(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    return p0
.end method

.method public informPkgRemoved(Ljava/lang/String;I)V
    .locals 1

    sget-object p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    const v0, 0xd6dc

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p2, p0, Landroid/os/Message;->arg1:I

    sget-object p1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public initOnlineConfig()V
    .locals 5

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    new-instance v3, Lcom/android/server/am/OnePlusHighPowerDetector$sis;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusHighPowerDetector$sis;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;)V

    const-string v4, "BackgroundDetection"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Ls:Lcom/oneplus/config/ConfigObserver;

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Ls:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {p0}, Lcom/oneplus/config/ConfigObserver;->register()V

    return-void
.end method

.method j(I)V
    .locals 6

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->ru:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, 0x0

    :try_start_0
    iput-wide v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Vr:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Yr:J

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v1, :cond_0

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LightIdle] monitorCameraStart(), mMonitorStartTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Yr:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Xr:Lcom/android/server/am/OnePlusHighPowerDetector$zta;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    iget-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Xr:Lcom/android/server/am/OnePlusHighPowerDetector$zta;

    iget v2, v2, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pid:I

    invoke-virtual {v1, v2}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    move-result-wide v1

    sget-boolean v3, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v3, :cond_1

    const-string v3, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LightIdle] Start cpuTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Xr:Lcom/android/server/am/OnePlusHighPowerDetector$zta;

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->lastCpuTimeBgMonitor:[J

    aput-wide v1, p0, p1

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method kth(Lcom/android/server/am/ProcessRecord;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->oif(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 p1, 0x6

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method o(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ds:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ds:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method oif(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Rr:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Rr:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Rr:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method p(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x5d

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->opSmartPowerControl:Lcom/android/server/i;

    if-nez v1, :cond_0

    sget-object v1, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smart_power_control:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v1}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/i;

    iput-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->opSmartPowerControl:Lcom/android/server/i;

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->opSmartPowerControl:Lcom/android/server/i;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/android/server/i;->isSmartOptApp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->opSmartPowerControl:Lcom/android/server/i;

    invoke-virtual {p0, p1}, Lcom/android/server/i;->isOptApp(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public postProcessOfForceStop(Ljava/lang/String;I)V
    .locals 4

    const/16 v0, 0x3e7

    if-eq p2, v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->hk:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->hk:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->hk:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ps:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ps:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ps:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->qs:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->qs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->qs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->os:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->os:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->os:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catchall_1
    move-exception p0

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :catchall_2
    move-exception p0

    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :catchall_3
    move-exception p0

    :try_start_d
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw p0

    :cond_4
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->rs:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    :try_start_f
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->rs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->rs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    :try_start_10
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ss:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    :try_start_11
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ss:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ss:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :try_start_12
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->us:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    :try_start_13
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->us:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->us:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    :goto_0
    :try_start_14
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vs:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0

    :try_start_15
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusHighPowerDetector$zta;

    iget-object v3, v2, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget v2, v2, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_9
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    :try_start_16
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->cancelBgDetectNotificationIfNeeded()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0

    goto :goto_2

    :catchall_4
    move-exception p0

    :try_start_17
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    :try_start_18
    throw p0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0

    :catchall_5
    move-exception p0

    :try_start_19
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    :try_start_1a
    throw p0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_0

    :catchall_6
    move-exception p0

    :try_start_1b
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    :try_start_1c
    throw p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_0

    :catchall_7
    move-exception p0

    :try_start_1d
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    :try_start_1e
    throw p0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_0

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[BgDetect] postProcessOfForceStop err with "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OHPD"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method q(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x5d

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->opSmartPowerControl:Lcom/android/server/i;

    if-nez v1, :cond_0

    sget-object v1, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smart_power_control:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v1}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/i;

    iput-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->opSmartPowerControl:Lcom/android/server/i;

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->opSmartPowerControl:Lcom/android/server/i;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/i;->isOptApp(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method qbh(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Pr:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Pr:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Pr:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method r(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->cs:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->cs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->cs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method rtg(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->bs:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->bs:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->bs:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method s(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x5d

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->opSmartPowerControl:Lcom/android/server/i;

    if-nez v1, :cond_0

    sget-object v1, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smart_power_control:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v1}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/i;

    iput-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->opSmartPowerControl:Lcom/android/server/i;

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->opSmartPowerControl:Lcom/android/server/i;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/i;->isSmartOptApp(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    move v0, v2

    :cond_1
    return v0
.end method

.method public shellCommand(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 0

    const-string p0, "ohpd"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    array-length p0, p3

    if-ge p2, p0, :cond_1

    add-int/lit8 p0, p2, 0x1

    aget-object p1, p3, p2

    const-string p2, "thresh"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    array-length p1, p3

    if-ge p0, p1, :cond_0

    aget-object p0, p3, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->Kb(Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method sis(Lcom/android/server/am/ProcessRecord;I)V
    .locals 2

    iget-wide v0, p1, Lcom/android/server/am/ProcessRecord;->curCpuTime:J

    iput-wide v0, p1, Lcom/android/server/am/ProcessRecord;->lastCpuTime:J

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->lastCpuTimeBgMonitor:[J

    iget-wide v0, p1, Lcom/android/server/am/ProcessRecord;->curCpuTimeBgMonitor:J

    aput-wide v0, p0, p2

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->lastRxBytes:[J

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    aput-wide v0, p0, p2

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->lastTxBytes:[J

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v0

    aput-wide v0, p0, p2

    return-void
.end method

.method sis(Lcom/android/server/am/OnePlusHighPowerDetector$zta;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Or:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Or:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pkgName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Or:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pkgName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method sis(Lcom/android/server/am/ProcessRecord;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->ywr(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget p0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 p1, 0x6

    if-eq p0, p1, :cond_0

    const/16 p1, 0x8

    if-eq p0, p1, :cond_0

    const/4 p1, 0x7

    if-eq p0, p1, :cond_0

    const/16 p1, 0xd

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method ssp(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->as:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->as:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->as:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public startMonitor()V
    .locals 6

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    const v1, 0xd6d8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->au:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    const v1, 0xd6d9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->au:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-long v4, v2

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    const v1, 0xd6da

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->au:[I

    const/4 v4, 0x2

    aget v2, v2, v4

    int-to-long v4, v2

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    const v1, 0xd6de

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->au:[I

    const/4 v4, 0x3

    aget v2, v2, v4

    int-to-long v4, v2

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v0, "OHPD"

    const-string v1, "[BgDetect] startMonitor # queue CHECK_EXCESSIVE_CPU MSGs"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Gr:Z

    return-void
.end method

.method public stopBgPowerHungryApp(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Ljava/lang/String;IZ)V

    return-void
.end method

.method tsu(Lcom/android/server/am/OnePlusHighPowerDetector$zta;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Kr:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Kr:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pkgName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Kr:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pkgName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method tsu(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->qbh(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.truecaller"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    iget p0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 p1, 0x6

    if-eq p0, p1, :cond_0

    const/16 p1, 0x8

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public updateWidgetPackage(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateWidgetPackage pkgName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " add "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OHPD"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->Fu:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->fj:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->fj:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->fj:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateWidgetPackages(Ljava/util/HashSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->Fu:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->fj:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    goto :goto_1

    :cond_0
    iput-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->fj:Ljava/util/HashSet;

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->fj:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWidgetPackage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method wtn(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->p(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->q(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->dma(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    return p0
.end method

.method you(Lcom/android/server/am/OnePlusHighPowerDetector$zta;)Z
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pkgName:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->p(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p1, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pkgName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->q(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->tsu(Lcom/android/server/am/OnePlusHighPowerDetector$zta;)Z

    move-result p0

    return p0
.end method

.method you(Lcom/android/server/am/ProcessRecord;I)Z
    .locals 5

    const/4 p0, 0x5

    const/16 v0, 0xb

    const/16 v1, 0xf

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_3

    if-eq p2, v3, :cond_3

    const/4 v4, 0x2

    if-eq p2, v4, :cond_3

    const/4 v4, 0x3

    if-eq p2, v4, :cond_0

    return v2

    :cond_0
    iget p1, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ge p1, v1, :cond_1

    if-eq p1, v0, :cond_1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x6

    if-eq p1, p0, :cond_1

    const/4 p0, 0x7

    if-eq p1, p0, :cond_1

    const/16 p0, 0x8

    if-ne p1, p0, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    return v2

    :cond_3
    iget p1, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ge p1, v1, :cond_4

    if-eq p1, v0, :cond_4

    if-ne p1, p0, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    return v2
.end method

.method ywr(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Qr:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Qr:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Qr:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public zta(Landroid/os/Message;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMyMessage # msg.what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    iget v3, v2, Landroid/os/Message;->what:I

    const v4, 0x101d7

    if-eq v3, v4, :cond_3a

    const v4, 0x101da

    const/4 v5, 0x0

    if-eq v3, v4, :cond_39

    const v6, 0x101d5

    const-wide/16 v7, 0x18

    const/4 v9, 0x0

    const/4 v11, 0x1

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_13

    :pswitch_0
    const-string v2, "======MSG_EXECUTION_BGPOWER======"

    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BGC] mIsBGCFeatureEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->Nr:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    iget-boolean v2, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->Nr:Z

    if-eqz v2, :cond_3b

    invoke-direct {v1, v11}, Lcom/android/server/am/OnePlusHighPowerDetector;->va(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->cancelBgDetectNotificationIfNeeded()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_13

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v2, "OHPD"

    const-string v3, "[BGC] Error handling MSG_EXECUTION_BGPOWER"

    goto/16 :goto_d

    :pswitch_1
    const-string v3, "======MSG_INFO_BGPOWER======"

    invoke-static {v3}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    :try_start_1
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/OnePlusBGController$zta;

    invoke-direct {v1, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Lcom/android/server/am/OnePlusBGController$zta;)V

    iget-boolean v2, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->Br:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->uu:Z

    if-nez v2, :cond_0

    move v5, v11

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BGC] mEverLightIdleBGCCheck="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->Br:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsScreenOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/am/OnePlusHighPowerDetector;->uu:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", doExecution="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "doze_mode_policy"

    invoke-static {v2, v3, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sget-boolean v3, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v3, :cond_1

    const-string v3, "OHPD"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[BGC] Policy :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v5, :cond_3

    iget-object v3, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->vr:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusBGController;->Hb()Ljava/util/HashSet;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/server/am/OnePlusHighPowerDetector;->bio(Ljava/util/HashSet;)V

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    if-ne v2, v11, :cond_2

    move v4, v6

    :cond_2
    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_13

    :cond_3
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v0

    const-string v2, "OHPD"

    const-string v3, "[BGC] Error handling MSG_INFO_BGPOWER"

    goto/16 :goto_d

    :pswitch_2
    :try_start_2
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v2, v2, Landroid/os/Message;->arg2:I

    if-nez v3, :cond_4

    return-void

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v8, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->ms:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->ms:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;

    if-nez v8, :cond_5

    return-void

    :cond_5
    invoke-virtual {v8}, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;->Wb()Z

    move-result v9

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;->Xb()J

    move-result-wide v11

    if-eqz v9, :cond_6

    sget v9, Lcom/android/server/am/OnePlusHighPowerDetector;->ht:I

    int-to-long v13, v9

    sget-wide v15, Lcom/android/server/am/OnePlusHighPowerDetector;->it:J

    mul-long/2addr v13, v15

    goto :goto_1

    :cond_6
    sget-wide v13, Lcom/android/server/am/OnePlusHighPowerDetector;->it:J

    :goto_1
    sget-boolean v9, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v9, :cond_7

    const-string v9, "OHPD"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", notiTimeGap="

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    sub-long v8, v6, v11

    cmp-long v10, v8, v13

    if-gez v10, :cond_9

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v1, :cond_8

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BGC Notification # too short time to notify: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void

    :cond_9
    new-instance v8, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;

    invoke-direct {v8, v1, v6, v7, v5}, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;JZ)V

    iget-object v5, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->ms:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->ms:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_a

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;->Xb()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;->Wb()Z

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "|"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BGC sb.length:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", sb.toString:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_c

    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "bgc_notification_rules_apps"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_c
    const/4 v5, 0x2

    invoke-direct {v1, v3, v2, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->you(Ljava/lang/String;II)Landroid/app/Notification;

    move-result-object v11

    if-nez v11, :cond_d

    return-void

    :cond_d
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v6

    const-string v7, "android"

    const-string v8, "android"

    const/4 v9, 0x0

    const v10, 0x33954bc

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    invoke-interface/range {v6 .. v12}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V

    iget-object v5, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->ks:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iput-object v4, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->js:Ljava/lang/String;

    const-string v1, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BgDetect][Notification] notify for pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " userId "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_13

    :catch_2
    move-exception v0

    move-object v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error posting BGC notification:"

    goto/16 :goto_11

    :pswitch_3
    :try_start_3
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v4, v2, Landroid/os/Message;->arg1:I

    iget v2, v2, Landroid/os/Message;->arg2:I

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "proc"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "cpu_usage"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "handled"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "appid"

    const-string v4, "NYNCG4I0TI"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    if-eqz v3, :cond_3b

    iget-object v1, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    const-string v4, "native_proc_busy"

    invoke-virtual {v1, v3, v4, v5, v2}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_13

    :pswitch_4
    invoke-virtual {v1, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->j(I)V

    goto/16 :goto_13

    :pswitch_5
    :try_start_4
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v4, v2, Landroid/os/Message;->arg1:I

    iget v2, v2, Landroid/os/Message;->arg2:I

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "proc"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "cpu_usage"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "handled"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "appid"

    const-string v4, "NYNCG4I0TI"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    if-eqz v3, :cond_3b

    iget-object v1, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    const-string v4, "camera_proc_busy"

    invoke-virtual {v1, v3, v4, v5, v2}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_13

    :catch_3
    move-exception v0

    move-object v1, v0

    const-string v2, "OHPD"

    const-string v3, "Error submit SDM"

    goto/16 :goto_d

    :pswitch_6
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v4, v2, Landroid/os/Message;->arg1:I

    iget v2, v2, Landroid/os/Message;->arg2:I

    :try_start_5
    invoke-direct {v1, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->kb(I)Z

    move-result v5

    if-nez v5, :cond_11

    if-eqz v4, :cond_10

    if-eq v4, v11, :cond_f

    const/4 v5, 0x2

    if-eq v4, v5, :cond_e

    goto :goto_3

    :cond_e
    iget-object v5, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->ks:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    iput-object v9, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->js:Ljava/lang/String;

    goto :goto_3

    :cond_f
    iget-object v5, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->fs:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    iput-object v9, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->es:Ljava/lang/String;

    goto :goto_3

    :cond_10
    iget-object v5, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->hs:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    iput-object v9, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->gs:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error when CHECK_IF_NOTIFICATION_EXISTED_MSG "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "OHPD"

    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_11
    :goto_3
    iget-object v5, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->es:Ljava/lang/String;

    if-eqz v5, :cond_12

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    :cond_12
    iget-object v5, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->gs:Ljava/lang/String;

    if-eqz v5, :cond_13

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    :cond_13
    iget-object v1, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->js:Ljava/lang/String;

    if-eqz v1, :cond_15

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pkg "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " userId "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " already pop notification, skip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OHPD"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
    if-eqz v4, :cond_18

    if-eq v4, v11, :cond_17

    const/4 v1, 0x2

    if-eq v4, v1, :cond_16

    goto :goto_5

    :cond_16
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    const v4, 0xd6e9

    goto :goto_4

    :cond_17
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    const v4, 0xd6db

    goto :goto_4

    :cond_18
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    const v4, 0xd6e1

    :goto_4
    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    :goto_5
    iput-object v3, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v2, v9, Landroid/os/Message;->arg2:I

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v9, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_13

    :pswitch_7
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/am/f;

    invoke-direct {v3, v1}, Lcom/android/server/am/f;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_13

    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->ec()V

    goto/16 :goto_13

    :pswitch_9
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "doze_mode_policy"

    invoke-static {v2, v3, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sget-boolean v3, Lcom/android/server/am/OnePlusHighPowerDetector;->bt:Z

    if-eqz v3, :cond_19

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LightIdle] Policy :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OHPD"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    new-array v3, v11, [I

    const/16 v4, 0x65

    aput v4, v3, v5

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_1a

    if-ne v2, v11, :cond_1a

    iget-boolean v3, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->Cr:Z

    if-nez v3, :cond_1a

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->_m()V

    iput-boolean v11, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->Cr:Z

    :cond_1a
    new-array v3, v11, [I

    const/16 v4, 0x62

    aput v4, v3, v5

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_1b

    if-ne v2, v11, :cond_1b

    iget-boolean v2, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->Br:Z

    if-nez v2, :cond_1b

    iput-boolean v11, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->Br:Z

    iget-object v2, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->vr:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController;->Hb()Ljava/util/HashSet;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->bio(Ljava/util/HashSet;)V

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1b
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->pu:Z

    if-eqz v2, :cond_3b

    iget-boolean v2, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->Tr:Z

    if-eqz v2, :cond_1c

    iget-boolean v2, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->Zr:Z

    if-eqz v2, :cond_3b

    :cond_1c
    invoke-virtual {v1, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->i(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->Zm()V

    iput-boolean v11, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->Tr:Z

    goto/16 :goto_13

    :pswitch_a
    :try_start_6
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v2, v2, Landroid/os/Message;->arg2:I

    if-nez v3, :cond_1d

    return-void

    :cond_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->ls:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    iget-object v6, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->ls:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;

    if-nez v6, :cond_1e

    return-void

    :cond_1e
    invoke-virtual {v6}, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;->Xb()J

    move-result-wide v11

    invoke-virtual {v6}, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;->Wb()Z

    move-result v6

    sub-long v11, v9, v11

    if-eqz v6, :cond_1f

    sget-wide v13, Lcom/android/server/am/OnePlusHighPowerDetector;->gt:J

    mul-long/2addr v13, v7

    goto :goto_6

    :cond_1f
    sget-wide v13, Lcom/android/server/am/OnePlusHighPowerDetector;->gt:J

    :goto_6
    cmp-long v13, v11, v13

    if-gez v13, :cond_22

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v1, :cond_20

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notification # too short time to notify: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    return-void

    :cond_21
    move v6, v5

    :cond_22
    new-instance v11, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;

    invoke-direct {v11, v1, v9, v10, v6}, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;JZ)V

    iget-object v6, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->ls:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->ls:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_24

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_23

    invoke-virtual {v13}, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;->Xb()J

    move-result-wide v14

    sub-long v14, v9, v14

    sget-wide v16, Lcom/android/server/am/OnePlusHighPowerDetector;->gt:J

    mul-long v16, v16, v7

    cmp-long v14, v14, v16

    if-gtz v14, :cond_23

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ","

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;->Xb()J

    move-result-wide v7

    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;->Wb()Z

    move-result v7

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    const-wide/16 v7, 0x18

    goto :goto_7

    :cond_24
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sb.length:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", sb.toString:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_25

    sget-object v7, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "ohpd_notification_rules_apps"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_25
    invoke-direct {v1, v3, v2, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->you(Ljava/lang/String;II)Landroid/app/Notification;

    move-result-object v14

    if-nez v14, :cond_26

    return-void

    :cond_26
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v9

    const-string v10, "android"

    const-string v11, "android"

    const/4 v12, 0x0

    const v13, 0x33954b9

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v15

    invoke-interface/range {v9 .. v15}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V

    iget-object v5, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->hs:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iput-object v4, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->gs:Ljava/lang/String;

    const-string v1, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BgDetect][Notification] notify for pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " userId "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_13

    :catch_5
    move-exception v0

    move-object v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_10

    :pswitch_b
    iget v3, v2, Landroid/os/Message;->arg2:I

    :try_start_7
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v4

    const-string v5, "android"

    if-ne v3, v11, :cond_27

    const v6, 0x33954b8

    goto :goto_8

    :cond_27
    const v6, 0x33954b9

    :goto_8
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-interface {v4, v5, v9, v6, v7}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BgDetect] FORCE_STOP_PKG_MSG Type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_28

    iput-object v9, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->gs:Ljava/lang/String;

    goto :goto_9

    :cond_28
    if-ne v3, v11, :cond_29

    iput-object v9, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->es:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_9

    :catch_6
    const-string v3, "OHPD"

    const-string v4, "[BgDetect] Error when cancel notification"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    :goto_9
    :try_start_8
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v2, v2, Landroid/os/Message;->arg1:I

    invoke-direct {v1, v3, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto/16 :goto_13

    :catch_7
    move-exception v0

    move-object v1, v0

    const-string v2, "OHPD"

    const-string v3, "[BgDetect] Error when force stop pkg"

    goto/16 :goto_d

    :pswitch_c
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->au:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    invoke-direct {v1, v3, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->hmo(II)I

    move-result v1

    if-nez v1, :cond_3b

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_9
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    const v4, 0xd6de

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->au:[I

    aget v3, v5, v3

    int-to-long v5, v3

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v1

    goto/16 :goto_13

    :catchall_0
    move-exception v0

    move-object v2, v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v2

    :pswitch_d
    :try_start_a
    iget-object v2, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->es:Ljava/lang/String;

    if-nez v2, :cond_2a

    iget-object v2, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->gs:Ljava/lang/String;

    if-nez v2, :cond_2a

    iget-object v2, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->js:Ljava/lang/String;

    if-nez v2, :cond_2a

    return-void

    :cond_2a
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    :try_start_b
    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v6, v6, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_2b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    iget-object v4, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->vs:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_2e

    iget-object v4, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->vs:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    :try_start_d
    iget-object v6, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->vs:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/OnePlusHighPowerDetector$zta;

    sget-object v8, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    iget v9, v7, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pid:I

    invoke-virtual {v8, v9}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    move-result-wide v8

    const-wide/16 v12, 0x0

    cmp-long v8, v8, v12

    if-lez v8, :cond_2c

    iget-object v8, v7, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget v7, v7, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_2c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fproc pkg "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pkgName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "pid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v7, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pid:I

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " is gone"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    goto :goto_b

    :cond_2d
    monitor-exit v4

    goto :goto_c

    :catchall_1
    move-exception v0

    move-object v1, v0

    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    throw v1

    :cond_2e
    :goto_c
    iget-object v4, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->gs:Ljava/lang/String;

    if-eqz v4, :cond_2f

    iget-object v4, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->gs:Ljava/lang/String;

    invoke-direct {v1, v4, v2, v3, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Ljava/lang/String;Ljava/util/HashSet;Ljava/util/HashSet;I)V

    :cond_2f
    iget-object v4, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->es:Ljava/lang/String;

    if-eqz v4, :cond_30

    iget-object v4, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->es:Ljava/lang/String;

    invoke-direct {v1, v4, v2, v3, v11}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Ljava/lang/String;Ljava/util/HashSet;Ljava/util/HashSet;I)V

    :cond_30
    iget-object v4, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->js:Ljava/lang/String;

    if-eqz v4, :cond_3b

    iget-object v4, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->js:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-direct {v1, v4, v2, v3, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Ljava/lang/String;Ljava/util/HashSet;Ljava/util/HashSet;I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    goto/16 :goto_13

    :catchall_2
    move-exception v0

    move-object v1, v0

    :try_start_f
    monitor-exit v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :try_start_10
    throw v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8

    :catch_8
    move-exception v0

    move-object v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect] cancel notification fail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OHPD"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    :pswitch_e
    :try_start_11
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v2, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->postProcessOfForceStop(Ljava/lang/String;I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_9

    goto/16 :goto_13

    :catch_9
    move-exception v0

    move-object v1, v0

    const-string v2, "OHPD"

    const-string v3, "Error when clean up package removed record"

    :goto_d
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    :pswitch_f
    :try_start_12
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v2, v2, Landroid/os/Message;->arg2:I

    if-nez v3, :cond_31

    return-void

    :cond_31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v8, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->ls:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_34

    iget-object v5, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->ls:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;

    invoke-virtual {v5}, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;->Xb()J

    move-result-wide v8

    invoke-virtual {v5}, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;->Wb()Z

    move-result v5

    sub-long v8, v6, v8

    if-eqz v5, :cond_32

    sget-wide v12, Lcom/android/server/am/OnePlusHighPowerDetector;->gt:J

    const-wide/16 v14, 0x18

    mul-long/2addr v12, v14

    goto :goto_e

    :cond_32
    sget-wide v12, Lcom/android/server/am/OnePlusHighPowerDetector;->gt:J

    :goto_e
    cmp-long v10, v8, v12

    if-gez v10, :cond_34

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz v1, :cond_33

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notification # too short time to notify: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    return-void

    :cond_34
    new-instance v8, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;

    invoke-direct {v8, v1, v6, v7, v5}, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;JZ)V

    iget-object v5, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->ls:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->ls:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_35
    :goto_f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_36

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_35

    invoke-virtual {v10}, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;->Xb()J

    move-result-wide v12

    sub-long v12, v6, v12

    sget-wide v17, Lcom/android/server/am/OnePlusHighPowerDetector;->gt:J

    const-wide/16 v14, 0x18

    mul-long v17, v17, v14

    cmp-long v12, v12, v17

    if-gtz v12, :cond_35

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;->Xb()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;->Wb()Z

    move-result v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "|"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_36
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sb.length:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "sb.toString:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_37

    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "ohpd_notification_rules_apps"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_37
    invoke-direct {v1, v3, v2, v11}, Lcom/android/server/am/OnePlusHighPowerDetector;->you(Ljava/lang/String;II)Landroid/app/Notification;

    move-result-object v17

    if-nez v17, :cond_38

    return-void

    :cond_38
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v12

    const-string v13, "android"

    const-string v14, "android"

    const/4 v15, 0x0

    const v16, 0x33954b8

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v18

    invoke-interface/range {v12 .. v18}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V

    iget-object v5, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->fs:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iput-object v4, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->es:Ljava/lang/String;

    const-string v1, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BgDetect][Notification] notify for pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " userId "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_a

    goto/16 :goto_13

    :catch_a
    move-exception v0

    move-object v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_10
    const-string v3, "Error posting power intensive notification:"

    :goto_11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OHPD"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_13

    :pswitch_10
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->au:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-direct {v1, v3, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->hmo(II)I

    move-result v1

    if-nez v1, :cond_3b

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_13
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    const v3, 0xd6da

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->au:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v1

    goto/16 :goto_13

    :catchall_3
    move-exception v0

    move-object v2, v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    throw v2

    :pswitch_11
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->au:[I

    aget v2, v2, v11

    invoke-direct {v1, v11, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->hmo(II)I

    move-result v1

    if-nez v1, :cond_3b

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_14
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    const v3, 0xd6d9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->au:[I

    aget v4, v4, v11

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v1

    goto :goto_13

    :catchall_4
    move-exception v0

    move-object v2, v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    throw v2

    :pswitch_12
    sget v2, Lcom/android/server/am/OnePlusHighPowerDetector;->Tt:I

    invoke-direct {v1, v5, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->hmo(II)I

    move-result v1

    if-nez v1, :cond_3b

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_15
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    const v3, 0xd6d8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->au:[I

    aget v4, v4, v5

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v1

    goto :goto_13

    :catchall_5
    move-exception v0

    move-object v2, v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    throw v2

    :cond_39
    const-string v2, "======MSG_NO_EXECUTION_BGPOWER======"

    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    :try_start_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BGC] mIsBGCFeatureEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->Nr:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    iget-boolean v2, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->Nr:Z

    if-eqz v2, :cond_3b

    invoke-direct {v1, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->va(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->cancelBgDetectNotificationIfNeeded()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_b

    goto :goto_13

    :catch_b
    move-exception v0

    move-object v1, v0

    const-string v2, "OHPD"

    const-string v3, "[BGC] Error handling MSG_NO_EXECUTION_BGPOWER"

    goto/16 :goto_d

    :cond_3a
    const-string v2, "======MSG_UPDATE_TRAFFIC_WHEN_SOFF======"

    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->vr:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {v1}, Lcom/android/server/am/OnePlusBGController;->Hb()Ljava/util/HashSet;

    :cond_3b
    :goto_13
    :pswitch_13
    return-void

    :pswitch_data_0
    .packed-switch 0xd6d8
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_13
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x101d4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method zta(Landroid/util/ArrayMap;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method zta(Ljava/util/HashMap;Ljava/lang/String;IZZII)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;",
            "Ljava/lang/String;",
            "IZZII)V"
        }
    .end annotation

    move-object v1, p1

    monitor-enter p1

    :try_start_0
    new-instance v0, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    move-object v2, v0

    move-object v3, p2

    move v4, p3

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;-><init>(Ljava/lang/String;IZZJII)V

    move-object v2, p2

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method zta(Lcom/android/server/am/OnePlusHighPowerDetector$zta;)Z
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pkgName:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->p(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p1, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->pkgName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->q(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->sis(Lcom/android/server/am/OnePlusHighPowerDetector$zta;)Z

    move-result p0

    return p0
.end method

.method zta(Lcom/android/server/am/ProcessRecord;I)Z
    .locals 6

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    if-lez p0, :cond_3

    move p0, v0

    :goto_0
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge p0, v1, :cond_3

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ContentProviderRecord;

    iget-object v1, v1, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ContentProviderConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v2, v2, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v3, v4, :cond_0

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, v4, :cond_1

    if-ne v3, v5, :cond_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[BgDetect] skip "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", bound by "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") state "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " level "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OHPD"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :catch_0
    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method zta(Lcom/android/server/am/ProcessRecord;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->igw(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method zta(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p2

    :try_start_0
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    iget v1, v0, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean p0, Lcom/android/server/am/OnePlusHighPowerDetector;->debug:Z

    if-eqz p0, :cond_1

    const-string p0, "OHPD"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[BgDetect][Notification] cancel abort: running: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x1

    monitor-exit p2

    return p0

    :cond_2
    const/4 p0, 0x0

    monitor-exit p2

    return p0

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
