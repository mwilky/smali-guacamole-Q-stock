.class public Lcom/android/server/power/OnePlusStandbyAnalyzer;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$tsu;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$kth;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$zta;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$bio;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$oif;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$ibl;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$igw;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$dma;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$ywr;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$ssp;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$gck;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_CATEGORY;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_CX_STATE;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$PACKET_TYPE;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$SIM_ID;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$STATISTIC_TYPE;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$KnownUIDs;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$you;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;
    }
.end annotation


# static fields
.field private static AL:F = 0.0f

.field public static final APPID:Ljava/lang/String; = "NYNCG4I0TI"

.field private static BL:J = 0x0L

.field private static CL:F = 0.0f

.field private static DEBUG_ONEPLUS:Z = false

.field static DEBUG_STANDBY:Z = false

.field private static DL:J = 0x0L

.field private static final EK:Ljava/lang/String; = "persist.sys.standby_debug"

.field public static final FK:Ljava/lang/String; = "persist.sys.standby_qxdm_recording"

.field public static final GK:Ljava/lang/String; = "persist.sys.standby_qxdm"

.field public static final HK:Ljava/lang/String; = "persist.sys.qxdm_clean_old"

.field public static final INVALID:I = -0x1

.field public static final INVALID_UID:I = -0x3e7

.field static final In:J = 0x2710L

.field private static final JK:I = 0x3

.field private static final KK:I = 0x3

.field private static final LK:I = 0x1

.field public static final MDM_EVENT:Ljava/lang/String; = "standby"

.field public static final MK:I = 0x124f800

.field public static final NK:Ljava/lang/String; = "tp"

.field public static final PK:Ljava/lang/String; = "dl"

.field public static final QK:Ljava/lang/String; = "pn"

.field static RK:Z = false

.field public static SK:I = 0x0

.field public static final STANDBY_DIAGNOSIS_FILE:Ljava/lang/String; = "/data/system/power/diagnosis_standby.txt"

.field private static final TAG:Ljava/lang/String; = "OPSA"

.field private static TK:I = 0x0

.field private static VK:Ljava/lang/String; = null

.field static final WK:I = 0x3e8

.field static final XK:I = 0x3e9

.field static final YK:I = 0x3ec

.field static final ZK:I = 0x3ed

.field static final _K:I = 0x3ee

.field static final aL:I = 0x3ef

.field static final bL:I = 0x3f0

.field static final cL:I = 0x3f1

.field static final dL:I = 0x3f2

.field private static final eL:Ljava/lang/String; = "PowerManagerService.WakeLocks"

.field public static fL:Ljava/lang/String; = null

.field public static gL:Ljava/lang/String; = null

.field public static hL:Ljava/lang/String; = null

.field public static iL:Ljava/lang/String; = null

.field static final irq:I = 0x3ea

.field public static final jL:Ljava/lang/String; = "/data/system/power/diagnosis_assist.txt"

.field public static final kL:Ljava/lang/String; = "/data/system/power/diagnosis_rpm.txt"

.field private static final lL:J = 0x1388L

.field public static mL:Ljava/lang/String; = null

.field private static final mVersion:Ljava/lang/String; = "2.03"

.field public static nL:Ljava/lang/String; = null

.field private static oL:F = 0.0f

.field private static final oh:I = 0x28

.field private static pL:F = 0.0f

.field private static qL:I = 0x0

.field private static rL:F = 0.0f

.field private static sL:F = 0.0f

.field private static tL:F = 0.0f

.field private static uL:F = 0.0f

.field private static vL:F = 0.0f

.field static final vdw:I = 0x3eb

.field private static wL:F

.field private static xL:I

.field private static yL:F

.field private static zL:F


# instance fields
.field private AI:Z

.field AJ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field AK:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$ibl;",
            ">;"
        }
    .end annotation
.end field

.field private BI:Z

.field BJ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;",
            ">;"
        }
    .end annotation
.end field

.field BK:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$zta;",
            ">;"
        }
    .end annotation
.end field

.field private CI:Z

.field CJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;",
            ">;"
        }
    .end annotation
.end field

.field private DI:Z

.field DJ:J

.field DK:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$bio;",
            ">;"
        }
    .end annotation
.end field

.field private EI:Z

.field EJ:J

.field private FI:Lcom/android/server/power/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;

.field FJ:J

.field private GI:J

.field GJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private HI:J

.field HJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private II:J

.field IJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private JI:J

.field JJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$igw;",
            ">;"
        }
    .end annotation
.end field

.field private KI:I

.field KJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;",
            ">;"
        }
    .end annotation
.end field

.field private LI:Z

.field LJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;",
            ">;"
        }
    .end annotation
.end field

.field private MI:Landroid/os/BatteryManagerInternal;

.field MJ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field NJ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private OI:Z

.field OJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$ibl;",
            ">;"
        }
    .end annotation
.end field

.field PJ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$oif;",
            ">;"
        }
    .end annotation
.end field

.field private QI:I

.field QJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$oif;",
            ">;"
        }
    .end annotation
.end field

.field private RI:Z

.field RJ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$oif;",
            ">;"
        }
    .end annotation
.end field

.field SJ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$kth;",
            ">;"
        }
    .end annotation
.end field

.field private TI:I

.field TJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$kth;",
            ">;"
        }
    .end annotation
.end field

.field private UI:J

.field private UJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private VI:I

.field private VJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private WI:F

.field private WJ:Z

.field private XI:Z

.field private XJ:Z

.field private YJ:Ljava/util/regex/Pattern;

.field private ZI:Z

.field private ZJ:Ljava/util/regex/Pattern;

.field private _I:J

.field private _J:Ljava/util/regex/Pattern;

.field private aJ:J

.field private aK:Ljava/lang/String;

.field private bJ:I

.field private bK:Ljava/lang/String;

.field private cJ:I

.field private cK:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private dJ:Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;

.field private dK:Ljava/util/regex/Pattern;

.field private eJ:Z

.field private eK:J

.field private fJ:J

.field private fK:J

.field private gJ:Z

.field private gK:J

.field private hJ:Lcom/android/server/power/you;

.field private hK:I

.field private iJ:Z

.field private iK:F

.field jJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private jK:F

.field kJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private kK:I

.field lJ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end field

.field private lK:J

.field private m1stLightIdle:Z

.field private final mBatteryLevelLow:I

.field mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field private mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

.field private mConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mCurrentBatteryLevel:I

.field private mDeviceIdleController:Lcom/android/server/DeviceIdleController;

.field mJ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end field

.field private mK:J

.field private mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field private mScreenOn:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field nJ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private nK:J

.field oJ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private oK:J

.field private pI:J

.field pJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$bio;",
            ">;"
        }
    .end annotation
.end field

.field private pK:J

.field qJ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private qK:Lcom/android/internal/os/BatterySipper;

.field rJ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private rK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field sJ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;",
            ">;"
        }
    .end annotation
.end field

.field private sK:D

.field sn:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;",
            ">;"
        }
    .end annotation
.end field

.field tJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;",
            ">;"
        }
    .end annotation
.end field

.field private tK:Landroid/content/IntentFilter;

.field private uI:Z

.field uJ:J

.field private uK:Lcom/android/server/power/OnePlusStandbyAnalyzer$gck;

.field private ux:Lcom/oneplus/os/IOnePlusExService;

.field private vI:Z

.field vJ:J

.field private vK:Z

.field private wI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field wJ:J

.field private wK:Lcom/android/server/power/OnePlusStandbyAnalyzer$ssp;

.field private xI:Ljava/lang/String;

.field xJ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end field

.field private xK:Z

.field private yI:Ljava/lang/String;

.field yJ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end field

.field yK:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$oif;",
            ">;"
        }
    .end annotation
.end field

.field private zI:Z

.field zJ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field zK:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$kth;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    const/4 v0, 0x0

    const-string v1, "persist.sys.standby_debug"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    const-string v1, "persist.vendor.oem.dump"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->RK:Z

    const/16 v0, 0x32

    sput v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->SK:I

    const/4 v0, -0x1

    sput v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->TK:I

    const-string v0, "PowerStandbyOnlineConfig"

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->VK:Ljava/lang/String;

    const-string v0, "/d/rpm_stats"

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->fL:Ljava/lang/String;

    const-string v0, "/d/rpmh/stats"

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gL:Ljava/lang/String;

    const-string v0, "/d/rpm_master_stats"

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->hL:Ljava/lang/String;

    const-string v0, "/d/rpmh/master_stats"

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->iL:Ljava/lang/String;

    const-string v0, "/sys/kernel/debug/wlan_wakeup/wlan_wakeup_reason"

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mL:Ljava/lang/String;

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->nL:Ljava/lang/String;

    const/high16 v0, 0x41200000    # 10.0f

    sput v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->oL:F

    sput v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->pL:F

    const/16 v1, 0xc8

    sput v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->qL:I

    const v1, 0x4479c000    # 999.0f

    sput v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->rL:F

    const/high16 v2, 0x42a00000    # 80.0f

    sput v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sL:F

    const/high16 v2, 0x40a00000    # 5.0f

    sput v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->tL:F

    sput v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->uL:F

    sput v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vL:F

    sput v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->wL:F

    const/16 v0, 0x96

    sput v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->xL:I

    sput v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->yL:F

    const/high16 v0, 0x42480000    # 50.0f

    sput v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zL:F

    const/high16 v0, 0x40600000    # 3.5f

    sput v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->AL:F

    const-wide/16 v0, 0x708

    sput-wide v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->BL:J

    const/high16 v0, 0x42200000    # 40.0f

    sput v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->CL:F

    const-wide/32 v0, 0x100000

    sput-wide v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DL:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/DeviceIdleController;Z)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->uI:Z

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vI:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->wI:Ljava/util/Map;

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zI:Z

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->AI:Z

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->BI:Z

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->CI:Z

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DI:Z

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->EI:Z

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;->Yna:Lcom/android/server/power/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;

    iput-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->FI:Lcom/android/server/power/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;

    const-wide/32 v1, 0xa4cb800

    iput-wide v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->GI:J

    const-wide/32 v1, 0x6ddd00

    iput-wide v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->HI:J

    const-wide/32 v1, 0xa4cb80

    iput-wide v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->II:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->JI:J

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->KI:I

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->LI:Z

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->OI:Z

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->RI:Z

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->VI:I

    const/high16 v1, 0x42700000    # 60.0f

    iput v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->WI:F

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->XI:Z

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ZI:Z

    const-wide/16 v1, 0x7530

    iput-wide v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->_I:J

    iput-wide v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->aJ:J

    sget v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->SK:I

    iput v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bJ:I

    const/16 v1, 0x22b

    iput v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cJ:I

    const-wide/32 v1, 0x1499700

    iput-wide v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->pI:J

    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mBatteryLevelLow:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->eJ:Z

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m1stLightIdle:Z

    const-wide/16 v2, 0x2710

    iput-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->fJ:J

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gJ:Z

    iput-boolean v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->iJ:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->UJ:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->VJ:Ljava/util/List;

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->WJ:Z

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->XJ:Z

    const/16 v1, 0x20

    const-string v2, "RPM Mode:vlow\\n\\t\\scount:(\\d*)\\n.*time since last mode\\(sec\\):(\\d*).*RPM Mode:vmin\\n\\t\\scount:(\\d*)\\n.*time since last mode\\(sec\\):(\\d*)\\n.*"

    invoke-static {v2, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->YJ:Ljava/util/regex/Pattern;

    const-string v2, "RPM Mode:aosd\\n\\t\\scount:(\\d*)\\n.*time since last mode\\(sec\\):(\\d*).*RPM Mode:cxsd\\n\\t\\scount:(\\d*)\\n.*time since last mode\\(sec\\):(\\d*)\\n.*"

    invoke-static {v2, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ZJ:Ljava/util/regex/Pattern;

    const-string v2, ".*MPSS\\n\\tVersion.*\\tSleep Accumulated Duration:0x([0-9a-f]*)\\n\\nADSP\\n\\tVersion.*\\tSleep Accumulated Duration:0x([0-9a-f]*)\\n\\nCDSP\\n\\tVersion.*"

    invoke-static {v2, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->_J:Ljava/util/regex/Pattern;

    const-string v2, "\\n\\tshutdown_req.*\\n\\twakeup_ind.*\\n\\tbringup_req.*\\n\\tbringup_ack.*\\n\\txo_last_entered_at:0x([0-9a-fA-F]*)\\n\\txo_last_exited_at:0x([0-9a-fA-F]*)\\n\\txo_accumulated_duration:0x([0-9a-fA-F]*)\\n\\tlast_sleep_transition_duration.*\\n\\tlast_wake_transition_duration.*\\n\\txo_count:0x([0-9a-fA-F]*)\\n"

    iput-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->aK:Ljava/lang/String;

    const-string v2, "\\n\\tVersion:0x([0-9a-f]*)\\n\\tSleep Count:0x([0-9a-f]*)\\n\\tSleep Last Entered At:0x([0-9a-f]*)\\n\\tSleep Last Exited At:0x([0-9a-f]*)\\n\\tSleep Accumulated Duration:0x([0-9a-f]*)\\n\\n"

    iput-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bK:Ljava/lang/String;

    const-string v2, "uc (\\d*) bc (\\d*) v4_mc (\\d*) v6_mc (\\d*) ra (\\d*) ns (\\d*) na (\\d*) pno_match (\\d*) pno_complete (\\d*) gscan (\\d*) low_rssi (\\d*) rssi_breach (\\d*) icmp (\\d*) icmpv6 (\\d*) oem (\\d*) unspecified (\\d*).*"

    invoke-static {v2, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->dK:Ljava/util/regex/Pattern;

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vK:Z

    new-instance v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$ssp;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$ssp;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;Lcom/android/server/power/bio;)V

    iput-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->wK:Lcom/android/server/power/OnePlusStandbyAnalyzer$ssp;

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->xK:Z

    new-instance v0, Lcom/android/server/power/wtn;

    invoke-direct {v0, p0}, Lcom/android/server/power/wtn;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/server/power/gck;

    invoke-direct {v0, p0}, Lcom/android/server/power/gck;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->yK:Ljava/util/Comparator;

    new-instance v0, Lcom/android/server/power/dma;

    invoke-direct {v0, p0}, Lcom/android/server/power/dma;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zK:Ljava/util/Comparator;

    new-instance v0, Lcom/android/server/power/ywr;

    invoke-direct {v0, p0}, Lcom/android/server/power/ywr;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->AK:Ljava/util/Comparator;

    new-instance v0, Lcom/android/server/power/sis;

    invoke-direct {v0, p0}, Lcom/android/server/power/sis;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->BK:Ljava/util/Comparator;

    new-instance v0, Lcom/android/server/power/tsu;

    invoke-direct {v0, p0}, Lcom/android/server/power/tsu;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DK:Ljava/util/Comparator;

    new-instance v0, Lcom/android/server/power/rtg;

    invoke-direct {v0, p0}, Lcom/android/server/power/rtg;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sn:Ljava/util/Comparator;

    const-string v0, "OPSA"

    const-string v1, "init OnePlusStandbyAnalyzer"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    iput-boolean p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->BI:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "init reporting-flag to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->BI:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private Bo()V
    .locals 19

    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DJ:J

    iget-wide v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->uJ:J

    sub-long/2addr v3, v5

    iput-wide v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->eK:J

    iget-wide v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->EJ:J

    iget-wide v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vJ:J

    sub-long/2addr v3, v5

    iput-wide v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gK:J

    iget-wide v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->FJ:J

    iget-wide v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->wJ:J

    sub-long/2addr v3, v5

    iput-wide v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->pK:J

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sJ:Ljava/util/Map;

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->lK:J

    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->rJ:Ljava/util/Map;

    if-eqz v5, :cond_3

    iget-object v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->qJ:Ljava/util/Map;

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    iget-object v8, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->qJ:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v8, v14, v8

    move-wide v12, v8

    goto :goto_1

    :cond_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-wide v12, v14

    :goto_1
    iget-object v10, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sJ:Ljava/util/Map;

    new-instance v11, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-object v8, v11

    move-object v9, v7

    move-object v6, v10

    move-object v3, v11

    move-wide v10, v12

    move-object/from16 v18, v5

    move-wide v4, v12

    move-wide/from16 v12, v16

    invoke-direct/range {v8 .. v15}, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;-><init>(Ljava/lang/String;JJJ)V

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "PowerManagerService.WakeLocks"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-wide v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->lK:J

    :cond_1
    move-object/from16 v5, v18

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->tJ:Ljava/util/List;

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->tJ:Ljava/util/List;

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sJ:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->tJ:Ljava/util/List;

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sn:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->BJ:Ljava/util/Map;

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->nK:J

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->AJ:Ljava/util/Map;

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zJ:Ljava/util/Map;

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zJ:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sub-int/2addr v5, v9

    goto :goto_3

    :cond_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_3
    iget-object v9, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->BJ:Ljava/util/Map;

    new-instance v10, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v10, v6, v5, v8, v7}, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;-><init>(Ljava/lang/String;III)V

    invoke-interface {v9, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->nK:J

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->nK:J

    goto :goto_2

    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->CJ:Ljava/util/List;

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->CJ:Ljava/util/List;

    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->BJ:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->CJ:Ljava/util/List;

    new-instance v5, Lcom/android/server/power/bvj;

    invoke-direct {v5, v0}, Lcom/android/server/power/bvj;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->IJ:Ljava/util/List;

    const-wide/16 v5, 0x0

    iput-wide v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->oK:J

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->HJ:Ljava/util/List;

    if-eqz v3, :cond_8

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->GJ:Ljava/util/List;

    if-eqz v3, :cond_8

    move v3, v4

    :goto_4
    sget v5, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    if-ge v3, v5, :cond_8

    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->HJ:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->GJ:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iget-object v7, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->IJ:Ljava/util/List;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    if-gt v3, v7, :cond_7

    iget-wide v7, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->oK:J

    add-long/2addr v7, v5

    iput-wide v7, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->oK:J

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->jJ:Ljava/util/List;

    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->kJ:Ljava/util/List;

    invoke-direct {v0, v3, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta(Ljava/util/List;Ljava/util/List;)V

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->nJ:Ljava/util/Map;

    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->oJ:Ljava/util/Map;

    invoke-direct {v0, v3, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->you(Ljava/util/Map;Ljava/util/Map;)V

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->SJ:Ljava/util/Map;

    invoke-virtual {v0, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->you(Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->TJ:Ljava/util/List;

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->PJ:Ljava/util/Map;

    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->RJ:Ljava/util/Map;

    invoke-direct {v0, v3, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis(Ljava/util/Map;Ljava/util/Map;)V

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->MJ:Ljava/util/Map;

    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->NJ:Ljava/util/Map;

    invoke-direct {v0, v3, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->tsu(Ljava/util/Map;Ljava/util/Map;)V

    iget-wide v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gK:J

    iget-wide v7, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->lK:J

    sub-long/2addr v5, v7

    iput-wide v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mK:J

    sget-boolean v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v3, :cond_9

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->pJ:Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ibl(Ljava/util/List;)V

    :cond_9
    sget-boolean v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v3, :cond_a

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->tJ:Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->oif(Ljava/util/List;)V

    :cond_a
    sget-boolean v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v3, :cond_b

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->CJ:Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gwm(Ljava/util/List;)V

    :cond_b
    sget-boolean v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v3, :cond_c

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->TJ:Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bvj(Ljava/util/List;)V

    :cond_c
    sget-boolean v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v3, :cond_d

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->IJ:Ljava/util/List;

    const-string v5, "Diff-Signal"

    invoke-direct {v0, v5, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis(Ljava/lang/String;Ljava/util/List;)V

    :cond_d
    sget-boolean v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v3, :cond_e

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->JJ:Ljava/util/List;

    const-string v5, "Diff-RPM"

    invoke-direct {v0, v5, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->you(Ljava/lang/String;Ljava/util/List;)V

    :cond_e
    sget-boolean v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v3, :cond_f

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->KJ:Ljava/util/List;

    const-string v5, "Diff-RPMMaster"

    invoke-direct {v0, v5, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta(Ljava/lang/String;Ljava/util/List;)V

    :cond_f
    sget-boolean v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v3, :cond_10

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->OJ:Ljava/util/List;

    const-string v5, "Diff-WiFiWakeUp"

    invoke-direct {v0, v5, v3, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis(Ljava/lang/String;Ljava/util/List;Z)V

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@@@[calculateDiff] in "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    return-void
.end method

.method private Co()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->LJ:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->LJ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->LJ:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;

    invoke-virtual {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->cleanUp()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private Do()Z
    .locals 1

    const/4 p0, 0x1

    const-string v0, "persist.vendor.qxdm.copylog"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "QXDM log is ready"

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    return p0

    :cond_0
    const-string p0, "QXDM log is NOT ready"

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private Eo()V
    .locals 5

    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v0}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->VI:I

    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->MI:Landroid/os/BatteryManagerInternal;

    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->MI:Landroid/os/BatteryManagerInternal;

    const-string v1, "OPSA"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mCurrentBatteryLevel:I

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->QI:I

    sget-boolean v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[opbugreportlite] mCurrentBatteryLevel = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mCurrentBatteryLevel:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[opbugreportlite] mBatteryCapacity = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->VI:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mAh"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[opbugreportlite] mEnablePowerStandbyDetect = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->OI:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[opbugreportlite] mEnablePowerStandbyDiagnosis = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->eJ:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[opbugreportlite] m_mA_Criteria = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->WI:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " mA"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[opbugreportlite] mMinimumPeriod = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->pI:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ux:Lcom/oneplus/os/IOnePlusExService;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/server/OnePlusExService;->getDefault()Lcom/oneplus/os/IOnePlusExService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ux:Lcom/oneplus/os/IOnePlusExService;

    :cond_2
    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->dJ:Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;

    invoke-virtual {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->Xf()V

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->dJ:Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;

    invoke-virtual {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$you;

    invoke-direct {v3, p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$you;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->VK:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->dJ:Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;

    const/16 v0, 0x3e8

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->sendEmptyMessageDelayed(IJ)V

    return-void
.end method

.method private Fo()V
    .locals 9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cK:Ljava/util/Map;

    iget-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->XJ:Z

    const/16 v1, 0x20

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, ".*%s%s.*"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cK:Ljava/util/Map;

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->Dna:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    iget-object v8, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bK:Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cK:Ljava/util/Map;

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->Cna:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    iget-object v8, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bK:Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cK:Ljava/util/Map;

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->Bna:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    iget-object v8, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bK:Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cK:Ljava/util/Map;

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->Ena:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v3

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bK:Ljava/lang/String;

    aput-object p0, v4, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cK:Ljava/util/Map;

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->Dna:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    iget-object v8, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->aK:Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cK:Ljava/util/Map;

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->Cna:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    iget-object v8, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->aK:Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cK:Ljava/util/Map;

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->Ena:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v3

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->aK:Ljava/lang/String;

    aput-object p0, v4, v2

    :goto_0
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-interface {v0, v6, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private Go()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m1stLightIdle:Z

    const-string v1, "OPSA"

    if-nez v0, :cond_1

    sget-boolean p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_0

    const-string p0, "[opbugreportlite] m1stLightIdle is false, abort enteringDeepIdleLocked, just return"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mCurrentBatteryLevel:I

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->TI:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->UI:J

    sget-boolean v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[opbugreportlite] Entering DeepIdle, batteryLevel = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->TI:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", nowElapseRealTime = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->UI:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", now="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gJ:Z

    iget-boolean v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->eJ:Z

    if-eqz v2, :cond_4

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->RI:Z

    :try_start_0
    sget-boolean v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_3

    const-string v0, "[opbugreportlite] Snapshot of start"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->START:Lcom/android/server/power/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$STATISTIC_TYPE;->Rna:Lcom/android/server/power/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta(Lcom/android/server/power/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/power/OnePlusStandbyAnalyzer$STATISTIC_TYPE;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[opbugreportlite] got exception while snapshot of start:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method private Ha(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[opbugreportlite] mStandbyAbnReportingEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->BI:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", needGenBatteryOutlier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->BI:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string p1, "[opbugreportlite] report it !, in 20 sec later"

    invoke-static {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->dJ:Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;

    const/16 p1, 0x3f1

    const-wide/16 v0, 0x4e20

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->sendEmptyMessageDelayed(IJ)V

    goto :goto_0

    :cond_0
    const-string p1, "[opbugreportlite] NOT report it, check if need cleanup qxdm logs immediately."

    invoke-static {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ud()V

    :goto_0
    return-void
.end method

.method private static Hb(I)Z
    .locals 0

    invoke-static {p0}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private Ho()Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->UNKNOWN:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->JJ:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->KJ:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->JJ:Ljava/util/List;

    invoke-direct {v0, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->dma(Ljava/util/List;)Z

    move-result v2

    const-string v3, " %"

    const/high16 v6, 0x42c80000    # 100.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const-wide/16 v8, 0x0

    if-eqz v2, :cond_7

    const-wide v11, 0x7fffffffffffffffL

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->UNKNOWN:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    move-object v10, v2

    move-wide v14, v11

    const/4 v2, 0x0

    move-wide v11, v8

    :goto_0
    iget-object v13, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->KJ:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_3

    iget-object v13, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->KJ:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;

    iget-wide v4, v13, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->gI:J

    cmp-long v4, v11, v4

    if-gez v4, :cond_1

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->KJ:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;

    iget-wide v4, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->gI:J

    move-wide v11, v4

    :cond_1
    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->KJ:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;

    iget-wide v4, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->gI:J

    cmp-long v4, v14, v4

    if-ltz v4, :cond_2

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->KJ:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;

    iget-wide v4, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->gI:J

    iget-object v10, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->KJ:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;

    iget-object v10, v10, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->mType:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    move-wide v14, v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[judgeRPM] longest_acctime="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", smallest_acctime="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", smallest_type="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    cmp-long v2, v11, v8

    if-eqz v2, :cond_4

    sub-long v4, v11, v14

    long-to-float v2, v4

    mul-float/2addr v2, v7

    long-to-float v4, v11

    div-float/2addr v2, v4

    mul-float/2addr v2, v6

    new-instance v4, Ljava/math/BigDecimal;

    float-to-double v5, v2

    invoke-direct {v4, v5, v6}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v2, 0x4

    const/4 v5, 0x3

    invoke-virtual {v4, v5, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[judgeRPM] percent[(longest-smallest)/longest] ="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    move/from16 v16, v13

    goto :goto_1

    :cond_4
    const-string v2, "[judgeRPM] longest_acctime == 0"

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    const/16 v16, 0x0

    :goto_1
    sget v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->CL:F

    cmpl-float v2, v16, v2

    if-ltz v2, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_CATEGORY;->zna:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_CATEGORY;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    const/4 v2, 0x0

    :goto_3
    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->KJ:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_e

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->KJ:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;

    iget-object v3, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->mType:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->Ena:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    if-ne v3, v4, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[judgeRPM] SLPI\'s SleepCount_Diff="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->KJ:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;

    iget-wide v4, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->dI:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", criteria="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DL:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->KJ:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;

    iget-wide v3, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->dI:J

    sget-wide v5, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DL:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_CATEGORY;->Ana:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_CATEGORY;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->Ena:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    invoke-static {}, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;->values()[Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

    move-result-object v1

    array-length v2, v1

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v2, :cond_d

    aget-object v5, v1, v4

    sget-object v10, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;->Ena:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

    if-ne v5, v10, :cond_9

    :cond_8
    const/4 v12, 0x4

    const/4 v13, 0x3

    goto/16 :goto_7

    :cond_9
    const/4 v10, 0x0

    :goto_5
    iget-object v11, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->KJ:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_8

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->KJ:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;

    iget-object v12, v12, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->mType:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v12}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    iget-object v11, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->KJ:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;

    iget-object v11, v11, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->cI:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_CX_STATE;

    sget-object v12, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_CX_STATE;->A:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_CX_STATE;

    if-ne v11, v12, :cond_b

    iget-object v11, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->KJ:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;

    iget-object v11, v11, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->mType:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-direct {v0, v11}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta(Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;)J

    move-result-wide v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[judgeRPM] CX_STATE:Active "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->KJ:Ljava/util/List;

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;

    iget-object v14, v14, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->mType:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ", longestRPMSAD="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    cmp-long v13, v11, v8

    if-eqz v13, :cond_a

    iget-object v13, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->KJ:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;

    iget-wide v13, v13, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->gI:J

    sub-long v13, v11, v13

    long-to-float v13, v13

    mul-float/2addr v13, v7

    long-to-float v11, v11

    div-float/2addr v13, v11

    mul-float/2addr v13, v6

    new-instance v11, Ljava/math/BigDecimal;

    float-to-double v12, v13

    invoke-direct {v11, v12, v13}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v12, 0x4

    const/4 v13, 0x3

    invoke-virtual {v11, v13, v12}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v11

    invoke-virtual {v11}, Ljava/math/BigDecimal;->floatValue()F

    move-result v11

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[judgeRPM] percent[(longest-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->KJ:Ljava/util/List;

    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;

    iget-object v15, v15, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->mType:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, "\'s SAD)/longest] ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    sget v14, Lcom/android/server/power/OnePlusStandbyAnalyzer;->CL:F

    cmpl-float v11, v11, v14

    if-ltz v11, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_CATEGORY;->xna:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_CATEGORY;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_a
    const/4 v12, 0x4

    const/4 v13, 0x3

    const-string v11, "[judgeRPM] longestRPMSAD == 0"

    invoke-static {v11}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    const/4 v12, 0x4

    const/4 v13, 0x3

    :cond_c
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_5

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_CATEGORY;->xna:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_CATEGORY;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->UNKNOWN:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_e
    return-object v1

    :cond_f
    :goto_8
    const-string v0, "[judgeRPM] oops, rpm data is not well retrieved, just return UNKNOWN"

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    return-object v1
.end method

.method private Ia(Z)V
    .locals 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Update QXDM packing-flag to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "1"

    const-string v1, "0"

    if-eqz p1, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    const-string p0, "persist.sys.standby_qxdm"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Ib()J
    .locals 2

    sget-wide v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->BL:J

    return-wide v0
.end method

.method private Io()Z
    .locals 34

    move-object/from16 v0, p0

    sget v1, Landroid/os/OPDiagnoseManager;->ISSUE_POWER_OTHER:I

    iget-wide v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->eK:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    const-string v5, ", "

    const-string v6, "###### Due to mStandby_Ms: ["

    const/4 v7, 0x0

    if-gtz v4, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->uJ:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DJ:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->eK:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " is less than 0, can\'t judge anything, need just return"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    return v7

    :cond_0
    iget-wide v8, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->fK:J

    cmp-long v2, v2, v8

    if-gez v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->uJ:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DJ:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->eK:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " is less than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->fK:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms, it\'s false alarm, just return"

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-boolean v7, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vI:Z

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->wI:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->yI:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->hJ:Lcom/android/server/power/you;

    const-string v6, "/data/system/power/diagnosis_assist.txt"

    invoke-virtual {v5, v6}, Lcom/android/server/power/you;->S(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->hJ:Lcom/android/server/power/you;

    const-string v6, "/data/system/power/diagnosis_rpm.txt"

    invoke-virtual {v5, v6}, Lcom/android/server/power/you;->S(Ljava/lang/String;)V

    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->NA:Lcom/android/server/power/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->NA:Lcom/android/server/power/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v6}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->kla:Lcom/android/server/power/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v11, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->eK:J

    invoke-static {v10, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "###### Time of Standby period : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "###### Battery-Drop of Standby period : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->hK:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " %"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->wI:Ljava/util/Map;

    sget-object v13, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->DP:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    iget v14, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->hK:I

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "###### EverEnterDeepIdle : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->WJ:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    new-instance v11, Ljava/math/BigDecimal;

    iget v13, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->iK:F

    float-to-double v13, v13

    invoke-direct {v11, v13, v14}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v13, 0x4

    const/4 v14, 0x3

    invoke-virtual {v11, v14, v13}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v11

    invoke-virtual {v11}, Ljava/math/BigDecimal;->floatValue()F

    move-result v11

    iput v11, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->iK:F

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "###### Average Current of Standby period : "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->iK:F

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v15, " mA, criteria="

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->jK:F

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v15, " mA"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->wI:Ljava/util/Map;

    sget-object v15, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->fma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    iget v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->iK:F

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->wI:Ljava/util/Map;

    sget-object v11, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->gma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    iget v15, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->jK:F

    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v4, v11, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->wI:Ljava/util/Map;

    sget-object v11, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->MIN:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    sget v15, Lcom/android/server/power/OnePlusStandbyAnalyzer;->uL:F

    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v4, v11, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->iK:F

    iget v11, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->jK:F

    sub-float/2addr v4, v11

    sget v11, Lcom/android/server/power/OnePlusStandbyAnalyzer;->uL:F

    cmpg-float v4, v4, v11

    if-gtz v4, :cond_2

    const-string v4, "###### Minor exceeding, lower down the criteria accordingly"

    invoke-static {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    sget v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->xL:I

    sget v11, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vL:F

    sget v15, Lcom/android/server/power/OnePlusStandbyAnalyzer;->wL:F

    sget v17, Lcom/android/server/power/OnePlusStandbyAnalyzer;->yL:F

    sget v18, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zL:F

    sget v19, Lcom/android/server/power/OnePlusStandbyAnalyzer;->AL:F

    goto :goto_1

    :cond_2
    const-string v4, "###### Normal exceeding, use the normal criteria accordingly"

    invoke-static {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    sget v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->qL:I

    sget v11, Lcom/android/server/power/OnePlusStandbyAnalyzer;->oL:F

    sget v15, Lcom/android/server/power/OnePlusStandbyAnalyzer;->pL:F

    sget v17, Lcom/android/server/power/OnePlusStandbyAnalyzer;->rL:F

    sget v18, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sL:F

    sget v19, Lcom/android/server/power/OnePlusStandbyAnalyzer;->tL:F

    :goto_1
    move/from16 v33, v11

    move v11, v4

    move/from16 v4, v19

    move/from16 v19, v18

    move/from16 v18, v17

    move/from16 v17, v15

    move/from16 v15, v33

    const v20, 0x4479c000    # 999.0f

    cmpl-float v20, v4, v20

    const/4 v13, 0x1

    if-nez v20, :cond_3

    const-string v20, "oops, observe the magic number - 999.0, skip checkifRPMAbnormal at this round"

    invoke-static/range {v20 .. v20}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    move/from16 v20, v13

    goto :goto_2

    :cond_3
    move/from16 v20, v7

    :goto_2
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    move/from16 v21, v15

    iget-wide v14, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gK:J

    invoke-static {v10, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "###### CPU Uptime of Standby period : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-wide v14, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->lK:J

    invoke-static {v10, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "###### UserSpace-WL(PowerManagerService.WakeLocks) of Standby period : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-wide v14, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mK:J

    invoke-static {v10, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "###### (Uptime - UserSpace-WL)KernelSpace of Standby period : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "###### Userspace WUA Count of Standby period : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->kK:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " times"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    sget-boolean v14, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v14, :cond_4

    iget-object v14, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->QJ:Ljava/util/List;

    const-string v7, "Diff"

    invoke-direct {v0, v7, v14, v13}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->you(Ljava/lang/String;Ljava/util/List;Z)V

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "###### Kernel Wake-Up Count of Standby period : "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->nK:J

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->tJ:Ljava/util/List;

    invoke-direct {v0, v7}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ugm(Ljava/util/List;)V

    iget-object v7, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->JJ:Ljava/util/List;

    const-string v13, "Diff-RPM"

    invoke-direct {v0, v13, v7}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->you(Ljava/lang/String;Ljava/util/List;)V

    iget-object v7, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->KJ:Ljava/util/List;

    const-string v13, "Diff-RPMMaster"

    invoke-direct {v0, v13, v7}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta(Ljava/lang/String;Ljava/util/List;)V

    iget-object v7, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->JJ:Ljava/util/List;

    iget-object v13, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->KJ:Ljava/util/List;

    invoke-direct {v0, v7, v13}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->you(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iget-object v13, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->hJ:Lcom/android/server/power/you;

    move-object v14, v5

    move-object/from16 v24, v6

    iget-wide v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->eK:J

    move/from16 v25, v1

    iget v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->hK:I

    invoke-virtual {v13, v5, v6, v1, v7}, Lcom/android/server/power/you;->zta(JILjava/util/List;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->xI:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->JJ:Ljava/util/List;

    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->KJ:Ljava/util/List;

    const-string v6, "Diff-RPM"

    invoke-direct {v0, v6, v1, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->KJ:Ljava/util/List;

    invoke-direct {v0, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdb(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "###### RPM MDM_Detail : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OPSA"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->OJ:Ljava/util/List;

    const-string v7, "Diff-WiFiWakeUp"

    const/4 v13, 0x1

    invoke-direct {v0, v7, v5, v13}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis(Ljava/lang/String;Ljava/util/List;Z)V

    const/4 v5, 0x0

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object v7, v6

    iget-wide v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->oK:J

    invoke-static {v10, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "###### Signal Bad (None + Poor) of Standby period : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[NoSignal] mStandby_NoSignal_Under_SIM_Detected_Ms="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v6, v14

    iget-wide v13, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->pK:J

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-wide v13, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->pK:J

    invoke-static {v10, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "###### No Signal (under SIM Detected) of Standby period : "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->LJ:Ljava/util/List;

    invoke-direct {v0, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zgw(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "###### Diff-TeleChgInfo : "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->LJ:Ljava/util/List;

    invoke-direct {v0, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->oxb(Ljava/util/List;)Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "##### 1st-TelephonyAnomaly : "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v7, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->rK:Ljava/util/List;

    const-string v10, "Diff - totalPowerMah"

    const/4 v13, 0x1

    invoke-direct {v0, v10, v7, v13}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta(Ljava/lang/String;Ljava/util/List;Z)V

    :cond_5
    iget-object v7, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->rK:Ljava/util/List;

    if-eqz v7, :cond_6

    new-instance v10, Lcom/android/server/power/qbh;

    invoke-direct {v10, v0}, Lcom/android/server/power/qbh;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    invoke-static {v7, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    sget-boolean v7, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v7, :cond_6

    iget-object v7, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->rK:Ljava/util/List;

    const-string v10, "Diff - wakeLockTimeMs"

    const/4 v13, 0x1

    invoke-direct {v0, v10, v7, v13}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta(Ljava/lang/String;Ljava/util/List;Z)V

    :cond_6
    iget-object v7, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->wI:Ljava/util/Map;

    sget-object v10, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->bma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    const-string v13, "2.03"

    invoke-interface {v7, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v13, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->eK:J

    long-to-float v7, v13

    const v10, 0x4a5bba00    # 3600000.0f

    div-float/2addr v7, v10

    new-instance v10, Ljava/math/BigDecimal;

    float-to-double v13, v7

    invoke-direct {v10, v13, v14}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v7, 0x4

    const/4 v13, 0x3

    invoke-virtual {v10, v13, v7}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigDecimal;->floatValue()F

    move-result v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "###### standby_hrs : "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, " h"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object v10, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->wI:Ljava/util/Map;

    sget-object v13, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->cma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v10, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v13, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->lK:J

    long-to-float v10, v13

    const/high16 v13, 0x3f800000    # 1.0f

    mul-float/2addr v10, v13

    iget-wide v13, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->eK:J

    long-to-float v13, v13

    div-float/2addr v10, v13

    const/high16 v13, 0x42c80000    # 100.0f

    mul-float/2addr v10, v13

    new-instance v14, Ljava/math/BigDecimal;

    move-wide/from16 v27, v2

    float-to-double v2, v10

    invoke-direct {v14, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v2, 0x4

    const/4 v3, 0x3

    invoke-virtual {v14, v3, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "###### userSpaceWL_Percentage : "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->wI:Ljava/util/Map;

    sget-object v10, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->hma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v3, v10, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v13, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gK:J

    long-to-float v10, v13

    const/high16 v13, 0x3f800000    # 1.0f

    mul-float/2addr v10, v13

    iget-wide v13, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->eK:J

    long-to-float v13, v13

    div-float/2addr v10, v13

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v10, v3

    new-instance v13, Ljava/math/BigDecimal;

    move v14, v4

    float-to-double v3, v10

    invoke-direct {v13, v3, v4}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v3, 0x4

    const/4 v4, 0x3

    invoke-virtual {v13, v4, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "###### cpuRuning_Percentage : "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->wI:Ljava/util/Map;

    sget-object v10, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->ima:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v4, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sub-float v4, v3, v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "###### kernelSpaceWL_Percentage : "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->wI:Ljava/util/Map;

    sget-object v10, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->jma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-float v3, v11

    mul-float/2addr v7, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "###### local_wrCountCriteria : "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-wide v10, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->oK:J

    long-to-float v3, v10

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v3, v10

    iget-wide v10, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->eK:J

    long-to-float v10, v10

    div-float/2addr v3, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float v11, v3, v10

    new-instance v10, Ljava/math/BigDecimal;

    move v13, v4

    float-to-double v3, v11

    invoke-direct {v10, v3, v4}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v3, 0x4

    const/4 v4, 0x3

    invoke-virtual {v10, v4, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "###### signalBad_Percentage : "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, "  %"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->wI:Ljava/util/Map;

    sget-object v10, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->kma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v10, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->pK:J

    long-to-float v4, v10

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v4, v10

    iget-wide v10, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->eK:J

    long-to-float v10, v10

    div-float/2addr v4, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v4, v10

    new-instance v10, Ljava/math/BigDecimal;

    move v11, v14

    float-to-double v14, v4

    invoke-direct {v10, v14, v15}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v4, 0x4

    const/4 v14, 0x3

    invoke-virtual {v10, v14, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "###### signalNone_Percentage(Under SIM detected) : "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v14, "  %"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object v10, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->wI:Ljava/util/Map;

    sget-object v14, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->lma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Ho()Ljava/lang/String;

    move-result-object v10

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "###### [judgeRPM] :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object v14, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->wI:Ljava/util/Map;

    move-object/from16 v26, v6

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->nma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    move-object/from16 v29, v8

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v14, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->wI:Ljava/util/Map;

    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->Jla:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    move-object/from16 v30, v10

    move v14, v11

    iget-wide v10, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->nK:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->qK:Lcom/android/internal/os/BatterySipper;

    if-eqz v6, :cond_8

    iget-wide v10, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sK:D

    const-wide/16 v31, 0x0

    cmpl-double v8, v10, v31

    move/from16 v31, v14

    if-eqz v8, :cond_7

    move-object v8, v15

    iget-wide v14, v6, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    div-double/2addr v14, v10

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double/2addr v14, v10

    new-instance v6, Ljava/math/BigDecimal;

    invoke-direct {v6, v14, v15}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v10, 0x4

    const/4 v11, 0x3

    invoke-virtual {v6, v11, v10}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v10

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "###### existd unaccounted sipper, the percentage "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v14, " % ("

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->qK:Lcom/android/internal/os/BatterySipper;

    iget-wide v14, v14, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-static {v14, v15}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " / "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sK:D

    invoke-static {v14, v15}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ")"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->wI:Ljava/util/Map;

    sget-object v14, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->mma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v6, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_7
    move-object v8, v15

    const-string v6, "###### existd unaccounted sipper, but mStadby_totalPowerMah is 0"

    invoke-static {v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    move/from16 v31, v14

    move-object v8, v15

    const-string v6, "###### No-unaccounted sipper existed."

    invoke-static {v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->wI:Ljava/util/Map;

    sget-object v10, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->mma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    const-string v11, "-999"

    invoke-interface {v6, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->xm()V

    iget-object v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->wI:Ljava/util/Map;

    sget-object v14, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->ema:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    const-string v15, "1"

    invoke-interface {v6, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Ko()V

    iget-boolean v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->EI:Z

    const-string v14, ";"

    if-eqz v6, :cond_e

    sget-object v1, Lcom/android/server/power/kth;->GH:[I

    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->FI:Lcom/android/server/power/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_a

    const/4 v2, 0x2

    if-eq v1, v2, :cond_9

    goto :goto_7

    :cond_9
    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->Bla:Lcom/android/server/power/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v8}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->Bla:Lcom/android/server/power/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_5
    move-object v6, v5

    goto :goto_8

    :cond_a
    if-eqz v5, :cond_d

    sget-object v1, Lcom/android/server/power/kth;->zH:[I

    iget-object v2, v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->mType:Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_c

    const/4 v2, 0x6

    if-eq v1, v2, :cond_b

    move-object/from16 v8, v29

    goto :goto_6

    :cond_b
    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->Gla:Lcom/android/server/power/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    goto :goto_6

    :cond_c
    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->Dla:Lcom/android/server/power/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    :goto_6
    invoke-virtual {v8}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->ed()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->mType:Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    iget-boolean v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->EI:Z

    invoke-static {v1, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->zta(Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;Z)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_d
    :goto_7
    move-object/from16 v6, v24

    move-object/from16 v5, v26

    move-object/from16 v8, v29

    :goto_8
    move-object v10, v5

    move-object v11, v6

    move/from16 v2, v25

    :goto_9
    const/16 v22, 0x0

    const/16 v23, 0x1

    goto/16 :goto_24

    :cond_e
    iget-boolean v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->LI:Z

    if-nez v6, :cond_f

    iget-boolean v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->WJ:Z

    if-nez v6, :cond_f

    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->mla:Lcom/android/server/power/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v8}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->wI:Ljava/util/Map;

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->ema:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->lna:Lcom/android/server/power/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->lna:Lcom/android/server/power/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    :goto_a
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    :cond_f
    move v6, v4

    move-object v15, v5

    iget-wide v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->nK:J

    long-to-float v4, v4

    cmpl-float v4, v4, v7

    if-ltz v4, :cond_17

    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->pla:Lcom/android/server/power/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v8}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->CJ:Ljava/util/List;

    if-eqz v1, :cond_16

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_16

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->CJ:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->CJ:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;

    invoke-virtual {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/OPDiagnoseManager;->ISSUE_POWER_ALARM_WAKEUP:I

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->CJ:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;

    iget-object v2, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->mName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;->fromString(Ljava/lang/String;)Lcom/android/server/power/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;

    move-result-object v2

    sget-object v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->mna:Lcom/android/server/power/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/server/power/kth;->HH:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v4, v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_11

    const/4 v4, 0x2

    if-eq v2, v4, :cond_11

    const/4 v4, 0x3

    if-eq v2, v4, :cond_10

    :goto_b
    move-object v5, v3

    goto :goto_c

    :cond_10
    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;->modem:Lcom/android/server/power/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    sget v2, Landroid/os/OPDiagnoseManager;->ISSUE_POWER_MODEM_WAKEUP:I

    move-object v5, v1

    move v1, v2

    goto :goto_c

    :cond_11
    sget v1, Landroid/os/OPDiagnoseManager;->ISSUE_POWER_WIFI_WAKEUP:I

    goto :goto_b

    :goto_c
    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->CJ:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;

    iget-object v6, v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->mName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->OJ:Ljava/util/List;

    if-eqz v2, :cond_13

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_13

    const/4 v2, 0x0

    :goto_d
    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->OJ:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_13

    const/4 v3, 0x3

    if-ge v2, v3, :cond_12

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->OJ:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$ibl;

    invoke-virtual {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$ibl;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_13
    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->QJ:Ljava/util/List;

    if-eqz v2, :cond_14

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_14

    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->QJ:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->QJ:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$oif;

    invoke-virtual {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$oif;->Yc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_14
    const/4 v3, 0x0

    :cond_15
    :goto_e
    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->tJ:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;

    invoke-virtual {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    :goto_f
    move v2, v1

    :goto_10
    move-object v10, v5

    move-object v11, v6

    goto/16 :goto_9

    :cond_16
    move-object/from16 v11, v24

    move/from16 v2, v25

    move-object/from16 v10, v26

    goto/16 :goto_9

    :cond_17
    cmpl-float v4, v2, v21

    if-gez v4, :cond_25

    cmpl-float v4, v13, v17

    if-ltz v4, :cond_18

    goto/16 :goto_17

    :cond_18
    cmpl-float v2, v3, v18

    if-ltz v2, :cond_19

    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->qla:Lcom/android/server/power/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v8}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->ona:Lcom/android/server/power/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->ona:Lcom/android/server/power/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    goto/16 :goto_a

    :cond_19
    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->JJ:Ljava/util/List;

    invoke-direct {v0, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gck(Ljava/util/List;)Z

    move-result v2

    const-string v3, "_"

    if-eqz v2, :cond_1c

    if-nez v20, :cond_1c

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->sla:Lcom/android/server/power/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Landroid/os/OPDiagnoseManager;->ISSUE_POWER_HW_SUBSYSTEM:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v30

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# [judgeRPM]=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->XJ:Z

    if-eqz v1, :cond_1a

    const-string v1, "aosd_no_increase"

    goto :goto_11

    :cond_1a
    const-string v1, "vmin_no_increase"

    :goto_11
    move-object v5, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "###### [RPM] :"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->UNKNOWN:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->qna:Lcom/android/server/power/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v8, v2

    move v2, v4

    goto/16 :goto_10

    :cond_1c
    move-object/from16 v7, v30

    move/from16 v1, v31

    float-to-double v1, v1

    cmpl-double v1, v10, v1

    if-lez v1, :cond_20

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->rla:Lcom/android/server/power/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unaccounted:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/OPDiagnoseManager;->ISSUE_POWER_HW_SUBSYSTEM:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# [judgeRPM]=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "high_unaccounted"

    if-eqz v15, :cond_1e

    move-object v5, v15

    iget v6, v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->qI:I

    if-lez v6, :cond_1e

    invoke-virtual {v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->ed()Ljava/lang/String;

    move-result-object v6

    iget-object v5, v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->mType:Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    const/4 v8, 0x0

    invoke-static {v5, v8}, Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->zta(Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->UNKNOWN:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v6}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->qna:Lcom/android/server/power/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_13

    :cond_1d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_13
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_14

    :cond_1e
    sget-object v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->UNKNOWN:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    sget-object v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->qna:Lcom/android/server/power/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_14
    move-object v6, v3

    move-object v5, v4

    goto :goto_15

    :cond_1f
    move-object v5, v4

    move-object v6, v7

    :goto_15
    move-object v8, v1

    goto/16 :goto_10

    :cond_20
    move-object v5, v15

    if-eqz v5, :cond_23

    iget v1, v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->qI:I

    if-lez v1, :cond_23

    sget-object v1, Lcom/android/server/power/kth;->zH:[I

    iget-object v2, v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->mType:Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_22

    const/4 v2, 0x6

    if-eq v1, v2, :cond_21

    move/from16 v1, v25

    move-object/from16 v8, v29

    goto :goto_16

    :cond_21
    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->Fla:Lcom/android/server/power/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    sget v1, Landroid/os/OPDiagnoseManager;->ISSUE_POWER_NETWORK_WAKEUP:I

    goto :goto_16

    :cond_22
    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->Dla:Lcom/android/server/power/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    sget v1, Landroid/os/OPDiagnoseManager;->ISSUE_POWRE_NO_SIGNAL_INTERSECTION:I

    :goto_16
    invoke-virtual {v8}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->ed()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->mType:Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->zta(Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;Z)Ljava/lang/String;

    move-result-object v5

    move v2, v1

    move-object v10, v5

    move-object v11, v10

    goto/16 :goto_9

    :cond_23
    cmpl-float v1, v6, v19

    if-ltz v1, :cond_24

    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->Cla:Lcom/android/server/power/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v8}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->pna:Lcom/android/server/power/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->pna:Lcom/android/server/power/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    sget v1, Landroid/os/OPDiagnoseManager;->ISSUE_POWER_NO_SIGNAL:I

    goto/16 :goto_f

    :cond_24
    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->UNKNOWN:Lcom/android/server/power/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v8}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->rna:Lcom/android/server/power/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->rna:Lcom/android/server/power/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    goto/16 :goto_a

    :cond_25
    :goto_17
    cmpl-float v1, v2, v13

    if-lez v1, :cond_2f

    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->nla:Lcom/android/server/power/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v8}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->pJ:Ljava/util/List;

    if-eqz v1, :cond_2d

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2d

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->pJ:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2d

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->pJ:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$bio;

    iget v1, v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$bio;->mUid:I

    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->rK:Ljava/util/List;

    if-eqz v2, :cond_2a

    const/4 v2, 0x0

    const/16 v16, 0x0

    :goto_18
    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->rK:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_29

    if-nez v2, :cond_26

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->rK:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatterySipper;

    move-object/from16 v16, v3

    :cond_26
    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->rK:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatterySipper;

    iget-object v3, v3, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v3, :cond_27

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->rK:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatterySipper;

    iget-object v3, v3, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    goto :goto_19

    :cond_27
    const/4 v3, -0x1

    :goto_19
    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->rK:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatterySipper;

    iget-object v4, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v5, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v4, v5, :cond_28

    if-ne v3, v1, :cond_28

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->rK:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatterySipper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "###### Matched Sipper at ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    move-object v4, v1

    goto :goto_1a

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_29
    move-object/from16 v4, v16

    :goto_1a
    if-eqz v4, :cond_2b

    const-string v1, ""

    invoke-direct {v0, v1, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    goto :goto_1b

    :cond_2a
    const/4 v4, 0x0

    :cond_2b
    :goto_1b
    invoke-direct {v0, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta(Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->pJ:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$bio;

    invoke-virtual {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$bio;->Yc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1st-WL:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->pJ:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$bio;

    invoke-virtual {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$bio;->Zc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->pJ:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$bio;

    iget-object v6, v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$bio;->_H:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->VJ:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string v1, "1st-WL is one of Audio skipping lists, skip audio-relative MDM-reporting"

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    sget v1, Landroid/os/OPDiagnoseManager;->ISSUE_POWER_MUSIC:I

    const/4 v7, 0x1

    goto :goto_1c

    :cond_2c
    move/from16 v1, v25

    const/4 v7, 0x0

    :goto_1c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->pJ:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$bio;

    invoke-virtual {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$bio;->Yc()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->hJ:Lcom/android/server/power/you;

    iget-wide v10, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->eK:J

    iget v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->hK:I

    invoke-virtual {v3, v10, v11, v4, v2}, Lcom/android/server/power/you;->zta(JILjava/util/List;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->yI:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Jo()Z

    move-result v2

    const/4 v13, 0x1

    if-eqz v2, :cond_2e

    iput-boolean v13, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vI:Z

    sget v1, Landroid/os/OPDiagnoseManager;->ISSUE_POWER_MUSIC:I

    const/4 v13, 0x0

    goto :goto_1d

    :cond_2d
    const/4 v13, 0x1

    move-object/from16 v6, v24

    move/from16 v1, v25

    move-object/from16 v5, v26

    const/4 v7, 0x0

    :cond_2e
    :goto_1d
    move v2, v1

    move-object v10, v5

    move-object v11, v6

    move/from16 v22, v7

    :goto_1e
    move/from16 v23, v13

    goto/16 :goto_24

    :cond_2f
    const/4 v13, 0x1

    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->ola:Lcom/android/server/power/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v8}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->tJ:Ljava/util/List;

    if-eqz v1, :cond_37

    invoke-direct {v0, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->obl(Ljava/util/List;)Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;

    move-result-object v1

    if-eqz v1, :cond_36

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->mName:Ljava/lang/String;

    if-eqz v2, :cond_33

    const-string v3, "alarmtimer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_30

    iget-object v2, v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->mName:Ljava/lang/String;

    const-string v3, "timerfd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_33

    :cond_30
    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->TJ:Ljava/util/List;

    if-eqz v2, :cond_31

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_31

    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->TJ:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_32

    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->TJ:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$kth;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$kth;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1st-pkt:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$kth;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$kth;->mPkg:Ljava/lang/String;

    move-object v4, v2

    goto :goto_1f

    :cond_31
    const/4 v5, 0x0

    :cond_32
    move-object/from16 v3, v26

    const/4 v4, 0x0

    :goto_1f
    sget v2, Landroid/os/OPDiagnoseManager;->ISSUE_POWER_DOWNLOAD:I

    move-object/from16 v16, v4

    goto :goto_21

    :cond_33
    const/4 v5, 0x0

    iget-object v2, v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->mName:Ljava/lang/String;

    if-eqz v2, :cond_34

    const-string v3, "qcom_rx_wakelock"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_34

    sget v2, Landroid/os/OPDiagnoseManager;->ISSUE_POWER_DOWNLOAD:I

    goto :goto_20

    :cond_34
    move/from16 v2, v25

    :goto_20
    sget-object v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->nna:Lcom/android/server/power/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v16, 0x0

    :goto_21
    iget-object v4, v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->mName:Ljava/lang/String;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v16, :cond_35

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/power/OnePlusStandbyAnalyzer$kth;->Yc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_22

    :cond_35
    invoke-virtual {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_22
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->hJ:Lcom/android/server/power/you;

    iget-wide v10, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->eK:J

    iget v7, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->hK:I

    invoke-virtual {v1, v10, v11, v7, v6}, Lcom/android/server/power/you;->zta(JILjava/util/List;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->yI:Ljava/lang/String;

    move v1, v2

    move-object v6, v4

    goto :goto_23

    :cond_36
    const/4 v5, 0x0

    move-object/from16 v6, v24

    move/from16 v1, v25

    move-object/from16 v3, v26

    :goto_23
    move v2, v1

    move-object v10, v3

    move/from16 v22, v5

    move-object v11, v6

    goto/16 :goto_1e

    :cond_37
    const/4 v5, 0x0

    move/from16 v22, v5

    move/from16 v23, v13

    move-object/from16 v11, v24

    move/from16 v2, v25

    move-object/from16 v10, v26

    :goto_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "###### [RootCause] :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "###### [DiagnoseCode] :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->hJ:Lcom/android/server/power/you;

    iget-wide v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->eK:J

    iget v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->hK:I

    iget v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->iK:F

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/power/you;->zta(IJIFLjava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->hJ:Lcom/android/server/power/you;

    invoke-virtual {v1}, Lcom/android/server/power/you;->Wc()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "###### [MDM_PACKAGE] :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "###### [MDM_DETAIL] :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->iJ:Z

    if-eqz v1, :cond_3a

    iget-boolean v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vI:Z

    if-eqz v1, :cond_38

    const-string v0, "This round of abnormal diagnoses as normal, skip MDM-reporting"

    :goto_25
    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    goto :goto_26

    :cond_38
    if-nez v22, :cond_39

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "tp"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "pn"

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "dl"

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "appid"

    const-string v4, "NYNCG4I0TI"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    if-eqz v3, :cond_3a

    iget-object v0, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "standby"

    invoke-virtual {v3, v0, v4, v1, v2}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_26

    :cond_39
    const-string v0, "Directly skip audio-relative MDM-reporting"

    goto :goto_25

    :cond_3a
    :goto_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@@@@[Judge] in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    return v23
.end method

.method private Ja(Z)V
    .locals 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Update QXDM recording-flag to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "1"

    const-string v1, "0"

    if-eqz p1, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    const-string p0, "persist.sys.standby_qxdm_recording"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private Jo()Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->pJ:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    const/4 v0, -0x1

    move v3, v0

    move v0, v2

    move v4, v0

    move v5, v4

    :goto_0
    iget-object v6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->pJ:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " nd-WL:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->pJ:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$bio;

    invoke-virtual {v7}, Lcom/android/server/power/OnePlusStandbyAnalyzer$bio;->Zc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->VJ:Ljava/util/List;

    iget-object v7, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->pJ:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$bio;

    iget-object v7, v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$bio;->_H:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v1

    :cond_0
    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->pJ:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$bio;

    iget v3, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$bio;->mUid:I

    goto :goto_1

    :cond_1
    const/4 v6, 0x2

    if-le v0, v6, :cond_2

    goto :goto_2

    :cond_2
    iget-object v6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->pJ:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$bio;

    iget v6, v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$bio;->mUid:I

    if-ne v6, v3, :cond_3

    move v5, v1

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    const-string p0, "Match audio-normal pattern, diagnosis as normal"

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    return v1
.end method

.method private Ko()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->pJ:Ljava/util/List;

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->pJ:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v3}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->pJ:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$bio;

    iget v4, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$bio;->mUid:I

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->pJ:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$bio;

    iget v4, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$bio;->mUid:I

    invoke-static {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$KnownUIDs;->aa(I)Lcom/android/server/power/OnePlusStandbyAnalyzer$KnownUIDs;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    iget-object v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->pJ:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$bio;

    invoke-virtual {v4, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$bio;->T(Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->QJ:Ljava/util/List;

    if-eqz v0, :cond_5

    move v0, v2

    :goto_2
    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->QJ:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    if-lt v0, v1, :cond_3

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v3}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->QJ:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$oif;

    iget v4, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$oif;->mUid:I

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    iget-object v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->QJ:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$oif;

    iget v4, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$oif;->mUid:I

    invoke-static {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$KnownUIDs;->aa(I)Lcom/android/server/power/OnePlusStandbyAnalyzer$KnownUIDs;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4
    iget-object v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->QJ:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$oif;

    invoke-virtual {v4, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$oif;->T(Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->TJ:Ljava/util/List;

    if-eqz v0, :cond_8

    :goto_4
    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->TJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    if-lt v2, v1, :cond_6

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->TJ:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$kth;

    iget v3, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$kth;->mUid:I

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->TJ:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$kth;

    iget v3, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$kth;->mUid:I

    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$KnownUIDs;->aa(I)Lcom/android/server/power/OnePlusStandbyAnalyzer$KnownUIDs;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->TJ:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$kth;

    invoke-virtual {v3, v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$kth;->T(Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    return-void
.end method

.method private Lo()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->tK:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->uK:Lcom/android/server/power/OnePlusStandbyAnalyzer$gck;

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->tK:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string p0, "Start listen SIM Change events..."

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    return-void
.end method

.method private Mo()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->LJ:Ljava/util/List;

    invoke-static {}, Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->values()[Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->LJ:Ljava/util/List;

    new-instance v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;

    invoke-direct {v5, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    const-string v0, "Start listen Telephony Anomaly..."

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const v1, 0x10000001

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    return-void
.end method

.method private No()V
    .locals 2

    const-string v0, "Trigger QXDM cleanUp task..."

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "net.oneplus.powercontroller.intent.CLEAN_QXDM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.oem.oemlogkit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->VK:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bio(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Bo()V

    return-void
.end method

.method static synthetic bio(Lcom/android/server/power/OnePlusStandbyAnalyzer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->RI:Z

    return p1
.end method

.method private bvj(Ljava/io/PrintWriter;)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "**** Standby Diagnosis Assist RPM info ****"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->xI:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private bvj(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$kth;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "After Calcu # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private static cjf(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_a

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatterySipper;

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v6

    if-lez v6, :cond_8

    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v6

    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v7

    invoke-static {v7}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Hb(I)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v6

    invoke-static {v3, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    :cond_0
    invoke-static {v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->isSystemUid(I)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    const-string v8, "mediaserver"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const/16 v6, 0x3e8

    :cond_1
    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v7

    if-eq v6, v7, :cond_2

    new-instance v7, Lcom/android/internal/os/BatterySipper;

    iget-object v8, v5, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    new-instance v9, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;

    invoke-direct {v9, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;-><init>(I)V

    const-wide/16 v10, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    invoke-virtual {v7, v5}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    iget-object v8, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    iput-object v8, v7, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    iget-object v5, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    iput-object v5, v7, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object v5, v7

    :cond_2
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v7

    if-gez v7, :cond_3

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatterySipper;

    invoke-virtual {v6, v5}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    iget-object v7, v6, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    if-nez v7, :cond_4

    iget-object v7, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    if-eqz v7, :cond_4

    iput-object v7, v6, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    :cond_4
    iget-object v7, v6, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    if-eqz v7, :cond_5

    array-length v7, v7

    goto :goto_1

    :cond_5
    move v7, v3

    :goto_1
    iget-object v8, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    if-eqz v8, :cond_6

    array-length v8, v8

    goto :goto_2

    :cond_6
    move v8, v3

    :goto_2
    if-lez v8, :cond_9

    add-int v9, v7, v8

    new-array v9, v9, [Ljava/lang/String;

    if-lez v7, :cond_7

    iget-object v10, v6, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    invoke-static {v10, v3, v9, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    iget-object v5, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    invoke-static {v5, v3, v9, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v9, v6, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    goto :goto_3

    :cond_8
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p0

    :goto_4
    if-ge v3, p0, :cond_b

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatterySipper;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_b
    new-instance p0, Lcom/android/server/power/cno;

    invoke-direct {p0}, Lcom/android/server/power/cno;-><init>()V

    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1
.end method

.method static synthetic cno(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->dJ:Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;

    return-object p0
.end method

.method static synthetic cno(Lcom/android/server/power/OnePlusStandbyAnalyzer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Ia(Z)V

    return-void
.end method

.method static synthetic dma(Lcom/android/server/power/OnePlusStandbyAnalyzer;)F
    .locals 0

    iget p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->WI:F

    return p0
.end method

.method private dma(Ljava/io/PrintWriter;)V
    .locals 6

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string p0, "**** Standby Diagnosis Config info ****"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# Config ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->Hla:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], ["

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->oL:F

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vL:F

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->Ila:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->pL:F

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->wL:F

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->Jla:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->qL:I

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->xL:I

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->Kla:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->rL:F

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->yL:F

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->Lla:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sL:F

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zL:F

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->Mla:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->tL:F

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->AL:F

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->Nla:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->uL:F

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->Ola:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->BL:J

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->Pla:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->CL:F

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->Qla:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DL:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private dma(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$igw;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    move v0, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$igw;

    invoke-virtual {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$igw;->bd()Z

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$igw;

    invoke-virtual {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$igw;->_c()Z

    move-result v1

    if-ne v1, v2, :cond_0

    move p0, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "list == null"

    invoke-static {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return p0
.end method

.method private doSysRq(C)V
    .locals 1

    :try_start_0
    new-instance p0, Ljava/io/FileWriter;

    const-string v0, "/proc/sysrq-trigger"

    invoke-direct {p0, v0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/io/FileWriter;->write(I)V

    invoke-virtual {p0}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "OPSA"

    const-string v0, "Failed to write to /proc/sysrq-trigger"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private gck(Ljava/io/PrintWriter;)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "**** Standby Diagnosis Assist info (WL/KWL) ****"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->yI:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic gck(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->RI:Z

    return p0
.end method

.method private gck(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$igw;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    move v0, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$igw;

    invoke-virtual {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$igw;->bd()Z

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$igw;

    invoke-virtual {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$igw;->cd()Z

    move-result v1

    if-ne v1, v2, :cond_0

    move p0, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "list == null"

    invoke-static {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return p0
.end method

.method private gwm(Ljava/io/PrintWriter;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "**** Standby Diagnosis WL info ****"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->pJ:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->pJ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->pJ:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$bio;

    invoke-virtual {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$bio;->Yc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private gwm(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "After Calcu # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private ibl(Ljava/io/PrintWriter;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "**** Telephony Abnormal Counting Info ****"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->LJ:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->LJ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->LJ:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;

    invoke-virtual {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->ed()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private ibl(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$bio;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "After Calcu # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$bio;

    invoke-virtual {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$bio;->Zc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic igw(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Io()Z

    move-result p0

    return p0
.end method

.method private static isSystemUid(I)Z
    .locals 1

    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2710

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic kth(Lcom/android/server/power/OnePlusStandbyAnalyzer;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->II:J

    return-wide v0
.end method

.method static synthetic kth(Lcom/android/server/power/OnePlusStandbyAnalyzer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Ha(Z)V

    return-void
.end method

.method public static myLog(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OPSA"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private obl(Ljava/util/List;)Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;",
            ">;)",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->UJ:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;

    iget-object v4, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->mName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;

    :cond_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " st-KWL:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;

    invoke-virtual {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method static synthetic oif(Lcom/android/server/power/OnePlusStandbyAnalyzer;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->pI:J

    return-wide v0
.end method

.method private oif(Ljava/io/PrintWriter;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "**** Standby Diagnosis pkt info ****"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->TJ:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->TJ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->TJ:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$kth;

    invoke-virtual {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$kth;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private oif(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "After Calcu # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private oxb(Ljava/util/List;)Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;",
            ">;)",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;"
        }
    .end annotation

    if-eqz p1, :cond_2

    new-instance v0, Lcom/android/server/power/oif;

    invoke-direct {v0, p0}, Lcom/android/server/power/oif;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_2

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;

    iget-object v0, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->mType:Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->Wna:Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    if-eq v0, v1, :cond_1

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;

    iget-object v0, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->mType:Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->Xna:Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method

.method private oxb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/16 p0, 0x400

    new-array p0, p0, [B

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#### ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    :cond_0
    invoke-virtual {v0, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v1}, Ljava/lang/String;-><init>([BII)V

    const-string v1, "OPSA"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, p1

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    const-string p0, "**** Exceed read timeout, force exit ***"

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object p1, v0

    goto :goto_4

    :catch_0
    move-exception p0

    move-object p1, v0

    goto :goto_0

    :catch_1
    move-exception p0

    move-object p1, v0

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    :goto_0
    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "**** Failed to read, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_2

    :goto_1
    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_3
    move-exception p0

    :goto_2
    :try_start_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "**** File not found, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p1, :cond_2

    goto :goto_1

    :catch_4
    :cond_2
    :goto_3
    return-void

    :goto_4
    if-eqz p1, :cond_3

    :try_start_6
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    :cond_3
    throw p0
.end method

.method static synthetic qbh(Lcom/android/server/power/OnePlusStandbyAnalyzer;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->_I:J

    return-wide v0
.end method

.method private qbh(Ljava/io/PrintWriter;)V
    .locals 4

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "**** Standby Diagnosis KWL info ****"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->tJ:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->tJ:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->tJ:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;

    iget-object v2, v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->mName:Ljava/lang/String;

    const-string v3, "PowerManagerService.WakeLocks"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->tJ:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;

    invoke-virtual {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    :cond_0
    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private qbh(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$zta;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "After Calcu # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic rtg(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->xK:Z

    return p0
.end method

.method static synthetic rtg(Lcom/android/server/power/OnePlusStandbyAnalyzer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->AI:Z

    return p1
.end method

.method private sis(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/BatterySipper;)V
    .locals 8

    iget-wide v0, p2, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const-string v2, "]"

    const-string v3, ", "

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "##[Abn][wakeLockTimeMs] ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    sub-long/2addr v4, v6

    iput-wide v4, p2, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "##[Abn][usagePowerMah] ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    move v0, v1

    :cond_1
    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    sub-double/2addr v4, v6

    iput-wide v4, p2, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "##[Abn][cpuPowerMah] ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    move v0, v1

    :cond_2
    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    sub-double/2addr v4, v6

    iput-wide v4, p2, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "##[Abn][wakeLockPowerMah] ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    move v0, v1

    :cond_3
    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    sub-double/2addr v4, v6

    iput-wide v4, p2, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "##[Abn][mobileRadioPowerMah] ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    move v0, v1

    :cond_4
    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    sub-double/2addr v4, v6

    iput-wide v4, p2, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "##[Abn][wifiPowerMah] ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    move v0, v1

    :cond_5
    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    sub-double/2addr v4, v6

    iput-wide v4, p2, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "##[Abn][bluetoothPowerMah] ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    move v0, v1

    :cond_6
    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    sub-double/2addr v4, v6

    iput-wide v4, p2, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "##[Abn][gpsPowerMah] ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    move v0, v1

    :cond_7
    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    sub-double/2addr v4, v6

    iput-wide v4, p2, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "##[Abn][sensorPowerMah] ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    move v0, v1

    :cond_8
    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    sub-double/2addr v4, v6

    iput-wide v4, p2, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "##[Abn][cameraPowerMah] ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    move v0, v1

    :cond_9
    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    sub-double/2addr v4, v6

    iput-wide v4, p2, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "##[Abn][flashlightPowerMah] ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    move v0, v1

    :cond_a
    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    sub-double/2addr v4, v6

    iput-wide v4, p2, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "##[Abn][totalPowerMah] ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    move v0, v1

    :cond_b
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    sub-double/2addr v1, v3

    iput-wide v1, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    if-eqz v0, :cond_c

    const-string v0, "Abn-Start"

    invoke-direct {p0, v0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    const-string p1, "Abn-End"

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    :cond_c
    return-void
.end method

.method private sis(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    const/4 p0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_2

    sget-object v0, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    aget-object v1, v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "list == null"

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private sis(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$ibl;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    const/4 p0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_2

    if-eqz p3, :cond_0

    const/4 v0, 0x3

    if-lt p0, v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPSA"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "list == null"

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private sis(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sis(Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$oif;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$oif;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->QJ:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->kK:I

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$oif;

    iget v3, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$oif;->mCount:I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$oif;

    if-eqz v1, :cond_0

    iget v1, v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$oif;->mCount:I

    sub-int v4, v3, v1

    goto :goto_1

    :cond_0
    move v1, v0

    move v4, v3

    :goto_1
    iget-object v5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->QJ:Ljava/util/List;

    new-instance v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$oif;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v6, v2, v4, v1, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$oif;-><init>(IIII)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->kK:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->kK:I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->QJ:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->yK:Ljava/util/Comparator;

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-void
.end method

.method static synthetic sis(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zI:Z

    return p0
.end method

.method static synthetic sis(Lcom/android/server/power/OnePlusStandbyAnalyzer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->LI:Z

    return p1
.end method

.method static synthetic ssp(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Co()V

    return-void
.end method

.method static synthetic ssp(Lcom/android/server/power/OnePlusStandbyAnalyzer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->EI:Z

    return p1
.end method

.method static synthetic tsu(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/am/BatteryStatsService;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    return-object p0
.end method

.method private tsu(Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->OJ:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v3, v2, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v3, v2

    :goto_1
    iget-object v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->OJ:Ljava/util/List;

    new-instance v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$ibl;

    invoke-direct {v5, v1, v3, v0, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$ibl;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;III)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->OJ:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->AK:Ljava/util/Comparator;

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-void
.end method

.method static synthetic tsu(Lcom/android/server/power/OnePlusStandbyAnalyzer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->WJ:Z

    return p1
.end method

.method private ugm(Ljava/io/PrintWriter;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "**** Standby Diagnosis WR info ****"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->CJ:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->CJ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->CJ:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;

    invoke-virtual {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private ugm(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_1

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;

    iget-object v0, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->mName:Ljava/lang/String;

    const-string v1, "PowerManagerService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "After Calcu # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private vdb(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;

    invoke-virtual {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->dd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private vdb(Ljava/io/PrintWriter;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "**** Standby Diagnosis Wifi Wakeup info ****"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->OJ:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->OJ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->OJ:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$ibl;

    invoke-virtual {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$ibl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic wtn(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Go()V

    return-void
.end method

.method private wtn(Lorg/json/JSONArray;)V
    .locals 11

    const-string v0, "[OnlineConfig], error message:"

    const-string v1, "name"

    const-string v2, "OPSA"

    if-nez p1, :cond_0

    const-string p0, "[OnlineConfig] jsonArray is null"

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_20

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "config_enable"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "value"

    if-eqz v6, :cond_1

    :try_start_1
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->OI:Z

    iget-boolean v6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->OI:Z

    invoke-virtual {p0, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->l(Z)V

    sget-boolean v6, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_1a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[OnlineConfig] Has config for config_enable, updated to "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->OI:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "config_ma_criteria"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->XI:Z

    if-nez v6, :cond_2

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iput v6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->WI:F

    sget-boolean v6, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_1a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[OnlineConfig] Has config for config_ma_criteria, updated to "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->WI:F

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    sget-boolean v6, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_1a

    const-string v6, "[OnlineConfig] Has config for config_ma_criteria, but adb-configuration is set, so skip this way"

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "config_min_period"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->pI:J

    sget-boolean v6, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_1a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[OnlineConfig] Has config for config_min_period, updated to "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->pI:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_4
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "config_enable_self_diagnosis"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->eJ:Z

    sget-boolean v6, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_1a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[OnlineConfig] Has config for config_enable_self_diagnosis, updated to "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->eJ:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "config_uwl_criteria"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->nla:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {p0, v8, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta(Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V

    sget-boolean v8, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    if-eqz v8, :cond_1a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig] Has config for config_uwl_criteria, updated to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "config_uwl_criteria_minor"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->Rla:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {p0, v8, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta(Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V

    sget-boolean v8, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    if-eqz v8, :cond_1a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig] Has config for config_uwl_criteria_minor, updated to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "config_kwl_criteria"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->ola:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {p0, v8, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta(Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V

    sget-boolean v8, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    if-eqz v8, :cond_1a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig] Has config for config_kwl_criteria, updated to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "config_kwl_criteria_minor"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->Sla:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {p0, v8, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta(Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V

    sget-boolean v8, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    if-eqz v8, :cond_1a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig] Has config for config_kwl_criteria_minor, updated to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "config_wr_criteria"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->pla:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    int-to-float v9, v6

    invoke-virtual {p0, v8, v9}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta(Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V

    sget-boolean v8, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    if-eqz v8, :cond_1a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig] Has config for config_wr_criteria, updated to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "config_wr_criteria_minor"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->Tla:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    int-to-float v9, v6

    invoke-virtual {p0, v8, v9}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta(Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V

    sget-boolean v8, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    if-eqz v8, :cond_1a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig] Has config for config_wr_criteria_minor, updated to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "config_sb_criteria"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->qla:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {p0, v8, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta(Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V

    sget-boolean v8, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    if-eqz v8, :cond_1a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig] Has config for config_sb_criteria, updated to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "config_sb_criteria_minor"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->Ula:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {p0, v8, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta(Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V

    sget-boolean v8, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    if-eqz v8, :cond_1a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig] Has config for config_sb_criteria_minor, updated to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_d
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "config_sn_criteria"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->_la:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {p0, v8, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta(Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V

    sget-boolean v8, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    if-eqz v8, :cond_1a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig] Has config for config_sn_criteria, updated to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_e
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "config_sn_criteria_minor"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->ama:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {p0, v8, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta(Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V

    sget-boolean v8, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    if-eqz v8, :cond_1a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig] Has config for config_sn_criteria_minor, updated to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_f
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "config_unacc_criteria"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->rla:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {p0, v8, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta(Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V

    sget-boolean v8, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    if-eqz v8, :cond_1a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig] Has config for config_unacc_criteria, updated to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_10
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "config_unacc_criteria_minor"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->Vla:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {p0, v8, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta(Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V

    sget-boolean v8, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    if-eqz v8, :cond_1a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig] Has config for config_unacc_criteria_minor, updated to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_11
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "config_minor_criteria"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->Wla:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {p0, v8, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta(Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V

    sget-boolean v8, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    if-eqz v8, :cond_1a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig] Has config for config_minor_criteria, updated to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_12
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "config_time_slm_sec"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->Xla:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {p0, v8, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta(Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V

    sget-boolean v8, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    if-eqz v8, :cond_1a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig] Has config for config_time_slm_sec, updated to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_13
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "config_sleep_acc_dur_criteria"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->Yla:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {p0, v8, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta(Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V

    sget-boolean v8, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    if-eqz v8, :cond_1a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig] Has config for config_sleep_acc_dur_criteria, updated to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_14
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "config_sleepcount_criteria"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->Zla:Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {p0, v8, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta(Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V

    sget-boolean v8, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    if-eqz v8, :cond_1a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig] Has config for config_sleepcount_criteria, updated to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_15
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "qxdm_enable"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->k(Z)V

    sget-boolean v8, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    if-eqz v8, :cond_1a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig] Has config for qxdm_enable, updated to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_16
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "qxdm_min_grab_period"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zgw(J)V

    sget-boolean v6, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_1a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[OnlineConfig] Has config for qxdm_min_grab_period, updated to "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_17
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "qxdm_min_grab_gap"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdb(J)V

    sget-boolean v6, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_1a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[OnlineConfig] Has config for qxdm_min_grab_gap, updated to "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_18
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "middle_check"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->obl(J)V

    sget-boolean v6, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_1a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[OnlineConfig] Has config for middle_check, updated to "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_19
    sget-boolean v6, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_1a

    const-string v6, "[OnlineConfig] No config for updating, no updated"

    goto/16 :goto_1

    :cond_1a
    :goto_3
    const-string v6, "ro.build.beta"

    invoke-static {v6, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    const/4 v8, 0x1

    if-eq v6, v8, :cond_1c

    const-string v6, "ro.build.alpha"

    invoke-static {v6, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v8, :cond_1b

    goto :goto_4

    :cond_1b
    move v8, v3

    :cond_1c
    :goto_4
    if-eqz v8, :cond_1f

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "config_beta_config_enable"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    sget-boolean v6, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_1d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[OnlineConfig] Has config for config_beta_enable, begin "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->OI:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->OI:Z

    iget-boolean v5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->OI:Z

    invoke-virtual {p0, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->l(Z)V

    :cond_1e
    sget-boolean v5, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_1f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] Has config for config_beta_enable, end to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->OI:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    :goto_5
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    return-void
.end method

.method private xm()V
    .locals 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WL=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->oL:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vL:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "] |KWL=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->pL:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->wL:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "] |KW=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->qL:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->xL:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] |SB=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->rL:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->yL:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "] |HUC=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->tL:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->AL:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "] |MINOR="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->uL:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " |RPM_TSLM_SEC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->BL:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " |RPM_SAD="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->CL:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " |RPM_SLPI_SC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DL:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic you(Lcom/android/server/power/OnePlusStandbyAnalyzer;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->jK:F

    return p1
.end method

.method static synthetic you(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/power/OnePlusStandbyAnalyzer$ssp;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->wK:Lcom/android/server/power/OnePlusStandbyAnalyzer$ssp;

    return-object p0
.end method

.method private you(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$igw;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$igw;

    invoke-virtual {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$igw;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;

    invoke-virtual {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method private you(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$igw;",
            ">;)V"
        }
    .end annotation

    const-string p0, "OPSA"

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "list == null"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private you(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$oif;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_1

    if-eqz p3, :cond_0

    if-eqz p3, :cond_1

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "],"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private you(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private you(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object p2, Lcom/android/server/power/zta;->INSTANCE:Lcom/android/server/power/zta;

    invoke-static {p0, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_1

    if-eqz p3, :cond_0

    if-eqz p3, :cond_1

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "],"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private you(Ljava/util/Map;Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->pJ:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v8, v2

    move-wide v4, v2

    goto :goto_1

    :cond_0
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-wide v4, v8

    :goto_1
    iget-object v10, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->pJ:Ljava/util/List;

    new-instance v11, Lcom/android/server/power/OnePlusStandbyAnalyzer$bio;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lcom/android/server/power/OnePlusStandbyAnalyzer$bio;-><init>(Ljava/lang/String;JJJ)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->pJ:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DK:Ljava/util/Comparator;

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-void
.end method

.method private you(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/BatterySipper;)Z
    .locals 2

    iget-object p0, p1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    const/4 v0, -0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    iget-object v1, p2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v0

    :cond_1
    iget-object p1, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-object p2, p2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    const/4 v1, 0x0

    if-eq p1, p2, :cond_2

    return v1

    :cond_2
    if-eq p0, v0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic you(Lcom/android/server/power/OnePlusStandbyAnalyzer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zI:Z

    return p1
.end method

.method private ywr(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatterySipper;

    new-instance v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$tsu;

    invoke-direct {v1, v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$tsu;-><init>(Lcom/android/internal/os/BatterySipper;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p0, "## fetal error, ori_list == null"

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method

.method private ywr(Ljava/io/PrintWriter;)V
    .locals 7

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "**** Standby Diagnosis info ****"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->wI:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->values()[Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->wI:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# Info ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], ["

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic ywr(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ZI:Z

    return p0
.end method

.method private zgw(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;

    invoke-virtual {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/power/OnePlusStandbyAnalyzer;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->iK:F

    return p1
.end method

.method static synthetic zta(Lcom/android/server/power/OnePlusStandbyAnalyzer;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->hK:I

    return p1
.end method

.method static synthetic zta(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p1, p0}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p0

    return p0
.end method

.method private zta(Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;)J
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->KJ:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->KJ:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;

    iget-object v3, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->mType:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->Ena:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->KJ:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;

    iget-object v3, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->mType:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    if-eq v3, p1, :cond_1

    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->KJ:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;

    iget-wide v3, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->gI:J

    cmp-long v3, v0, v3

    if-gez v3, :cond_1

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->KJ:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;

    iget-wide v0, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->gI:J

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method static synthetic zta(Lcom/android/server/power/OnePlusStandbyAnalyzer;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->fK:J

    return-wide p1
.end method

.method static synthetic zta(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/DeviceIdleController;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/power/OnePlusStandbyAnalyzer;Lcom/android/server/power/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;)Lcom/android/server/power/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->FI:Lcom/android/server/power/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;

    return-object p1
.end method

.method private zta(Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p1, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method private zta(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " |T="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " |uid="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    const/4 v2, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " |sPower="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " |wLTMs="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p2, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " |pkg="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p1}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v3, p2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v2

    :cond_1
    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " |pkgWHD="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " |TPower="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " |pt="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v2

    div-double/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private zta(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$igw;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p1, 0x0

    const-string v0, ";"

    if-eqz p2, :cond_1

    move v1, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_3

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-eq p1, p2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private zta(Landroid/telephony/ServiceState;)V
    .locals 3

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const-string p1, "[ServiceState] STATE_UNKNOWN"

    invoke-static {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vK:Z

    if-eqz p1, :cond_4

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->xK:Z

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->wK:Lcom/android/server/power/OnePlusStandbyAnalyzer$ssp;

    invoke-virtual {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$ssp;->stop()V

    goto :goto_2

    :cond_0
    const-string p1, "[ServiceState] STATE_POWER_OFF"

    invoke-static {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vK:Z

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_1
    const-string p1, "[ServiceState] STATE_EMERGENCY_ONLY"

    invoke-static {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vK:Z

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_2
    const-string p1, "[ServiceState] STATE_OUT_OF_SERVICE"

    invoke-static {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vK:Z

    if-eqz p1, :cond_4

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->xK:Z

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->wK:Lcom/android/server/power/OnePlusStandbyAnalyzer$ssp;

    invoke-virtual {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$ssp;->start()V

    goto :goto_2

    :cond_3
    const-string p1, "[ServiceState] STATE_IN_SERVICE"

    invoke-static {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vK:Z

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method static synthetic zta(Lcom/android/server/power/OnePlusStandbyAnalyzer;Landroid/telephony/ServiceState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->oxb(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta(Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->you(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/power/OnePlusStandbyAnalyzer;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->wtn(Lorg/json/JSONArray;)V

    return-void
.end method

.method private zta(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;",
            ">;)V"
        }
    .end annotation

    const-string p0, "OPSA"

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "list == null"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private zta(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatterySipper;

    iget-wide v5, v4, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    add-double/2addr v0, v5

    if-eqz p3, :cond_0

    if-eqz p3, :cond_1

    const/16 v5, 0xa

    if-ge v3, v5, :cond_1

    :cond_0
    invoke-direct {p0, p1, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "["

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], accumulated sum-up totalPowerMah="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    const-string p0, "sippers == null or sippers.size() == 0"

    :goto_1
    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    return-void
.end method

.method private zta(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ywr(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->rK:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->qK:Lcom/android/internal/os/BatterySipper;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sK:D

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "## sippers size[start, end]=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->rK:Ljava/util/List;

    if-eqz p2, :cond_5

    const/4 p2, 0x0

    move v0, p2

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->rK:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->rK:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatterySipper;

    iget-object v3, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v4, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v3, v4, :cond_0

    iput-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->qK:Lcom/android/internal/os/BatterySipper;

    :cond_0
    move v3, p2

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatterySipper;

    invoke-direct {p0, v2, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->you(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/BatterySipper;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, v4, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/BatterySipper;)V

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-nez v1, :cond_3

    const-string v3, "No-Match"

    invoke-direct {p0, v3, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    :cond_3
    iget-wide v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sK:D

    iget-wide v5, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    add-double/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sK:D

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->rK:Ljava/util/List;

    new-instance p2, Lcom/android/server/power/ssp;

    invoke-direct {p2, p0}, Lcom/android/server/power/ssp;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_3

    :cond_5
    const-string p0, "## fetal error, mStandby_Sipper_List == null"

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_6
    const-string p0, "## one of sippers is null, can\'t calculate just return."

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    return-void
.end method

.method private zta(Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->JJ:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v3, v2, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v3, v2

    :goto_1
    iget-object v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->JJ:Ljava/util/List;

    new-instance v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$igw;

    invoke-direct {v5, v1, v3, v0, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$igw;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;III)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic zta(Lcom/android/server/power/OnePlusStandbyAnalyzer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vK:Z

    return p1
.end method


# virtual methods
.method public checkIfHitBatteryLowLocked(Landroid/content/Intent;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->uI:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, -0x1

    const-string v1, "level"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_4

    iget v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mCurrentBatteryLevel:I

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->QI:I

    iput p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mCurrentBatteryLevel:I

    iget p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mCurrentBatteryLevel:I

    const/4 v0, 0x5

    if-gt p1, v0, :cond_4

    iget v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->QI:I

    if-le v0, p1, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->UI:J

    sub-long/2addr v0, v2

    iget-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mScreenOn:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m1stLightIdle:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ZI:Z

    if-eqz p1, :cond_1

    iget-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->_I:J

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->pI:J

    :goto_0
    cmp-long p1, v0, v2

    if-lez p1, :cond_4

    iget p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->VI:I

    if-lez p1, :cond_4

    iget-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ZI:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bJ:I

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->TI:I

    iget v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mCurrentBatteryLevel:I

    sub-int/2addr p1, v2

    :goto_1
    sget-boolean v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[opbugreportlite] Doesn\'t leaving DeepIdle, but Battery Low, period = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " (ms), batteryLevel = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mCurrentBatteryLevel:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", levelDrop = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", start to evaulate the battery-drain."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OPSA"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->leavingDeepIdleLocked(Z)V

    :cond_4
    return-void
.end method

.method public cno(Ljava/io/PrintWriter;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "**** Standby Diagnosis WUA info ****"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->QJ:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->QJ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->QJ:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$oif;

    invoke-virtual {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$oif;->Yc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public dumpStandbyStats(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->dma(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ywr(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gwm(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->qbh(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ugm(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cno(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdb(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->oif(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gck(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bvj(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ibl(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public enteringDeepIdleLocked()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter First LightIdle, schedule to SNAPSHOT in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->fJ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms, now="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPSA"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->dJ:Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;

    new-instance v1, Lcom/android/server/power/bio;

    invoke-direct {v1, p0}, Lcom/android/server/power/bio;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    iget-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->fJ:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public fd()Z
    .locals 2

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "oem_join_stability_plan_settings"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public g(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m1stLightIdle:Z

    return-void
.end method

.method public gck(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    :cond_0
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result p2

    const/4 v2, -0x1

    if-eq p2, v2, :cond_2

    new-instance v2, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v2, v1, v6, p2}, Ljava/lang/String;-><init>([BII)V

    const-string p2, "OPSA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] WiFi WakeUp content=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->dK:Ljava/util/regex/Pattern;

    invoke-virtual {p2, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Matched...."

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->Zna:Lcom/android/server/power/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->_na:Lcom/android/server/power/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-virtual {p2, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->aoa:Lcom/android/server/power/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->boa:Lcom/android/server/power/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x5

    invoke-virtual {p2, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->coa:Lcom/android/server/power/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x6

    invoke-virtual {p2, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->ns:Lcom/android/server/power/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x7

    invoke-virtual {p2, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->doa:Lcom/android/server/power/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->eoa:Lcom/android/server/power/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x9

    invoke-virtual {p2, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->foa:Lcom/android/server/power/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xa

    invoke-virtual {p2, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->goa:Lcom/android/server/power/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xb

    invoke-virtual {p2, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->hoa:Lcom/android/server/power/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xc

    invoke-virtual {p2, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->ioa:Lcom/android/server/power/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xd

    invoke-virtual {p2, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->joa:Lcom/android/server/power/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xe

    invoke-virtual {p2, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->koa:Lcom/android/server/power/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xf

    invoke-virtual {p2, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->loa:Lcom/android/server/power/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x10

    invoke-virtual {p2, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->moa:Lcom/android/server/power/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p2, "Can\'t matched...."

    invoke-static {p2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x1388

    cmp-long p2, v6, v8

    if-ltz p2, :cond_0

    const-string p0, "**** Exceed read timeout, force exit ***"

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception p0

    move-object v2, v3

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v2, v3

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v3, v2

    goto :goto_5

    :catch_2
    move-exception p0

    :goto_1
    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "**** Failed to read, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_3

    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_3
    move-exception p0

    :goto_3
    :try_start_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "**** File not found, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_3

    goto :goto_2

    :catch_4
    :cond_3
    :goto_4
    return-object v0

    :goto_5
    if-eqz v3, :cond_4

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    :cond_4
    throw p0
.end method

.method public gd()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Do()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Ia(Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mQXDM_Ready_Check_Count ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->KI:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->KI:I

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->KI:I

    const-string v0, "re-schedule 5 sec later to check again."

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->dJ:Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;

    const/16 v0, 0x3f0

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->sendEmptyMessageDelayed(IJ)V

    goto :goto_0

    :cond_1
    const-string p0, "reach maximum checking, abort re-schedule"

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public h(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ZI:Z

    return-void
.end method

.method public hd()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ux:Lcom/oneplus/os/IOnePlusExService;

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ux:Lcom/oneplus/os/IOnePlusExService;

    const-string v2, "battery_outlier"

    invoke-interface {p0, v2}, Lcom/oneplus/os/IOnePlusExService;->dumpLightBugreport(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[opbugreportlite] generate log spends "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "got exception while reporting:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OPSA"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public declared-synchronized i(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "OPSA"

    const-string v1, "======BE_IMFORMED_SCREEN_ON======"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zI:Z

    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->dJ:Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;

    const/16 v2, 0x3f2

    invoke-virtual {v1, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->removeMessages(I)V

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->Sna:Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;->vna:Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;->wna:Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;

    :goto_0
    invoke-virtual {p0, v0, v1, p1, v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta(ZLcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized j(Z)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->Wna:Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;->sna:Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta(ZLcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public jd()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->JI:J

    return-wide v0
.end method

.method public k(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mQXDMGrabMechanism : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->CI:Z

    return-void
.end method

.method public kd()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->II:J

    return-wide v0
.end method

.method public declared-synchronized l(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "OPSA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update reporting-flag to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->BI:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public ld()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->HI:J

    return-wide v0
.end method

.method public leavingDeepIdleLocked(Z)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->uI:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->UI:J

    sget v5, Lcom/android/server/power/OnePlusStandbyAnalyzer;->TK:I

    int-to-long v5, v5

    cmp-long v5, v3, v5

    const-string v6, "OPSA"

    if-nez v5, :cond_1

    sget-boolean p1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_7

    const-string p1, "[opbugreportlite] Leaving DeepIdle, but reset, so skip"

    :goto_0
    invoke-static {v6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_1
    sub-long/2addr v1, v3

    iget-boolean v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m1stLightIdle:Z

    if-eqz v3, :cond_6

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ZI:Z

    if-eqz p1, :cond_2

    iget-wide v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->_I:J

    goto :goto_1

    :cond_2
    iget-wide v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->pI:J

    :goto_1
    cmp-long p1, v1, v3

    if-lez p1, :cond_6

    :cond_3
    iget p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->VI:I

    if-lez p1, :cond_7

    iget-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ZI:Z

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bJ:I

    goto :goto_2

    :cond_4
    iget p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->TI:I

    iget v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mCurrentBatteryLevel:I

    sub-int/2addr p1, v0

    :goto_2
    sget-boolean v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[opbugreportlite] Leaving DeepIdle, period = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " (ms), batteryLevel = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mCurrentBatteryLevel:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", levelDrop = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", start to evaulate the battery-drain."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->you(IJ)Z

    move-result v0

    goto :goto_3

    :cond_6
    sget-boolean p1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_7

    const-string p1, "[opbugreportlite] Leaving DeepIdle, too short, so skip"

    goto :goto_0

    :cond_7
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->i(Z)V

    return-void
.end method

.method public md()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->CI:Z

    return p0
.end method

.method public nd()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->GI:J

    return-wide v0
.end method

.method public notifyEnterDeepIdle()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->WJ:Z

    return-void
.end method

.method public obl(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mMiddleCheckPeriod : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iput-wide p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->II:J

    goto :goto_0

    :cond_0
    const-string p1, "Opps, Update mMiddleCheckPeriod to negative value, disable middle_check mechanism"

    invoke-static {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->II:J

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->dJ:Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;

    const/16 p1, 0x3f2

    invoke-virtual {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->removeMessages(I)V

    :goto_0
    return-void
.end method

.method public od()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DI:Z

    return p0
.end method

.method public pd()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->uJ:J

    return-wide v0
.end method

.method public qd()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vI:Z

    return p0
.end method

.method public rd()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->AI:Z

    return p0
.end method

.method public resetTimeofDeepIdleStart()V
    .locals 2

    sget v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->TK:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->UI:J

    return-void
.end method

.method public sd()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zI:Z

    return p0
.end method

.method public setInBatteryStatsService(Lcom/android/server/am/BatteryStatsService;)V
    .locals 3

    const-string v0, "OPSA"

    const-string v1, "setIn BatteryStatsService, and init rest part at this moment"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    new-instance p1, Lcom/android/server/power/you;

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "/data/system/power/diagnosis_standby.txt"

    const/16 v2, 0x28

    invoke-direct {p1, v1, v2, v0}, Lcom/android/server/power/you;-><init>(Ljava/lang/String;ILandroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->hJ:Lcom/android/server/power/you;

    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p1}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance p1, Lcom/android/internal/os/BatteryStatsHelper;

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, v1}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    new-instance p1, Lcom/android/server/power/OnePlusStandbyAnalyzer$gck;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gck;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;Lcom/android/server/power/bio;)V

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->uK:Lcom/android/server/power/OnePlusStandbyAnalyzer$gck;

    new-instance p1, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;

    invoke-direct {p1, p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->dJ:Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;

    invoke-direct {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Eo()V

    const-string p1, "ro.board.platform"

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "sdm845"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "msmnile"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->XJ:Z

    sget-object p1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gL:Ljava/lang/String;

    sput-object p1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->fL:Ljava/lang/String;

    sget-object p1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->iL:Ljava/lang/String;

    sput-object p1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->hL:Ljava/lang/String;

    sget-object p1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->nL:Ljava/lang/String;

    sput-object p1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mL:Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->UJ:Ljava/util/List;

    const-string v0, "PowerManagerService.WakeLocks"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->UJ:Ljava/util/List;

    const-string v0, "NETLINK"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->VJ:Ljava/util/List;

    const-string v0, "AudioMix"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->VJ:Ljava/util/List;

    const-string v0, "AudioDirectOut"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->VJ:Ljava/util/List;

    const-string v0, "AudioOffload"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->VJ:Ljava/util/List;

    const-string v0, "AudioIn"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Fo()V

    invoke-direct {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Lo()V

    invoke-direct {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Mo()V

    iput-boolean v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->uI:Z

    return-void
.end method

.method public shellCommand(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/os/ShellCommand;)Z
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "copy1"

    const-string v4, "%-25s: %1b"

    const-string v5, "%-25s: %1d ms"

    const-string v6, "abn_reporting"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "disabled"

    const-string v8, "enabled"

    const-string v9, "OPSA"

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v6, :cond_4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    invoke-virtual/range {p3 .. p3}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "abn_reporting: "

    if-eqz v1, :cond_3

    :try_start_1
    sget-boolean v6, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iput-boolean v10, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->OI:Z

    iget-boolean v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->OI:Z

    invoke-virtual {v0, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->l(Z)V

    const-string v0, "abn_reporting is enabled"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v11, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->OI:Z

    iget-boolean v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->OI:Z

    invoke-virtual {v0, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->l(Z)V

    const-string v0, "abn_reporting is disabled"

    goto :goto_0

    :cond_2
    const-string v0, "please enter abn_reporting [enabled|disabled]"

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->OI:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_4
    const-string v6, "standby"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_2
    invoke-virtual/range {p3 .. p3}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    sget-boolean v5, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "standby: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string v5, "set_criteria"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual/range {p3 .. p3}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-lez v5, :cond_6

    iput v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->WI:F

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "config standby criteria to "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->WI:F

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " mA, and not allow update via online-config."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v9, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v10, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->XI:Z

    goto :goto_1

    :cond_6
    const-string v0, "invalid standby criteria."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-string v5, "get_criteria"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current standby criteria : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->WI:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " mA"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_8
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v4, v10

    goto/16 :goto_a

    :catchall_1
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_9
    const-string v6, "fast_report"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_3
    invoke-virtual/range {p3 .. p3}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-string v5, "fast_report: "

    if-eqz v1, :cond_d

    :try_start_4
    sget-boolean v6, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    iput-boolean v10, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ZI:Z

    const-string v0, "fast_report is enabled"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iput-boolean v11, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ZI:Z

    const-string v0, "fast_report is disabled"

    goto :goto_2

    :cond_c
    const-string v0, "please enter fast_report [enabled|disabled]"

    goto :goto_2

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ZI:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_e
    const-string v12, "qxdm"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    :try_start_5
    invoke-virtual/range {p3 .. p3}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_23

    sget-boolean v14, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    if-eqz v14, :cond_f

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "qxdm: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const-string v9, "status"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->fd()Z

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->md()Z

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->od()Z

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->nd()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ld()J

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->pd()J

    move-result-wide v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->jd()J

    move-result-wide v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->kd()J

    move-result-wide v20

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v11, Ljava/util/Formatter;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-wide/from16 v23, v12

    :try_start_6
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v11, v10, v12}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    const/4 v12, 0x2

    new-array v13, v12, [Ljava/lang/Object;

    const-string v25, "BugReportLiteEnable"

    const/4 v12, 0x0

    aput-object v25, v13, v12

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v22, 0x1

    aput-object v1, v13, v22

    invoke-virtual {v11, v4, v13}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v1, 0x2

    new-array v13, v1, [Ljava/lang/Object;

    const-string v1, "standby-abn-reporting"

    aput-object v1, v13, v12

    iget-boolean v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->OI:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v12, 0x1

    aput-object v1, v13, v12

    invoke-virtual {v11, v4, v13}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v12, 0x2

    new-array v13, v12, [Ljava/lang/Object;

    aput-object v6, v13, v1

    iget-boolean v0, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ZI:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v13, v1

    invoke-virtual {v11, v4, v13}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/Object;

    const-string v1, "qxdm-grab"

    aput-object v1, v6, v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v6, v3

    invoke-virtual {v11, v4, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const-string v1, "qxdm-under-recording"

    aput-object v1, v3, v0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v6, 0x1

    aput-object v1, v3, v6

    invoke-virtual {v11, v4, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const-string v1, "minGrabGap"

    aput-object v1, v3, v0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v11, v5, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const-string v1, "latestStandbyStart"

    aput-object v1, v3, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v11, v5, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const-string v1, "minGrabPeriod"

    aput-object v1, v3, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v11, v5, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const-string v1, "lastGrabTimeStamp"

    aput-object v1, v3, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v11, v5, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const-string v1, "middleCheckPeriod"

    aput-object v1, v3, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v11, v5, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "now"

    aput-object v3, v1, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v1, v3

    invoke-virtual {v11, v5, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_4

    :cond_10
    move-wide/from16 v23, v12

    const-string v4, "time_reset"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_12

    invoke-virtual {v0, v5, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ugm(J)V

    const-string v0, "reset lastGrabTimeStamp to 0"

    :goto_3
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_11
    :goto_4
    const/4 v4, 0x1

    goto/16 :goto_9

    :cond_12
    const-string v4, "time_set"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v4, :cond_1a

    :try_start_7
    invoke-virtual/range {p3 .. p3}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    const-string v3, "last"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    const-string v4, " ms"

    if-eqz v3, :cond_14

    :try_start_8
    invoke-virtual/range {p3 .. p3}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v3, v7, v5

    if-gez v3, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "input an invalid time(ms):"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_13
    invoke-virtual {v0, v7, v8}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ugm(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set lastGrabTimeStamp to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_14
    const-string v3, "min"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual/range {p3 .. p3}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v3, v7, v5

    if-gez v3, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "input an invalid minGrabPeriod(ms):"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_15
    invoke-virtual {v0, v7, v8}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zgw(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set minGrabPeriod to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_16
    const-string v3, "gap"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual/range {p3 .. p3}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v3, v7, v5

    if-gez v3, :cond_17

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "input an invalid minGrabGap(ms):"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_17
    invoke-virtual {v0, v7, v8}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdb(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set minGrabGap to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_18
    const-string v3, "middle"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual/range {p3 .. p3}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v3, v7, v5

    if-gez v3, :cond_19

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "input an negative middleCheck(ms):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ms, so disable this feature"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_6
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    :cond_19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set middleCheck to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :goto_7
    invoke-virtual {v0, v7, v8}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->obl(J)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto/16 :goto_4

    :catch_0
    move-exception v0

    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    :cond_1a
    const-string v4, "grab"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-virtual/range {p3 .. p3}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->k(Z)V

    const-string v0, "config QXDMGrabMechanism to true"

    goto/16 :goto_3

    :cond_1b
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->k(Z)V

    const-string v0, "config QXDMGrabMechanism to false"

    goto/16 :goto_3

    :cond_1c
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-virtual/range {p3 .. p3}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    const-string v3, "short"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const-string v1, "qxdm short is enabled(20sec auto-stop)"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->j(Z)V

    goto/16 :goto_9

    :cond_1d
    const/4 v4, 0x1

    const-string v3, "normal"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const-string v1, "qxdm normal is enabled(2 min auto-stop)"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->j(Z)V

    goto :goto_9

    :cond_1e
    const/4 v4, 0x1

    const-string v5, "clean"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    const-string v1, "Try to clean up the latest QXDM logs under sdcard..."

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "net.oneplus.powercontroller.intent.CLEAN_QXDM"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.oem.oemlogkit"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_9

    :cond_1f
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    const-string v5, "persist.sys.power_mask"

    if-eqz v0, :cond_20

    :try_start_a
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "data"

    :goto_8
    invoke-static {v5, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_20
    const-string v0, "copy2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "copy2"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "service"

    goto :goto_8

    :cond_21
    const-string v0, "copy3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "ims"

    goto :goto_8

    :cond_22
    const-string v0, "please enter qxdm [enabled|disabled]"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_9

    :catchall_3
    move-exception v0

    goto :goto_b

    :cond_23
    move v4, v10

    move-wide/from16 v23, v12

    :cond_24
    :goto_9
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_a
    move v12, v4

    goto :goto_c

    :catchall_4
    move-exception v0

    move-wide/from16 v23, v12

    :goto_b
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_25
    move v12, v11

    :goto_c
    return v12
.end method

.method public td()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zI:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->uJ:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->II:J

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->Ona:Lcom/android/server/power/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->fL:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta(Lcom/android/server/power/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->Ona:Lcom/android/server/power/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->hL:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->you(Lcom/android/server/power/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->JJ:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gck(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Middle Check : Observe aosd / vmin no increase !"

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Ho()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "###### [judgeRPM] :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->Dna:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->Sna:Lcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;->tna:Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta(ZLcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;Z)V

    goto :goto_0

    :cond_0
    const-string p0, "Middle Check : Nothing special..."

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public ud()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->AI:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Do()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->No()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->AI:Z

    goto :goto_1

    :cond_0
    const-string p0, "oops, although diagnose as normal, but QXDM log is not ready, no way to clean it :("

    goto :goto_0

    :cond_1
    const-string p0, "No need to cleanup due to no qxdm generation at this round."

    :goto_0
    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public ugm(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reset mLastQXDMGrabTimeStamp to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iput-wide p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->JI:J

    return-void
.end method

.method public updateScreenStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->mScreenOn:Z

    return-void
.end method

.method public vd()V
    .locals 1

    const-string v0, "triggering clean-up QXDM trash under vendor partition directly"

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->AI:Z

    const-string p0, "persist.sys.qxdm_clean_old"

    const-string v0, "1"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public vdb(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mQXDMGrabGapAfterStandbyStart : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iput-wide p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->HI:J

    :cond_0
    return-void
.end method

.method public wd()V
    .locals 3

    const-string v0, "OPSA"

    const-string v1, "Start to copy qxdm log to sdcard"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "persist.vendor.qxdm.copylog"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->dJ:Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;

    const/16 v0, 0x3f0

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->sendEmptyMessageDelayed(IJ)V

    return-void
.end method

.method public wtn(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    :cond_0
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_3

    new-instance v1, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v1, v0, v5, p2}, Ljava/lang/String;-><init>([BII)V

    iget-boolean p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->XJ:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->_J:Ljava/util/regex/Pattern;

    :goto_0
    invoke-virtual {p2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->_J:Ljava/util/regex/Pattern;

    goto :goto_0

    :goto_1
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Matched...."

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->Dna:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-interface {p1, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->Cna:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    const-string p2, "Can\'t matched...."

    invoke-static {p2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/16 v7, 0x1388

    cmp-long p2, v5, v7

    if-ltz p2, :cond_0

    const-string p0, "**** Exceed read timeout, force exit ***"

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_6

    :catchall_0
    move-exception p0

    goto :goto_7

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v1, v2

    goto :goto_5

    :catchall_1
    move-exception p0

    move-object v2, v1

    goto :goto_7

    :catch_2
    move-exception p0

    :goto_3
    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "**** Failed to read, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_4

    :goto_4
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_6

    :catch_3
    move-exception p0

    :goto_5
    :try_start_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "**** File not found, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_4

    goto :goto_4

    :catch_4
    :cond_4
    :goto_6
    return-object p1

    :goto_7
    if-eqz v2, :cond_5

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    :cond_5
    throw p0
.end method

.method public you(Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$kth;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$kth;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zK:Ljava/util/Comparator;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public you(Lcom/android/server/power/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;IJJJJ)V
    .locals 14

    move-object v0, p0

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->START:Lcom/android/server/power/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    move-object v3, p1

    if-ne v3, v1, :cond_0

    iget-object v0, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->SJ:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v13, Lcom/android/server/power/OnePlusStandbyAnalyzer$kth;

    move-object v2, v13

    move-object v3, p1

    move/from16 v4, p2

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    invoke-direct/range {v2 .. v12}, Lcom/android/server/power/OnePlusStandbyAnalyzer$kth;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;IJJJJ)V

    :goto_0
    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->SJ:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$kth;

    if-eqz v2, :cond_1

    move-object v3, p1

    move/from16 v4, p2

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/power/OnePlusStandbyAnalyzer$kth;->zta(Lcom/android/server/power/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;IJJJJ)V

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->SJ:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v13, Lcom/android/server/power/OnePlusStandbyAnalyzer$kth;

    move-object v2, v13

    move-object v3, p1

    move/from16 v4, p2

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    invoke-direct/range {v2 .. v12}, Lcom/android/server/power/OnePlusStandbyAnalyzer$kth;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;IJJJJ)V

    goto :goto_0

    :goto_1
    return-void
.end method

.method public you(Lcom/android/server/power/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Ljava/lang/String;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->START:Lcom/android/server/power/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    if-ne v1, v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->KJ:Ljava/util/List;

    :cond_0
    const/4 v2, 0x0

    const/16 v3, 0x400

    new-array v3, v3, [B

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    move-object/from16 v5, p2

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    :cond_1
    invoke-virtual {v4, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v7, -0x1

    if-eq v2, v7, :cond_a

    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v3, v8, v2}, Ljava/lang/String;-><init>([BII)V

    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cK:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/regex/Pattern;

    invoke-virtual {v10, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " Matched...."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-boolean v11, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->XJ:Z

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x4

    if-eqz v11, :cond_2

    invoke-virtual {v10, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x5

    invoke-virtual {v10, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v14, v12

    goto :goto_1

    :cond_2
    invoke-virtual {v10, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x1

    invoke-virtual {v10, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    :goto_1
    sget-object v12, Lcom/android/server/power/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->START:Lcom/android/server/power/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    if-ne v1, v12, :cond_3

    iget-object v12, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->KJ:Ljava/util/List;

    new-instance v15, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v16, v9

    check-cast v16, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    move-object v9, v15

    move-object v15, v9

    move-object/from16 v17, v11

    move-object/from16 v18, v14

    move-object/from16 v19, v13

    move-object/from16 v20, v10

    invoke-direct/range {v15 .. v20}, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_3
    sget-object v12, Lcom/android/server/power/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->Ona:Lcom/android/server/power/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    if-ne v1, v12, :cond_5

    move v12, v8

    :goto_2
    iget-object v15, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->KJ:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v12, v15, :cond_8

    iget-object v15, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->KJ:Ljava/util/List;

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;

    iget-object v15, v15, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->mType:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    if-ne v15, v8, :cond_4

    iget-object v8, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->KJ:Ljava/util/List;

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;

    invoke-virtual {v8, v11, v14, v13, v10}, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->zta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x0

    goto :goto_2

    :cond_5
    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->END:Lcom/android/server/power/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    if-ne v1, v8, :cond_8

    const/4 v8, 0x0

    :goto_3
    iget-object v12, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->KJ:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v8, v12, :cond_8

    iget-object v12, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->KJ:Ljava/util/List;

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;

    iget-object v12, v12, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->mType:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    if-ne v12, v15, :cond_6

    iget-object v12, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->KJ:Ljava/util/List;

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;

    invoke-virtual {v12, v11, v14, v13, v10}, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;->zta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " CAN NOT Matched...."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    :cond_8
    :goto_4
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v5

    const-wide/16 v9, 0x1388

    cmp-long v2, v7, v9

    if-ltz v2, :cond_1

    const-string v0, "**** Exceed read timeout, force exit ***"

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_a
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_9

    :catchall_0
    move-exception v0

    goto :goto_a

    :catch_0
    move-exception v0

    move-object v2, v4

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v2, v4

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v2, v4

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v4, v2

    goto :goto_a

    :catch_3
    move-exception v0

    :goto_5
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "**** Failed, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_b

    :goto_6
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_9

    :catch_4
    move-exception v0

    :goto_7
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "**** Failed to read, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    if-eqz v2, :cond_b

    goto :goto_6

    :catch_5
    move-exception v0

    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "**** File not found, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_b

    goto :goto_6

    :catch_6
    :cond_b
    :goto_9
    return-void

    :goto_a
    if-eqz v4, :cond_c

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    :catch_7
    :cond_c
    throw v0
.end method

.method public you(IJ)Z
    .locals 4

    if-lez p1, :cond_3

    long-to-float p2, p2

    const p3, 0x4a5bba00    # 3600000.0f

    div-float/2addr p2, p3

    iget p3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->VI:I

    int-to-float p3, p3

    int-to-float v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    mul-float/2addr p3, v0

    div-float/2addr p3, p2

    sget-boolean v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    const-string v1, "OPSA"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[opbugreportlite] levelDrop = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " %, hours = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", average current = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " mA, criteria = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->WI:F

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " mA"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->WI:F

    cmpl-float p2, p3, p2

    if-lez p2, :cond_3

    sget-boolean p2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[opbugreportlite] hit the criteria, mEnablePowerStandbyDetect = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->OI:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mEnablePowerStandbyDiagnosis ="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->eJ:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mAlreadyReported = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gJ:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mAlreadyDiagnosed = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->RI:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->eJ:Z

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    sget-boolean v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "schedule to SNAPSHOT in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->fJ:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms, now="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->dJ:Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;

    new-instance v1, Lcom/android/server/power/igw;

    invoke-direct {v1, p0, p1, p3}, Lcom/android/server/power/igw;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;IF)V

    iget-wide p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->fJ:J

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public zgw(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update updateQXDMGrabMinimumPeriod : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iput-wide p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->GI:J

    :cond_0
    return-void
.end method

.method public zta(Lcom/android/internal/os/BatteryStatsImpl;JLcom/android/server/power/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;)Ljava/util/Map;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsImpl;",
            "J",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$oif;",
            ">;"
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p4

    const-string v0, ":"

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->START:Lcom/android/server/power/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    const/4 v2, 0x0

    if-ne v13, v1, :cond_0

    iput-object v2, v12, Lcom/android/server/power/OnePlusStandbyAnalyzer;->nJ:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v12, Lcom/android/server/power/OnePlusStandbyAnalyzer;->SJ:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iput-object v2, v12, Lcom/android/server/power/OnePlusStandbyAnalyzer;->oJ:Ljava/util/Map;

    :goto_0
    if-eqz p1, :cond_6

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v11

    const/4 v8, 0x0

    move v9, v8

    :goto_1
    if-ge v9, v11, :cond_7

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/os/BatteryStats$Uid;

    invoke-virtual {v6, v8, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v4

    const/4 v7, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v16

    const/4 v1, 0x2

    invoke-virtual {v6, v1, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v18

    const/4 v1, 0x3

    invoke-virtual {v6, v1, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v20

    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object/from16 v22, v6

    move/from16 v23, v7

    move-wide/from16 v6, v16

    move v12, v8

    move/from16 v16, v9

    move-wide/from16 v8, v18

    move-object/from16 v17, v10

    move/from16 v18, v11

    move-wide/from16 v10, v20

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->you(Lcom/android/server/power/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;IJJJJ)V

    invoke-virtual/range {v22 .. v22}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_2
    if-ltz v2, :cond_3

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Wakelock;

    invoke-virtual {v3, v12}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v3

    if-eqz v3, :cond_1

    move-wide/from16 v4, p2

    invoke-virtual {v3, v4, v5, v12}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    const-wide/16 v8, 0x1f4

    add-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v22 .. v22}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v22 .. v22}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v14, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_1
    move-wide/from16 v4, p2

    :cond_2
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_3
    move-wide/from16 v4, p2

    invoke-virtual/range {v22 .. v22}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v3, v12

    :goto_4
    if-ltz v2, :cond_5

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Uid$Pkg;

    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    :goto_5
    if-ltz v7, :cond_4

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/BatteryStats$Counter;

    invoke-virtual {v8, v12}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v8

    add-int/2addr v3, v8

    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_5
    invoke-virtual/range {v22 .. v22}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$oif;

    invoke-virtual/range {v22 .. v22}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v6

    invoke-direct {v2, v6, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$oif;-><init>(II)V

    invoke-interface {v15, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v9, v16, 0x1

    move v8, v12

    move-object/from16 v10, v17

    move/from16 v11, v18

    move-object/from16 v12, p0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :cond_6
    move-object v14, v2

    move-object v15, v14

    :cond_7
    :goto_6
    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->START:Lcom/android/server/power/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    move-object/from16 v1, p0

    if-ne v13, v0, :cond_8

    iput-object v14, v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->nJ:Ljava/util/Map;

    goto :goto_7

    :cond_8
    iput-object v14, v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->oJ:Ljava/util/Map;

    :goto_7
    return-object v15
.end method

.method public zta(Lcom/android/server/power/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V
    .locals 0

    sget-object p0, Lcom/android/server/power/kth;->CH:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mRPM_SLPI_SLEEPCOUNT_DIFF_CRITERIA : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int p1, p2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    int-to-long p0, p1

    sput-wide p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DL:J

    goto/16 :goto_0

    :pswitch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mRPM_SLEEP_ACC_DURATION_DIFF_PERCENT : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    sput p2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->CL:F

    goto/16 :goto_0

    :pswitch_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mRPM_TIME_SLM_SEC_CRITERIA : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int p1, p2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    int-to-long p0, p1

    sput-wide p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->BL:J

    goto/16 :goto_0

    :pswitch_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mAVERAGE_CURRENT_EXCEED_FOR_MINOR : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    sput p2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->uL:F

    goto/16 :goto_0

    :pswitch_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mUNACCOUNTED_CRITERIA_FOR_MINOR : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    sput p2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->AL:F

    goto/16 :goto_0

    :pswitch_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mUNACCOUNTED_CRITERIA : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    sput p2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->tL:F

    goto/16 :goto_0

    :pswitch_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mSIGNAL_NONE_CRITERIA_FOR_MINOR : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    sput p2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zL:F

    goto/16 :goto_0

    :pswitch_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mSIGNAL_NONE_CRITERIA : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    sput p2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sL:F

    goto/16 :goto_0

    :pswitch_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mSIGNAL_BAD_CRITERIA_FOR_MINOR : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    sput p2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->yL:F

    goto/16 :goto_0

    :pswitch_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mSIGNAL_BAD_CRITERIA : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    sput p2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->rL:F

    goto/16 :goto_0

    :pswitch_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mKERNEL_WAKEUP_COUNT_CRITERIA_FOR_MINOR : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int p1, p2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    sput p1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->xL:I

    goto :goto_0

    :pswitch_b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mKERNEL_WAKEUP_COUNT_CRITERIA : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int p1, p2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    sput p1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->qL:I

    goto :goto_0

    :pswitch_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mKERNELSPACE_WL_CRITERIA_FOR_MINOR : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    sput p2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->wL:F

    goto :goto_0

    :pswitch_d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mKERNELSPACE_WL_CRITERIA : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    sput p2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->pL:F

    goto :goto_0

    :pswitch_e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mUSERSPACE_WL_CRITERIA_FOR_MINOR : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    sput p2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vL:F

    goto :goto_0

    :pswitch_f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mUSERSPACE_WL_CRITERIA : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    sput p2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->oL:F

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public zta(Lcom/android/server/power/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;)V
    .locals 3

    sget-object v0, Lcom/android/server/power/kth;->DH:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->kJ:Ljava/util/List;

    const-string v0, "End"

    if-eqz p1, :cond_1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta(Ljava/lang/String;Ljava/util/List;Z)V

    :cond_1
    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->oJ:Ljava/util/Map;

    if-eqz p1, :cond_2

    const-string v2, "End-WL"

    invoke-direct {p0, v2, p1, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->you(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_2
    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->RJ:Ljava/util/Map;

    if-eqz p1, :cond_3

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_3
    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->HJ:Ljava/util/List;

    if-eqz p1, :cond_4

    const-string v0, "End-Signal"

    invoke-direct {p0, v0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis(Ljava/lang/String;Ljava/util/List;)V

    :cond_4
    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->NJ:Ljava/util/Map;

    if-eqz p1, :cond_a

    const-string v0, "End-WiFi"

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->jJ:Ljava/util/List;

    const-string v0, "Start"

    if-eqz p1, :cond_6

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta(Ljava/lang/String;Ljava/util/List;Z)V

    :cond_6
    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->nJ:Ljava/util/Map;

    if-eqz p1, :cond_7

    const-string v2, "Start-WL"

    invoke-direct {p0, v2, p1, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->you(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_7
    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->PJ:Ljava/util/Map;

    if-eqz p1, :cond_8

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_8
    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->GJ:Ljava/util/List;

    if-eqz p1, :cond_9

    const-string v0, "Start-Signal"

    invoke-direct {p0, v0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis(Ljava/lang/String;Ljava/util/List;)V

    :cond_9
    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->MJ:Ljava/util/Map;

    if-eqz p1, :cond_a

    const-string v0, "Start-WiFi"

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis(Ljava/lang/String;Ljava/util/Map;)V

    :cond_a
    :goto_1
    return-void
.end method

.method public zta(Lcom/android/server/power/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/power/OnePlusStandbyAnalyzer$STATISTIC_TYPE;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->dJ:Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;

    new-instance v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$dma;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$dma;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;Lcom/android/server/power/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/power/OnePlusStandbyAnalyzer$STATISTIC_TYPE;)V

    invoke-virtual {v0, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zta(Lcom/android/server/power/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/power/OnePlusStandbyAnalyzer$STATISTIC_TYPE;IFFJZ)V
    .locals 12

    move-object v1, p0

    iget-object v10, v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->dJ:Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;

    new-instance v11, Lcom/android/server/power/OnePlusStandbyAnalyzer$dma;

    move-object v0, v11

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/power/OnePlusStandbyAnalyzer$dma;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;Lcom/android/server/power/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/power/OnePlusStandbyAnalyzer$STATISTIC_TYPE;IFFJZ)V

    invoke-virtual {v10, v11}, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zta(Lcom/android/server/power/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/power/OnePlusStandbyAnalyzer$STATISTIC_TYPE;J)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->dJ:Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;

    new-instance v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$dma;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$dma;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;Lcom/android/server/power/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/power/OnePlusStandbyAnalyzer$STATISTIC_TYPE;)V

    invoke-virtual {v0, v1, p3, p4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public zta(Lcom/android/server/power/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Ljava/lang/String;)V
    .locals 12

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->START:Lcom/android/server/power/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->JJ:Ljava/util/List;

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x400

    new-array v1, v1, [B

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    :cond_1
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_a

    new-instance v0, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v0, v1, v5, p2}, Ljava/lang/String;-><init>([BII)V

    iget-boolean p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->XJ:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ZJ:Ljava/util/regex/Pattern;

    :goto_0
    invoke-virtual {p2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->YJ:Ljava/util/regex/Pattern;

    goto :goto_0

    :goto_1
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "RPM Matched...."

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {p2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {p2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {p2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    sget-object v10, Lcom/android/server/power/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->START:Lcom/android/server/power/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    if-ne p1, v10, :cond_5

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->JJ:Ljava/util/List;

    new-instance v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$igw;

    iget-boolean v7, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->XJ:Z

    if-eqz v7, :cond_3

    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->Kna:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    goto :goto_2

    :cond_3
    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->Ina:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    :goto_2
    invoke-direct {v5, v7, v6, v8}, Lcom/android/server/power/OnePlusStandbyAnalyzer$igw;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->JJ:Ljava/util/List;

    new-instance v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$igw;

    iget-boolean v7, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->XJ:Z

    if-eqz v7, :cond_4

    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->Lna:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    goto :goto_3

    :cond_4
    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->Jna:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    :goto_3
    invoke-direct {v5, v7, v9, p2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$igw;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    sget-object v10, Lcom/android/server/power/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->Ona:Lcom/android/server/power/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    if-ne p1, v10, :cond_6

    iget-object v10, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->JJ:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lt v10, v7, :cond_7

    iget-object v7, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->JJ:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$igw;

    invoke-virtual {v5, v6, v8}, Lcom/android/server/power/OnePlusStandbyAnalyzer$igw;->igw(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->JJ:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$igw;

    :goto_4
    invoke-virtual {v0, v9, p2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$igw;->igw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    sget-object v10, Lcom/android/server/power/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->END:Lcom/android/server/power/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    if-ne p1, v10, :cond_7

    iget-object v10, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->JJ:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lt v10, v7, :cond_7

    iget-object v7, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->JJ:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$igw;

    invoke-virtual {v5, v6, v8}, Lcom/android/server/power/OnePlusStandbyAnalyzer$igw;->igw(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->JJ:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$igw;

    goto :goto_4

    :cond_7
    :goto_5
    iget-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->XJ:Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v5, "]"

    const-string v7, "#### ["

    const-string v10, "OPSA"

    const-string v11, ", "

    if-eqz v0, :cond_8

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] rpm_stats [aosd, "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "], [cxsd, "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_6
    invoke-static {v10, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] rpm_stats [vlow, "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "], [vmin, "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_6

    :cond_9
    const-string p2, "RPM Can\'t matched...."

    invoke-static {p2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    :goto_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/16 v7, 0x1388

    cmp-long p2, v5, v7

    if-ltz p2, :cond_1

    const-string p0, "**** Exceed read timeout, force exit ***"

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_a
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_c

    :catchall_0
    move-exception p0

    goto :goto_d

    :catch_0
    move-exception p0

    move-object v0, v2

    goto :goto_8

    :catch_1
    move-exception p0

    move-object v0, v2

    goto :goto_a

    :catch_2
    move-exception p0

    move-object v0, v2

    goto :goto_b

    :catchall_1
    move-exception p0

    move-object v2, v0

    goto :goto_d

    :catch_3
    move-exception p0

    :goto_8
    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "**** Failed, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_b

    :goto_9
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_c

    :catch_4
    move-exception p0

    :goto_a
    :try_start_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "**** Failed to read, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    if-eqz v0, :cond_b

    goto :goto_9

    :catch_5
    move-exception p0

    :goto_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "**** File not found, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v0, :cond_b

    goto :goto_9

    :catch_6
    :cond_b
    :goto_c
    return-void

    :goto_d
    if-eqz v2, :cond_c

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :cond_c
    throw p0
.end method

.method public zta(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$oif;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->yK:Ljava/util/Comparator;

    invoke-static {v0, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->you(Ljava/lang/String;Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public declared-synchronized zta(ZLcom/android/server/power/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;Z)V
    .locals 10

    monitor-enter p0

    const/4 v0, 0x0

    const/16 v1, 0x3ec

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eqz p1, :cond_10

    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zI:Z

    if-eqz v4, :cond_f

    const-string v4, "persist.sys.qxdm"

    const-string v5, "no"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "yes"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string p1, "OPSA"

    const-string p2, "oops, QXDM is under recoding by oemlogkit, so do nothing"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->fd()Z

    move-result v4

    if-eqz v4, :cond_e

    iget-boolean v5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->BI:Z

    if-eqz v5, :cond_e

    iget-boolean v5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->CI:Z

    if-eqz v5, :cond_e

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->uJ:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-ltz v8, :cond_d

    iget-wide v8, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->HI:J

    cmp-long v4, v4, v8

    if-gez v4, :cond_1

    goto/16 :goto_7

    :cond_1
    iget-wide v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->JI:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->JI:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->GI:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    const-string p1, "OPSA"

    const-string p2, "oops, away from the latest QXDM grabbing is too short, so skip this round QXDM recording"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iget-boolean v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->EI:Z

    if-nez v4, :cond_c

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->EI:Z

    const-string v5, "it\'s time to enable 1st-QXDM-recording now under this round of standby period"

    invoke-static {v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    sget-object v5, Lcom/android/server/power/kth;->BH:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v5, p3

    const/4 v5, 0x2

    if-eq p3, v4, :cond_4

    if-eq p3, v5, :cond_3

    goto :goto_1

    :cond_3
    sget-object p3, Lcom/android/server/power/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;->tna:Lcom/android/server/power/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;

    :goto_0
    iput-object p3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->FI:Lcom/android/server/power/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;

    goto :goto_1

    :cond_4
    sget-object p3, Lcom/android/server/power/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;->sna:Lcom/android/server/power/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;

    goto :goto_0

    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Triggering Reason : "

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->FI:Lcom/android/server/power/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DI:Z

    if-eqz p3, :cond_5

    const-string p1, "OPSA"

    const-string p2, "QXDM is still under recording, do nothing."

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_5
    iput-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DI:Z

    const-string p1, "OPSA"

    const-string p3, "Start QXDM recording..."

    invoke-static {p1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->AI:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->JI:J

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->KI:I

    sget-object p1, Lcom/android/server/power/kth;->zH:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v4, :cond_9

    if-eq p1, v5, :cond_8

    if-eq p1, v3, :cond_7

    if-eq p1, v2, :cond_6

    const-string p1, "persist.sys.power_mask"

    const-string p2, "service"

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "OPSA"

    const-string p2, "Copy service-mask (rest.)"

    :goto_2
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    const-string p1, "persist.sys.power_mask"

    const-string p2, "service"

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "OPSA"

    const-string p2, "Copy service-mask"

    goto :goto_2

    :cond_7
    const-string p1, "persist.sys.power_mask"

    const-string p2, "ims"

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "OPSA"

    const-string p2, "Copy ims-mask"

    goto :goto_2

    :cond_8
    const-string p1, "persist.sys.power_mask"

    const-string p2, "data"

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "OPSA"

    const-string p2, "Copy data-mask"

    goto :goto_2

    :cond_9
    const-string p1, "persist.sys.power_mask"

    const-string p2, "service"

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "OPSA"

    const-string p2, "Copy service-mask"

    goto :goto_2

    :goto_3
    const-string p1, "persist.vendor.diag.max.num"

    const-string p2, "2"

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "persist.vendor.diag.max.size"

    const-string p2, "25"

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Ja(Z)V

    const-string p1, "persist.sys.qxdm"

    const-string p2, "yes"

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "persist.vendor.qxdm.copymask"

    const-string p2, "1"

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "diag_mdlog_start"

    invoke-static {p1}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    const-string p1, "OPSA"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "And schedule "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_a

    const-string p3, "20 sec"

    goto :goto_4

    :cond_a
    const-string p3, "2 min"

    :goto_4
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " later to stop"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->dJ:Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;

    if-eqz p4, :cond_b

    const-wide/16 p2, 0x4e20

    goto :goto_5

    :cond_b
    const-wide/32 p2, 0x1d4c0

    :goto_5
    invoke-virtual {p1, v1, p2, p3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->sendEmptyMessageDelayed(IJ)V

    goto/16 :goto_9

    :cond_c
    const-string p1, "already have telephony-abn action, do nothing."

    :goto_6
    invoke-static {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_d
    :goto_7
    const-string p1, "OPSA"

    const-string p2, "oops, not satisfy standby-gap, so skip this round QXDM recording"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_e
    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "BugReportLite:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " | abn-reporting: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->BI:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " | qxdm-grab: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->CI:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", do nothing when telephony-abn in standby period"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_f
    const-string p1, "Not under standby period, do nothing when telephony abnormal"

    goto :goto_6

    :cond_10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Stop QXDM recording by reason : "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DI:Z

    const/4 p4, 0x5

    if-eqz p2, :cond_14

    iput-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->DI:Z

    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->dJ:Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;

    invoke-virtual {p1, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->removeMessages(I)V

    const-string p1, "persist.sys.qxdm"

    const-string p2, "no"

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Ja(Z)V

    const-string p1, "diag_mdlog_stop"

    invoke-static {p1}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    sget-object p1, Lcom/android/server/power/kth;->BH:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/16 p2, 0x3ef

    const-wide/16 v0, 0xbb8

    if-eq p1, v3, :cond_13

    if-eq p1, v2, :cond_12

    if-eq p1, p4, :cond_11

    goto :goto_9

    :cond_11
    const-string p1, "OPSA"

    const-string p2, "Schedule 3 sec later to execute vendor clean-up task directly"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->dJ:Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;

    const/16 p2, 0x3ed

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->sendEmptyMessageDelayed(IJ)V

    goto :goto_9

    :cond_12
    const-string p1, "OPSA"

    const-string p3, "Schedule 3 sec later to execute copy-qxdm-to-sdcard task."

    invoke-static {p1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->dJ:Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;

    :goto_8
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->sendEmptyMessageDelayed(IJ)V

    goto :goto_9

    :cond_13
    const-string p1, "OPSA"

    const-string p3, "Schedule 3 sec later to execute copy-qxdm-to-sdcard task."

    invoke-static {p1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->dJ:Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;

    goto :goto_8

    :cond_14
    const-string p1, "QXDM is already disabled, do nothing."

    invoke-static {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    sget-object p1, Lcom/android/server/power/kth;->BH:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v3, :cond_16

    if-eq p1, v2, :cond_16

    if-eq p1, p4, :cond_15

    goto :goto_9

    :cond_15
    iget-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->AI:Z

    if-eqz p1, :cond_16

    const-string p1, "[opbugreportlite] Ever gen-QXDM logs, so schedule 10 sec later to cleanUp Sdcard\'s QXDM logs."

    invoke-static {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->dJ:Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;

    const/16 p2, 0x3ee

    const-wide/16 p3, 0x2710

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;->sendEmptyMessageDelayed(IJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_16
    :goto_9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
