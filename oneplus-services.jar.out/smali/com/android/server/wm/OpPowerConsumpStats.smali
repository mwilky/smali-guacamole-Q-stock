.class public Lcom/android/server/wm/OpPowerConsumpStats;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/wm/IOpPowerConsumpStats;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/OpPowerConsumpStats$you;,
        Lcom/android/server/wm/OpPowerConsumpStats$bio;,
        Lcom/android/server/wm/OpPowerConsumpStats$ywr;,
        Lcom/android/server/wm/OpPowerConsumpStats$zta;,
        Lcom/android/server/wm/OpPowerConsumpStats$rtg;,
        Lcom/android/server/wm/OpPowerConsumpStats$kth;,
        Lcom/android/server/wm/OpPowerConsumpStats$wtn;,
        Lcom/android/server/wm/OpPowerConsumpStats$sis;,
        Lcom/android/server/wm/OpPowerConsumpStats$dma;,
        Lcom/android/server/wm/OpPowerConsumpStats$qbh;,
        Lcom/android/server/wm/OpPowerConsumpStats$igw;,
        Lcom/android/server/wm/OpPowerConsumpStats$ssp;,
        Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;,
        Lcom/android/server/wm/OpPowerConsumpStats$tsu;,
        Lcom/android/server/wm/OpPowerConsumpStats$cno;,
        Lcom/android/server/wm/OpPowerConsumpStats$gck;
    }
.end annotation


# static fields
.field private static final ACTION_REPORT:Ljava/lang/String; = "com.OPCS.action.report"

.field private static final ACTION_SHUTDOWN:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN"

.field private static final APP_ID:Ljava/lang/String; = "NYNCG4I0TI"

.field private static final AU:Ljava/lang/String; = "OPCS_SPECIFIC"

.field private static final BATTERY_PLUGGED_NONE:I = 0x0

.field private static final BU:Ljava/lang/String; = "android.intent.action.TIME_SET"

.field private static final CU:Ljava/lang/String; = "persist.sys.opcs.debug_specific"

.field private static final DU:Ljava/lang/String; = "persist.sys.opcs.debug_verify"

.field private static final Dp:Ljava/lang/String;

.field private static final EU:Ljava/lang/String; = "AC"

.field private static final EVENT_ACTIVE:I = 0x0

.field private static final EVENT_SCREEN_OFF:I = 0x0

.field private static final EVENT_SCREEN_ON:I = 0x1

.field private static final FU:Ljava/lang/String; = "USB"

.field private static final GU:Ljava/lang/String; = "WIRELESS"

.field private static final HU:Ljava/lang/String; = "NONE"

.field private static final IU:Ljava/lang/String; = "FASTCHARGE"

.field private static final JU:Ljava/lang/String; = "unknow"

.field private static final KU:Ljava/lang/String; = "none"

.field private static final LU:Ljava/lang/String; = ""

.field private static final MSG_GET_ONLINECONFIG:I = 0x1

.field private static final MSG_PERSIST:I = 0x7

.field private static final MU:Ljava/lang/String; = "handle_plug_event"

.field private static final NU:Ljava/lang/String; = "cmd_calculatePower"

.field private static final PU:Ljava/lang/String; = "generatePowerConsumptionData"

.field private static final QU:J = 0x5265c00L

.field private static RU:Z = false

.field private static SU:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OPCS"

.field private static TU:J = 0x0L

.field private static UU:J = 0x0L

.field private static final VERSION:I = 0x122b9c9

.field private static VU:J = 0x0L

.field private static WU:I = 0x0

.field private static XU:I = 0x0

.field private static YU:I = 0x0

.field private static final ZU:Ljava/lang/String; = "powerLevel"

.field private static final _U:Ljava/lang/String; = "screen"

.field private static final aV:Ljava/lang/String; = "plug"

.field private static final bV:Ljava/lang/String; = "doze"

.field private static final cV:Ljava/lang/String; = "frontPkg"

.field private static final dV:Ljava/lang/String; = "/mnt/vendor/persist/engineermode/screenontimebyhours"

.field private static eU:Lcom/android/server/wm/OpPowerConsumpStats; = null

.field private static final eV:Ljava/lang/String; = "ScreenON"

.field private static fU:Z = false

.field public static final fV:I = -0x64

.field private static final fp:Ljava/lang/String; = "persist.sys.opcs.debug_log"

.field private static gU:Z = false

.field public static final gV:I = -0x63

.field private static hU:Z = false

.field public static final hV:I = -0x62

.field private static iU:Z = false

.field public static final iV:I = -0x61

.field private static jU:Z = false

.field public static final jV:I = -0x60

.field private static final kU:I = 0x64

.field public static final kV:I = -0x5f

.field private static final kp:Ljava/lang/String; = "com.OPCS.action.debug"

.field private static final lU:I = 0x2

.field public static final lV:I = -0x5e

.field private static final ll:Ljava/lang/String; = "null"

.field private static final mU:I = 0x3

.field public static final mV:I = -0x5d

.field private static final nU:I = 0x4

.field public static final nV:I = -0x5c

.field private static final oU:I = 0x5

.field public static final oV:I = -0x5b

.field private static final pU:I = 0x6

.field public static final pV:I = -0x5a

.field private static final qU:I = 0x8

.field public static final qV:I = -0x59

.field private static final rU:I = 0x9

.field public static final rV:I = -0x58

.field private static sInstance:Lcom/android/server/wm/OpPowerConsumpStats; = null

.field private static final sU:I = 0xa

.field public static final sV:I = -0x57

.field private static final tU:I = 0xb

.field public static final tV:I = -0x56

.field private static final uU:I = 0xc

.field public static final uV:I = -0x55

.field private static final vU:I = 0xd

.field public static final vV:I = -0x54

.field private static final wU:I = 0xe

.field private static final wV:Ljava/lang/String; = "7554P2RV0X"

.field private static final xU:I = 0x0

.field private static xV:Z = false

.field private static final yU:I = 0x1

.field private static final zU:I = 0x1


# instance fields
.field private BT:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private CT:Lcom/android/server/wm/OpPowerConsumpStats$zta;

.field private DT:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/OpPowerConsumpStats$bio;",
            ">;"
        }
    .end annotation
.end field

.field private Dg:I

.field private ET:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/OpPowerConsumpStats$bio;",
            ">;"
        }
    .end annotation
.end field

.field private FT:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/OpPowerConsumpStats$bio;",
            ">;"
        }
    .end annotation
.end field

.field private GT:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/OpPowerConsumpStats$bio;",
            ">;"
        }
    .end annotation
.end field

.field private IT:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OpPowerConsumpStats$ywr;",
            ">;"
        }
    .end annotation
.end field

.field private KT:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OpPowerConsumpStats$ywr;",
            ">;"
        }
    .end annotation
.end field

.field private LT:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OpPowerConsumpStats$ywr;",
            ">;"
        }
    .end annotation
.end field

.field private MT:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OpPowerConsumpStats$ywr;",
            ">;"
        }
    .end annotation
.end field

.field private Mo:Landroid/util/AtomicFile;

.field private NT:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OpPowerConsumpStats$ywr;",
            ">;"
        }
    .end annotation
.end field

.field private OT:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OpPowerConsumpStats$ywr;",
            ">;"
        }
    .end annotation
.end field

.field private PT:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OpPowerConsumpStats$ywr;",
            ">;"
        }
    .end annotation
.end field

.field private QT:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OpPowerConsumpStats$ywr;",
            ">;"
        }
    .end annotation
.end field

.field private RT:I

.field private SS:Lcom/oneplus/config/ConfigObserver;

.field private TS:Landroid/util/AtomicFile;

.field private TT:I

.field private UT:I

.field private VS:Lcom/android/server/wm/OpPowerConsumpStats$sis;

.field private VT:I

.field private WS:Landroid/os/BatteryManager;

.field private WT:I

.field private XS:Lcom/android/internal/os/BatteryStatsImpl;

.field private XT:I

.field private YS:Landroid/os/Handler;

.field private YT:Z

.field private ZS:Landroid/app/usage/UsageStatsManager;

.field private ZT:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/OpPowerConsumpStats$you;",
            ">;"
        }
    .end annotation
.end field

.field private _S:Lcom/android/server/wm/OpPowerConsumpStats$gck;

.field private _T:Ljava/lang/Object;

.field private aT:Lcom/android/server/wm/OpPowerConsumpStats$gck;

.field private aU:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

.field private bT:Lcom/android/server/wm/OpPowerConsumpStatsInjector$ResetParamListener;

.field private final bU:Landroid/app/AlarmManager$OnAlarmListener;

.field private cT:Ljava/lang/Object;

.field private final cU:Landroid/app/AlarmManager$OnAlarmListener;

.field private dT:J

.field final dU:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/wm/OpPowerConsumpStats$ywr;",
            ">;"
        }
    .end annotation
.end field

.field private dp:Landroid/content/BroadcastReceiver;

.field private eT:J

.field private fT:Z

.field private gT:Z

.field private hT:Z

.field private iT:I

.field private jT:Ljava/lang/String;

.field private kT:Z

.field lT:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/OpPowerConsumpStats$cno;",
            ">;"
        }
    .end annotation
.end field

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field private mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field private mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

.field private mContext:Landroid/content/Context;

.field private mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenState:Z

.field mT:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/OpPowerConsumpStats$tsu;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

.field private nT:Lcom/android/server/wm/OpPowerConsumpStats$igw;

.field private oT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

.field private pT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

.field private pi:Landroid/app/PendingIntent;

.field private qT:Lcom/android/server/wm/OpPowerConsumpStats$igw;

.field private rT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

.field private sT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

.field private tT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

.field private uT:Lcom/android/server/wm/OpPowerConsumpStats$igw;

.field private vT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

.field private wT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

.field private xT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

.field private yT:Lcom/android/server/wm/OpPowerConsumpStats$kth;

.field private zT:Lcom/android/server/wm/OpPowerConsumpStats$rtg;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/wm/OpPowerConsumpStats;->fU:Z

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/wm/OpPowerConsumpStats;->gU:Z

    sput-boolean v0, Lcom/android/server/wm/OpPowerConsumpStats;->hU:Z

    sput-boolean v1, Lcom/android/server/wm/OpPowerConsumpStats;->iU:Z

    sput-boolean v1, Lcom/android/server/wm/OpPowerConsumpStats;->jU:Z

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/OpPowerConsumpStats;->Dp:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wm/OpPowerConsumpStats;->RU:Z

    const/16 v1, 0x168

    sput v1, Lcom/android/server/wm/OpPowerConsumpStats;->SU:I

    const-wide/32 v1, 0xa4cb80

    sput-wide v1, Lcom/android/server/wm/OpPowerConsumpStats;->TU:J

    const-wide/32 v1, 0x6ddd00

    sput-wide v1, Lcom/android/server/wm/OpPowerConsumpStats;->UU:J

    const-wide/32 v1, 0xea60

    sput-wide v1, Lcom/android/server/wm/OpPowerConsumpStats;->VU:J

    const/16 v1, 0xa

    sput v1, Lcom/android/server/wm/OpPowerConsumpStats;->WU:I

    const/16 v1, 0x8

    sput v1, Lcom/android/server/wm/OpPowerConsumpStats;->XU:I

    sput v1, Lcom/android/server/wm/OpPowerConsumpStats;->YU:I

    sput-boolean v0, Lcom/android/server/wm/OpPowerConsumpStats;->xV:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->SS:Lcom/oneplus/config/ConfigObserver;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Mo:Landroid/util/AtomicFile;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->TS:Landroid/util/AtomicFile;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mAlarmManager:Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->VS:Lcom/android/server/wm/OpPowerConsumpStats$sis;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->WS:Landroid/os/BatteryManager;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->XS:Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->YS:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mPowerManager:Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ZS:Landroid/app/usage/UsageStatsManager;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_S:Lcom/android/server/wm/OpPowerConsumpStats$gck;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->aT:Lcom/android/server/wm/OpPowerConsumpStats$gck;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->bT:Lcom/android/server/wm/OpPowerConsumpStatsInjector$ResetParamListener;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cT:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->dT:J

    iput-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->eT:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    iput-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->fT:Z

    iput-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gT:Z

    iput-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->hT:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->iT:I

    const-string v2, "none"

    iput-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->jT:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->pi:Landroid/app/PendingIntent;

    iput-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->kT:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->lT:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mT:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$igw;

    const-string v2, "TotalDischarge"

    invoke-direct {v0, p0, v2}, Lcom/android/server/wm/OpPowerConsumpStats$igw;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->nT:Lcom/android/server/wm/OpPowerConsumpStats$igw;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    const-string v2, "TotalDischargeDuration"

    invoke-direct {v0, p0, v2}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    const-string v2, "TotalChargeDuration"

    invoke-direct {v0, p0, v2}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->pT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$igw;

    const-string v2, "ScreenOnDischarge"

    invoke-direct {v0, p0, v2}, Lcom/android/server/wm/OpPowerConsumpStats$igw;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->qT:Lcom/android/server/wm/OpPowerConsumpStats$igw;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    const-string v2, "TotalScreenOnDuration"

    invoke-direct {v0, p0, v2}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->rT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    const-string v2, "ScreenOnDischargeDuration"

    invoke-direct {v0, p0, v2}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->sT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    const-string v2, "ScreenOnChargeDuration"

    invoke-direct {v0, p0, v2}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->tT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$igw;

    const-string v2, "ScreenOffDischarge"

    invoke-direct {v0, p0, v2}, Lcom/android/server/wm/OpPowerConsumpStats$igw;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->uT:Lcom/android/server/wm/OpPowerConsumpStats$igw;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    const-string v2, "TotalScreenOffDuration"

    invoke-direct {v0, p0, v2}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->vT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    const-string v2, "ScreenOffDischargeDuration"

    invoke-direct {v0, p0, v2}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->wT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    const-string v2, "ScreenOffChargeDuration"

    invoke-direct {v0, p0, v2}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->xT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$kth;

    invoke-direct {v0, p0}, Lcom/android/server/wm/OpPowerConsumpStats$kth;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->yT:Lcom/android/server/wm/OpPowerConsumpStats$kth;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;

    invoke-direct {v0, p0}, Lcom/android/server/wm/OpPowerConsumpStats$rtg;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->zT:Lcom/android/server/wm/OpPowerConsumpStats$rtg;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->BT:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$zta;

    invoke-direct {v0, p0}, Lcom/android/server/wm/OpPowerConsumpStats$zta;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->CT:Lcom/android/server/wm/OpPowerConsumpStats$zta;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->DT:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ET:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->FT:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->GT:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->IT:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->KT:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->LT:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->MT:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->NT:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->OT:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->PT:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->QT:Ljava/util/HashMap;

    iput v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->RT:I

    iput v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->TT:I

    iput v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->UT:I

    iput v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->VT:I

    iput v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->WT:I

    iput v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->XT:I

    iput v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Dg:I

    iput-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->YT:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ZT:Landroid/util/SparseArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_T:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/wm/oif;

    invoke-direct {v0, p0}, Lcom/android/server/wm/oif;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/wm/bvj;

    invoke-direct {v0, p0}, Lcom/android/server/wm/bvj;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->dp:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/wm/ibl;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ibl;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->bU:Landroid/app/AlarmManager$OnAlarmListener;

    new-instance v0, Lcom/android/server/wm/gwm;

    invoke-direct {v0, p0}, Lcom/android/server/wm/gwm;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cU:Landroid/app/AlarmManager$OnAlarmListener;

    new-instance v0, Lcom/android/server/wm/ugm;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ugm;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->dU:Ljava/util/Comparator;

    const-string p0, "OpPowerConsumpStats()--constructor:19053001"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    return-void
.end method

.method private Ka(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlePersist shutDown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x63

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->aU:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    invoke-virtual {v0}, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->stop()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStats;->fU:Z

    if-eqz v0, :cond_1

    const-string v0, "OPCS"

    const-string v1, "ScreenOnWatchTimer re-start again...."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->aU:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    invoke-virtual {v0}, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->start()V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->aU:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    invoke-virtual {v0}, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->flushToDisk()V

    :cond_3
    const-string v0, "handlePersist"

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->uc(Ljava/lang/String;)Lcom/android/server/wm/OpPowerConsumpStats$gck;

    move-result-object v0

    if-nez v0, :cond_4

    const-string p0, "handlePersist StatisticalData is null, return"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->tsu(Lcom/android/server/wm/OpPowerConsumpStats$gck;)V

    if-nez p1, :cond_5

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Qp()V

    :cond_5
    return-void
.end method

.method private La(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->fT:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->nT:Lcom/android/server/wm/OpPowerConsumpStats$igw;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$igw;->zta(Lcom/android/server/wm/OpPowerConsumpStats$igw;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->fT:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->qT:Lcom/android/server/wm/OpPowerConsumpStats$igw;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$igw;->zta(Lcom/android/server/wm/OpPowerConsumpStats$igw;)V

    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->fT:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->uT:Lcom/android/server/wm/OpPowerConsumpStats$igw;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$igw;->zta(Lcom/android/server/wm/OpPowerConsumpStats$igw;)V

    :cond_2
    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->fT:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->iT:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->zT:Lcom/android/server/wm/OpPowerConsumpStats$rtg;

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->rtg(Lcom/android/server/wm/OpPowerConsumpStats$rtg;)Z

    :cond_3
    const-string p1, "powerLevel"

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->sc(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->wc(Ljava/lang/String;)V

    return-void
.end method

.method private Ma(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleReport immediately:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Tp()V

    const-string v0, "handleReport"

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->uc(Ljava/lang/String;)Lcom/android/server/wm/OpPowerConsumpStats$gck;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->aT:Lcom/android/server/wm/OpPowerConsumpStats$gck;

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->aT:Lcom/android/server/wm/OpPowerConsumpStats$gck;

    if-nez v0, :cond_0

    const-string p0, "handleReport mReportData is null, return"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Lcom/android/server/wm/OpPowerConsumpStats$gck;)V

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->uq()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Sp()V

    :goto_0
    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Vp()V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->sq()V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->releaseWakeLock()V

    return-void
.end method

.method private Mp()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_T:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ZT:Landroid/util/SparseArray;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private Np()V
    .locals 10

    const-string v0, "calculatePastKernelWakeLocks"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->XS:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Timer;

    const/4 v5, 0x2

    invoke-static {v4, v1, v2, v5}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v8, Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v4

    invoke-direct {v8, v3, v6, v7, v4}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;-><init>(Ljava/lang/String;JI)V

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->LT:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculatePastKernelWakeLocks # wakeLock_new = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private Op()V
    .locals 10

    const-string v0, "calculatePastKernelWakeupReasons"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->XS:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Timer;

    const/4 v5, 0x2

    invoke-static {v4, v1, v2, v5}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v8, Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v4

    invoke-direct {v8, v3, v6, v7, v4}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;-><init>(Ljava/lang/String;JI)V

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->PT:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculatePastKernelWakeupReasons # reason_new = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private Pp()V
    .locals 7

    const-string v0, "calculatePastPowerConsumption"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatterySipper;

    if-eqz v2, :cond_2

    iget-wide v3, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_2

    sget-object v3, Lcom/android/server/wm/vdb;->RR:[I

    iget-object v4, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v4}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    new-instance v3, Lcom/android/server/wm/OpPowerConsumpStats$bio;

    iget-object v4, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-direct {p0, v4}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Lcom/android/internal/os/BatterySipper$DrainType;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/wm/OpPowerConsumpStats$bio;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/Integer;)V

    goto :goto_1

    :cond_0
    new-instance v3, Lcom/android/server/wm/OpPowerConsumpStats$bio;

    iget-object v4, v2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/wm/OpPowerConsumpStats$bio;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/Integer;)V

    :goto_1
    invoke-static {v3, v2}, Lcom/android/server/wm/OpPowerConsumpStats$bio;->zta(Lcom/android/server/wm/OpPowerConsumpStats$bio;Lcom/android/internal/os/BatterySipper;)V

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats$bio;->zta(Lcom/android/server/wm/OpPowerConsumpStats$bio;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->FT:Landroid/util/SparseArray;

    iget-object v4, v3, Lcom/android/server/wm/OpPowerConsumpStats$bio;->uid:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculatePastPowerConsumption # pcPast = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private Qp()V
    .locals 11

    const-string v0, "calibrateCalculateAlarm"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->bU:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    sget-wide v0, Lcom/android/server/wm/OpPowerConsumpStats;->UU:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/android/server/wm/OpPowerConsumpStats;->UU:J

    add-long v6, v0, v2

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x3

    iget-object v9, p0, Lcom/android/server/wm/OpPowerConsumpStats;->bU:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v10, p0, Lcom/android/server/wm/OpPowerConsumpStats;->YS:Landroid/os/Handler;

    const-string v8, "OPCS_CalculateAlarm"

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method private Rp()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->pi:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_S:Lcom/android/server/wm/OpPowerConsumpStats$gck;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->sS:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/OpPowerConsumpStats;->b(J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calibrateReportAlarm timeLeft:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " |nextReportAlarmTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    const-wide/32 v4, 0x5265c00

    cmp-long v0, v0, v4

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->pi:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->gq()V

    :goto_0
    return-void
.end method

.method private Sb(I)Lcom/android/server/wm/OpPowerConsumpStats$you;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_T:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ZT:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/OpPowerConsumpStats$you;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private Sp()V
    .locals 12

    const-string v0, "calibrateTrackAlarm"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sget v3, Lcom/android/server/wm/OpPowerConsumpStats;->SU:I

    mul-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v3, v0

    add-long v7, v1, v3

    iget-object v5, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v10, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cU:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v11, p0, Lcom/android/server/wm/OpPowerConsumpStats;->YS:Landroid/os/Handler;

    const/4 v6, 0x2

    const-string v9, "OPCS_TrackAlarm"

    invoke-virtual/range {v5 .. v11}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method

.method private Tb(I)Ljava/lang/String;
    .locals 1

    const-string p0, "NONE"

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "WIRELESS"

    goto :goto_0

    :cond_1
    const-string p0, "USB"

    goto :goto_0

    :cond_2
    const-string p0, "AC"

    :cond_3
    :goto_0
    return-object p0
.end method

.method private Tp()V
    .locals 2

    const-string v0, "cancelAlarm"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->bU:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->pi:Landroid/app/PendingIntent;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private Ub(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p0, "unknown"

    goto :goto_0

    :pswitch_0
    const-string p0, "default"

    goto :goto_0

    :pswitch_1
    const-string p0, "wifi"

    goto :goto_0

    :pswitch_2
    const-string p0, "user"

    goto :goto_0

    :pswitch_3
    const-string p0, "unaccounted"

    goto :goto_0

    :pswitch_4
    const-string p0, "screen"

    goto :goto_0

    :pswitch_5
    const-string p0, "phone"

    goto :goto_0

    :pswitch_6
    const-string p0, "overcounted"

    goto :goto_0

    :pswitch_7
    const-string p0, "memory"

    goto :goto_0

    :pswitch_8
    const-string p0, "idle"

    goto :goto_0

    :pswitch_9
    const-string p0, "flashlight"

    goto :goto_0

    :pswitch_a
    const-string p0, "cell"

    goto :goto_0

    :pswitch_b
    const-string p0, "camera"

    goto :goto_0

    :pswitch_c
    const-string p0, "bluetooth"

    goto :goto_0

    :pswitch_d
    const-string p0, "app"

    goto :goto_0

    :pswitch_e
    const-string p0, "ambient_display"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x63
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

.method private Up()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->bT:Lcom/android/server/wm/OpPowerConsumpStatsInjector$ResetParamListener;

    const-string v1, "OPCS"

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/server/wm/OpPowerConsumpStatsInjector$ResetParamListener;->getPlugState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-boolean v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->fT:Z

    if-eq v3, v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkState mPlugState is error, correct to:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " |plugType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->fT:Z

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->Vb(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    iget-boolean v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    if-eq v2, v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkState mScreenState is error, correct to:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->kq()V

    :cond_2
    return-void
.end method

.method private Vb(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->fT:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->you(Lcom/android/server/wm/OpPowerConsumpStats$wtn;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->pT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->zta(Lcom/android/server/wm/OpPowerConsumpStats$wtn;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->zT:Lcom/android/server/wm/OpPowerConsumpStats$rtg;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->zta(Lcom/android/server/wm/OpPowerConsumpStats$rtg;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->CT:Lcom/android/server/wm/OpPowerConsumpStats$zta;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$zta;->you(Lcom/android/server/wm/OpPowerConsumpStats$zta;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->zta(Lcom/android/server/wm/OpPowerConsumpStats$wtn;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->pT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->you(Lcom/android/server/wm/OpPowerConsumpStats$wtn;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->zT:Lcom/android/server/wm/OpPowerConsumpStats$rtg;

    invoke-static {v0, p1}, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->zta(Lcom/android/server/wm/OpPowerConsumpStats$rtg;I)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->CT:Lcom/android/server/wm/OpPowerConsumpStats$zta;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$zta;->sis(Lcom/android/server/wm/OpPowerConsumpStats$zta;)Z

    const-string v0, "handle_plug_event"

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->tc(Ljava/lang/String;)V

    :goto_0
    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->fT:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->sT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->you(Lcom/android/server/wm/OpPowerConsumpStats$wtn;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->tT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->zta(Lcom/android/server/wm/OpPowerConsumpStats$wtn;)Z

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->fT:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->sT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->zta(Lcom/android/server/wm/OpPowerConsumpStats$wtn;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->tT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->you(Lcom/android/server/wm/OpPowerConsumpStats$wtn;)Z

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->fT:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->wT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->you(Lcom/android/server/wm/OpPowerConsumpStats$wtn;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->xT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->zta(Lcom/android/server/wm/OpPowerConsumpStats$wtn;)Z

    goto :goto_2

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->fT:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->wT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->zta(Lcom/android/server/wm/OpPowerConsumpStats$wtn;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->xT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->you(Lcom/android/server/wm/OpPowerConsumpStats$wtn;)Z

    :cond_4
    :goto_2
    const-string v0, "plug"

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->sc(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->Tb(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->ear(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private Vp()V
    .locals 2

    const-string v0, "clearAllData"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Wp()V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->_p()V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->aq()V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Xp()V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Zp()V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Yp()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_S:Lcom/android/server/wm/OpPowerConsumpStats$gck;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->dT:J

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->eT:J

    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStats;->jU:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->RT:I

    iput v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->TT:I

    iput v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->UT:I

    iput v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->VT:I

    iput v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->WT:I

    iput v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->XT:I

    :cond_0
    return-void
.end method

.method private Wb(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->fT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->pT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->dT:J

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->zta(Lcom/android/server/wm/OpPowerConsumpStats$wtn;J)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->zT:Lcom/android/server/wm/OpPowerConsumpStats$rtg;

    invoke-static {v0, p1}, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->zta(Lcom/android/server/wm/OpPowerConsumpStats$rtg;I)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->dT:J

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->zta(Lcom/android/server/wm/OpPowerConsumpStats$wtn;J)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->CT:Lcom/android/server/wm/OpPowerConsumpStats$zta;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$zta;->you(Lcom/android/server/wm/OpPowerConsumpStats$zta;)Z

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->hq()V

    :goto_0
    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->rT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->vT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    :goto_1
    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->dT:J

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->zta(Lcom/android/server/wm/OpPowerConsumpStats$wtn;J)Z

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->fT:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->sT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->dT:J

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->zta(Lcom/android/server/wm/OpPowerConsumpStats$wtn;J)Z

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->fT:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->tT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->dT:J

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->zta(Lcom/android/server/wm/OpPowerConsumpStats$wtn;J)Z

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->fT:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->wT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->dT:J

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->zta(Lcom/android/server/wm/OpPowerConsumpStats$wtn;J)Z

    :cond_4
    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->fT:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->xT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->dT:J

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->zta(Lcom/android/server/wm/OpPowerConsumpStats$wtn;J)Z

    :cond_5
    const-string v0, "plug"

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->sc(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->Tb(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->ear(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private Wp()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cT:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->VS:Lcom/android/server/wm/OpPowerConsumpStats$sis;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private Xc()V
    .locals 1

    const-string p0, "OPCS"

    const-string v0, "# dump # VERSION # 19053001"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private Xp()V
    .locals 1

    const-string v0, "clearFragment"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->lT:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mT:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->yT:Lcom/android/server/wm/OpPowerConsumpStats$kth;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$kth;->you(Lcom/android/server/wm/OpPowerConsumpStats$kth;)V

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->zT:Lcom/android/server/wm/OpPowerConsumpStats$rtg;

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->ssp(Lcom/android/server/wm/OpPowerConsumpStats$rtg;)V

    return-void
.end method

.method private Yp()V
    .locals 1

    const-string v0, "clearLocalData"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Mo:Landroid/util/AtomicFile;

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Landroid/util/AtomicFile;)V

    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStats;->jU:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->TS:Landroid/util/AtomicFile;

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Landroid/util/AtomicFile;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Mp()V

    :cond_0
    return-void
.end method

.method private Zp()V
    .locals 1

    const-string v0, "clearPowerConsumption"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->CT:Lcom/android/server/wm/OpPowerConsumpStats$zta;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$zta;->tsu(Lcom/android/server/wm/OpPowerConsumpStats$zta;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->BT:Ljava/util/HashMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->DT:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ET:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->FT:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->GT:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->IT:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->KT:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->LT:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->MT:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->NT:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->OT:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->PT:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->QT:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->hT:Z

    return-void
.end method

.method private _p()V
    .locals 1

    const-string v0, "clearSpecificCounter"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->nT:Lcom/android/server/wm/OpPowerConsumpStats$igw;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$igw;->you(Lcom/android/server/wm/OpPowerConsumpStats$igw;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->qT:Lcom/android/server/wm/OpPowerConsumpStats$igw;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$igw;->you(Lcom/android/server/wm/OpPowerConsumpStats$igw;)V

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->uT:Lcom/android/server/wm/OpPowerConsumpStats$igw;

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats$igw;->you(Lcom/android/server/wm/OpPowerConsumpStats$igw;)V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStats;->RU:Z

    return v0
.end method

.method static synthetic access$3500()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStats;->jU:Z

    return v0
.end method

.method private acquireWakeLock()V
    .locals 3

    const-string v0, "acquireWakeLock"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "OPCS"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    return-void
.end method

.method private aq()V
    .locals 1

    const-string v0, "clearSpecificTimer"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->sis(Lcom/android/server/wm/OpPowerConsumpStats$wtn;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->pT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->sis(Lcom/android/server/wm/OpPowerConsumpStats$wtn;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->rT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->sis(Lcom/android/server/wm/OpPowerConsumpStats$wtn;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->sT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->sis(Lcom/android/server/wm/OpPowerConsumpStats$wtn;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->tT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->sis(Lcom/android/server/wm/OpPowerConsumpStats$wtn;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->vT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->sis(Lcom/android/server/wm/OpPowerConsumpStats$wtn;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->wT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->sis(Lcom/android/server/wm/OpPowerConsumpStats$wtn;)V

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->xT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->sis(Lcom/android/server/wm/OpPowerConsumpStats$wtn;)V

    return-void
.end method

.method private b(J)J
    .locals 4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "calculateReportTime tRealStartTime:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    sget-wide v0, Lcom/android/server/wm/OpPowerConsumpStats;->TU:J

    const-wide/32 v2, 0x5265c00

    sub-long/2addr v2, v0

    add-long/2addr p1, v2

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sget-wide v0, Lcom/android/server/wm/OpPowerConsumpStats;->TU:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr p0, v0

    return-wide p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "calculateReportTime Exception e:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OPCS"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method static synthetic bio(Lcom/android/server/wm/OpPowerConsumpStats;)Lcom/android/server/wm/OpPowerConsumpStats$gck;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_S:Lcom/android/server/wm/OpPowerConsumpStats$gck;

    return-object p0
.end method

.method private bq()V
    .locals 6

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->CT:Lcom/android/server/wm/OpPowerConsumpStats$zta;

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats$zta;->zta(Lcom/android/server/wm/OpPowerConsumpStats$zta;)Ljava/util/HashMap;

    move-result-object p0

    const-string v0, "OPCS"

    const-string v1, "# dump # dumpAppForeground # begin #"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# dump # dumpAppForeground # i :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " |pkg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " |duration:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "# dump # dumpAppForeground # end #"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic bud(Lcom/android/server/wm/OpPowerConsumpStats;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->BT:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic bvj(Lcom/android/server/wm/OpPowerConsumpStats;)Lcom/android/server/wm/WindowManagerService;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method static synthetic cgv(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Xc()V

    return-void
.end method

.method static synthetic cjf(Lcom/android/server/wm/OpPowerConsumpStats;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gT:Z

    return p0
.end method

.method static synthetic cno(Lcom/android/server/wm/OpPowerConsumpStats;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private cq()V
    .locals 5

    const-string v0, "OPCS"

    const-string v1, "# dump # dumpBaseEventList # begin #"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ZT:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ZT:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/OpPowerConsumpStats$you;

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# dump # mBaseEventList # i:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " |b:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "# dump # dumpBaseEventList # end #"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic dma(Lcom/android/server/wm/OpPowerConsumpStats;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    return p0
.end method

.method private dq()V
    .locals 5

    const-string v0, "OPCS"

    const-string v1, "# dump # dumpPowerConsumptionList # begin #"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->DT:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->DT:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/OpPowerConsumpStats$bio;

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# dump # dumpPowerConsumptionList # i:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " |pc:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "# dump # dumpPowerConsumptionList # end #"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic ear(Lcom/android/server/wm/OpPowerConsumpStats;)Lcom/android/server/wm/OpPowerConsumpStats$gck;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->aT:Lcom/android/server/wm/OpPowerConsumpStats$gck;

    return-object p0
.end method

.method private declared-synchronized ear(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeBaseRecordPoint eventType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/wm/OpPowerConsumpStats;->jU:Z

    if-nez v1, :cond_0

    const-string v0, "makeBaseRecordPoint sDEBUGVERIFY is false, return"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/OpPowerConsumpStats;->zp()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget v3, v15, Lcom/android/server/wm/OpPowerConsumpStats;->RT:I

    const/4 v1, 0x0

    const-string v2, "powerLevel"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v1, v15, Lcom/android/server/wm/OpPowerConsumpStats;->TT:I

    iget v2, v15, Lcom/android/server/wm/OpPowerConsumpStats;->TT:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v15, Lcom/android/server/wm/OpPowerConsumpStats;->TT:I

    :cond_1
    :goto_0
    move v4, v1

    goto :goto_1

    :cond_2
    const-string v2, "screen"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v1, v15, Lcom/android/server/wm/OpPowerConsumpStats;->UT:I

    iget v2, v15, Lcom/android/server/wm/OpPowerConsumpStats;->UT:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v15, Lcom/android/server/wm/OpPowerConsumpStats;->UT:I

    goto :goto_0

    :cond_3
    const-string v2, "plug"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v1, v15, Lcom/android/server/wm/OpPowerConsumpStats;->VT:I

    iget v2, v15, Lcom/android/server/wm/OpPowerConsumpStats;->VT:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v15, Lcom/android/server/wm/OpPowerConsumpStats;->VT:I

    goto :goto_0

    :cond_4
    const-string v2, "doze"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v1, v15, Lcom/android/server/wm/OpPowerConsumpStats;->WT:I

    iget v2, v15, Lcom/android/server/wm/OpPowerConsumpStats;->WT:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v15, Lcom/android/server/wm/OpPowerConsumpStats;->WT:I

    goto :goto_0

    :cond_5
    const-string v2, "frontPkg"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v1, v15, Lcom/android/server/wm/OpPowerConsumpStats;->XT:I

    iget v2, v15, Lcom/android/server/wm/OpPowerConsumpStats;->XT:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v15, Lcom/android/server/wm/OpPowerConsumpStats;->XT:I

    goto :goto_0

    :goto_1
    iget v1, v15, Lcom/android/server/wm/OpPowerConsumpStats;->RT:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v15, Lcom/android/server/wm/OpPowerConsumpStats;->RT:I

    new-instance v14, Lcom/android/server/wm/OpPowerConsumpStats$you;

    iget-boolean v10, v15, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    iget-boolean v11, v15, Lcom/android/server/wm/OpPowerConsumpStats;->fT:Z

    iget-boolean v12, v15, Lcom/android/server/wm/OpPowerConsumpStats;->gT:Z

    iget v13, v15, Lcom/android/server/wm/OpPowerConsumpStats;->iT:I

    iget-object v5, v15, Lcom/android/server/wm/OpPowerConsumpStats;->jT:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v1, v14

    move-object/from16 v2, p0

    move-object/from16 v16, v5

    move-object/from16 v5, p1

    move-object v0, v14

    move-object/from16 v14, v16

    move-object/from16 v15, p2

    :try_start_2
    invoke-direct/range {v1 .. v15}, Lcom/android/server/wm/OpPowerConsumpStats$you;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;IILjava/lang/String;JJZZZILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v1, p0

    :try_start_3
    invoke-direct {v1, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->you(Lcom/android/server/wm/OpPowerConsumpStats$you;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v15

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method private eq()V
    .locals 9

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x63

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->aU:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    invoke-virtual {v1}, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->Xc()V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# dump # mScreenState # "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OPCS"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# dump # mPlugState # "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->fT:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# dump # mIdleState # "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gT:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# dump # mPowerLevel # "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->iT:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# dump # sENABLE # "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/android/server/wm/OpPowerConsumpStats;->RU:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# dump # randomInterval # "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/wm/OpPowerConsumpStats;->SU:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# dump # reportInstalledApp # "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/android/server/wm/OpPowerConsumpStats;->xV:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# dump # reportTimePoint # "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/android/server/wm/OpPowerConsumpStats;->TU:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# dump # calculateIntervalThreshold # "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/android/server/wm/OpPowerConsumpStats;->UU:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# dump # bootDelayTime # "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/android/server/wm/OpPowerConsumpStats;->VU:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_S:Lcom/android/server/wm/OpPowerConsumpStats$gck;

    if-eqz v1, :cond_1

    iget-wide v4, v1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->sS:J

    invoke-direct {p0, v4, v5}, Lcom/android/server/wm/OpPowerConsumpStats;->b(J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# dump # timeLeft # "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " |format-minute:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v6, 0x3c

    div-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_S:Lcom/android/server/wm/OpPowerConsumpStats$gck;

    const-string v4, "dumpState()"

    invoke-virtual {v1, v4}, Lcom/android/server/wm/OpPowerConsumpStats$gck;->dump(Ljava/lang/String;)V

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# dump # mDozeFragment # size:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->lT:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->lT:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, " # "

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/OpPowerConsumpStats$cno;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "# dump # mDozeFragment # i:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/wm/OpPowerConsumpStats$cno;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v4, v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# dump # mChargeFragment # size:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mT:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mT:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# dump # mChargeFragment # i:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v2, v0

    goto :goto_1

    :cond_3
    return-void
.end method

.method private fq()V
    .locals 1

    const-string v0, "generatePowerConsumptionData"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->tc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->GT:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Landroid/util/SparseArray;)V

    return-void
.end method

.method static synthetic fto(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->sq()V

    return-void
.end method

.method static synthetic gck(Lcom/android/server/wm/OpPowerConsumpStats;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->fT:Z

    return p0
.end method

.method private getBatteryManagerInternal()Landroid/os/BatteryManagerInternal;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    if-nez v0, :cond_0

    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    if-nez v0, :cond_0

    const-string v0, "OPCS"

    const-string v1, "BatteryManagerInternal not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    return-object p0
.end method

.method public static getInstance()Lcom/android/server/wm/OpPowerConsumpStats;
    .locals 1

    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats;->sInstance:Lcom/android/server/wm/OpPowerConsumpStats;

    return-object v0
.end method

.method private getOsVersion()Ljava/lang/String;
    .locals 1

    const-string p0, "ro.build.version.ota"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "Hydrogen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Hydrogen "

    goto :goto_0

    :cond_0
    const-string v0, "Oxygen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "Oxygen "

    goto :goto_0

    :cond_1
    const-string p0, ""

    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getPlugType()I
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->getBatteryManagerInternal()Landroid/os/BatteryManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/BatteryManagerInternal;->getPlugType()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private gq()V
    .locals 1

    const-string v0, "handleException"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Tp()V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Vp()V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->sq()V

    return-void
.end method

.method static synthetic gwm(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->iq()V

    return-void
.end method

.method static synthetic hmo(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->acquireWakeLock()V

    return-void
.end method

.method private hq()V
    .locals 3

    const-string v0, "handlePastBatteryStatsRelated"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->XS:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->XS:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->hT:Z

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Pp()V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Np()V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Op()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePastBatteryStatsRelated Exception e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPCS"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->gq()V

    :goto_0
    return-void
.end method

.method static synthetic ibl(Lcom/android/server/wm/OpPowerConsumpStats;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->jT:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic igw(Lcom/android/server/wm/OpPowerConsumpStats;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->getOsVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initOnlineConfig()V
    .locals 5

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->YS:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/wm/OpPowerConsumpStats$ssp;

    invoke-direct {v3, p0}, Lcom/android/server/wm/OpPowerConsumpStats$ssp;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    const-string v4, "OPCS"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->SS:Lcom/oneplus/config/ConfigObserver;

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->SS:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->YS:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    sget-wide v1, Lcom/android/server/wm/OpPowerConsumpStats;->VU:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private iq()V
    .locals 1

    const-string v0, "frontPkg"

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->sc(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->wc(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic ire(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->uq()V

    return-void
.end method

.method private jq()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->zT:Lcom/android/server/wm/OpPowerConsumpStats$rtg;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->tsu(Lcom/android/server/wm/OpPowerConsumpStats$rtg;)Z

    const-string v0, "plug"

    const-string v1, "FASTCHARGE"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/OpPowerConsumpStats;->ear(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic ka(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->xc(Ljava/lang/String;)V

    return-void
.end method

.method private kq()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->rT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->you(Lcom/android/server/wm/OpPowerConsumpStats$wtn;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->vT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->zta(Lcom/android/server/wm/OpPowerConsumpStats$wtn;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->zT:Lcom/android/server/wm/OpPowerConsumpStats$rtg;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->you(Lcom/android/server/wm/OpPowerConsumpStats$rtg;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->rT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->zta(Lcom/android/server/wm/OpPowerConsumpStats$wtn;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->vT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->you(Lcom/android/server/wm/OpPowerConsumpStats$wtn;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->zT:Lcom/android/server/wm/OpPowerConsumpStats$rtg;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->sis(Lcom/android/server/wm/OpPowerConsumpStats$rtg;)V

    :goto_0
    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->fT:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->sT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->you(Lcom/android/server/wm/OpPowerConsumpStats$wtn;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->wT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->zta(Lcom/android/server/wm/OpPowerConsumpStats$wtn;)Z

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->fT:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->sT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->zta(Lcom/android/server/wm/OpPowerConsumpStats$wtn;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->wT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->you(Lcom/android/server/wm/OpPowerConsumpStats$wtn;)Z

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->fT:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->tT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->you(Lcom/android/server/wm/OpPowerConsumpStats$wtn;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->xT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->zta(Lcom/android/server/wm/OpPowerConsumpStats$wtn;)Z

    goto :goto_2

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->fT:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->tT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->zta(Lcom/android/server/wm/OpPowerConsumpStats$wtn;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->xT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->you(Lcom/android/server/wm/OpPowerConsumpStats$wtn;)Z

    :cond_4
    :goto_2
    const-string v0, "screen"

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->sc(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->wc(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic kth(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->nq()V

    return-void
.end method

.method static synthetic la(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic le()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStats;->fU:Z

    return v0
.end method

.method static synthetic les(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->eq()V

    return-void
.end method

.method private lq()V
    .locals 6

    const-string v0, "initConsumption"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_S:Lcom/android/server/wm/OpPowerConsumpStats$gck;

    iget-object v0, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->IS:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->DT:Landroid/util/SparseArray;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->DT:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->DT:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/OpPowerConsumpStats$bio;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->BT:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->pkgName:Ljava/lang/String;

    iget-wide v4, v1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->totalTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initConsumption pkgName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " |totalTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->totalTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->IT:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_S:Lcom/android/server/wm/OpPowerConsumpStats$gck;

    iget-object v1, v1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->JS:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->NT:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_S:Lcom/android/server/wm/OpPowerConsumpStats$gck;

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->KS:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic lqr(Lcom/android/server/wm/OpPowerConsumpStats;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->YS:Landroid/os/Handler;

    return-object p0
.end method

.method private mq()V
    .locals 7

    const-string v0, "initScreenOnTimer io close exception :"

    const-string v1, "OPCS"

    const-string v2, "initScreenOnTimer"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/File;

    const-string v3, "/mnt/vendor/persist/engineermode/screenontimebyhours"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const-string v0, "file not exists : /mnt/vendor/persist/engineermode/screenontimebyhours"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v3, v5

    goto :goto_4

    :catch_1
    move-exception v2

    move-object v3, v5

    goto :goto_1

    :catch_2
    move-exception v2

    move-object v3, v5

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_3
    move-exception v2

    :goto_1
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initScreenOnTimer NumberFormatException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_4
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :catch_5
    move-exception v2

    :goto_2
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initScreenOnTimer io exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v3, :cond_2

    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_3

    :catch_6
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_2
    :goto_3
    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    const-string v1, "ScreenON"

    invoke-direct {v0, p0, v1, v4}, Lcom/android/server/wm/OpPowerConsumpStats$qbh;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;F)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->aU:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->aU:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    invoke-virtual {p0}, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->start()V

    return-void

    :goto_4
    if-eqz v3, :cond_3

    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_5

    :catch_7
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_5
    throw p0
.end method

.method private static myLog(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStats;->gU:Z

    if-eqz v0, :cond_0

    const-string v0, "OPCS"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private nq()V
    .locals 8

    const-string v0, "initStatistics"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->qq()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_S:Lcom/android/server/wm/OpPowerConsumpStats$gck;

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "initStatistics Not load correctly"

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Yp()V

    iput-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_S:Lcom/android/server/wm/OpPowerConsumpStats$gck;

    :cond_1
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_S:Lcom/android/server/wm/OpPowerConsumpStats$gck;

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->getOsVersion()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_S:Lcom/android/server/wm/OpPowerConsumpStats$gck;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$gck;->sS:J

    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/OpPowerConsumpStats;->b(J)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_S:Lcom/android/server/wm/OpPowerConsumpStats$gck;

    iget-object v4, v4, Lcom/android/server/wm/OpPowerConsumpStats$gck;->rS:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "initStatistics version change"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Yp()V

    iput-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_S:Lcom/android/server/wm/OpPowerConsumpStats$gck;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->kT:Z

    goto :goto_1

    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const-wide/32 v4, 0x5265c00

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-gez v6, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v2, v6

    cmp-long v6, v6, v4

    if-gez v6, :cond_3

    const-string v0, "initStatistics load correctly, continue to statistic"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_S:Lcom/android/server/wm/OpPowerConsumpStats$gck;

    iget-boolean v0, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->uS:Z

    iput-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->kT:Z

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->lq()V

    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStats;->jU:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->pq()V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v0, v6, v2

    if-lez v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    cmp-long v0, v6, v4

    if-gez v0, :cond_4

    const-string v0, "initStatistics load correctly, report and start new statistics"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_S:Lcom/android/server/wm/OpPowerConsumpStats$gck;

    iget-boolean v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->uS:Z

    iput-boolean v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->kT:Z

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->rtg(Lcom/android/server/wm/OpPowerConsumpStats$gck;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->vq()V

    goto :goto_0

    :cond_4
    const-string v0, "initStatistics clear data and start new statistics"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Yp()V

    iput-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_S:Lcom/android/server/wm/OpPowerConsumpStats$gck;

    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->sq()V

    return-void
.end method

.method static synthetic obl(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Qp()V

    return-void
.end method

.method static synthetic oif(Lcom/android/server/wm/OpPowerConsumpStats;)Landroid/os/BatteryManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->WS:Landroid/os/BatteryManager;

    return-object p0
.end method

.method private oq()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cT:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->VS:Lcom/android/server/wm/OpPowerConsumpStats$sis;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :cond_0
    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic oxb(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Rp()V

    return-void
.end method

.method private pc(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OpPowerConsumpStats$ywr;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calculateKernelWakeLocks from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->IT:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->XS:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Timer;

    const/4 v6, 0x2

    invoke-static {v5, v2, v3, v6}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-lez v11, :cond_0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v11, p0, Lcom/android/server/wm/OpPowerConsumpStats;->KT:Ljava/util/HashMap;

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    new-instance v12, Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v13

    invoke-direct {v12, v4, v7, v8, v13}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;-><init>(Ljava/lang/String;JI)V

    if-eqz v11, :cond_1

    invoke-static {v11, v12}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->you(Lcom/android/server/wm/OpPowerConsumpStats$ywr;Lcom/android/server/wm/OpPowerConsumpStats$ywr;)Z

    move-result v11

    if-eqz v11, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calculateKernelWakeLocks # continue key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " |totalTimeMillis:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-static {v4}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v11, "handle_plug_event"

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    iget-object v13, p0, Lcom/android/server/wm/OpPowerConsumpStats;->KT:Ljava/util/HashMap;

    invoke-virtual {v13, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    if-nez v12, :cond_3

    new-instance v12, Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    invoke-direct {v12, v4, v7, v8, v5}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;-><init>(Ljava/lang/String;JI)V

    goto :goto_2

    :cond_3
    new-instance v13, Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-direct {v13, v12}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;-><init>(Lcom/android/server/wm/OpPowerConsumpStats$ywr;)V

    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    invoke-static {v13, v7, v8, v5}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->zta(Lcom/android/server/wm/OpPowerConsumpStats$ywr;JI)V

    move-object v12, v13

    :goto_2
    const/4 v5, 0x1

    iget-boolean v6, p0, Lcom/android/server/wm/OpPowerConsumpStats;->hT:Z

    if-eqz v6, :cond_4

    iget-object v5, p0, Lcom/android/server/wm/OpPowerConsumpStats;->LT:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-static {v12, v5}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->sis(Lcom/android/server/wm/OpPowerConsumpStats$ywr;Lcom/android/server/wm/OpPowerConsumpStats$ywr;)Z

    move-result v5

    :cond_4
    if-eqz v5, :cond_6

    iget-wide v5, v12, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mTime:J

    cmp-long v5, v5, v9

    if-lez v5, :cond_6

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/wm/OpPowerConsumpStats;->IT:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {v0, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calculateKernelWakeLocks # wakeLock_new = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_7
    return-object v0
.end method

.method private pq()V
    .locals 10

    const-string v0, "loadBaseEventFromDisk"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->TS:Landroid/util/AtomicFile;

    const-string v1, "OPCS"

    if-nez v0, :cond_0

    const-string p0, "loadBaseEventFromDisk mBaseData is null, return"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->TS:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    :goto_0
    const/4 v6, 0x1

    if-eq v5, v6, :cond_8

    if-eqz v5, :cond_7

    const/4 v7, 0x2

    if-eq v5, v7, :cond_1

    const/4 v6, 0x3

    goto/16 :goto_2

    :cond_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "BaseEvent"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    new-instance v5, Lcom/android/server/wm/OpPowerConsumpStats$you;

    invoke-direct {v5, p0}, Lcom/android/server/wm/OpPowerConsumpStats$you;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    const-string v7, "totalSeq"

    invoke-interface {v2, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Lcom/android/server/wm/OpPowerConsumpStats$you;->WR:I

    iget v7, v5, Lcom/android/server/wm/OpPowerConsumpStats$you;->WR:I

    iput v7, p0, Lcom/android/server/wm/OpPowerConsumpStats;->RT:I

    iget v7, p0, Lcom/android/server/wm/OpPowerConsumpStats;->RT:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/android/server/wm/OpPowerConsumpStats;->RT:I

    const-string v7, "eventType"

    invoke-interface {v2, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/server/wm/OpPowerConsumpStats$you;->eventType:Ljava/lang/String;

    const-string v7, "typeSeq"

    invoke-interface {v2, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Lcom/android/server/wm/OpPowerConsumpStats$you;->XR:I

    const-string v7, "powerLevel"

    iget-object v8, v5, Lcom/android/server/wm/OpPowerConsumpStats$you;->eventType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v8, "frontPkg"

    if-eqz v7, :cond_2

    :try_start_2
    iget v7, v5, Lcom/android/server/wm/OpPowerConsumpStats$you;->XR:I

    iput v7, p0, Lcom/android/server/wm/OpPowerConsumpStats;->TT:I

    iget v7, p0, Lcom/android/server/wm/OpPowerConsumpStats;->TT:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/android/server/wm/OpPowerConsumpStats;->TT:I

    goto :goto_1

    :cond_2
    const-string v7, "screen"

    iget-object v9, v5, Lcom/android/server/wm/OpPowerConsumpStats$you;->eventType:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget v7, v5, Lcom/android/server/wm/OpPowerConsumpStats$you;->XR:I

    iput v7, p0, Lcom/android/server/wm/OpPowerConsumpStats;->UT:I

    iget v7, p0, Lcom/android/server/wm/OpPowerConsumpStats;->UT:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/android/server/wm/OpPowerConsumpStats;->UT:I

    goto :goto_1

    :cond_3
    const-string v7, "plug"

    iget-object v9, v5, Lcom/android/server/wm/OpPowerConsumpStats$you;->eventType:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget v7, v5, Lcom/android/server/wm/OpPowerConsumpStats$you;->XR:I

    iput v7, p0, Lcom/android/server/wm/OpPowerConsumpStats;->VT:I

    iget v7, p0, Lcom/android/server/wm/OpPowerConsumpStats;->VT:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/android/server/wm/OpPowerConsumpStats;->VT:I

    goto :goto_1

    :cond_4
    const-string v7, "doze"

    iget-object v9, v5, Lcom/android/server/wm/OpPowerConsumpStats$you;->eventType:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget v7, v5, Lcom/android/server/wm/OpPowerConsumpStats$you;->XR:I

    iput v7, p0, Lcom/android/server/wm/OpPowerConsumpStats;->WT:I

    iget v7, p0, Lcom/android/server/wm/OpPowerConsumpStats;->WT:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/android/server/wm/OpPowerConsumpStats;->WT:I

    goto :goto_1

    :cond_5
    iget-object v7, v5, Lcom/android/server/wm/OpPowerConsumpStats$you;->eventType:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget v7, v5, Lcom/android/server/wm/OpPowerConsumpStats$you;->XR:I

    iput v7, p0, Lcom/android/server/wm/OpPowerConsumpStats;->XT:I

    iget v7, p0, Lcom/android/server/wm/OpPowerConsumpStats;->XT:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/android/server/wm/OpPowerConsumpStats;->XT:I

    :cond_6
    :goto_1
    const-string v6, "relativeTime"

    invoke-interface {v2, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/server/wm/OpPowerConsumpStats$you;->YR:J

    const-string v6, "realTime"

    invoke-interface {v2, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/server/wm/OpPowerConsumpStats$you;->ZR:J

    const-string v6, "screenState"

    invoke-interface {v2, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/android/server/wm/OpPowerConsumpStats$you;->screenState:Z

    const-string v6, "plugState"

    invoke-interface {v2, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/android/server/wm/OpPowerConsumpStats$you;->_R:Z

    const-string v6, "idleState"

    invoke-interface {v2, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/android/server/wm/OpPowerConsumpStats$you;->aS:Z

    const-string v6, "powerlevelState"

    invoke-interface {v2, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/android/server/wm/OpPowerConsumpStats$you;->bS:I

    invoke-interface {v2, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/wm/OpPowerConsumpStats$you;->cS:Ljava/lang/String;

    const-string v6, "description"

    invoke-interface {v2, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/wm/OpPowerConsumpStats$you;->description:Ljava/lang/String;

    iget v6, v5, Lcom/android/server/wm/OpPowerConsumpStats$you;->WR:I

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_7
    :goto_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto/16 :goto_0

    :cond_8
    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ZT:Landroid/util/SparseArray;

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->cq()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    move-object v3, v4

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v4, v3

    goto :goto_4

    :catch_1
    move-exception p0

    :goto_3
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadBaseEventFromDisk Exception e:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :goto_4
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0
.end method

.method static synthetic qbh(Lcom/android/server/wm/OpPowerConsumpStats;)I
    .locals 0

    iget p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->iT:I

    return p0
.end method

.method private qc(Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/OpPowerConsumpStats$bio;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CalculatePowerConsumption mNeedConsiderPast:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->hT:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->DT:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatterySipper;

    if-eqz v3, :cond_7

    iget-wide v4, v3, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_7

    sget-object v4, Lcom/android/server/wm/vdb;->RR:[I

    iget-object v5, v3, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    new-instance v4, Lcom/android/server/wm/OpPowerConsumpStats$bio;

    iget-object v5, v3, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-direct {p0, v5}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Lcom/android/internal/os/BatterySipper$DrainType;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/server/wm/OpPowerConsumpStats$bio;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/Integer;)V

    goto :goto_1

    :cond_0
    new-instance v4, Lcom/android/server/wm/OpPowerConsumpStats$bio;

    iget-object v5, v3, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/server/wm/OpPowerConsumpStats$bio;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/Integer;)V

    :goto_1
    iget-object v5, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ET:Landroid/util/SparseArray;

    iget-object v8, v4, Lcom/android/server/wm/OpPowerConsumpStats$bio;->uid:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/OpPowerConsumpStats$bio;

    invoke-static {v4, v5}, Lcom/android/server/wm/OpPowerConsumpStats$bio;->zta(Lcom/android/server/wm/OpPowerConsumpStats$bio;Lcom/android/server/wm/OpPowerConsumpStats$bio;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v5, "handle_plug_event"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ET:Landroid/util/SparseArray;

    iget-object v9, v4, Lcom/android/server/wm/OpPowerConsumpStats$bio;->uid:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    iget-object v8, v4, Lcom/android/server/wm/OpPowerConsumpStats$bio;->uid:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/OpPowerConsumpStats$bio;

    if-nez v8, :cond_3

    invoke-static {v4, v3}, Lcom/android/server/wm/OpPowerConsumpStats$bio;->zta(Lcom/android/server/wm/OpPowerConsumpStats$bio;Lcom/android/internal/os/BatterySipper;)V

    goto :goto_2

    :cond_3
    invoke-static {v4, v3, v8}, Lcom/android/server/wm/OpPowerConsumpStats$bio;->zta(Lcom/android/server/wm/OpPowerConsumpStats$bio;Lcom/android/internal/os/BatterySipper;Lcom/android/server/wm/OpPowerConsumpStats$bio;)V

    :goto_2
    invoke-static {v4}, Lcom/android/server/wm/OpPowerConsumpStats$bio;->zta(Lcom/android/server/wm/OpPowerConsumpStats$bio;)Z

    move-result v3

    iget-boolean v8, p0, Lcom/android/server/wm/OpPowerConsumpStats;->hT:Z

    if-eqz v8, :cond_4

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->FT:Landroid/util/SparseArray;

    iget-object v8, v4, Lcom/android/server/wm/OpPowerConsumpStats$bio;->uid:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/OpPowerConsumpStats$bio;

    invoke-static {v4, v3}, Lcom/android/server/wm/OpPowerConsumpStats$bio;->you(Lcom/android/server/wm/OpPowerConsumpStats$bio;Lcom/android/server/wm/OpPowerConsumpStats$bio;)Z

    move-result v3

    :cond_4
    if-eqz v3, :cond_6

    iget-wide v8, v4, Lcom/android/server/wm/OpPowerConsumpStats$bio;->totalPowerMah:D

    cmpl-double v3, v8, v6

    if-lez v3, :cond_6

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->DT:Landroid/util/SparseArray;

    iget-object v5, v4, Lcom/android/server/wm/OpPowerConsumpStats$bio;->uid:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_5
    iget-object v3, v4, Lcom/android/server/wm/OpPowerConsumpStats$bio;->uid:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CalculatePowerConsumption # pcNew = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    return-object v0
.end method

.method private qq()Z
    .locals 22

    move-object/from16 v1, p0

    const-string v2, "uid"

    const-string v3, "loadFromDisk"

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/wm/OpPowerConsumpStats;->Mo:Landroid/util/AtomicFile;

    const-string v4, "OPCS"

    const/4 v5, 0x0

    if-nez v3, :cond_0

    const-string v1, "loadFromDisk mStatisticalData is null, return"

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    new-instance v3, Lcom/android/server/wm/OpPowerConsumpStats$gck;

    invoke-direct {v3, v1}, Lcom/android/server/wm/OpPowerConsumpStats$gck;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    const/4 v7, 0x0

    :try_start_0
    iget-object v8, v1, Lcom/android/server/wm/OpPowerConsumpStats;->Mo:Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    move v10, v5

    :goto_0
    const/4 v11, 0x1

    if-eq v9, v11, :cond_17

    if-eqz v9, :cond_1

    const/4 v11, 0x2

    if-eq v9, v11, :cond_2

    const/4 v11, 0x3

    :cond_1
    move-object v5, v6

    move-object/from16 v16, v8

    goto/16 :goto_8

    :cond_2
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-string v13, "duration"

    if-eqz v12, :cond_3

    :try_start_2
    const-string v12, "os_version"

    invoke-interface {v6, v7, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v3, Lcom/android/server/wm/OpPowerConsumpStats$gck;->rS:Ljava/lang/String;

    const-string v12, "realStartTime"

    invoke-interface {v6, v7, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v3, Lcom/android/server/wm/OpPowerConsumpStats$gck;->sS:J

    const-string v12, "realEndTime"

    invoke-interface {v6, v7, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v3, Lcom/android/server/wm/OpPowerConsumpStats$gck;->tS:J

    invoke-interface {v6, v7, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v3, Lcom/android/server/wm/OpPowerConsumpStats$gck;->duration:J

    const-string v12, "firstReport"

    invoke-interface {v6, v7, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    iput-boolean v12, v3, Lcom/android/server/wm/OpPowerConsumpStats$gck;->uS:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v16, v8

    goto/16 :goto_e

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v7, v8

    goto/16 :goto_d

    :cond_3
    :goto_1
    :try_start_3
    const-string v12, "totalDischarge"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-string v14, "count"

    if-eqz v12, :cond_4

    :try_start_4
    invoke-interface {v6, v7, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v3, Lcom/android/server/wm/OpPowerConsumpStats$gck;->vS:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v10, v10, 0x1

    :cond_4
    :try_start_5
    const-string v12, "totalDischargeDuration"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v12, :cond_5

    :try_start_6
    invoke-interface {v6, v7, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v16, v6

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v3, Lcom/android/server/wm/OpPowerConsumpStats$gck;->wS:J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_5
    move-object/from16 v16, v6

    :goto_2
    :try_start_7
    const-string v5, "totalChargeDuration"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move-object/from16 v5, v16

    invoke-interface {v5, v7, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object/from16 v16, v8

    :try_start_8
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v3, Lcom/android/server/wm/OpPowerConsumpStats$gck;->xS:J

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_6
    move-object/from16 v5, v16

    move-object/from16 v16, v8

    :goto_3
    const-string v6, "screenOnDischarge"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, 0x0

    invoke-interface {v5, v6, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$gck;->yS:I

    add-int/lit8 v10, v10, 0x1

    :cond_7
    const-string v6, "totalScreenOnDuration"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x0

    invoke-interface {v5, v6, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$gck;->zS:J

    add-int/lit8 v10, v10, 0x1

    :cond_8
    const-string v6, "screenOnDischargeDuration"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x0

    invoke-interface {v5, v6, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$gck;->AS:J

    add-int/lit8 v10, v10, 0x1

    :cond_9
    const-string v6, "screenOnChargeDuration"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v6, 0x0

    invoke-interface {v5, v6, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$gck;->BS:J

    add-int/lit8 v10, v10, 0x1

    :cond_a
    const-string v6, "screenOffDischarge"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    const/4 v6, 0x0

    invoke-interface {v5, v6, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$gck;->CS:I

    add-int/lit8 v10, v10, 0x1

    :cond_b
    const-string v6, "totalScreenOffDuration"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const/4 v6, 0x0

    invoke-interface {v5, v6, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$gck;->DS:J

    add-int/lit8 v10, v10, 0x1

    :cond_c
    const-string v6, "screenOffDischargeDuration"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v6, 0x0

    invoke-interface {v5, v6, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$gck;->ES:J

    add-int/lit8 v10, v10, 0x1

    :cond_d
    const-string v6, "screenOffChargeDuration"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v6, 0x0

    invoke-interface {v5, v6, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$gck;->FS:J

    add-int/lit8 v10, v10, 0x1

    :cond_e
    const-string v6, "dozeFragment"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const-string v7, "endPowerLevel"

    const-string v8, "beginPowerLevel"

    const-string v12, "realBeginTime"

    const-string v15, "relativeEndTime"

    move/from16 v18, v9

    const-string v9, "relativeBeginTime"

    if-eqz v6, :cond_f

    :try_start_9
    new-instance v6, Lcom/android/server/wm/OpPowerConsumpStats$cno;

    invoke-direct {v6, v1}, Lcom/android/server/wm/OpPowerConsumpStats$cno;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    move/from16 v19, v10

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v20, v11

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v6, Lcom/android/server/wm/OpPowerConsumpStats$cno;->eS:J

    const/4 v10, 0x0

    invoke-interface {v5, v10, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v6, Lcom/android/server/wm/OpPowerConsumpStats$cno;->fS:J

    const/4 v10, 0x0

    invoke-interface {v5, v10, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v6, Lcom/android/server/wm/OpPowerConsumpStats$cno;->duration:J

    const/4 v10, 0x0

    invoke-interface {v5, v10, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v6, Lcom/android/server/wm/OpPowerConsumpStats$cno;->gS:J

    const/4 v10, 0x0

    invoke-interface {v5, v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v6, Lcom/android/server/wm/OpPowerConsumpStats$cno;->hS:I

    invoke-interface {v5, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v6, Lcom/android/server/wm/OpPowerConsumpStats$cno;->iS:I

    const-string v11, "exitReason"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lcom/android/server/wm/OpPowerConsumpStats$cno;->oS:Ljava/lang/String;

    iget-object v11, v3, Lcom/android/server/wm/OpPowerConsumpStats$gck;->GS:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_f
    move/from16 v19, v10

    move-object/from16 v20, v11

    :goto_4
    const-string v6, "chargeFragment"

    move-object/from16 v11, v20

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    new-instance v6, Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    invoke-direct {v6, v1}, Lcom/android/server/wm/OpPowerConsumpStats$tsu;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v20, v11

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v6, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->eS:J

    const/4 v9, 0x0

    invoke-interface {v5, v9, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v6, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->fS:J

    invoke-interface {v5, v9, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v6, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->duration:J

    invoke-interface {v5, v9, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v6, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->gS:J

    invoke-interface {v5, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->hS:I

    invoke-interface {v5, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->iS:I

    const-string v7, "screenOnDuration"

    invoke-interface {v5, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->jS:J

    const-string v7, "firstFullTimeToRelativeBeginTime"

    invoke-interface {v5, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->kS:J

    const-string v7, "plugType"

    invoke-interface {v5, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->lS:Ljava/lang/String;

    iget-object v7, v3, Lcom/android/server/wm/OpPowerConsumpStats$gck;->HS:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_10
    move-object/from16 v20, v11

    :goto_5
    const-string v6, "powerConsumption"

    move-object/from16 v7, v20

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    new-instance v6, Lcom/android/server/wm/OpPowerConsumpStats$bio;

    invoke-direct {v6, v1}, Lcom/android/server/wm/OpPowerConsumpStats$bio;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    const/4 v8, 0x0

    invoke-interface {v5, v8, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_11

    move-object v7, v8

    goto/16 :goto_6

    :cond_11
    invoke-interface {v5, v8, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, v6, Lcom/android/server/wm/OpPowerConsumpStats$bio;->uid:Ljava/lang/Integer;

    const-string v10, "drainType"

    invoke-interface {v5, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/android/server/wm/OpPowerConsumpStats$bio;->drainType:Ljava/lang/String;

    const-string v10, "pkgName"

    invoke-interface {v5, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/android/server/wm/OpPowerConsumpStats$bio;->pkgName:Ljava/lang/String;

    const-string v10, "versionName"

    invoke-interface {v5, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/android/server/wm/OpPowerConsumpStats$bio;->versionName:Ljava/lang/String;

    const-string v10, "versionCode"

    invoke-interface {v5, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v6, Lcom/android/server/wm/OpPowerConsumpStats$bio;->versionCode:I

    const-string v10, "totalTime"

    invoke-interface {v5, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v6, Lcom/android/server/wm/OpPowerConsumpStats$bio;->totalTime:J

    const-string v10, "totalPowerMah"

    invoke-interface {v5, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    iput-wide v10, v6, Lcom/android/server/wm/OpPowerConsumpStats$bio;->totalPowerMah:D

    const-string v10, "cpuPowerMah"

    invoke-interface {v5, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    iput-wide v10, v6, Lcom/android/server/wm/OpPowerConsumpStats$bio;->cpuPowerMah:D

    const-string v10, "audioPowerMah"

    invoke-interface {v5, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    iput-wide v10, v6, Lcom/android/server/wm/OpPowerConsumpStats$bio;->audioPowerMah:D

    const-string v10, "wakeLockPowerMah"

    invoke-interface {v5, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    iput-wide v10, v6, Lcom/android/server/wm/OpPowerConsumpStats$bio;->wakeLockPowerMah:D

    const-string v10, "mobileRadioPowerMah"

    invoke-interface {v5, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    iput-wide v10, v6, Lcom/android/server/wm/OpPowerConsumpStats$bio;->mobileRadioPowerMah:D

    const-string v10, "wifiPowerMah"

    invoke-interface {v5, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    iput-wide v10, v6, Lcom/android/server/wm/OpPowerConsumpStats$bio;->wifiPowerMah:D

    const-string v10, "bluetoothPowerMah"

    invoke-interface {v5, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    iput-wide v10, v6, Lcom/android/server/wm/OpPowerConsumpStats$bio;->bluetoothPowerMah:D

    const-string v10, "gpsPowerMah"

    invoke-interface {v5, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    iput-wide v10, v6, Lcom/android/server/wm/OpPowerConsumpStats$bio;->gpsPowerMah:D

    const-string v10, "sensorPowerMah"

    invoke-interface {v5, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    iput-wide v10, v6, Lcom/android/server/wm/OpPowerConsumpStats$bio;->sensorPowerMah:D

    const-string v10, "cameraPowerMah"

    invoke-interface {v5, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    iput-wide v10, v6, Lcom/android/server/wm/OpPowerConsumpStats$bio;->cameraPowerMah:D

    const-string v10, "flashlightPowerMah"

    invoke-interface {v5, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    iput-wide v10, v6, Lcom/android/server/wm/OpPowerConsumpStats$bio;->flashlightPowerMah:D

    const-string v10, "videoPowerMah"

    invoke-interface {v5, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    iput-wide v10, v6, Lcom/android/server/wm/OpPowerConsumpStats$bio;->videoPowerMah:D

    iget-object v8, v3, Lcom/android/server/wm/OpPowerConsumpStats$gck;->IS:Landroid/util/SparseArray;

    invoke-virtual {v8, v9, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_12
    const-string v6, "kernelWakeLocks"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const-string v8, "name"

    const-wide/16 v9, 0x0

    const-string v11, "time"

    if-eqz v6, :cond_14

    :try_start_a
    new-instance v6, Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-direct {v6}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;-><init>()V

    const/4 v12, 0x0

    invoke-interface {v5, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    cmp-long v13, v20, v9

    if-nez v13, :cond_13

    move-object v7, v12

    goto :goto_6

    :cond_13
    invoke-interface {v5, v12, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mName:Ljava/lang/String;

    invoke-interface {v5, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v6, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mTime:J

    invoke-interface {v5, v12, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v6, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mCount:I

    iget-object v9, v3, Lcom/android/server/wm/OpPowerConsumpStats$gck;->JS:Ljava/util/HashMap;

    iget-object v10, v6, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    const-string v6, "kernelWakeupReasons"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    new-instance v6, Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-direct {v6}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;-><init>()V

    const/4 v7, 0x0

    invoke-interface {v5, v7, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const-wide/16 v12, 0x0

    cmp-long v9, v9, v12

    if-nez v9, :cond_15

    :goto_6
    move-object v6, v5

    move-object/from16 v8, v16

    move/from16 v9, v18

    move/from16 v10, v19

    goto :goto_9

    :cond_15
    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mName:Ljava/lang/String;

    invoke-interface {v5, v7, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v6, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mTime:J

    invoke-interface {v5, v7, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mCount:I

    iget-object v8, v3, Lcom/android/server/wm/OpPowerConsumpStats$gck;->KS:Ljava/util/HashMap;

    iget-object v9, v6, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_16
    const/4 v7, 0x0

    :goto_7
    move/from16 v10, v19

    :goto_8
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move-object v6, v5

    move-object/from16 v8, v16

    :goto_9
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_17
    move-object/from16 v16, v8

    sget-boolean v2, Lcom/android/server/wm/OpPowerConsumpStats;->hU:Z

    if-nez v2, :cond_18

    sget-boolean v2, Lcom/android/server/wm/OpPowerConsumpStats;->gU:Z

    if-eqz v2, :cond_19

    :cond_18
    const-string v2, "loadFromDisk()"

    invoke-virtual {v3, v2}, Lcom/android/server/wm/OpPowerConsumpStats$gck;->dump(Ljava/lang/String;)V

    :cond_19
    iput-object v3, v1, Lcom/android/server/wm/OpPowerConsumpStats;->_S:Lcom/android/server/wm/OpPowerConsumpStats$gck;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/16 v1, 0xc

    if-ne v10, v1, :cond_1a

    return v11

    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadFromDisk incomplete data, return false count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    const/4 v1, 0x0

    return v1

    :catchall_1
    move-exception v0

    goto :goto_b

    :catch_1
    move-exception v0

    goto :goto_c

    :catchall_2
    move-exception v0

    move-object/from16 v16, v8

    :goto_b
    move-object v1, v0

    goto :goto_e

    :catch_2
    move-exception v0

    move-object/from16 v16, v8

    :goto_c
    move-object v1, v0

    move-object/from16 v7, v16

    goto :goto_d

    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object/from16 v16, v7

    goto :goto_e

    :catch_3
    move-exception v0

    move-object v1, v0

    :goto_d
    :try_start_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadFromDisk Exception e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_a

    :goto_e
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method private rc(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OpPowerConsumpStats$ywr;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calculateWakeupReasons from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->NT:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->XS:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Timer;

    const/4 v6, 0x2

    invoke-static {v5, v2, v3, v6}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-lez v11, :cond_0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v11, p0, Lcom/android/server/wm/OpPowerConsumpStats;->OT:Ljava/util/HashMap;

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    new-instance v12, Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v13

    invoke-direct {v12, v4, v7, v8, v13}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;-><init>(Ljava/lang/String;JI)V

    if-eqz v11, :cond_1

    invoke-static {v11, v12}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->you(Lcom/android/server/wm/OpPowerConsumpStats$ywr;Lcom/android/server/wm/OpPowerConsumpStats$ywr;)Z

    move-result v11

    if-eqz v11, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calculateWakeupReasons # continue key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " |totalTimeMillis:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-static {v4}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v11, "handle_plug_event"

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    iget-object v13, p0, Lcom/android/server/wm/OpPowerConsumpStats;->OT:Ljava/util/HashMap;

    invoke-virtual {v13, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    if-nez v12, :cond_3

    new-instance v12, Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    invoke-direct {v12, v4, v7, v8, v5}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;-><init>(Ljava/lang/String;JI)V

    goto :goto_2

    :cond_3
    new-instance v13, Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-direct {v13, v12}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;-><init>(Lcom/android/server/wm/OpPowerConsumpStats$ywr;)V

    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    invoke-static {v13, v7, v8, v5}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->zta(Lcom/android/server/wm/OpPowerConsumpStats$ywr;JI)V

    move-object v12, v13

    :goto_2
    const/4 v5, 0x1

    iget-boolean v6, p0, Lcom/android/server/wm/OpPowerConsumpStats;->hT:Z

    if-eqz v6, :cond_4

    iget-object v5, p0, Lcom/android/server/wm/OpPowerConsumpStats;->PT:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-static {v12, v5}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->sis(Lcom/android/server/wm/OpPowerConsumpStats$ywr;Lcom/android/server/wm/OpPowerConsumpStats$ywr;)Z

    move-result v5

    :cond_4
    if-eqz v5, :cond_6

    iget-wide v5, v12, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mTime:J

    cmp-long v5, v5, v9

    if-lez v5, :cond_6

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/wm/OpPowerConsumpStats;->NT:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {v0, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calculateWakeupReasons # reason_new = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_7
    return-object v0
.end method

.method private releaseWakeLock()V
    .locals 1

    const-string v0, "releaseWakeLock"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    return-void
.end method

.method private resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "[OnlineConfig] resolveConfigFromJSON topKernelWakeupReasons:"

    const-string v3, "[OnlineConfig] resolveConfigFromJSON topKernelWakeLocks:"

    const-string v4, "[OnlineConfig] resolveConfigFromJSON topSize:"

    const-string v5, "[OnlineConfig] resolveConfigFromJSON randomInterval:"

    const-string v6, "[OnlineConfig] resolveConfigFromJSON bootDelayTime:"

    const-string v7, "[OnlineConfig] resolveConfigFromJSON calculateIntervalThreshold:"

    const-string v8, "[OnlineConfig] resolveConfigFromJSON reportTimePoint:"

    const-string v9, "[OnlineConfig] resolveConfigFromJSON reportInstalledApp:"

    const-string v10, "[OnlineConfig] resolveConfigFromJSON sENABLE:"

    const-string v11, "name"

    const-string v12, "OPCS"

    if-nez v1, :cond_0

    const-string v0, "resolveConfigFromJSON jsonArray is null, return"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v14, 0x0

    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v14, v15, :cond_c

    invoke-virtual {v1, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v1, "enable"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v13, "value"

    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v15, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v16, v2

    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v1

    sget-boolean v2, Lcom/android/server/wm/OpPowerConsumpStats;->RU:Z

    if-eq v1, v2, :cond_3

    sput-boolean v1, Lcom/android/server/wm/OpPowerConsumpStats;->RU:Z

    sget-boolean v1, Lcom/android/server/wm/OpPowerConsumpStats;->RU:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/wm/OpPowerConsumpStats;->eU:Lcom/android/server/wm/OpPowerConsumpStats;

    sput-object v1, Lcom/android/server/wm/OpPowerConsumpStats;->sInstance:Lcom/android/server/wm/OpPowerConsumpStats;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/wm/OpPowerConsumpStats;->sInstance:Lcom/android/server/wm/OpPowerConsumpStats;

    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/OpPowerConsumpStats;->gq()V

    goto :goto_2

    :cond_2
    move-object/from16 v16, v2

    :cond_3
    :goto_2
    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "reportInstalledApp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v15, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/wm/OpPowerConsumpStats;->xV:Z

    :cond_4
    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "reportIntervalThreshold"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v15, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v17

    sput-wide v17, Lcom/android/server/wm/OpPowerConsumpStats;->TU:J

    sget-boolean v1, Lcom/android/server/wm/OpPowerConsumpStats;->RU:Z

    if-eqz v1, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Rp()V

    :cond_5
    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "calculateIntervalThreshold"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v15, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v17

    sput-wide v17, Lcom/android/server/wm/OpPowerConsumpStats;->UU:J

    iget-object v1, v0, Lcom/android/server/wm/OpPowerConsumpStats;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, v0, Lcom/android/server/wm/OpPowerConsumpStats;->bU:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    sget-boolean v1, Lcom/android/server/wm/OpPowerConsumpStats;->RU:Z

    if-eqz v1, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Qp()V

    :cond_6
    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bootDelayTime"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v15, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v17

    sput-wide v17, Lcom/android/server/wm/OpPowerConsumpStats;->VU:J

    :cond_7
    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "randomInterval"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v15, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    sput v1, Lcom/android/server/wm/OpPowerConsumpStats;->SU:I

    :cond_8
    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "topSize"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v15, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    sput v1, Lcom/android/server/wm/OpPowerConsumpStats;->WU:I

    :cond_9
    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "topKernelWakeLocks"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v15, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    sput v1, Lcom/android/server/wm/OpPowerConsumpStats;->XU:I

    :cond_a
    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "topKernelWakeupReasons"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v15, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    sput v1, Lcom/android/server/wm/OpPowerConsumpStats;->YU:I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_b
    const/4 v2, 0x0

    :goto_3
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v1, v16

    goto/16 :goto_8

    :catch_0
    move-exception v0

    move-object/from16 v1, v16

    goto/16 :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v1, v16

    goto/16 :goto_6

    :cond_c
    move-object/from16 v16, v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/wm/OpPowerConsumpStats;->RU:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/wm/OpPowerConsumpStats;->xV:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/wm/OpPowerConsumpStats;->TU:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/wm/OpPowerConsumpStats;->UU:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/wm/OpPowerConsumpStats;->VU:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/wm/OpPowerConsumpStats;->SU:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/wm/OpPowerConsumpStats;->WU:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/wm/OpPowerConsumpStats;->XU:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v1, v16

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/wm/OpPowerConsumpStats;->YU:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto/16 :goto_8

    :catch_2
    move-exception v0

    move-object v1, v2

    :goto_5
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[OnlineConfig] Exception:"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/wm/OpPowerConsumpStats;->RU:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/wm/OpPowerConsumpStats;->xV:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v8, Lcom/android/server/wm/OpPowerConsumpStats;->TU:J

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v7, Lcom/android/server/wm/OpPowerConsumpStats;->UU:J

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v6, Lcom/android/server/wm/OpPowerConsumpStats;->VU:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/wm/OpPowerConsumpStats;->SU:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/wm/OpPowerConsumpStats;->WU:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/wm/OpPowerConsumpStats;->XU:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_4

    :catch_3
    move-exception v0

    move-object v1, v2

    :goto_6
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[OnlineConfig] JSONException:"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/wm/OpPowerConsumpStats;->RU:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/wm/OpPowerConsumpStats;->xV:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v8, Lcom/android/server/wm/OpPowerConsumpStats;->TU:J

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v7, Lcom/android/server/wm/OpPowerConsumpStats;->UU:J

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v6, Lcom/android/server/wm/OpPowerConsumpStats;->VU:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/wm/OpPowerConsumpStats;->SU:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/wm/OpPowerConsumpStats;->WU:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/wm/OpPowerConsumpStats;->XU:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_4

    :goto_7
    return-void

    :catchall_2
    move-exception v0

    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v10, Lcom/android/server/wm/OpPowerConsumpStats;->RU:Z

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v9, Lcom/android/server/wm/OpPowerConsumpStats;->xV:Z

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v8, Lcom/android/server/wm/OpPowerConsumpStats;->TU:J

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v7, Lcom/android/server/wm/OpPowerConsumpStats;->UU:J

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v6, Lcom/android/server/wm/OpPowerConsumpStats;->VU:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/wm/OpPowerConsumpStats;->SU:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/wm/OpPowerConsumpStats;->WU:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/wm/OpPowerConsumpStats;->XU:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/wm/OpPowerConsumpStats;->YU:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method private rq()V
    .locals 10

    const-string v0, "BaseEvent"

    const-string v1, "persistBaseDataToDisk"

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->TS:Landroid/util/AtomicFile;

    const-string v2, "OPCS"

    if-nez v1, :cond_0

    const-string p0, "persistBaseDataToDisk mBaseData is null, return"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->TS:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-object v5, Lcom/android/server/wm/OpPowerConsumpStats;->Dp:Ljava/lang/String;

    invoke-interface {v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x0

    :goto_0
    iget-object v6, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ZT:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    iget-object v6, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ZT:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/OpPowerConsumpStats$you;

    invoke-interface {v1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "totalSeq"

    iget v8, v6, Lcom/android/server/wm/OpPowerConsumpStats$you;->WR:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "typeSeq"

    iget v8, v6, Lcom/android/server/wm/OpPowerConsumpStats$you;->XR:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "eventType"

    iget-object v8, v6, Lcom/android/server/wm/OpPowerConsumpStats$you;->eventType:Ljava/lang/String;

    invoke-interface {v1, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "relativeTime"

    iget-wide v8, v6, Lcom/android/server/wm/OpPowerConsumpStats$you;->YR:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "realTime"

    iget-wide v8, v6, Lcom/android/server/wm/OpPowerConsumpStats$you;->ZR:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "screenState"

    iget-boolean v8, v6, Lcom/android/server/wm/OpPowerConsumpStats$you;->screenState:Z

    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "plugState"

    iget-boolean v8, v6, Lcom/android/server/wm/OpPowerConsumpStats$you;->_R:Z

    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "idleState"

    iget-boolean v8, v6, Lcom/android/server/wm/OpPowerConsumpStats$you;->aS:Z

    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "powerlevelState"

    iget v8, v6, Lcom/android/server/wm/OpPowerConsumpStats$you;->bS:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "frontPkg"

    iget-object v8, v6, Lcom/android/server/wm/OpPowerConsumpStats$you;->cS:Ljava/lang/String;

    invoke-interface {v1, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "description"

    iget-object v6, v6, Lcom/android/server/wm/OpPowerConsumpStats$you;->description:Ljava/lang/String;

    invoke-interface {v1, v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v6, Lcom/android/server/wm/OpPowerConsumpStats;->Dp:Ljava/lang/String;

    invoke-interface {v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats;->Dp:Ljava/lang/String;

    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->TS:Landroid/util/AtomicFile;

    invoke-virtual {v0, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v4, v3

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "persistBaseDataToDisk Exception e:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v4, :cond_2

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->TS:Landroid/util/AtomicFile;

    invoke-virtual {p0, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_2
    :goto_2
    return-void
.end method

.method static synthetic rtg(Lcom/android/server/wm/OpPowerConsumpStats;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->Ub(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private rtg(Lcom/android/server/wm/OpPowerConsumpStats$gck;)V
    .locals 3

    const-string v0, "trackPowerData"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p0, "trackPowerData data is null, return"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->xc(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "appid"

    const-string v2, "NYNCG4I0TI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->you(Lcom/android/server/wm/OpPowerConsumpStats$gck;)Ljava/util/Map;

    move-result-object p0

    const-string p1, "OPCS"

    invoke-virtual {v1, v2, p1, p0, v0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic rtg(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->cq()V

    return-void
.end method

.method static synthetic rtg(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->vc(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic rtg(Lcom/android/server/wm/OpPowerConsumpStats;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->La(Z)V

    return-void
.end method

.method private sc(Ljava/lang/String;)V
    .locals 1

    const-string v0, "plug"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->fT:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->sT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->zta(Lcom/android/server/wm/OpPowerConsumpStats$wtn;)Z

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->wT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->tT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    :goto_0
    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->zta(Lcom/android/server/wm/OpPowerConsumpStats$wtn;)Z

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->xT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    :goto_1
    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->zta(Lcom/android/server/wm/OpPowerConsumpStats$wtn;)Z

    goto :goto_2

    :cond_1
    const-string v0, "screen"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->wT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->sT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->zta(Lcom/android/server/wm/OpPowerConsumpStats$wtn;)Z

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->tT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    goto :goto_1

    :cond_3
    const-string v0, "powerLevel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const-string v0, "doze"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const-string v0, "frontPkg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :goto_2
    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Up()V

    return-void
.end method

.method static synthetic sis(Lcom/android/server/wm/OpPowerConsumpStats;Lcom/android/server/wm/OpPowerConsumpStats$gck;)Lcom/android/server/wm/OpPowerConsumpStats$gck;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_S:Lcom/android/server/wm/OpPowerConsumpStats$gck;

    return-object p1
.end method

.method static synthetic sis(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->pc(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method private sis(Lcom/android/server/wm/OpPowerConsumpStats$gck;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "screenOffDischarge"

    const-string v3, "screenOnChargeDuration"

    const-string v4, "screenOnDischargeDuration"

    const-string v5, "totalScreenOnDuration"

    const-string v6, "screenOnDischarge"

    const-string v7, "totalChargeDuration"

    const-string v8, "totalDischargeDuration"

    const-string v9, "totalDischarge"

    const-string v10, "count"

    const-string v11, "duration"

    const-string v12, "persistToDisk"

    invoke-static {v12}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v12, v1, Lcom/android/server/wm/OpPowerConsumpStats;->Mo:Landroid/util/AtomicFile;

    const-string v13, "OPCS"

    if-nez v12, :cond_0

    const-string v0, "persistToDisk mStatisticalData is null, return"

    :goto_0
    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "persistToDisk data is null, return"

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v12

    :try_start_0
    iget-object v15, v1, Lcom/android/server/wm/OpPowerConsumpStats;->Mo:Landroid/util/AtomicFile;

    invoke-virtual {v15}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    :try_start_1
    new-instance v14, Ljava/io/BufferedOutputStream;

    invoke-direct {v14, v15}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v17, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-object/from16 v18, v15

    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v12, v15, v14}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-object v14, Lcom/android/server/wm/OpPowerConsumpStats;->Dp:Ljava/lang/String;

    invoke-interface {v12, v14}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v12, v15, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v14, "os_version"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v17, v13

    :try_start_3
    iget-object v13, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->rS:Ljava/lang/String;

    invoke-interface {v12, v15, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v13, "realStartTime"

    move-object v14, v2

    move-object/from16 v16, v3

    iget-wide v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->sS:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v15, v13, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "realEndTime"

    move-object v3, v14

    iget-wide v13, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->tS:J

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v15, v2, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v13, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->duration:J

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v15, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "firstReport"

    iget-boolean v13, v1, Lcom/android/server/wm/OpPowerConsumpStats;->kT:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v15, v2, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v2, Lcom/android/server/wm/OpPowerConsumpStats;->Dp:Ljava/lang/String;

    invoke-interface {v12, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v12, v15, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->vS:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v15, v10, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v12, v15, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v2, Lcom/android/server/wm/OpPowerConsumpStats;->Dp:Ljava/lang/String;

    invoke-interface {v12, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v12, v15, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v13, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->wS:J

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v15, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v12, v15, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v2, Lcom/android/server/wm/OpPowerConsumpStats;->Dp:Ljava/lang/String;

    invoke-interface {v12, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v12, v15, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v8, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->xS:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v15, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v12, v15, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v2, Lcom/android/server/wm/OpPowerConsumpStats;->Dp:Ljava/lang/String;

    invoke-interface {v12, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v12, v15, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->yS:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v15, v10, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v12, v15, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v2, Lcom/android/server/wm/OpPowerConsumpStats;->Dp:Ljava/lang/String;

    invoke-interface {v12, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v12, v15, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v6, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->zS:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v15, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v12, v15, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v2, Lcom/android/server/wm/OpPowerConsumpStats;->Dp:Ljava/lang/String;

    invoke-interface {v12, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v12, v15, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v5, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->AS:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v15, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v12, v15, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v2, Lcom/android/server/wm/OpPowerConsumpStats;->Dp:Ljava/lang/String;

    invoke-interface {v12, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v2, v16

    invoke-interface {v12, v15, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v4, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->BS:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v12, v15, v11, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v12, v15, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v2, Lcom/android/server/wm/OpPowerConsumpStats;->Dp:Ljava/lang/String;

    invoke-interface {v12, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object v2, v3

    invoke-interface {v12, v15, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v3, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->CS:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v15, v10, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v12, v15, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v2, Lcom/android/server/wm/OpPowerConsumpStats;->Dp:Ljava/lang/String;

    invoke-interface {v12, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "totalScreenOffDuration"

    invoke-interface {v12, v15, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->DS:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v15, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "totalScreenOffDuration"

    invoke-interface {v12, v15, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v2, Lcom/android/server/wm/OpPowerConsumpStats;->Dp:Ljava/lang/String;

    invoke-interface {v12, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "screenOffDischargeDuration"

    invoke-interface {v12, v15, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->ES:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v15, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "screenOffDischargeDuration"

    invoke-interface {v12, v15, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v2, Lcom/android/server/wm/OpPowerConsumpStats;->Dp:Ljava/lang/String;

    invoke-interface {v12, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "screenOffChargeDuration"

    invoke-interface {v12, v15, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->FS:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v15, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "screenOffChargeDuration"

    invoke-interface {v12, v15, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v2, Lcom/android/server/wm/OpPowerConsumpStats;->Dp:Ljava/lang/String;

    invoke-interface {v12, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    iget-object v4, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->GS:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->GS:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/OpPowerConsumpStats$cno;

    const-string v5, "dozeFragment"

    const/4 v6, 0x0

    invoke-interface {v12, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "seq"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v12, v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "relativeBeginTime"

    iget-wide v7, v4, Lcom/android/server/wm/OpPowerConsumpStats$cno;->eS:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v12, v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "relativeEndTime"

    iget-wide v7, v4, Lcom/android/server/wm/OpPowerConsumpStats$cno;->fS:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v12, v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v7, v4, Lcom/android/server/wm/OpPowerConsumpStats$cno;->duration:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v12, v6, v11, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "realBeginTime"

    iget-wide v7, v4, Lcom/android/server/wm/OpPowerConsumpStats$cno;->gS:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v12, v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "beginPowerLevel"

    iget v7, v4, Lcom/android/server/wm/OpPowerConsumpStats$cno;->hS:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v12, v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "endPowerLevel"

    iget v7, v4, Lcom/android/server/wm/OpPowerConsumpStats$cno;->iS:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v12, v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "exitReason"

    iget-object v4, v4, Lcom/android/server/wm/OpPowerConsumpStats$cno;->oS:Ljava/lang/String;

    invoke-interface {v12, v6, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "dozeFragment"

    invoke-interface {v12, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v4, Lcom/android/server/wm/OpPowerConsumpStats;->Dp:Ljava/lang/String;

    invoke-interface {v12, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_2
    iget-object v4, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->HS:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v4, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->HS:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    const-string v5, "chargeFragment"

    const/4 v6, 0x0

    invoke-interface {v12, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "seq"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v12, v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "relativeBeginTime"

    iget-wide v7, v4, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->eS:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v12, v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "relativeEndTime"

    iget-wide v7, v4, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->fS:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v12, v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v7, v4, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->duration:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v12, v6, v11, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "realBeginTime"

    iget-wide v7, v4, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->gS:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v12, v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "beginPowerLevel"

    iget v7, v4, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->hS:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v12, v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "endPowerLevel"

    iget v7, v4, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->iS:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v12, v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "screenOnDuration"

    iget-wide v7, v4, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->jS:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v12, v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "firstFullTimeToRelativeBeginTime"

    iget-wide v7, v4, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->kS:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v12, v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "plugType"

    iget-object v4, v4, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->lS:Ljava/lang/String;

    invoke-interface {v12, v6, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "chargeFragment"

    invoke-interface {v12, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v4, Lcom/android/server/wm/OpPowerConsumpStats;->Dp:Ljava/lang/String;

    invoke-interface {v12, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_3
    :goto_3
    iget-object v3, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->IS:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    iget-object v3, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->IS:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/OpPowerConsumpStats$bio;

    iget-object v4, v3, Lcom/android/server/wm/OpPowerConsumpStats$bio;->uid:Ljava/lang/Integer;

    if-nez v4, :cond_4

    goto/16 :goto_7

    :cond_4
    const-string v4, "powerConsumption"

    const/4 v5, 0x0

    invoke-interface {v12, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "uid"

    iget-object v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$bio;->uid:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v12, v5, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "drainType"

    iget-object v5, v3, Lcom/android/server/wm/OpPowerConsumpStats$bio;->drainType:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const-string v6, "null"

    if-nez v5, :cond_5

    move-object v5, v6

    goto :goto_4

    :cond_5
    :try_start_4
    iget-object v5, v3, Lcom/android/server/wm/OpPowerConsumpStats$bio;->drainType:Ljava/lang/String;

    :goto_4
    const/4 v7, 0x0

    invoke-interface {v12, v7, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "pkgName"

    iget-object v5, v3, Lcom/android/server/wm/OpPowerConsumpStats$bio;->pkgName:Ljava/lang/String;

    if-nez v5, :cond_6

    move-object v5, v6

    goto :goto_5

    :cond_6
    iget-object v5, v3, Lcom/android/server/wm/OpPowerConsumpStats$bio;->pkgName:Ljava/lang/String;

    :goto_5
    const/4 v7, 0x0

    invoke-interface {v12, v7, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "versionName"

    iget-object v5, v3, Lcom/android/server/wm/OpPowerConsumpStats$bio;->versionName:Ljava/lang/String;

    if-nez v5, :cond_7

    goto :goto_6

    :cond_7
    iget-object v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$bio;->versionName:Ljava/lang/String;

    :goto_6
    const/4 v5, 0x0

    invoke-interface {v12, v5, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "versionCode"

    iget v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$bio;->versionCode:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v12, v5, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "totalTime"

    iget-wide v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$bio;->totalTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v12, v5, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "totalPowerMah"

    iget-wide v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$bio;->totalPowerMah:D

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v12, v5, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "cpuPowerMah"

    iget-wide v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$bio;->cpuPowerMah:D

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v12, v5, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "audioPowerMah"

    iget-wide v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$bio;->audioPowerMah:D

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v12, v5, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "wakeLockPowerMah"

    iget-wide v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$bio;->wakeLockPowerMah:D

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v12, v5, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "mobileRadioPowerMah"

    iget-wide v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$bio;->mobileRadioPowerMah:D

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v12, v5, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "wifiPowerMah"

    iget-wide v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$bio;->wifiPowerMah:D

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v12, v5, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "bluetoothPowerMah"

    iget-wide v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$bio;->bluetoothPowerMah:D

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v12, v5, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "gpsPowerMah"

    iget-wide v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$bio;->gpsPowerMah:D

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v12, v5, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "sensorPowerMah"

    iget-wide v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$bio;->sensorPowerMah:D

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v12, v5, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "cameraPowerMah"

    iget-wide v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$bio;->cameraPowerMah:D

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v12, v5, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "flashlightPowerMah"

    iget-wide v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$bio;->flashlightPowerMah:D

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v12, v5, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "videoPowerMah"

    iget-wide v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$bio;->videoPowerMah:D

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v5, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "powerConsumption"

    invoke-interface {v12, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v3, Lcom/android/server/wm/OpPowerConsumpStats;->Dp:Ljava/lang/String;

    invoke-interface {v12, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :cond_8
    iget-object v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->JS:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->JS:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    iget-wide v4, v3, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_9

    goto :goto_8

    :cond_9
    const-string v4, "kernelWakeLocks"

    const/4 v5, 0x0

    invoke-interface {v12, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "name"

    iget-object v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mName:Ljava/lang/String;

    invoke-interface {v12, v5, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "time"

    iget-wide v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v12, v5, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v3, v3, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mCount:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v5, v10, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "kernelWakeLocks"

    invoke-interface {v12, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v3, Lcom/android/server/wm/OpPowerConsumpStats;->Dp:Ljava/lang/String;

    invoke-interface {v12, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_8

    :cond_a
    iget-object v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->KS:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->KS:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    iget-wide v4, v3, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_b

    goto :goto_9

    :cond_b
    const-string v4, "kernelWakeupReasons"

    const/4 v5, 0x0

    invoke-interface {v12, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "name"

    iget-object v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mName:Ljava/lang/String;

    invoke-interface {v12, v5, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "time"

    iget-wide v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v12, v5, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v3, v3, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mCount:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v5, v10, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "kernelWakeupReasons"

    invoke-interface {v12, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v3, Lcom/android/server/wm/OpPowerConsumpStats;->Dp:Ljava/lang/String;

    invoke-interface {v12, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_9

    :cond_c
    move-object/from16 v2, v17

    const/4 v3, 0x0

    :try_start_5
    invoke-interface {v12, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats;->Dp:Ljava/lang/String;

    invoke-interface {v12, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V

    iget-object v0, v1, Lcom/android/server/wm/OpPowerConsumpStats;->Mo:Landroid/util/AtomicFile;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object/from16 v15, v18

    :try_start_6
    invoke-virtual {v0, v15}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    goto :goto_b

    :catch_1
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    move-object/from16 v2, v17

    goto :goto_a

    :catch_3
    move-exception v0

    move-object v2, v13

    :goto_a
    move-object/from16 v15, v18

    goto :goto_b

    :catch_4
    move-exception v0

    move-object v2, v13

    goto :goto_b

    :catch_5
    move-exception v0

    move-object v2, v13

    const/4 v3, 0x0

    move-object v15, v3

    :goto_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "persistToDisk Exception e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v15, :cond_d

    iget-object v0, v1, Lcom/android/server/wm/OpPowerConsumpStats;->Mo:Landroid/util/AtomicFile;

    invoke-virtual {v0, v15}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_d
    :goto_c
    return-void
.end method

.method static synthetic sis(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->dq()V

    return-void
.end method

.method static synthetic sis(Lcom/android/server/wm/OpPowerConsumpStats;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->Vb(I)V

    return-void
.end method

.method static synthetic sis(Lcom/android/server/wm/OpPowerConsumpStats;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mScreenState:Z

    return p1
.end method

.method private sq()V
    .locals 4

    const-string v0, "resetListener"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats;->sInstance:Lcom/android/server/wm/OpPowerConsumpStats;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->bT:Lcom/android/server/wm/OpPowerConsumpStatsInjector$ResetParamListener;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/server/wm/OpPowerConsumpStatsInjector$ResetParamListener;->resetParamForOPCS()Z

    move-result v0

    :cond_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->YS:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->YS:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->YS:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method

.method static synthetic ssp(Lcom/android/server/wm/OpPowerConsumpStats;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->Ka(Z)V

    return-void
.end method

.method static synthetic ssp(Lcom/android/server/wm/OpPowerConsumpStats;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->oq()Z

    move-result p0

    return p0
.end method

.method private tc(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleBatteryStatsRelated from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |mPlugState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->fT:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->XS:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->XS:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->XS:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, v2}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, "handle_plug_event"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->fT:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->DT:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->GT:Landroid/util/SparseArray;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->MT:Ljava/util/HashMap;

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->MT:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->IT:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->QT:Ljava/util/HashMap;

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->QT:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->NT:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->qc(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->GT:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->MT:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->MT:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->pc(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->QT:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->QT:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->rc(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-boolean p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->hT:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->hT:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleBatteryStatsRelated Exception e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPCS"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->gq()V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private tq()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const v1, 0x20402000

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/PackageManagerService;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic tsu(Lcom/android/server/wm/OpPowerConsumpStats;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->Tb(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic tsu(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->jT:Ljava/lang/String;

    return-object p1
.end method

.method private tsu(Lcom/android/server/wm/OpPowerConsumpStats$gck;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->sis(Lcom/android/server/wm/OpPowerConsumpStats$gck;)V

    sget-boolean p1, Lcom/android/server/wm/OpPowerConsumpStats;->jU:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->rq()V

    :cond_0
    return-void
.end method

.method static synthetic tsu(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->fq()V

    return-void
.end method

.method static synthetic tsu(Lcom/android/server/wm/OpPowerConsumpStats;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gT:Z

    return p1
.end method

.method private uc(Ljava/lang/String;)Lcom/android/server/wm/OpPowerConsumpStats$gck;
    .locals 8

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->zp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->eT:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCalculate begin, calculateTime_Begin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->dT:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " |calculateTime_End:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->eT:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->oq()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "handleCalculate mBaseTimer is null, return"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    return-object v1

    :cond_0
    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;

    invoke-direct {v0, p0}, Lcom/android/server/wm/OpPowerConsumpStats$gck;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->getOsVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->rS:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_S:Lcom/android/server/wm/OpPowerConsumpStats$gck;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$gck;->sS:J

    iput-wide v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->sS:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->tS:J

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_S:Lcom/android/server/wm/OpPowerConsumpStats$gck;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$gck;->duration:J

    iget-wide v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->eT:J

    iget-wide v6, p0, Lcom/android/server/wm/OpPowerConsumpStats;->dT:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->duration:J

    iget-boolean v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->kT:Z

    iput-boolean v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->uS:Z

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_S:Lcom/android/server/wm/OpPowerConsumpStats$gck;

    iget v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$gck;->vS:I

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->nT:Lcom/android/server/wm/OpPowerConsumpStats$igw;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats$igw;->sis(Lcom/android/server/wm/OpPowerConsumpStats$igw;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->vS:I

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_S:Lcom/android/server/wm/OpPowerConsumpStats$gck;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$gck;->wS:J

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    iget-wide v5, p0, Lcom/android/server/wm/OpPowerConsumpStats;->eT:J

    invoke-static {v4, v5, v6}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->you(Lcom/android/server/wm/OpPowerConsumpStats$wtn;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->wS:J

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_S:Lcom/android/server/wm/OpPowerConsumpStats$gck;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$gck;->xS:J

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->pT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    iget-wide v5, p0, Lcom/android/server/wm/OpPowerConsumpStats;->eT:J

    invoke-static {v4, v5, v6}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->you(Lcom/android/server/wm/OpPowerConsumpStats$wtn;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->xS:J

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_S:Lcom/android/server/wm/OpPowerConsumpStats$gck;

    iget v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$gck;->yS:I

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->qT:Lcom/android/server/wm/OpPowerConsumpStats$igw;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats$igw;->sis(Lcom/android/server/wm/OpPowerConsumpStats$igw;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->yS:I

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_S:Lcom/android/server/wm/OpPowerConsumpStats$gck;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$gck;->zS:J

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->rT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    iget-wide v5, p0, Lcom/android/server/wm/OpPowerConsumpStats;->eT:J

    invoke-static {v4, v5, v6}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->you(Lcom/android/server/wm/OpPowerConsumpStats$wtn;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->zS:J

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_S:Lcom/android/server/wm/OpPowerConsumpStats$gck;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$gck;->AS:J

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->sT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    iget-wide v5, p0, Lcom/android/server/wm/OpPowerConsumpStats;->eT:J

    invoke-static {v4, v5, v6}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->you(Lcom/android/server/wm/OpPowerConsumpStats$wtn;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->AS:J

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_S:Lcom/android/server/wm/OpPowerConsumpStats$gck;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$gck;->BS:J

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->tT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    iget-wide v5, p0, Lcom/android/server/wm/OpPowerConsumpStats;->eT:J

    invoke-static {v4, v5, v6}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->you(Lcom/android/server/wm/OpPowerConsumpStats$wtn;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->BS:J

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_S:Lcom/android/server/wm/OpPowerConsumpStats$gck;

    iget v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$gck;->CS:I

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->uT:Lcom/android/server/wm/OpPowerConsumpStats$igw;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats$igw;->sis(Lcom/android/server/wm/OpPowerConsumpStats$igw;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->CS:I

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_S:Lcom/android/server/wm/OpPowerConsumpStats$gck;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$gck;->DS:J

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->vT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    iget-wide v5, p0, Lcom/android/server/wm/OpPowerConsumpStats;->eT:J

    invoke-static {v4, v5, v6}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->you(Lcom/android/server/wm/OpPowerConsumpStats$wtn;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->DS:J

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_S:Lcom/android/server/wm/OpPowerConsumpStats$gck;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$gck;->ES:J

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->wT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    iget-wide v5, p0, Lcom/android/server/wm/OpPowerConsumpStats;->eT:J

    invoke-static {v4, v5, v6}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->you(Lcom/android/server/wm/OpPowerConsumpStats$wtn;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->ES:J

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_S:Lcom/android/server/wm/OpPowerConsumpStats$gck;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$gck;->FS:J

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->xT:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    iget-wide v5, p0, Lcom/android/server/wm/OpPowerConsumpStats;->eT:J

    invoke-static {v4, v5, v6}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->you(Lcom/android/server/wm/OpPowerConsumpStats$wtn;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->FS:J

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_S:Lcom/android/server/wm/OpPowerConsumpStats$gck;

    iget-object v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$gck;->GS:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->GS:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->GS:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->lT:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->yT:Lcom/android/server/wm/OpPowerConsumpStats$kth;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats$kth;->sis(Lcom/android/server/wm/OpPowerConsumpStats$kth;)Lcom/android/server/wm/OpPowerConsumpStats$cno;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->GS:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_S:Lcom/android/server/wm/OpPowerConsumpStats$gck;

    iget-object v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$gck;->HS:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->HS:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->HS:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mT:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->zT:Lcom/android/server/wm/OpPowerConsumpStats$rtg;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->cno(Lcom/android/server/wm/OpPowerConsumpStats$rtg;)Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->HS:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->fq()V

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->GT:Landroid/util/SparseArray;

    iput-object v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->IS:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->MT:Ljava/util/HashMap;

    iput-object v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->JS:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->QT:Ljava/util/HashMap;

    iput-object p0, v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;->KS:Ljava/util/HashMap;

    const-string p0, "handleCalculate end"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/server/wm/OpPowerConsumpStats;->gU:Z

    if-eqz p0, :cond_3

    invoke-virtual {v0, p1}, Lcom/android/server/wm/OpPowerConsumpStats$gck;->dump(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleCalculate Exception e:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OPCS"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method static synthetic ugm(Lcom/android/server/wm/OpPowerConsumpStats;)Lcom/android/server/wm/OpPowerConsumpStats$qbh;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->aU:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    return-object p0
.end method

.method private uq()V
    .locals 1

    const-string v0, "toTrackImmediately"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->aT:Lcom/android/server/wm/OpPowerConsumpStats$gck;

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->rtg(Lcom/android/server/wm/OpPowerConsumpStats$gck;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->vq()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->aT:Lcom/android/server/wm/OpPowerConsumpStats$gck;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->kT:Z

    return-void
.end method

.method private vc(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gT:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->yT:Lcom/android/server/wm/OpPowerConsumpStats$kth;

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats$kth;->zta(Lcom/android/server/wm/OpPowerConsumpStats$kth;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->yT:Lcom/android/server/wm/OpPowerConsumpStats$kth;

    invoke-static {v0, p1}, Lcom/android/server/wm/OpPowerConsumpStats$kth;->zta(Lcom/android/server/wm/OpPowerConsumpStats$kth;Ljava/lang/String;)Z

    :goto_0
    const-string p1, "doze"

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->sc(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->wc(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic vdb(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->jq()V

    return-void
.end method

.method static synthetic veq(Lcom/android/server/wm/OpPowerConsumpStats;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cT:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic vju(Lcom/android/server/wm/OpPowerConsumpStats;)Landroid/app/usage/UsageStatsManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ZS:Landroid/app/usage/UsageStatsManager;

    return-object p0
.end method

.method private vq()V
    .locals 8

    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStats;->xV:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "trackInstalledAppData"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->tq()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trackInstalledAppData Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPCS"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_3

    :cond_1
    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "appid"

    const-string v4, "7554P2RV0X"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    :try_start_1
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "packageName"

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "app_list"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, v3, v2, v1}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    :cond_4
    :goto_3
    return-void
.end method

.method private wc(Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->ear(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic wtn(Lcom/android/server/wm/OpPowerConsumpStats;)J
    .locals 2

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->zp()J

    move-result-wide v0

    return-wide v0
.end method

.method private static xc(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStats;->iU:Z

    if-eqz v0, :cond_0

    const-string v0, "OPCS_SPECIFIC"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static you(D)Ljava/lang/String;
    .locals 4

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_0

    const-string p0, "0"

    return-object p0

    :cond_0
    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1

    const-string v0, "%.6f"

    goto :goto_0

    :cond_1
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v0, p0, v0

    if-gez v0, :cond_2

    const-string v0, "%.5f"

    goto :goto_0

    :cond_2
    const-wide v0, 0x3fb999999999999aL    # 0.1

    cmpg-double v0, p0, v0

    if-gez v0, :cond_3

    const-string v0, "%.4f"

    goto :goto_0

    :cond_3
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_4

    const-string v0, "%.3f"

    goto :goto_0

    :cond_4
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_5

    const-string v0, "%.2f"

    goto :goto_0

    :cond_5
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_6

    const-string v0, "%.1f"

    goto :goto_0

    :cond_6
    const-string v0, "%.0f"

    :goto_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private you(Lcom/android/server/wm/OpPowerConsumpStats$gck;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/OpPowerConsumpStats$gck;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "OPCS"

    const-string v1, "makeDataToString"

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v2, "os_version"

    iget-object v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->rS:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "realStartTime"

    iget-wide v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->sS:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "realEndTime"

    iget-wide v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->tS:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "duration"

    iget-wide v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->duration:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "firstReport"

    iget-boolean v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->kT:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "totalDischarge"

    iget v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->vS:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "totalDischargeDuration"

    iget-wide v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->wS:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "totalChargeDuration"

    iget-wide v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->xS:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "screenOnDischarge"

    iget v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->yS:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "totalScreenOnDuration"

    iget-wide v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->zS:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "screenOnDischargeDuration"

    iget-wide v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->AS:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "screenOnChargeDuration"

    iget-wide v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->BS:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "screenOffDischarge"

    iget v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->CS:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "totalScreenOffDuration"

    iget-wide v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->DS:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "screenOffDischargeDuration"

    iget-wide v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->ES:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "screenOffChargeDuration"

    iget-wide v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->FS:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->GS:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ","

    const-string v5, "]"

    const-string v6, "["

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-lez v3, :cond_2

    :try_start_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v7

    :goto_0
    iget-object v9, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->GS:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_1

    iget-object v9, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->GS:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/OpPowerConsumpStats$cno;

    invoke-static {v9, v3}, Lcom/android/server/wm/OpPowerConsumpStats$cno;->zta(Lcom/android/server/wm/OpPowerConsumpStats$cno;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->GS:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v8

    if-eq v3, v9, :cond_0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v3, "dozeFragment"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->HS:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v7

    :goto_1
    iget-object v9, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->HS:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_4

    iget-object v9, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->HS:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    invoke-static {v9, v3}, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->zta(Lcom/android/server/wm/OpPowerConsumpStats$tsu;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->HS:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v8

    if-eq v3, v9, :cond_3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v3, "chargeFragment"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->LS:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lez v3, :cond_8

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v7

    :goto_2
    iget-object v9, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->LS:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v3, v9, :cond_7

    iget-object v9, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->LS:Landroid/util/SparseArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/OpPowerConsumpStats$bio;

    invoke-static {v9, v3, v7}, Lcom/android/server/wm/OpPowerConsumpStats$bio;->zta(Lcom/android/server/wm/OpPowerConsumpStats$bio;IZ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->LS:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    sub-int/2addr v9, v8

    if-eq v3, v9, :cond_6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const-string v3, "systemModule"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->MS:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_b

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v7

    :goto_3
    iget-object v9, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->MS:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_a

    iget-object v9, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->MS:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/OpPowerConsumpStats$bio;

    invoke-static {v9, v3, v8}, Lcom/android/server/wm/OpPowerConsumpStats$bio;->zta(Lcom/android/server/wm/OpPowerConsumpStats$bio;IZ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->MS:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v8

    if-eq v3, v9, :cond_9

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_a
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const-string v3, "appTop"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->OS:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_e

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v7

    :goto_4
    iget-object v9, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->OS:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_d

    iget-object v9, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->OS:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-static {v9, v3}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->zta(Lcom/android/server/wm/OpPowerConsumpStats$ywr;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->OS:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v8

    if-eq v3, v9, :cond_c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_d
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    const-string v3, "kernelWakeLocks"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->PS:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_11

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v7

    :goto_5
    iget-object v9, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->PS:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_10

    iget-object v9, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->PS:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-static {v9, v3}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->zta(Lcom/android/server/wm/OpPowerConsumpStats$ywr;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->PS:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v8

    if-eq v3, v9, :cond_f

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_10
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    const-string p1, "kernelWakeupReasons"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p1, Lcom/android/server/wm/OpPowerConsumpStats;->jU:Z

    if-eqz p1, :cond_15

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ZT:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_14

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ZT:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v7, v2, :cond_13

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ZT:Landroid/util/SparseArray;

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/OpPowerConsumpStats$you;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats$you;->zta(Lcom/android/server/wm/OpPowerConsumpStats$you;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ZT:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    sub-int/2addr v2, v8

    if-eq v7, v2, :cond_12

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_13
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    const-string p0, "baseEvent"

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_15
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "mdmData:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeDataToString Exception e:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method private you(Lcom/android/server/wm/OpPowerConsumpStats$you;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->_T:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ZT:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/wm/OpPowerConsumpStats$you;->WR:I

    invoke-virtual {p0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic you(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->bq()V

    return-void
.end method

.method static synthetic you(Lcom/android/server/wm/OpPowerConsumpStats;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->Wb(I)V

    return-void
.end method

.method static synthetic you(Lcom/android/server/wm/OpPowerConsumpStats;Lcom/android/server/wm/OpPowerConsumpStats$gck;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Lcom/android/server/wm/OpPowerConsumpStats$gck;)V

    return-void
.end method

.method static synthetic you(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->tc(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic you(Lcom/android/server/wm/OpPowerConsumpStats;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->fT:Z

    return p1
.end method

.method static synthetic ywr(Lcom/android/server/wm/OpPowerConsumpStats;)Landroid/os/PowerManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method static synthetic zgw(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->kq()V

    return-void
.end method

.method private zp()J
    .locals 2

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->oq()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->VS:Lcom/android/server/wm/OpPowerConsumpStats$sis;

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats$sis;->zta(Lcom/android/server/wm/OpPowerConsumpStats$sis;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private zta(Lcom/android/internal/os/BatterySipper$DrainType;)I
    .locals 0

    sget-object p0, Lcom/android/server/wm/vdb;->RR:[I

    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    const/16 p0, -0x55

    goto :goto_0

    :pswitch_0
    const/16 p0, -0x56

    goto :goto_0

    :pswitch_1
    const/16 p0, -0x57

    goto :goto_0

    :pswitch_2
    const/16 p0, -0x58

    goto :goto_0

    :pswitch_3
    const/16 p0, -0x59

    goto :goto_0

    :pswitch_4
    const/16 p0, -0x5a

    goto :goto_0

    :pswitch_5
    const/16 p0, -0x5b

    goto :goto_0

    :pswitch_6
    const/16 p0, -0x5c

    goto :goto_0

    :pswitch_7
    const/16 p0, -0x5d

    goto :goto_0

    :pswitch_8
    const/16 p0, -0x5e

    goto :goto_0

    :pswitch_9
    const/16 p0, -0x5f

    goto :goto_0

    :pswitch_a
    const/16 p0, -0x60

    goto :goto_0

    :pswitch_b
    const/16 p0, -0x61

    goto :goto_0

    :pswitch_c
    const/16 p0, -0x63

    goto :goto_0

    :pswitch_d
    const/16 p0, -0x62

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x1
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

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->iT:I

    return p1
.end method

.method public static zta(Landroid/os/BatteryStats$Timer;JI)J
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide p0

    const-wide/16 p2, 0x1f4

    add-long/2addr p0, p2

    const-wide/16 p2, 0x3e8

    div-long/2addr p0, p2

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->dT:J

    return-wide p1
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)Lcom/android/server/wm/OpPowerConsumpStats$gck;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->uc(Ljava/lang/String;)Lcom/android/server/wm/OpPowerConsumpStats$gck;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats;Lcom/android/server/wm/OpPowerConsumpStats$sis;)Lcom/android/server/wm/OpPowerConsumpStats$sis;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->VS:Lcom/android/server/wm/OpPowerConsumpStats$sis;

    return-object p1
.end method

.method static synthetic zta(D)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->you(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private zta(Landroid/util/AtomicFile;)V
    .locals 5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "clearPersistData file:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    const-string p0, "OPCS"

    if-nez p1, :cond_0

    const-string p1, "persistToDisk file is null, return"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "persistToDisk Exception e:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v2, :cond_1

    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private zta(Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/OpPowerConsumpStats$bio;",
            ">;)V"
        }
    .end annotation

    const-string v0, "completePowerConsumptionData"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->CT:Lcom/android/server/wm/OpPowerConsumpStats$zta;

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats$zta;->zta(Lcom/android/server/wm/OpPowerConsumpStats$zta;)Ljava/util/HashMap;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/OpPowerConsumpStats$bio;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->pkgName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->pkgName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->totalTime:J

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private zta(Lcom/android/server/wm/OpPowerConsumpStats$gck;)V
    .locals 10

    const-string v0, "generateSortqueueAnddSystemqueue"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p0, "generateSortqueueAnddSystemqueue data is null, return"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->LS:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->MS:Ljava/util/ArrayList;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->IS:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->IS:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/OpPowerConsumpStats$bio;

    if-eqz v3, :cond_2

    iget-object v4, v3, Lcom/android/server/wm/OpPowerConsumpStats$bio;->drainType:Ljava/lang/String;

    const-string v5, "null"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateSortqueueAnddSystemqueue mSystemModule:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/wm/OpPowerConsumpStats$bio;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->LS:Landroid/util/SparseArray;

    iget-object v5, v3, Lcom/android/server/wm/OpPowerConsumpStats$bio;->uid:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sget v3, Lcom/android/server/wm/OpPowerConsumpStats;->WU:I

    if-le v2, v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateSortqueueAnddSystemqueue app length:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    move v2, v1

    :goto_3
    if-ge v2, v3, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/OpPowerConsumpStats$bio;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateSortqueueAnddSystemqueue app sort i:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " |pkg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/server/wm/OpPowerConsumpStats$bio;->pkgName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " |totalPowerMah:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v4, Lcom/android/server/wm/OpPowerConsumpStats$bio;->totalPowerMah:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->MS:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/OpPowerConsumpStats$bio;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->OS:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->JS:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->JS:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->dU:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sget v3, Lcom/android/server/wm/OpPowerConsumpStats;->XU:I

    if-le v2, v3, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateSortqueueAnddSystemqueue wakeLocks length:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    move v2, v1

    :goto_6
    const-string v4, " |count:"

    const-string v5, " |time:"

    const-string v6, " |name:"

    if-ge v2, v3, :cond_8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generateSortqueueAnddSystemqueue wakeLocks Top sort i:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v7, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mName:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v7, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mTime:J

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v7, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mCount:I

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->OS:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->PS:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->KS:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v7, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->KS:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_9
    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->dU:Ljava/util/Comparator;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sget v2, Lcom/android/server/wm/OpPowerConsumpStats;->YU:I

    if-le p0, v2, :cond_a

    goto :goto_8

    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateSortqueueAnddSystemqueue wakeupReasons length:"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    :goto_9
    if-ge v1, v2, :cond_b

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateSortqueueAnddSystemqueue wakeupReason Top sort i:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mTime:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mCount:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/server/wm/OpPowerConsumpStats$gck;->PS:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_b
    return-void
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats;Lcom/android/server/wm/OpPowerConsumpStats$gck;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->tsu(Lcom/android/server/wm/OpPowerConsumpStats$gck;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->Ma(Z)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->kT:Z

    return p0
.end method


# virtual methods
.method public init(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/am/BatteryStatsService;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/am/BatteryStatsService;)Lcom/android/server/wm/OpPowerConsumpStats;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public initPlugState(ZIZ)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initPlugState Plug:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |plugType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |isFastCharge:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->YS:Landroid/os/Handler;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->YS:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public notifyBatteryLevelEvent(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyBatteryLevelEvent Level:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->oq()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "notifyBatteryLevelEvent not yet timing, return"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->YS:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->YS:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyDozeEvent(ZLjava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDozeEvent idle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->oq()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "notifyDozeEvent not yet timing, return"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->YS:Landroid/os/Handler;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->YS:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyFastChargeEvent(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyFastChargeEvent isFastCharge:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->oq()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "notifyFastChargeEvent not yet timing, return"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->YS:Landroid/os/Handler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public notifyPkgEvent(Landroid/content/ComponentName;Z)V
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStats;->jU:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->oq()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "notifyPkgEvent not yet timing, return"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->YS:Landroid/os/Handler;

    const/16 v0, 0xe

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->YS:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method

.method public notifyPlugEvent(Ljava/lang/Boolean;IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyPlugEvent Plug:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " |plugType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |isFastCharge:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->oq()Z

    move-result p3

    if-nez p3, :cond_0

    const-string p0, "notifyPlugEvent not yet timing, return"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->YS:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v1, ""

    invoke-virtual {p3, v0, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->YS:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyScreenEvent(Ljava/lang/Boolean;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyScreenEvent Screen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->oq()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "notifyScreenEvent not yet timing, return"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->YS:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->YS:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public processBatteryValues(IIZZ)V
    .locals 2

    iput p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Dg:I

    iput-boolean p3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->YT:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/wm/OpPowerConsumpStats;->notifyPlugEvent(Ljava/lang/Boolean;IZ)V

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz p3, :cond_2

    if-nez p4, :cond_2

    invoke-virtual {p0, p3}, Lcom/android/server/wm/OpPowerConsumpStats;->notifyFastChargeEvent(Z)V

    :cond_2
    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->oq()Z

    move-result p2

    if-nez p2, :cond_4

    if-eqz p1, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {p0, v0, p1, p3}, Lcom/android/server/wm/OpPowerConsumpStats;->initPlugState(ZIZ)Z

    :cond_4
    return-void
.end method

.method public registerResetParamListener(Lcom/android/server/wm/OpPowerConsumpStatsInjector$ResetParamListener;)V
    .locals 1

    const-string v0, "registerResetParamListener"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->myLog(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->bT:Lcom/android/server/wm/OpPowerConsumpStatsInjector$ResetParamListener;

    return-void
.end method

.method public updateScreenState(I)V
    .locals 4

    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStats;->hU:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateScreenState to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPCS"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x63

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->aU:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    invoke-virtual {p0}, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->stop()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->aU:Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    invoke-virtual {p0}, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method public zta(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/am/BatteryStatsService;)Lcom/android/server/wm/OpPowerConsumpStats;
    .locals 2

    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats;->sInstance:Lcom/android/server/wm/OpPowerConsumpStats;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iput-object p3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    const/4 p2, 0x0

    const-string p3, "persist.sys.opcs.debug_log"

    invoke-static {p3, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    sput-boolean p3, Lcom/android/server/wm/OpPowerConsumpStats;->gU:Z

    const-string p3, "persist.sys.opcs.debug_specific"

    invoke-static {p3, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    sput-boolean p3, Lcom/android/server/wm/OpPowerConsumpStats;->iU:Z

    const-string p3, "persist.sys.opcs.debug_verify"

    invoke-static {p3, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    sput-boolean p3, Lcom/android/server/wm/OpPowerConsumpStats;->jU:Z

    new-instance p3, Landroid/os/HandlerThread;

    const-string v0, "mConsumptionDetectorThread"

    invoke-direct {p3, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {v0, p0, p3}, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->YS:Landroid/os/Handler;

    iget-object p3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mContext:Landroid/content/Context;

    const-string v0, "alarm"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/AlarmManager;

    iput-object p3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mContext:Landroid/content/Context;

    const-string v0, "power"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/PowerManager;

    iput-object p3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mPowerManager:Landroid/os/PowerManager;

    iget-object p3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mContext:Landroid/content/Context;

    const-string v0, "batterymanager"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/BatteryManager;

    iput-object p3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->WS:Landroid/os/BatteryManager;

    const-string p3, "package"

    invoke-static {p3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p3

    check-cast p3, Lcom/android/server/pm/PackageManagerService;

    iput-object p3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    const-string p3, "usagestats"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageStatsManager;

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ZS:Landroid/app/usage/UsageStatsManager;

    new-instance p1, Lcom/android/internal/os/BatteryStatsHelper;

    iget-object p3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mContext:Landroid/content/Context;

    invoke-direct {p1, p3, p2, p2}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object p1

    new-instance p3, Ljava/io/File;

    const-string v0, "system"

    invoke-direct {p3, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p1, Landroid/util/AtomicFile;

    new-instance v0, Ljava/io/File;

    const-string v1, "consumptionDetector_statistcal_data.xml"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Mo:Landroid/util/AtomicFile;

    new-instance p1, Landroid/util/AtomicFile;

    new-instance v0, Ljava/io/File;

    const-string v1, "consumptionDetector_base_data.xml"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->TS:Landroid/util/AtomicFile;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "com.OPCS.action.debug"

    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->dp:Landroid/content/BroadcastReceiver;

    invoke-virtual {p3, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "com.OPCS.action.report"

    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->mContext:Landroid/content/Context;

    const/high16 v0, 0x8000000

    invoke-static {p3, p2, p1, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->pi:Landroid/app/PendingIntent;

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/16 p3, 0x63

    aput p3, p1, p2

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->mq()V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->initOnlineConfig()V

    sput-object p0, Lcom/android/server/wm/OpPowerConsumpStats;->sInstance:Lcom/android/server/wm/OpPowerConsumpStats;

    sput-object p0, Lcom/android/server/wm/OpPowerConsumpStats;->eU:Lcom/android/server/wm/OpPowerConsumpStats;

    :cond_1
    sget-object p0, Lcom/android/server/wm/OpPowerConsumpStats;->sInstance:Lcom/android/server/wm/OpPowerConsumpStats;

    return-object p0
.end method
